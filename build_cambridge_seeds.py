#!/usr/bin/env python3
"""
Build Cambridge IELTS 16-21 Academic Reading SQL seeds from the PDF files
in the books/ directory.

Usage:
    python build_cambridge_seeds.py            # all books 16-21
    python build_cambridge_seeds.py 18         # only Cambridge 18, all 4 tests
    python build_cambridge_seeds.py 18 2       # only Cambridge 18 Test 2

Output:
    supabase/cambridge16-test1-reading.sql … cambridge21-test4-reading.sql

After running, open each SQL file and check:
  - Passage paragraph boundaries (plain passages split by blank line — verify
    the breaks match the source)
  - Completion question prompts (blank position may need adjustment)
  - Evidence refs (auto-matched via substring search; flag 'AUTO' means unverified)
"""

import json, re, sys, pathlib
import pypdf

BOOKS_DIR = pathlib.Path("books")
OUT_DIR   = pathlib.Path("supabase")

# ─────────────────────────────────────────────────────────────────────────────
# 1. TEXT EXTRACTION
# ─────────────────────────────────────────────────────────────────────────────

def _normalize(text: str) -> str:
    """Normalize PDF-extracted text: non-breaking spaces → space, ligatures, etc."""
    text = text.replace('\xa0', ' ')    # non-breaking space
    text = text.replace('–', '-')  # en-dash → hyphen
    text = text.replace('—', '-')  # em-dash → hyphen
    text = text.replace('', '')   # PDF artifact
    text = text.replace('', '')   # bullet ligature
    # Collapse runs of spaces but keep newlines
    lines = text.splitlines()
    lines = [re.sub(r'  +', ' ', ln) for ln in lines]
    return '\n'.join(lines)


def extract_pages(pdf_path: pathlib.Path) -> list[str]:
    reader = pypdf.PdfReader(str(pdf_path))
    return [_normalize(p.extract_text() or "") for p in reader.pages]


def all_text(pages: list[str]) -> str:
    return "\n".join(f"\n=== PAGE {i+1} ===\n{t}" for i, t in enumerate(pages))


# ─────────────────────────────────────────────────────────────────────────────
# 2. ANSWER KEY PARSER
# ─────────────────────────────────────────────────────────────────────────────

def parse_answer_key(pages: list[str]) -> dict[int, dict]:
    """Return {q_num: {'answer': str, 'explanation': str}}."""
    key: dict[int, dict] = {}
    in_key = False
    raw_lines: list[str] = []

    for page in pages:
        for line in page.splitlines():
            stripped = line.strip()
            if stripped in ("Answer Key", "# Answer Explanation"):
                in_key = True
                continue
            if in_key:
                raw_lines.append(stripped)

    # Each entry starts with "N answer explanation…"
    entry_re = re.compile(r'^(\d{1,2})\s+(.+?)$')
    current_num: int | None = None
    current_answer = ""
    current_expl: list[str] = []

    def flush():
        nonlocal current_num, current_answer, current_expl
        if current_num is not None:
            key[current_num] = {
                "answer": current_answer.strip(),
                "explanation": " ".join(current_expl).strip(),
            }
        current_num = None
        current_answer = ""
        current_expl = []

    # Patterns that look like an IELTS answer (not explanation text).
    # Multi-character keywords MUST come before single-letter [A-Z] to avoid
    # "YES" matching as "Y".
    # A valid lowercase roman numeral 1–39 that forms a COMPLETE token (word-bounded).
    # The leading (?=[ivx]) prevents empty matches; the trailing (?=\s|/|$) ensures we
    # don't match the "vi" prefix of a real word like "violent" or "civil".
    _ROMAN = r'(?=[ivx])x{0,3}(?:ix|iv|v?i{0,3})(?=\s|/|$)'
    _ANS_PAT = re.compile(
        r'^('
        r'NOT GIVEN|TRUE|FALSE|YES|NO'               # keywords first
        # A standalone letter answer (MCQ / matching) must be word-bounded, so
        # the "B" of "Bythwaite" or "C" of "Clapping" is NOT mistaken for a
        # letter answer — those fall through to the word alternative below.
        r'|[A-Z](?:\s*/\s*[A-Z])*(?=\s|$)'
        r'|' + _ROMAN + r'(?:\s*/\s*' + _ROMAN + r')?'  # roman numerals (whole token)
        r"|[A-Za-z][-A-Za-z']+"                       # a word, any case (violent, Bythwaite)
        r'|\d[\d,./]*(?:\s*[a-z]+)?(?:\s*/\s*\d[\d,./]*(?:\s*[a-z]+)?)?' # numbers+units
        r')\s*(.*)',
        re.DOTALL
    )

    for line in raw_lines:
        if not line or line == "# Answer Explanation":
            continue
        m = entry_re.match(line)
        if m:
            num = int(m.group(1))
            rest = m.group(2).strip()
            ans_pat = _ANS_PAT.match(rest)
            if ans_pat and 1 <= num <= 40:
                flush()
                current_num = num
                current_answer = ans_pat.group(1).strip()
                remainder = ans_pat.group(2).strip()
                current_expl = [remainder] if remainder else []
            elif current_num is not None:
                current_expl.append(line)
        elif current_num is not None:
            current_expl.append(line)

    flush()
    return key


# ─────────────────────────────────────────────────────────────────────────────
# 3. PASSAGE PARSER
# ─────────────────────────────────────────────────────────────────────────────

LETTER_LABEL = re.compile(r'^([A-H])\.?\s*$')
LETTER_LABEL_INLINE = re.compile(r'^([A-H])(?:\.\s+|\s+(?=[A-Z]))(.)')  # "A. text" or "A Text"
NUMBER_LABEL = re.compile(r'^(\d{1,2})\.?\s*$')

_SKIP_LINE = re.compile(
    r'^=== PAGE \d+ ===$'
    r'|^Cambridge IELTS \d+\b'
    r'|^Academic Reading Test \d+$'
    r'|^PASSAGE \d+'
    r'|^Practice this section only$'
    r'|^You should spend about'
    r'|^Reading Passage \d+'   # instruction wrap like "...based on Reading Passage 2"
    r'|^below\.$'              # orphaned "below." from wrapped timing instruction
    r'|^above\.$'
)

def parse_passage(raw_text: str, passage_num: int) -> dict:
    """Parse a passage block into {title, passage:[{ref,text}], has_letters, has_numbers}."""
    lines = [ln.rstrip() for ln in raw_text.splitlines()]

    # Strip header / admin lines and leading blank lines
    while lines and (_SKIP_LINE.match(lines[0].strip()) or not lines[0].strip()):
        lines.pop(0)

    # Title is the first non-blank line(s) before passage content starts.
    # Stop when we hit: a paragraph label (A, B, C…), a very long line (body text),
    # or a line that ends a sentence (contains a period that isn't an abbreviation).
    title_lines: list[str] = []
    i = 0
    while i < len(lines) and lines[i].strip():
        ln = lines[i].strip()
        if LETTER_LABEL.match(ln) or NUMBER_LABEL.match(ln):
            break
        if len(ln) > 80:
            if not title_lines:
                # Very long title — take it but stop
                title_lines.append(ln[:80])
            break
        title_lines.append(ln)
        i += 1
        # If this line ends with a period it's the start of the passage body
        if ln.endswith('.') and len(ln) > 20:
            break
    title = " ".join(title_lines).strip()

    # Remaining lines
    remaining = lines[i:]
    paragraphs = _parse_paragraphs(remaining)

    return {"title": title, "passage": paragraphs}


def _parse_paragraphs(lines: list[str]) -> list[dict]:
    """Parse lines into paragraphs. Handles lettered (A, B…), numbered (1, 2…),
    and plain (blank-line separated) formats. Strips heading-match numbers."""
    cleaned: list[str] = []
    i = 0
    while i < len(lines):
        ln = lines[i].strip()
        if not ln or _SKIP_LINE.match(ln):
            cleaned.append("")
            i += 1
            continue
        # A heading-match question number (standalone digit 1-40) immediately before
        # a letter label should be skipped (it's the "14\nA." pattern)
        if NUMBER_LABEL.match(ln) and i + 1 < len(lines) and LETTER_LABEL.match(lines[i+1].strip()):
            i += 1  # skip the number, let the letter be processed
            continue
        cleaned.append(ln)
        i += 1

    # Check which format we have
    has_letters = any(LETTER_LABEL.match(ln) for ln in cleaned if ln)
    has_inline_letters = any(LETTER_LABEL_INLINE.match(ln) for ln in cleaned if ln)
    has_numbers = any(NUMBER_LABEL.match(ln) for ln in cleaned if ln)

    if has_letters:
        return _extract_labelled(cleaned, LETTER_LABEL)
    elif has_inline_letters:
        return _extract_inline_labelled(cleaned, LETTER_LABEL_INLINE)
    elif has_numbers:
        return _extract_labelled(cleaned, NUMBER_LABEL)
    else:
        return _extract_plain(cleaned)


def _extract_labelled(lines: list[str], label_re) -> list[dict]:
    paragraphs: list[dict] = []
    current_ref: str | None = None
    current_text: list[str] = []

    def flush():
        if current_ref and current_text:
            text = " ".join(current_text).strip()
            text = re.sub(r'\s+', ' ', text)
            if text:
                paragraphs.append({"ref": current_ref, "text": text})

    for ln in lines:
        m = label_re.match(ln) if ln else None
        if m:
            flush()
            current_ref = m.group(1)
            current_text = []
        elif ln == "":
            # blank line: might be paragraph break within a labelled passage
            if current_text:
                current_text.append("")
        elif current_ref is not None:
            current_text.append(ln)

    flush()
    return paragraphs


def _extract_inline_labelled(lines: list[str], label_re) -> list[dict]:
    """Handle passages where the letter label is inline: 'A. First paragraph text…'"""
    paragraphs: list[dict] = []
    current_ref: str | None = None
    current_text: list[str] = []

    def flush():
        if current_ref and current_text:
            text = re.sub(r'\s+', ' ', ' '.join(current_text)).strip()
            if text:
                paragraphs.append({"ref": current_ref, "text": text})

    for ln in lines:
        m = label_re.match(ln) if ln else None
        if m:
            flush()
            current_ref = m.group(1)
            # Strip label prefix "A. " or "A " and keep the rest
            prefix_len = 3 if '. ' in ln[:3] else 2  # "A. " = 3, "A " = 2
            rest = ln[prefix_len:].strip()
            current_text = [rest] if rest else []
        elif ln == "":
            pass
        elif current_ref is not None:
            current_text.append(ln)

    flush()
    return paragraphs


def _extract_plain(lines: list[str]) -> list[dict]:
    """Split plain passage into numbered refs (1, 2, 3…) by blank lines or implicit breaks.

    Implicit break: a line that ends with sentence-terminating punctuation AND is shorter
    than typical full-width lines (~90 chars) — signals a paragraph end in PDFs that
    don't emit blank lines between paragraphs.
    """
    blocks: list[list[str]] = []
    current: list[str] = []

    for ln in lines:
        if ln == "":
            if current:
                blocks.append(current)
                current = []
        else:
            current.append(ln)
            # Implicit paragraph break: short line ending with sentence punctuation
            if (len(ln) < 72
                    and ln.rstrip().endswith(('.', '!', '?', '."', ".'", '."'))
                    and not ln.strip().endswith('etc.')
                    and not re.search(r'\b(?:Mr|Mrs|Dr|St|etc|vs|no|Fig)\.$', ln.strip(), re.IGNORECASE)):
                blocks.append(current)
                current = []

    if current:
        blocks.append(current)

    paragraphs = []
    for ref_i, block in enumerate(blocks, 1):
        text = re.sub(r'\s+', ' ', " ".join(block)).strip()
        if text and len(text) > 30:  # skip very short non-paragraph fragments
            paragraphs.append({"ref": str(ref_i), "text": text})

    return paragraphs


# ─────────────────────────────────────────────────────────────────────────────
# 4. QUESTION TYPE DETECTION
# ─────────────────────────────────────────────────────────────────────────────

def detect_q_type(instructions: str) -> str:
    instr = instructions.lower()
    # TFNG / YNNG: either compact phrase form or line-by-line TRUE/FALSE/NOT GIVEN layout
    if ("true, false or not given" in instr or "true  false  not given" in instr
            or ("not given" in instr and re.search(r'\btrue\b', instr) and re.search(r'\bfalse\b', instr))):
        return "tfng"
    if ("yes, no or not given" in instr
            or ("not given" in instr and re.search(r'\byes\b', instr) and re.search(r'\bno\b', instr))):
        return "tfng_claims"
    # choose two must be checked early (before generic "correct letter" check)
    if "choose two letters" in instr or "choose two" in instr:
        return "choose_two"
    # heading matching must come before MCQ ("choose the correct heading" vs "choose the correct letter")
    if ("correct heading for" in instr or "list of headings" in instr
            or "choose the correct heading" in instr):
        return "matching_headings"
    if "choose the correct letter" in instr:
        return "mcq"
    if "which section" in instr or "which paragraph" in instr:
        return "which_section"
    if "match each statement" in instr or "match each" in instr:
        return "matching_people"
    if "sentence endings" in instr or "correct ending" in instr:
        return "matching_endings"
    # summary with word bank must come before plain completion
    if "complete the summary using" in instr and ("list of words" in instr or "list of phrases" in instr or "words" in instr):
        return "summary_wordbank"
    if "one word only" in instr or "no more than" in instr or "complete the" in instr:
        return "completion"
    return "completion"


# ─────────────────────────────────────────────────────────────────────────────
# 5. QUESTION BLOCK PARSERS
# ─────────────────────────────────────────────────────────────────────────────

def find_evidence_ref(explanation: str, passage: list[dict]) -> str | None:
    """Try to find which passage paragraph contains the evidence quote."""
    # The explanation often contains a verbatim quote from the passage
    snippet = explanation[:120].lower()
    best_ref = None
    best_len = 0
    for para in passage:
        para_lower = para["text"].lower()
        # Try matching first 80 chars of explanation against paragraph
        for length in [80, 60, 40, 20]:
            frag = snippet[:length].strip()
            if len(frag) >= 15 and frag in para_lower:
                if length > best_len:
                    best_len = length
                    best_ref = para["ref"]
                break
    return best_ref


def _q_label(q_type: str) -> str:
    labels = {
        "tfng": "TRUE / FALSE / NOT GIVEN",
        "tfng_claims": "YES / NO / NOT GIVEN",
        "completion": "completion",
        "mcq": "multiple choice",
        "choose_two": "choose two",
        "matching_headings": "matching headings",
        "matching_endings": "matching sentence endings",
        "matching_people": "matching",
        "which_section": "matching",
        "summary_wordbank": "completion",
    }
    return labels.get(q_type, "completion")


def parse_q_range(text: str) -> tuple[int, int] | None:
    m = re.search(r'Questions?\s+(\d+)[–\-–](\d+)', text)
    if m:
        return int(m.group(1)), int(m.group(2))
    m = re.search(r'Questions?\s+(\d+)', text)
    if m:
        n = int(m.group(1))
        return n, n
    return None


# ── True / False / Not Given ──────────────────────────────────────────────────

def parse_tfng(text: str, q_first: int, q_last: int,
               answers: dict, section_id: str, passage: list[dict],
               q_type: str = "tfng") -> dict:
    instructions = _extract_instructions(text, q_first)

    # Extract statement texts: lines starting with number + whitespace
    statements: dict[int, str] = {}
    stmt_re = re.compile(r'^(\d{1,2})\s+(.+)')
    current_n: int | None = None
    current_parts: list[str] = []

    def flush_stmt():
        if current_n is not None:
            statements[current_n] = re.sub(r'\s+', ' ', ' '.join(current_parts)).strip()

    # Also collect multi-line statements (continuation lines before next number)
    lines = text.splitlines()
    for line in lines:
        line = line.strip()
        if not line:
            continue
        # Stop at "A TRUE" markers
        if re.match(r'^A TRUE$', line) or re.match(r'^A YES$', line):
            continue
        if re.match(r'^[ABC] (TRUE|FALSE|NOT GIVEN|YES|NO)$', line):
            continue
        m = stmt_re.match(line)
        if m:
            num = int(m.group(1))
            if q_first <= num <= q_last:
                flush_stmt()
                current_n = num
                current_parts = [m.group(2).strip()]
            elif current_n is not None:
                flush_stmt()
                current_n = None
                current_parts = []
        elif current_n is not None:
            # continuation line
            current_parts.append(line)
    flush_stmt()

    questions = []
    for num in range(q_first, q_last + 1):
        prompt = statements.get(num, f"[Statement {num} — needs manual entry]")
        ans_data = answers.get(num, {})
        ans = ans_data.get("answer", "NOT GIVEN")
        expl = ans_data.get("explanation", "")
        ref = find_evidence_ref(expl, passage)
        q: dict = {
            "number": num,
            "prompt": prompt,
            "answer": ans,
            "explanation": expl,
        }
        if ref:
            q["evidence"] = {"sectionId": section_id, "ref": ref, "quote": expl[:120]}
        questions.append(q)

    type_key = "true_false_notgiven" if q_type == "tfng" else "yes_no_notgiven"
    return {
        "type": type_key,
        "label": f"Questions {q_first}–{q_last}",
        "instructions": canon_tfng(section_id, claims=(q_type != "tfng")),
        "questions": questions,
    }


# ── Completion ────────────────────────────────────────────────────────────────

def _build_completion_form_content(text: str, q_first: int, q_last: int) -> list[dict]:
    """Build formContent with inter-blank static text so the UI renders a continuous form."""
    clean = re.sub(r'=== PAGE \d+ ===', '', text)
    clean = re.sub(r'^Questions?\s+\d+[-–—]\d+[^\n]*', '', clean, flags=re.MULTILINE)
    clean = re.sub(r'^Questions?\s+\d+\s*$', '', clean, flags=re.MULTILINE)
    # Strip "Write your answers in boxes…" instruction lines (contain question numbers that
    # would otherwise appear before the actual blank positions in the form).
    clean = re.sub(r'(?i)\bwrite\s+your\s+answers?\s+in\s+boxes?[^\n]*', '', clean)
    clean = re.sub(r'(?i)\bboxes?\s+\d+\s*[-–—]\s*\d+\b[^\n]*', '', clean)
    clean = re.sub(r'(?i)\bboxes?\s+on\s+your\s+answer\s+sheet\b[^\n]*', '', clean)

    # Find the position of each blank number in the cleaned text
    positions: dict[int, tuple[int, int]] = {}
    for num in range(q_first, q_last + 1):
        pat = re.compile(rf'(?<!\d)\b{num}\b(?!\d)(?=\s|\s*$)', re.DOTALL)
        m = pat.search(clean)
        if m:
            positions[num] = (m.start(), m.end())

    if len(positions) < 2:
        # Not enough blanks found — fall back to simple list
        return [{"kind": "question", "number": n} for n in range(q_first, q_last + 1)]

    ordered = sorted(positions.items(), key=lambda x: x[1][0])

    # Form starts up to 300 chars before the first blank (to capture preamble/header lines)
    first_start = ordered[0][1][0]
    form_text_start = max(0, first_start - 300)
    # Trim to after the last newline before the first blank (don't include instructions)
    preamble = clean[form_text_start:first_start]
    last_nl = preamble.rfind('\n')
    if last_nl != -1:
        form_text_start += last_nl + 1

    form: list[dict] = []
    prev_end = form_text_start

    for num, (start, end) in ordered:
        # Static text between previous blank and this one
        between = clean[prev_end:start]
        between = re.sub(r'\s+', ' ', between).strip()
        if between:
            form.append({"kind": "static", "text": between, "noBullet": True})
        form.append({"kind": "question", "number": num})
        prev_end = end  # right after the number

    # Static text after last blank (up to sentence end or 200 chars)
    tail = clean[prev_end:prev_end + 250].strip()
    tail = re.sub(r'\s+', ' ', tail)
    # Cut at next question-group header or at ~sentence boundary
    tail = re.split(r'Questions?\s+\d+|=== PAGE', tail)[0]
    first_stop = tail.find('.')
    if 0 < first_stop < 200:
        tail = tail[:first_stop + 1]
    else:
        tail = tail[:150]
    tail = tail.strip()
    if tail:
        form.append({"kind": "static", "text": tail, "noBullet": True})

    return form


def _structured_form_body(text: str, q_first: int, q_last: int) -> list[str]:
    """Return the ordered form lines (headers + bullets) after the title/instructions."""
    clean = re.sub(r'=== PAGE \d+ ===', '', text)
    lines = [ln.rstrip() for ln in clean.splitlines()]
    nums = set(range(q_first, q_last + 1))

    def has_blank(s: str) -> bool:
        return any(re.search(r'(?<!\d)\b%d\b(?!\d)' % n, s) for n in nums)

    # Start after the instruction directive and the form title.
    start = 0
    for i, ln in enumerate(lines):
        s = ln.strip()
        if re.search(r'for each answer', s, re.IGNORECASE) or re.search(r'answer sheet', s, re.IGNORECASE):
            start = i + 1
    # Skip the title line (no blank, precedes the first content) and blank lines.
    idx = start
    while idx < len(lines):
        s = lines[idx].strip()
        if not s:
            idx += 1
            continue
        if not has_blank(s) and idx + 1 < len(lines):
            # Peek: is a blank coming later? If the very next content lines lead into
            # blanks, this first line is the form title — skip exactly one such line.
            idx += 1
            break
        break
    body = lines[idx:]
    # Bound at the last blank-bearing line, keeping trailing static lines up to a
    # blank line or the next section marker.
    last_blank = -1
    for j, ln in enumerate(body):
        if has_blank(ln):
            last_blank = j
    if last_blank == -1:
        return []
    end = last_blank
    for j in range(last_blank + 1, len(body)):
        s = body[j].strip()
        if not s or re.match(r'(?i)Questions?\s|=== PAGE', s):
            break
        end = j
    return [ln for ln in body[:end + 1]]


def _mark_blanks_ordered(text: str, q_first: int, q_last: int) -> str:
    """Mark each blank exactly once, left-to-right in ascending order.

    Blanks in a form run 1, 2, 3 … in reading order, so a monotonic cursor
    resolves the collisions that wreck a naive replace: a content number equal
    to a question number — an age range "4-5", a time "10 am", "Building 10A",
    a price "£50" — is never marked, because a valid blank token is one that is
    NOT glued to another digit/letter, a hyphen, or a currency sign, and the
    real blank for N always appears after the real blank for N-1.
    """
    out: list[str] = []
    cursor = 0
    for n in range(q_first, q_last + 1):
        pat = re.compile(r'(?<![\d£$.\-])0*%d(?![\dA-Za-z])' % n)
        m = pat.search(text, cursor)
        if not m:  # out of order or absent — fall back to any valid occurrence
            m = pat.search(text)
            if not m:
                continue
        out.append(text[cursor:m.start()])
        out.append('{%d}' % n)
        cursor = m.end()
    out.append(text[cursor:])
    return ''.join(out)


def _build_structured_form(text: str, q_first: int, q_last: int) -> tuple[list[dict], dict[int, str]]:
    """Notes/table/flow-chart forms: one formContent entry per source line.

    Sub-headers → 'subheader', blank-less bullets → 'static', bullets with a
    blank → 'question' (prompt carries the full line with _______). Mirrors the
    hand-authored gold-standard structure.
    """
    body = _structured_form_body(text, q_first, q_last)
    if not body:
        return [], {}

    # Place the blank markers with a single ordered pass, then rebuild lines.
    body = _mark_blanks_ordered("\n".join(body), q_first, q_last).split("\n")

    # Assemble logical lines: attach a bare marker line to the previous line, and
    # join a lowercase-initial continuation to the previous line.
    logical: list[str] = []
    for raw in body:
        s = raw.strip()
        if not s:
            continue
        if re.fullmatch(r'\{\d+\}', s):
            if logical:
                logical[-1] = (logical[-1] + ' ' + s).strip()
            continue
        if logical and re.match(r'^[a-z(]', s) and not s.startswith('{'):
            logical[-1] = (logical[-1] + ' ' + s).strip()
        else:
            logical.append(s)

    form: list[dict] = []
    prompts: dict[int, str] = {}
    for line in logical:
        line = re.sub(r'\s+', ' ', line).strip()
        marks = re.findall(r'\{(\d+)\}', line)
        if not marks:
            # Sub-header vs static bullet.
            if len(line) <= 34 and not re.search(r'[.!?,:]$', line):
                form.append({"kind": "subheader", "text": line})
            else:
                form.append({"kind": "static", "text": line})
        elif len(marks) == 1:
            num = int(marks[0])
            prompts[num] = line.replace('{%d}' % num, '_______')
            form.append({"kind": "question", "number": num})
        else:
            # Multiple blanks in one line: split into static + question fragments.
            parts = re.split(r'\{(\d+)\}', line)
            # parts = [text, num, text, num, text, …]
            first = True
            for k in range(0, len(parts) - 1, 2):
                seg = parts[k].strip()
                num = int(parts[k + 1])
                if seg:
                    form.append({"kind": "static", "text": seg,
                                 **({} if first else {"noBullet": True})})
                prompts[num] = "_______"
                form.append({"kind": "question", "number": num})
                first = False
            tail = parts[-1].strip()
            if tail:
                form.append({"kind": "static", "text": tail, "noBullet": True})
    return form, prompts


def _extract_form_title(text: str, q_first: int, q_last: int) -> str:
    """The form heading between the instructions and the first blank.

    e.g. 'Reasons why polar bears should be protected'. Returns '' for sentence
    completion (where the first content line already contains a blank).
    """
    t = re.sub(r'=== PAGE \d+ ===', '', text)
    # Drop admin / recording lines that contain question numbers themselves.
    t = re.sub(r'(?im)^\s*Questions?\s+\d+[^\n]*$', '', t)
    t = re.sub(r'(?im)^\s*Practice this section only\s*$', '', t)
    t = re.sub(r'(?im)^.*write\s+your\s+answers?\s+in\s+boxes?[^\n]*$', '', t)
    t = re.sub(r'(?im)^.*\bin\s+boxes?\s+\d+[^\n]*answer\s+sheet[^\n]*$', '', t)

    lines = [ln.strip() for ln in t.splitlines()]
    # Skip past the instruction directive block.
    start = 0
    for i, ln in enumerate(lines):
        if re.search(r'for each answer', ln, re.IGNORECASE):
            start = i + 1
            break
        if re.match(r'(?i)^Complete the .+\bbelow\b', ln) and 'answer' not in ln.lower():
            start = i + 1

    nums = set(range(q_first, q_last + 1))
    # The title is the single first heading line before the form body. (Any further
    # sub-headers are emitted by the structured form builder, not the title.)
    title = ""
    for ln in lines[start:]:
        if not ln:
            continue
        if any(re.search(r'(?<!\d)\b' + str(n) + r'\b(?!\d)', ln) for n in nums):
            break
        title = ln
        break
    title = re.sub(r'\s+', ' ', title).strip()
    # Titles are short headings; anything long is miscaptured body text.
    return title if 0 < len(title) <= 90 else ""


def _detect_form_kind(raw: str) -> str:
    t = raw.lower()
    m = re.search(r'complete the (table|notes?|summary|flow[\s-]?chart|diagram|sentences?|form)\b', t)
    if m:
        kind = m.group(1)
        if kind.startswith("flow"):
            return "flow-chart"
        if kind.startswith("note"):
            return "notes"
        if kind.startswith("sentence"):
            return "sentences"
        return kind
    return "notes"


def parse_completion(text: str, q_first: int, q_last: int,
                     answers: dict, section_id: str, passage: list[dict]) -> dict:
    raw_instr = _extract_instructions(text, q_first)
    form_kind = _detect_form_kind(raw_instr)
    word_limit = _extract_word_limit(raw_instr)
    wl_phrase = _word_limit_phrase(raw_instr)
    instructions = (f"Complete the {form_kind} below. "
                    f"Choose {wl_phrase} from the passage for each answer.")

    # Notes/table/flow-chart/diagram forms have real line structure (sub-headers +
    # bullets), so build one formContent entry per line with the full-line prompt.
    # Summary/sentence forms are flowing text — keep the sentence-fragment model.
    structured = form_kind in ("notes", "table", "flow-chart", "diagram", "form")
    if structured:
        form_content, sentences = _build_structured_form(text, q_first, q_last)
        if not form_content:  # fallback if structure not recoverable
            form_content = _build_completion_form_content(text, q_first, q_last)
            has_fc_statics = any(item['kind'] == 'static' for item in form_content)
            sentences = _extract_completion_sentences(text, q_first, q_last, short=has_fc_statics)
    else:
        form_content = _build_completion_form_content(text, q_first, q_last)
        has_fc_statics = any(item['kind'] == 'static' for item in form_content)
        sentences = _extract_completion_sentences(text, q_first, q_last, short=has_fc_statics)

    questions = []
    for num in range(q_first, q_last + 1):
        prompt = sentences.get(num, f"_______ [{num}]")
        ans_data = answers.get(num, {})
        ans_raw = ans_data.get("answer", "")
        # Completion answers can be slash-separated (alternative spellings)
        if "/" in ans_raw and not ans_raw.startswith("B /"):
            ans = [a.strip() for a in ans_raw.split("/") if a.strip()]
        else:
            ans = [ans_raw] if ans_raw else []
        expl = ans_data.get("explanation", "")
        ref = find_evidence_ref(expl, passage)
        q: dict = {
            "number": num,
            "prompt": prompt,
            "answer": ans,
            "wordLimit": word_limit,
            "explanation": expl,
        }
        if ref:
            q["evidence"] = {"sectionId": section_id, "ref": ref, "quote": expl[:120]}
        questions.append(q)

    group = {
        "type": "completion",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": instructions,
        "formContent": form_content,
        "questions": questions,
    }
    # Only note/table/flow-chart style forms carry a heading; sentence completion
    # has no title (its first content line already holds a blank).
    has_structure = structured or any(item['kind'] in ('static', 'subheader')
                                      for item in form_content)
    if has_structure:
        title = _extract_form_title(text, q_first, q_last)
        if title:
            group["formTitle"] = title
    return group


def _extract_completion_sentences(text: str, q_first: int, q_last: int,
                                   short: bool = False) -> dict[int, str]:
    """Extract the phrase/sentence containing each blank, with _______ in place of it.

    When short=True (notes/table completion with formContent statics), the prompt
    captures only the phrase immediately around the blank — the formContent already
    carries the full inter-blank context, so the prompt only needs the compact hint.
    When short=False (sentence/summary completion), a full sentence fragment is kept.
    """
    result: dict[int, str] = {}
    # Remove page markers and question-range headers before scanning
    text = re.sub(r'=== PAGE \d+ ===', '', text)
    # Remove "Questions N-M" lines so they don't match as blanks
    text = re.sub(r'^Questions?\s+\d+[-–—]\d+[^\n]*', '', text, flags=re.MULTILINE)
    text = re.sub(r'^Questions?\s+\d+\s*$', '', text, flags=re.MULTILINE)
    # Strip "Write your answers in boxes…" instruction lines (contain question numbers that
    # would otherwise be found as blank positions before the actual form).
    text = re.sub(r'(?i)\bwrite\s+your\s+answers?\s+in\s+boxes?[^\n]*', '', text)
    text = re.sub(r'(?i)\bboxes?\s+\d+\s*[-–—]\s*\d+\b[^\n]*', '', text)
    text = re.sub(r'(?i)\bboxes?\s+on\s+your\s+answer\s+sheet\b[^\n]*', '', text)
    # Remove TRUE/FALSE/NOT GIVEN option lines only (very specific patterns)
    text = re.sub(r'^[A-C]\s+(?:TRUE|FALSE|NOT GIVEN|YES|NO)\s*$', '', text, flags=re.MULTILINE)

    for num in range(q_first, q_last + 1):
        # Match the blank: word-boundary + number + optional whitespace (or end-of-string).
        pattern = re.compile(
            r'(.{0,300}?)(?<!\d)\b' + str(num) + r'\b(?!\d)(?:\s+|\s*$)(.{0,300})',
            re.DOTALL
        )
        m = pattern.search(text)
        if not m:
            continue

        before = m.group(1).replace('\n', ' ').strip()
        after  = m.group(2).replace('\n', ' ').strip()

        # Don't use a match that is just the question range header residue
        combined = (before + ' ' + after).strip()
        if re.match(r'^-?\d', combined) and len(combined) < 20:
            continue

        # Trim before: keep only the last clause (after last sentence/clause separator)
        for sep in ['. ', '.\n', ': ', ';\n', '; ', ' - ', ' – ', ' — ']:
            pos = before.rfind(sep)
            if pos != -1:
                before = before[pos + len(sep):].strip()
                break

        if short:
            # Notes/table form: formContent statics carry the inter-blank text.
            # Prompt = immediate phrase around the blank only (~5-7 words each side).

            # Trim before: keep at most 35 chars (last ~6 words before the blank).
            if len(before) > 35:
                cut = len(before) - 35
                sp = before.find(' ', cut)
                before = before[sp + 1:].strip() if sp != -1 else before[-35:].strip()
            # Strip embedded question numbers from adjacent blanks
            other_nums = [n for n in range(q_first, q_last + 1) if n != num]
            if other_nums:
                alt_pat = '|'.join(str(n) for n in other_nums)
                before = re.sub(r'\s*\b(?:' + alt_pat + r')\b\s*', ' ', before)
                before = re.sub(r'\s+', ' ', before).strip()

            # Trim after: two-step — first strip to next blank number, then strip
            # at first clause-boundary punctuation (both steps always applied so that
            # leading '. ' or ', ' after a blank-at-end-of-clause gets removed too).
            after_trimmed = after[:40]
            next_q_m = re.search(r'(?<!\d)\b\d{1,2}\b(?!\d)', after_trimmed)
            if next_q_m:
                after_trimmed = after_trimmed[:next_q_m.start()]
            for stop_ch in ['.', ',', ';', ':', '(']:
                p = after_trimmed.find(stop_ch)
                if 0 <= p < len(after_trimmed):
                    after_trimmed = after_trimmed[:p]
                    break
            after = after_trimmed.strip()
            # Drop after if still too long — formContent statics cover the inter-blank text
            if len(after) > 15:
                after = ""
        else:
            # Sentence/summary completion: include enough for a full sentence fragment
            next_q = re.search(r'(?<!\d)\b\d{1,2}\b(?!\d)\s+', after)
            if next_q and next_q.start() < 200:
                after = after[:next_q.start()].strip()
            else:
                first_stop = after.find('.')
                if 0 < first_stop < 200:
                    after = after[:first_stop + 1].strip()
                else:
                    after = after[:200].strip()

        prompt = re.sub(r'\s+', ' ', f"{before} _______ {after}").strip()
        # Sanity check: prompt should contain real words, not just markers
        if len(prompt.replace('_', '').strip()) > 10:
            result[num] = prompt

    return result


def _extract_word_limit(instructions: str) -> int:
    m = re.search(r'no more than (\w+) words?', instructions.lower())
    if m:
        words = {"one": 1, "two": 2, "three": 3}
        return words.get(m.group(1), 2)
    if "one word only" in instructions.lower():
        return 1
    return 1


# ── Summary completion with word bank ─────────────────────────────────────────

def _parse_word_bank(text: str) -> list[dict]:
    """Extract an A–J word/phrase bank robustly.

    Handles PDF artefacts: entries glued together ('fameB. vast'), and phrases
    containing hyphens or apostrophes ('record-breaking', "biographer's").
    """
    # Un-glue "wordX." → "word X." where a letter+dot is stuck to the prior word,
    # but only when a space follows the dot (real bank entries look like "X. ").
    norm = re.sub(r'(\S)([A-J]\.\s)', r'\1 \2', text)
    # Bank lines carry at least one "X. <lowercase>" entry.
    bank_lines = [ln.strip() for ln in norm.splitlines()
                  if re.search(r'(?:^|\s)[A-J]\.\s+[a-z]', ln)]
    if not bank_lines:
        return []
    joined = ' '.join(bank_lines)
    # Split into entries: key + text up to the next "X. " entry (or end).
    entries = re.findall(r'([A-J])\.\s*(.+?)(?=\s+[A-J]\.\s|\s*$)', joined)
    word_bank: list[dict] = []
    expected = 'A'
    for k, v in entries:
        # Keep the sequential run A, B, C … (guards against stray matches).
        if k == expected:
            word_bank.append({"key": k, "text": re.sub(r'\s+', ' ', v).strip()})
            expected = chr(ord(expected) + 1)
    return word_bank


def parse_summary_wordbank(text: str, q_first: int, q_last: int,
                            answers: dict, section_id: str, passage: list[dict]) -> dict:
    word_bank = _parse_word_bank(text)

    # Canonical instruction wording (matches the gold-standard books).
    last_key = word_bank[-1]["key"] if word_bank else "H"
    instructions = f"Complete the summary using the list of words, A–{last_key}, below."

    # Extract summary text (the passage-like block with numbered blanks). The
    # title stays as the first line of the body — the frontend has no separate
    # summaryTitle slot, so peeling it out would drop it from the page.
    summary_text = _extract_summary_text(text, q_first, q_last)

    # Build questions
    questions = []
    for num in range(q_first, q_last + 1):
        ans_data = answers.get(num, {})
        ans = ans_data.get("answer", "")
        expl = ans_data.get("explanation", "")
        ref = find_evidence_ref(expl, passage)
        q: dict = {
            "number": num,
            "prompt": "",
            "answer": ans,
            "explanation": expl,
        }
        if ref:
            q["evidence"] = {"sectionId": section_id, "ref": ref, "quote": expl[:120]}
        questions.append(q)

    return {
        "type": "completion",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": instructions,
        "summaryTitle": "",
        "summaryText": summary_text,
        "wordBank": word_bank if word_bank else None,
        "questions": questions,
    }


def _extract_summary_text(text: str, q_first: int, q_last: int) -> str:
    """Extract the cloze passage with {N} placeholders for each blank."""
    # Remove instructions header
    text = re.sub(r'=== PAGE \d+ ===', '', text)
    lines = text.splitlines()
    # Find the section with question numbers in it
    start = 0
    for i, ln in enumerate(lines):
        if re.search(r'\b' + str(q_first) + r'\s+', ln):
            start = max(0, i - 2)
            break

    chunk = "\n".join(lines[start:])
    # Replace each blank "N  " or "N " with {N}
    for num in range(q_first, q_last + 1):
        chunk = re.sub(r'\b' + str(num) + r'\s+', f'{{{num}}} ', chunk)
    # Clean up
    chunk = re.sub(r'\n{3,}', '\n\n', chunk)
    return chunk.strip()


# ── Matching headings ─────────────────────────────────────────────────────────

def parse_matching_headings(text: str, q_first: int, q_last: int,
                             answers: dict, section_id: str, passage: list[dict]) -> dict:
    instructions = _extract_instructions(text, q_first)
    # Strip the "List of Headings" section — those go in options, not instructions
    m_loh = re.search(r'List of Headings?\b', instructions, re.IGNORECASE)
    if m_loh:
        instructions = instructions[:m_loh.start()].strip()

    # Extract list of headings: "i. heading text" — the space after the dot may be
    # ABSENT in the PDF ("vii.An idea…"), so \s* not \s+, but require heading text
    # to begin with a non-space character.
    options: list[dict] = []
    opt_re = re.compile(r'^([ivx]{1,4})[.\)]\s*(\S.*)$', re.IGNORECASE)
    for line in text.splitlines():
        m = opt_re.match(line.strip())
        if m:
            options.append({"key": m.group(1).lower(), "text": m.group(2).strip()})

    # Extract questions: question number → "Paragraph X" or "Section X"
    # The PDF shows questions as: "N  Paragraph A" or just the question number
    # with the paragraph letter derived from passage order
    questions = []
    q_lines = re.findall(r'\b(\d{1,2})\s+(Paragraph\s+[A-H]|Section\s+[A-H])', text)
    q_map = {int(n): ref.strip() for n, ref in q_lines}

    for num in range(q_first, q_last + 1):
        prompt = q_map.get(num, f"Paragraph {_para_letter(num - q_first)}")
        ans_data = answers.get(num, {})
        ans = ans_data.get("answer", "")
        expl = ans_data.get("explanation", "")
        # Find which paragraph this heading applies to
        para_letter = q_map.get(num, _para_letter(num - q_first))
        if "Paragraph" in para_letter or "Section" in para_letter:
            ref = para_letter.split()[-1]
        else:
            ref = para_letter
        q: dict = {
            "number": num,
            "prompt": prompt,
            "answer": ans,
            "explanation": expl,
            "evidence": {"sectionId": section_id, "ref": ref, "quote": expl[:120]},
        }
        questions.append(q)

    para_count = sum(1 for p in passage if len(p["ref"]) == 1 and p["ref"].isalpha())
    if not para_count:
        para_count = q_last - q_first + 1
    return {
        "type": "matching",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": canon_headings(section_id, para_count),
        "optionsLabel": "List of Headings",
        "options": options,
        "questions": questions,
    }


def _para_letter(index: int) -> str:
    return chr(ord('A') + index) if 0 <= index < 26 else "?"


# ── Which section/paragraph matching ─────────────────────────────────────────

def parse_which_section(text: str, q_first: int, q_last: int,
                         answers: dict, section_id: str, passage: list[dict]) -> dict:
    instructions = _extract_instructions(text, q_first)

    # Extract options (the section letters from passage)
    # The question body is: "N  description of information"
    stmt_re = re.compile(r'^(\d{1,2})\s+(.+)')
    statements: dict[int, str] = {}
    for line in text.splitlines():
        m = stmt_re.match(line.strip())
        if m:
            num = int(m.group(1))
            if q_first <= num <= q_last:
                statements[num] = re.sub(r'\s+', ' ', m.group(2)).strip()

    questions = []
    for num in range(q_first, q_last + 1):
        prompt = statements.get(num, f"[Statement {num}]")
        ans_data = answers.get(num, {})
        ans = ans_data.get("answer", "")
        expl = ans_data.get("explanation", "")
        q: dict = {
            "number": num,
            "prompt": prompt,
            "answer": ans,
            "explanation": expl,
        }
        if ans and len(ans) == 1:
            q["evidence"] = {"sectionId": section_id, "ref": ans, "quote": expl[:120]}
        questions.append(q)

    # Build options from passage — bare letters (frontend shows no options box)
    letter_refs = [p["ref"] for p in passage if len(p["ref"]) == 1 and p["ref"].isalpha()]
    options = [{"key": r, "text": r} for r in letter_refs]
    para_count = len(letter_refs) or (q_last - q_first + 1)
    unit = "section" if re.search(r'which section', text, re.IGNORECASE) else "paragraph"

    return {
        "type": "matching",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": canon_which_section(section_id, para_count, questions, unit),
        "options": options,
        "questions": questions,
    }


# ── Matching people / categories ──────────────────────────────────────────────

def _clean_people_instructions(src: str, questions: list[dict], options: list[dict]) -> str:
    """Keep the descriptive lead sentences, drop the embedded options list.

    Raw parse leaves 'List of people A Stella Pachidi B Hamish Low …' appended to
    the instructions. We cut everything after the 'Match each … , A–X.' sentence.
    """
    # Cut at the "Match each/the … [letter range]." sentence end.
    m = re.search(r'^(.*?Match\s+(?:each|the)\b.+?[.?])(?:\s|$)', src, re.DOTALL)
    if m:
        cleaned = re.sub(r'\s+', ' ', m.group(1)).strip()
    else:
        # Fallback: cut before the first option's text if present.
        cleaned = src
        if options:
            idx = cleaned.find(options[0]["text"])
            if idx > 0:
                cleaned = cleaned[:idx].rstrip(" ABCDEFGH.").strip()
    # Append reused-letter note when answers repeat and it isn't already present.
    note = _reused_letters_note(questions)
    if note and "more than once" not in cleaned.lower():
        cleaned = cleaned.rstrip(".") + "." + note
    return cleaned


def parse_matching_people(text: str, q_first: int, q_last: int,
                           answers: dict, section_id: str, passage: list[dict]) -> dict:
    instructions = _extract_instructions(text, q_first)

    # Extract list of people/categories: "A Name" or "A. Name"
    # Options can appear:
    #   (a) under an explicit "List of researchers/people" heading, OR
    #   (b) directly in the block after the instructions (no heading needed).
    options: list[dict] = []
    list_re = re.compile(r'^([A-F])(?:[.\s])(.+)$')
    for line in text.splitlines():
        ln = line.strip()
        # Skip numbered question lines and page markers
        if re.match(r'^\d{1,2}\s+', ln) or re.match(r'^=== PAGE', ln):
            continue
        # Skip "A B C D" answer-key rows: line consisting entirely of spaced single letters
        if re.match(r'^(?:[A-F]\s+)+[A-F]\s*$', ln):
            continue
        m = list_re.match(ln)
        if m:
            opt_text = m.group(2).strip().lstrip('. ').strip()
            if opt_text and opt_text not in ("TRUE", "FALSE", "NOT GIVEN", "YES", "NO"):
                # Must look like a name / label: at least 2 chars, not a lone letter key
                if len(opt_text) > 1 and not re.match(r'^[A-F]\s*$', opt_text):
                    options.append({"key": m.group(1), "text": opt_text})

    stmt_re = re.compile(r'^(\d{1,2})\s+(.+)')
    statements: dict[int, str] = {}
    for line in text.splitlines():
        m = stmt_re.match(line.strip())
        if m:
            num = int(m.group(1))
            if q_first <= num <= q_last:
                statements[num] = re.sub(r'\s+', ' ', m.group(2)).strip()

    questions = []
    for num in range(q_first, q_last + 1):
        prompt = statements.get(num, f"[Statement {num}]")
        ans_data = answers.get(num, {})
        ans = ans_data.get("answer", "")
        expl = ans_data.get("explanation", "")
        ref = find_evidence_ref(expl, passage)
        q: dict = {
            "number": num,
            "prompt": prompt,
            "answer": ans,
            "explanation": expl,
        }
        if ref:
            q["evidence"] = {"sectionId": section_id, "ref": ref, "quote": expl[:120]}
        questions.append(q)

    return {
        "type": "matching",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": _clean_people_instructions(instructions, questions, options),
        "optionsLabel": "Options",
        "options": options if options else [],
        "questions": questions,
    }


# ── Sentence ending matching ──────────────────────────────────────────────────

def parse_matching_endings(text: str, q_first: int, q_last: int,
                            answers: dict, section_id: str, passage: list[dict]) -> dict:
    instructions = _extract_instructions(text, q_first)

    # Sentence stems and endings appear in three PDF layouts:
    #   1. "31 stem text"                    (number first)
    #   2. "• stem text 31"                  (number last, same line)
    #   3. "• stem text\n31"                 (stem wraps, number on its own line)
    # Endings (options) then follow as "A. ending" (or bare letter + wrapped text).
    options: list[dict] = []
    statements: dict[int, str] = {}
    pending: list[str] = []          # buffer for a wrapped stem
    options_started = False
    current_opt_key: str | None = None
    current_opt_lines: list[str] = []

    NUM_FIRST = re.compile(r'^(\d{1,2})\s+(.+)')
    STANDALONE_NUM = re.compile(r'^(\d{1,2})$')
    STEM_END_NUM = re.compile(r'^[•\-–—]?\s*(.*?)\s+(\d{1,2})\s*$')
    OPT_START = re.compile(r'^([A-H])[.\)]?\s*(.*)$')
    SKIP = re.compile(r'(?i)^(Questions?\b|Practice this section|Complete |Write |Choose |Look at|Match |NB\b|=== PAGE)')

    def clean(s: str) -> str:
        return re.sub(r'\s+', ' ', s).strip()

    def flush_opt():
        if current_opt_key and current_opt_lines:
            text_str = clean(' '.join(current_opt_lines))
            if text_str and text_str not in ("TRUE", "FALSE", "NOT GIVEN", "YES", "NO"):
                options.append({"key": current_opt_key, "text": text_str})

    for line in text.splitlines():
        ln = line.strip()
        if not ln:
            continue

        if not options_started:
            if SKIP.match(ln):
                continue
            # Layout 1: "31 stem text"
            m = NUM_FIRST.match(ln)
            if m and q_first <= int(m.group(1)) <= q_last:
                statements[int(m.group(1))] = clean(m.group(2)); pending = []
                continue
            # Layout 3: standalone number → assign buffered wrapped stem
            m = STANDALONE_NUM.match(ln)
            if m and q_first <= int(m.group(1)) <= q_last:
                statements[int(m.group(1))] = clean(' '.join(pending)); pending = []
                continue
            # Layout 2: "• stem text 31"
            m = STEM_END_NUM.match(ln)
            if m and q_first <= int(m.group(2)) <= q_last:
                stem = clean(' '.join(pending) + ' ' + m.group(1))
                statements[int(m.group(2))] = stem; pending = []
                continue
            # Option list begins at the first "A. ending" line
            if re.match(r'^[A-H][.\)]\s+\S', ln):
                options_started = True
                # fall through to option handling
            else:
                # Wrapped stem continuation (strip a leading bullet)
                frag = ln.lstrip('•-–—').strip()
                if frag:
                    pending.append(frag)
                continue

        # ── Options region ──
        if re.match(r'^[A-H][.\)]?\s+\S', ln) or re.fullmatch(r'[A-H]', ln):
            mo = OPT_START.match(ln)
            flush_opt()
            current_opt_key = mo.group(1)
            current_opt_lines = [mo.group(2).strip()] if mo.group(2).strip() else []
        elif current_opt_key:
            current_opt_lines.append(ln)

    flush_opt()

    questions = []
    for num in range(q_first, q_last + 1):
        prompt = statements.get(num, f"[Sentence stem {num}]")
        ans_data = answers.get(num, {})
        ans = ans_data.get("answer", "")
        expl = ans_data.get("explanation", "")
        ref = find_evidence_ref(expl, passage)
        q: dict = {
            "number": num,
            "prompt": prompt,
            "answer": ans,
            "explanation": expl,
        }
        if ref:
            q["evidence"] = {"sectionId": section_id, "ref": ref, "quote": expl[:120]}
        questions.append(q)

    last_key = options[-1]["key"] if options else "F"
    return {
        "type": "matching",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": canon_endings(last_key),
        "optionsLabel": "Options",
        "options": options,
        "questions": questions,
    }


# ── MCQ ───────────────────────────────────────────────────────────────────────

def _mc_split_prompt_options(rest: str) -> tuple[str, list[dict]]:
    """Split an MCQ question body into (prompt, options A–D).

    Robust to PDF layouts where the option letter sits alone on its line with
    the text on following lines, and where the question stem wraps across lines.
    Options are read in sequence A, B, C, D.
    """
    q_lines: list[str] = []
    opts: list[dict] = []
    cur: dict | None = None
    expected = 'A'
    in_opts = False
    inline = re.compile(r'^([A-D])\s+(\S.*)$')
    for raw in rest.splitlines():
        s = raw.strip()
        if not s or s.startswith("=== PAGE") or s == "Practice this section only":
            continue
        m = inline.match(s)
        # A stem that begins with the word "A " (e.g. "A survey found …") looks
        # exactly like option A. It is given away by being followed not by a "B"
        # option but by another "A" line — the real option block. When we are
        # expecting B and instead see another A, the A we opened was the stem:
        # fold it back into the prompt and restart options here.
        if (m and m.group(1) == 'A' and expected == 'B'
                and cur and cur["key"] == 'A' and not opts):
            q_lines.append(f'A {cur["text"]}'.strip())
            cur = {"key": 'A', "text": re.sub(r'\s+', ' ', m.group(2)).strip()}
            expected = 'B'
        elif m and m.group(1) == expected:
            in_opts = True
            if cur:
                opts.append(cur)
            cur = {"key": m.group(1), "text": re.sub(r'\s+', ' ', m.group(2)).strip()}
            expected = chr(ord(expected) + 1)
        elif re.fullmatch(r'[A-D]', s) and s == expected:
            in_opts = True
            if cur:
                opts.append(cur)
            cur = {"key": s, "text": ""}
            expected = chr(ord(expected) + 1)
        elif in_opts and cur:
            cur["text"] = (cur["text"] + " " + s).strip()
        elif not in_opts:
            q_lines.append(s)
    if cur:
        opts.append(cur)
    prompt = re.sub(r'\s+', ' ', ' '.join(q_lines)).strip()
    return prompt, opts


def parse_mcq(text: str, q_first: int, q_last: int,
              answers: dict, section_id: str, passage: list[dict]) -> dict:
    instructions = _extract_instructions(text, q_first)

    questions = []
    # Parse each question block: "N Question text\nA option\nB option\nC option\nD option"
    q_blocks = re.split(r'(?=^\d{1,2}\s+)', text, flags=re.MULTILINE)
    parsed: dict[int, dict] = {}
    for block in q_blocks:
        block = block.strip()
        m_num = re.match(r'^(\d{1,2})\s+(.+)', block, re.DOTALL)
        if not m_num:
            continue
        num = int(m_num.group(1))
        if not (q_first <= num <= q_last):
            continue
        q_text, opts = _mc_split_prompt_options(m_num.group(2))
        parsed[num] = {"prompt": q_text, "options": opts}

    for num in range(q_first, q_last + 1):
        p = parsed.get(num, {"prompt": f"[Question {num}]", "options": []})
        ans_data = answers.get(num, {})
        ans = ans_data.get("answer", "")
        expl = ans_data.get("explanation", "")
        ref = find_evidence_ref(expl, passage)
        q: dict = {
            "number": num,
            "prompt": p["prompt"],
            "options": p["options"],
            "answer": ans,
            "explanation": expl,
        }
        if ref:
            q["evidence"] = {"sectionId": section_id, "ref": ref, "quote": expl[:120]}
        questions.append(q)

    max_options = max((len(q.get("options", [])) for q in questions), default=4)
    return {
        "type": "multiple_choice",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": canon_mcq(max_options),
        "questions": questions,
    }


# ── Choose TWO ────────────────────────────────────────────────────────────────

def _choose_two_options(chunk: str) -> list[dict]:
    """Extract A–E options from a choose-two chunk, joining continuation lines.

    Handles two PDF layouts: option text on the same line ("A They used…") and
    the option letter alone on its own line with text on the following lines.
    Options are expected in sequence A, B, C … so a bare capital only starts a
    new option when it is the next expected key.
    """
    opts: list[dict] = []
    cur: dict | None = None
    expected = 'A'
    opt_inline = re.compile(r'^([A-E])\s+(\S.*)$')
    for line in chunk.splitlines():
        s = line.strip()
        if not s or s.startswith("=== PAGE") or s == "Practice this section only":
            continue
        m = opt_inline.match(s)
        if m and m.group(1) == expected and m.group(2) not in ("TRUE", "FALSE", "NOT GIVEN"):
            if cur:
                opts.append(cur)
            cur = {"key": m.group(1), "text": re.sub(r'\s+', ' ', m.group(2)).strip()}
            expected = chr(ord(expected) + 1)
        elif re.fullmatch(r'[A-E]', s) and s == expected:
            # Bare option letter; its text is on the following line(s).
            if cur:
                opts.append(cur)
            cur = {"key": s, "text": ""}
            expected = chr(ord(expected) + 1)
        elif cur:
            # Continuation of the current option's text
            cur["text"] = (cur["text"] + " " + s).strip()
    if cur:
        opts.append(cur)
    return opts


def parse_choose_two(text: str, q_first: int, q_last: int,
                     answers: dict, section_id: str, passage: list[dict]) -> list[dict]:
    """Parse a choose-TWO block into one PAIRED group per "Which TWO" question.

    Each pair (e.g. 25 & 26) is scored together by scoreModule's Rule 6, so it
    must be its own group with: type "choose_two", paired True, group-level
    options, and both questions sharing the two-letter answer array (e.g.
    ["B", "D"]).
    """
    # Pair headers: "25 26 Which TWO…" — two consecutive numbers then prompt text.
    hdr_re = re.compile(r'^(\d{1,2})\s+(\d{1,2})\s+(\S.*)$', re.MULTILINE)
    headers = []
    for m in hdr_re.finditer(text):
        n1, n2 = int(m.group(1)), int(m.group(2))
        if q_first <= n1 <= q_last and q_first <= n2 <= q_last and n2 == n1 + 1:
            headers.append((n1, n2, m.start(3)))

    groups: list[dict] = []
    for idx, (n1, n2, prompt_start) in enumerate(headers):
        chunk_end = headers[idx + 1][2] if idx + 1 < len(headers) else len(text)
        chunk = text[prompt_start:chunk_end]

        # Prompt = text before the first option line
        opt_m = re.search(r'(?m)^[A-E]\s+\S', chunk)
        prompt = re.sub(r'\s+', ' ', (chunk[:opt_m.start()] if opt_m else chunk)).strip()

        options = _choose_two_options(chunk[opt_m.start():] if opt_m else "")
        last_key = options[-1]["key"] if options else "E"

        # Answer letters from the key ("B / D" → ["B", "D"])
        ans_str = answers.get(n1, {}).get("answer", "")
        letters = re.findall(r'[A-H]', ans_str)
        expl = answers.get(n1, {}).get("explanation", "")
        ref = find_evidence_ref(expl, passage)

        qs = []
        for num in (n1, n2):
            q: dict = {
                "number": num,
                "prompt": prompt,
                "answer": letters,
                "explanation": answers.get(num, {}).get("explanation", expl),
            }
            if ref:
                q["evidence"] = {"sectionId": section_id, "ref": ref, "quote": expl[:80]}
            qs.append(q)

        # Gold-standard pattern: the "Which TWO…" question lives in the group
        # instructions (the frontend renders instructions, not per-slot prompts).
        instr = f"Choose TWO letters, A–{last_key}."
        if prompt:
            instr = f"{instr} {prompt}"

        groups.append({
            "type": "choose_two",
            "paired": True,
            "label": f"Questions {n1}–{n2}",
            "instructions": instr,
            "options": options,
            "questions": qs,
        })

    return groups


# ── Shared helpers ────────────────────────────────────────────────────────────

def _extract_instructions(text: str, q_first: int) -> str:
    """Extract the question instructions (the block before the first question number)."""
    # Remove page markers and "Practice this section only"
    text = re.sub(r'=== PAGE \d+ ===', '', text)
    text = re.sub(r'Practice this section only\s*', '', text)
    # Find the position of the first question number.
    # 1. Double-space format (scanned PDFs)
    m = re.search(r'(?<!\w)' + str(q_first) + r'\s{2,}', text)
    if not m:
        # 2. Start-of-line: number + space + capital letter (TFNG / MCQ statements)
        m = re.search(r'(?m)^' + str(q_first) + r'\s+(?=[A-Z])', text)
    if not m:
        # 3. Choose-two pair at line start: "25 26 Which TWO…"
        m = re.search(r'(?m)^' + str(q_first) + r'\s+\d{1,2}\s', text)
    if m:
        before = text[:m.start()]
    else:
        before = text[:500]
    # Find "Questions N-M" line and take everything after it
    qline_m = re.search(r'Questions?\s+\d+', before)
    if qline_m:
        before = before[qline_m.end():]
    # Strip paper-based exam directions (not relevant in digital delivery)
    before = re.sub(
        r'Write (?:the correct )?(?:letter[s]?|(?:your )?answer[s]?)[^.]*(?:box(?:es)?|answer sheet)[^.]*\.?\s*',
        '', before, flags=re.IGNORECASE
    )
    before = re.sub(r'in boxes? (?:\d+[-–—]\d+\s*)?on your answer sheet\b[^.]*\.?\s*', '', before, flags=re.IGNORECASE)
    before = re.sub(r'\bNB\b[^.\n]+\.?\s*', '', before, flags=re.IGNORECASE)
    # Strip leading artifacts: PDF private-use chars, non-alpha before first word
    before = re.sub(r'\s+', ' ', before).strip()
    before = re.sub(r'^[^A-Za-z]+(?=[A-Za-z])', '', before)
    # Cap at 400 chars
    return before[:400]


# ── Canonical instruction templates ───────────────────────────────────────────
# Reading instructions are normalised to the wording used by the hand-authored
# gold-standard books (Cambridge 13/14). This eliminates the truncation,
# embedded-list, and paper-based-recording artefacts that raw PDF parsing leaves
# behind, while keeping the variable parts (passage number, letter ranges, word
# limits, reused-letter note) faithful to each specific test.

def _passage_num(section_id: str) -> str:
    m = re.search(r'\d+', section_id or "")
    return m.group(0) if m else "1"


def _last_letter(count: int) -> str:
    """Last uppercase letter for a run of `count` items: 6 → 'F'."""
    count = max(1, min(count, 26))
    return chr(ord('A') + count - 1)


def _word_limit_phrase(raw: str) -> str:
    """Canonical word-limit phrase from messy source text.

    Handles OCR corruptions like 'ANDIOR' → 'AND/OR'.
    """
    t = re.sub(r'\bAND[/I]OR\b', 'AND/OR', raw.upper())
    t = re.sub(r'\s+', ' ', t)
    has_num = "AND/OR A NUMBER" in t or "AND A NUMBER" in t
    num_suffix = " AND/OR A NUMBER" if has_num else ""
    m = re.search(r'NO MORE THAN (ONE|TWO|THREE) WORDS?', t)
    if m:
        return f"NO MORE THAN {m.group(1)} WORDS{num_suffix}"
    if "ONE WORD ONLY" in t:
        return "ONE WORD ONLY" + num_suffix
    if re.search(r'\bONE WORD\b', t):
        return "ONE WORD" + num_suffix
    return "ONE WORD ONLY"


def _reused_letters_note(questions: list[dict]) -> str:
    """'You may use any letter more than once.' when an answer letter repeats."""
    letters = [q.get("answer") for q in questions
               if isinstance(q.get("answer"), str) and len(q.get("answer", "")) == 1]
    if len(letters) != len(set(letters)):
        return " You may use any letter more than once."
    return ""


def canon_tfng(section_id: str, claims: bool) -> str:
    n = _passage_num(section_id)
    if claims:
        return (f"Do the following statements agree with the claims of the writer "
                f"in Reading Passage {n}? Write YES, NO or NOT GIVEN.")
    return (f"Do the following statements agree with the information given "
            f"in Reading Passage {n}? Write TRUE, FALSE or NOT GIVEN.")


def canon_mcq(max_options: int) -> str:
    last = _last_letter(max_options) if max_options else "D"
    letters = ", ".join(chr(ord('A') + i) for i in range(max_options - 1)) if max_options > 1 else "A"
    return f"Choose the correct letter, {letters} or {last}."


def canon_headings(section_id: str, para_count: int) -> str:
    n = _passage_num(section_id)
    last = _last_letter(para_count)
    return (f"Reading Passage {n} has {_num_word(para_count)} paragraphs, A–{last}. "
            f"Choose the correct heading for each paragraph from the list of headings below.")


def canon_which_section(section_id: str, para_count: int, questions: list[dict],
                        unit: str = "paragraph") -> str:
    n = _passage_num(section_id)
    last = _last_letter(para_count)
    note = _reused_letters_note(questions)
    return (f"Reading Passage {n} has {_num_word(para_count)} {unit}s, A–{last}. "
            f"Which {unit} contains the following information?{note}")


def canon_endings(last_key: str) -> str:
    return f"Complete each sentence with the correct ending, A–{last_key} below."


def _num_word(n: int) -> str:
    words = {1: "one", 2: "two", 3: "three", 4: "four", 5: "five", 6: "six",
             7: "seven", 8: "eight", 9: "nine", 10: "ten", 11: "eleven", 12: "twelve"}
    return words.get(n, str(n))


# ─────────────────────────────────────────────────────────────────────────────
# 6. MAIN SEGMENTATION AND BUILD
# ─────────────────────────────────────────────────────────────────────────────

def segment_test(pages: list[str]) -> dict:
    """
    Split the PDF pages into: passage text blocks and question blocks.
    Returns {'p1': {'text': str, 'q_blocks': [str]}, 'p2': ..., 'p3': ...}
    """
    full = all_text(pages)

    # Remove answer key from the end
    ak_pos = full.find("Answer Key")
    if ak_pos > 0:
        full = full[:ak_pos]

    # Split on PART markers and PASSAGE markers anchored to start-of-line
    # (avoids matching "Reading Passage 2" mid-sentence in question instructions)
    split_re = re.compile(
        r'^(PASSAGE\s+\d+|PART\s+\d+\s*[-–—]\s*QUESTIONS)',
        re.IGNORECASE | re.MULTILINE
    )
    parts = split_re.split(full)

    sections: list[tuple[str, str]] = []  # (marker, content)
    i = 0
    while i < len(parts):
        if split_re.match(parts[i].strip()):
            marker = parts[i].strip()
            content = parts[i+1] if i+1 < len(parts) else ""
            sections.append((marker, content))
            i += 2
        else:
            if parts[i].strip():
                sections.append(("HEADER", parts[i]))
            i += 1

    # Build passage/question structure
    result: dict[str, dict] = {"p1": {"passage_text": "", "q_text": ""},
                                "p2": {"passage_text": "", "q_text": ""},
                                "p3": {"passage_text": "", "q_text": ""}}
    passage_idx = 0
    passage_keys = ["p1", "p2", "p3"]

    for marker, content in sections:
        marker_up = marker.upper()
        if "PASSAGE" in marker_up:
            passage_idx = int(re.search(r'\d', marker).group()) - 1
            pk = passage_keys[min(passage_idx, 2)]
            result[pk]["passage_text"] += "\n" + marker + "\n" + content
        elif "QUESTIONS" in marker_up:
            pk = passage_keys[min(passage_idx, 2)]
            result[pk]["q_text"] += "\n" + content
        else:
            # HEADER section: has Passage 1 text before any PART marker
            if passage_idx == 0:
                result["p1"]["passage_text"] += "\n" + content

    return result


def parse_question_groups(q_text: str, answers: dict,
                           section_id: str, passage: list[dict]) -> list[dict]:
    """Parse a question block text into a list of group dicts."""
    groups: list[dict] = []

    # Split on "Questions N-M" sub-headers (anchored: must be at start of a line)
    block_re = re.compile(
        r'(?=^Questions?\s+\d+[-–—]\d+|^Questions?\s+\d+\s*$)',
        re.MULTILINE
    )
    blocks = block_re.split(q_text)

    for block in blocks:
        block = block.strip()
        if not block:
            continue
        rng = parse_q_range(block)
        if not rng:
            continue
        q_first, q_last = rng

        # Detect type from instructions
        instr_chunk = block[:600]
        q_type = detect_q_type(instr_chunk)

        group_id = f"g{q_first}"

        try:
            if q_type in ("tfng", "tfng_claims"):
                g = parse_tfng(block, q_first, q_last, answers, section_id, passage, q_type)
            elif q_type == "completion":
                g = parse_completion(block, q_first, q_last, answers, section_id, passage)
            elif q_type == "summary_wordbank":
                g = parse_summary_wordbank(block, q_first, q_last, answers, section_id, passage)
            elif q_type == "matching_headings":
                g = parse_matching_headings(block, q_first, q_last, answers, section_id, passage)
            elif q_type == "which_section":
                g = parse_which_section(block, q_first, q_last, answers, section_id, passage)
            elif q_type == "matching_people":
                g = parse_matching_people(block, q_first, q_last, answers, section_id, passage)
            elif q_type == "matching_endings":
                g = parse_matching_endings(block, q_first, q_last, answers, section_id, passage)
            elif q_type == "choose_two":
                g = parse_choose_two(block, q_first, q_last, answers, section_id, passage)
            elif q_type == "mcq":
                g = parse_mcq(block, q_first, q_last, answers, section_id, passage)
            else:
                g = parse_completion(block, q_first, q_last, answers, section_id, passage)
        except Exception as e:
            print(f"  ⚠️  Q{q_first}-{q_last} ({q_type}): {e}")
            g = {"type": "completion", "label": f"Questions {q_first}–{q_last}",
                 "instructions": "", "questions": []}

        # A parser may return a single group dict or a list of groups (e.g. a
        # choose_two block that contains two separate "Which TWO" pairs).
        sub_groups = g if isinstance(g, list) else [g]
        for sub in sub_groups:
            first_num = sub["questions"][0]["number"] if sub.get("questions") else q_first
            sub["id"] = f"g{first_num}"
            groups.append(sub)

    return groups


def build_test_json(book_num: int, test_num: int) -> dict:
    pdf_path = BOOKS_DIR / f"Cambridge {book_num} Test {test_num}.pdf"
    if not pdf_path.exists():
        raise FileNotFoundError(f"PDF not found: {pdf_path}")

    print(f"  Reading {pdf_path.name} …")
    pages = extract_pages(pdf_path)
    answers = parse_answer_key(pages)
    print(f"  Parsed {len(answers)} answers from key")

    segments = segment_test(pages)

    sections = []
    for p_idx, p_key in enumerate(["p1", "p2", "p3"], 1):
        seg = segments[p_key]
        p_data = parse_passage(seg["passage_text"], p_idx)
        if not p_data["title"] and not p_data["passage"]:
            continue

        groups = parse_question_groups(seg["q_text"], answers, p_key, p_data["passage"])
        sections.append({
            "id": p_key,
            "title": p_data["title"],
            "passage": p_data["passage"],
            "groups": groups,
        })

    return {"sections": sections}


# ─────────────────────────────────────────────────────────────────────────────
# 7. SQL WRITER
# ─────────────────────────────────────────────────────────────────────────────

def write_sql(test_json: dict, book_num: int, test_num: int) -> None:
    tag = f"c{book_num}t{test_num}r"
    out_file = OUT_DIR / f"cambridge{book_num}-test{test_num}-reading.sql"
    content = json.dumps(test_json, ensure_ascii=False, indent=2)

    book = f"Cambridge IELTS {book_num}"
    label = f"Test {test_num}"
    # Upsert by (skill, book, test_label) so re-seeding keeps the existing row id
    # — and any attempts that reference it — instead of DELETE+INSERT (which minted
    # a new id and orphaned old attempts, breaking their post-exam review).
    sql = f"""UPDATE public.tests
   SET variant = 'academic', duration_seconds = 3600, published = true,
       content = ${tag}$
{content}
${tag}$::jsonb
 WHERE skill = 'reading' AND book = '{book}' AND test_label = '{label}';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
SELECT 'reading', '{book}', '{label}', 'academic', 3600, ${tag}i$
{content}
${tag}i$::jsonb, true
WHERE NOT EXISTS (
  SELECT 1 FROM public.tests
   WHERE skill = 'reading' AND book = '{book}' AND test_label = '{label}'
);
"""
    out_file.write_text(sql, encoding="utf-8")
    print(f"  ✓ Wrote {out_file}")


# ─────────────────────────────────────────────────────────────────────────────
# 8. VALIDATION SUMMARY
# ─────────────────────────────────────────────────────────────────────────────

def _answer_letters(ans) -> list[str]:
    """Flatten an answer into the option keys it references (letters/romans)."""
    if isinstance(ans, list):
        vals = ans
    else:
        vals = re.split(r'\s*/\s*', str(ans))
    return [v.strip() for v in vals if v and v.strip()]


def validate(test_json: dict, book_num: int, test_num: int) -> list[str]:
    all_qs = [q for s in test_json["sections"]
                for g in s["groups"]
                for q in g["questions"]]
    nums = sorted(q["number"] for q in all_qs)
    missing = [n for n in range(1, 41) if n not in nums]
    dupes = [n for n in nums if nums.count(n) > 1]
    no_answer = [q["number"] for q in all_qs if not q.get("answer")]
    no_evidence = [q["number"] for q in all_qs if not q.get("evidence")]

    # ── Deep content checks ──────────────────────────────────────────────────
    errors: list[str] = []
    CHOICE_TYPES = {"matching", "multiple_choice", "multiple_choice_multi", "choose_two"}
    DIRTY_INSTR = re.compile(r'answer sheet|in boxes?\s+\d|^\s*$', re.IGNORECASE)

    for s in test_json["sections"]:
        for g in s["groups"]:
            gtype = g["type"]
            instr = g.get("instructions", "")
            label = g.get("label", "?")

            # Instructions must be clean and non-empty. The legitimate
            # "Reading Passage N" reference is excluded before the leak check.
            instr_check = re.sub(r'Reading Passage \d+', 'Reading Passage', instr)
            if not instr.strip():
                errors.append(f"{label}: empty instructions")
            elif re.search(r'answer sheet|in boxes?\s+\d', instr, re.IGNORECASE):
                errors.append(f"{label}: paper-based text in instructions")
            elif any(re.search(r'(?<!\d)\b%d\b(?!\d)' % q["number"], instr_check) for q in g["questions"]):
                errors.append(f"{label}: a question number leaked into instructions")

            # Choice-type groups: every answer key must exist as an option
            if gtype in CHOICE_TYPES:
                # Options may live on the group (matching/choose_two) or per question (mcq)
                for q in g["questions"]:
                    opt_keys = {o["key"] for o in (q.get("options") or g.get("options") or [])}
                    for letter in _answer_letters(q.get("answer")):
                        if opt_keys and letter not in opt_keys:
                            errors.append(f"{label} Q{q['number']}: answer '{letter}' not in options {sorted(opt_keys)}")
                # Must actually have options
                if gtype in ("matching", "choose_two") and not g.get("options"):
                    errors.append(f"{label}: no options")
                if gtype == "multiple_choice":
                    for q in g["questions"]:
                        if not q.get("options"):
                            errors.append(f"{label} Q{q['number']}: no options")

            # Word bank: every letter answer must be in the bank
            if g.get("wordBank"):
                bank_keys = {o["key"] for o in g["wordBank"]}
                for q in g["questions"]:
                    a = q.get("answer")
                    if isinstance(a, str) and len(a) == 1 and a not in bank_keys:
                        errors.append(f"{label} Q{q['number']}: answer '{a}' not in word bank {sorted(bank_keys)}")

            # Statement-type prompts must be non-empty and not placeholders
            if gtype in ("true_false_notgiven", "yes_no_notgiven", "multiple_choice", "matching"):
                if not (g.get("summaryText") or g.get("formContent")):
                    for q in g["questions"]:
                        p = q.get("prompt", "")
                        if not p.strip() or p.strip().startswith("["):
                            errors.append(f"{label} Q{q['number']}: empty/placeholder prompt")

    label = f"C{book_num} T{test_num}"
    print(f"\n  {label} — {len(all_qs)} questions total")
    if missing:
        print(f"  ⚠️  Missing Q numbers: {missing}")
    if dupes:
        print(f"  ⚠️  Duplicate Q numbers: {sorted(set(dupes))}")
    if no_answer:
        print(f"  ⚠️  No answer: Q{no_answer}")
    if no_evidence:
        print(f"  ℹ️  No evidence ref (needs review): Q{no_evidence[:10]}{'…' if len(no_evidence)>10 else ''}")
    if errors:
        print(f"  ❌  {len(errors)} CONTENT ERRORS:")
        for e in errors:
            print(f"       • {e}")
    if not missing and not dupes and not no_answer and not errors:
        print(f"  ✅  Structure + content OK")
    return errors


# ─────────────────────────────────────────────────────────────────────────────
# 9. ENTRY POINT
# ─────────────────────────────────────────────────────────────────────────────

def main():
    args = sys.argv[1:]

    if not args or args[0] == "all":
        books = list(range(16, 22))
        tests = [1, 2, 3, 4]
    elif len(args) == 1:
        books = [int(args[0])]
        tests = [1, 2, 3, 4]
    elif len(args) == 2:
        books = [int(args[0])]
        tests = [int(args[1])]
    else:
        print(__doc__)
        sys.exit(1)

    OUT_DIR.mkdir(exist_ok=True)

    for book in books:
        for test in tests:
            print(f"\n{'='*60}")
            print(f"Cambridge IELTS {book}  Test {test}")
            print('='*60)
            try:
                j = build_test_json(book, test)
                validate(j, book, test)
                write_sql(j, book, test)
            except FileNotFoundError as e:
                print(f"  SKIP: {e}")
            except Exception as e:
                import traceback
                print(f"  ERROR: {e}")
                traceback.print_exc()

    print("\nDone.")


if __name__ == "__main__":
    main()
