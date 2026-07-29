#!/usr/bin/env python3
"""
Build Cambridge IELTS Listening seed SQL (books 10–21, four tests each).

Reuses the reading generator's battle-tested pieces (answer-key parser, MCQ /
choose-two / completion parsers, canonical-instruction and form-structure
helpers) and adds the listening-specific parts:

  • Segmentation by "PART N — QUESTIONS" (four parts, no passage text).
  • A single top-level `audioPath` — one continuous recording per test — instead
    of the reading model's per-section audio. The per-part audio URLs printed in
    the PDF are ignored; the merged file lives in the `listening-audio` bucket.
  • Map / plan / diagram labelling groups, which carry a `mapImage`.
  • "Choose from the box" feature matching.
  • Table completion (the one layout PDF extraction mangles).

Usage:
  python build_listening_seeds.py            # all books 10–21
  python build_listening_seeds.py 16         # one book
  python build_listening_seeds.py 16 1       # one test
"""
import json
import pathlib
import re
import sys

import build_cambridge_seeds as R  # reuse the reading generator's helpers

LISTEN_DIR = pathlib.Path("Listening Books")
OUT_DIR = pathlib.Path("supabase")

# Answer types that must appear as a selectable option (used by the validator).
CHOICE_TYPES = {"matching", "multiple_choice", "choose_two"}


# ─────────────────────────────────────────────────────────────────────────────
# 1. QUESTION-TYPE DETECTION (listening variant)
# ─────────────────────────────────────────────────────────────────────────────

def detect_listening_type(instr: str) -> str:
    t = instr.lower()
    if "choose two" in t:
        return "choose_two"
    # Map / plan / diagram labelling — carries an image; check before "letter".
    if re.search(r'label the (map|plan|diagram)', t):
        return "map_labelling"
    if "choose the correct letter" in t:
        return "mcq"
    # "Complete the flow-chart … choose from the box" = inline blanks filled from
    # a LETTER word bank (not discrete item matching). The "Complete the" is what
    # separates it from box matching.
    if "complete the" in t and ("from the box" in t or "from the list" in t):
        return "letter_wordbank"
    # Feature matching from a box: "write the correct letter, A-x, next to …"
    # or "choose … from the box".
    if "write the correct letter" in t or "from the box" in t or "from the list" in t:
        return "box_matching"
    if "complete the table" in t:
        return "table_completion"
    if "complete the" in t:
        return "completion"
    return "completion"


# ─────────────────────────────────────────────────────────────────────────────
# 2. SEGMENTATION
# ─────────────────────────────────────────────────────────────────────────────

def segment_listening(pages: list[str]) -> list[tuple[int, str]]:
    """Return [(part_number, part_text), …] for the four parts.

    The question body ends where the "Transcripts" section begins (the answer
    key follows that), so we cut there before splitting on the PART markers.
    """
    full = R.all_text(pages)
    tr = full.find("Transcripts")
    body = full[:tr] if tr > 0 else full

    part_re = re.compile(r'(?=^PART\s+\d+\s*[—–\-]\s*QUESTIONS)', re.MULTILINE)
    parts: list[tuple[int, str]] = []
    for chunk in part_re.split(body):
        m = re.match(r'^PART\s+(\d+)', chunk.strip())
        if m:
            parts.append((int(m.group(1)), chunk))
    return parts


def _clean_part_text(text: str) -> str:
    """Strip the printed audio URL and page markers from a part block."""
    text = re.sub(r'(?im)^\s*Part\s+\d+\s+Audio:\s*\S+', '', text)
    text = re.sub(r'https?://\S+', '', text)
    return text


def split_question_blocks(part_text: str) -> list[str]:
    block_re = re.compile(
        r'(?=^Questions?\s+\d+[-–—]\d+|^Questions?\s+\d+\s*$)',
        re.MULTILINE,
    )
    return [b for b in block_re.split(part_text) if R.parse_q_range(b)]


# ─────────────────────────────────────────────────────────────────────────────
# 3. LISTENING-SPECIFIC PARSERS
# ─────────────────────────────────────────────────────────────────────────────

def _listening_word_limit_instruction(raw: str, kind: str) -> str:
    """'Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.'

    Listening completion writes what is heard, so the directive is 'Write …',
    never the reading 'Choose … from the passage'.
    """
    phrase = R._word_limit_phrase(raw)
    return f"Complete the {kind} below. Write {phrase} for each answer."


def parse_listening_completion(text, q_first, q_last, answers, section_id, passage):
    """Notes / form / flow-chart / sentence completion (not tables)."""
    raw_instr = R._extract_instructions(text, q_first)
    kind = R._detect_form_kind(raw_instr)
    word_limit = R._extract_word_limit(raw_instr)
    instructions = _listening_word_limit_instruction(raw_instr, kind)

    structured = kind in ("notes", "table", "flow-chart", "diagram", "form")
    if structured:
        form_content, sentences = R._build_structured_form(text, q_first, q_last)
        if not form_content:
            form_content = R._build_completion_form_content(text, q_first, q_last)
            has_statics = any(i["kind"] == "static" for i in form_content)
            sentences = R._extract_completion_sentences(text, q_first, q_last, short=has_statics)
    else:
        form_content = R._build_completion_form_content(text, q_first, q_last)
        has_statics = any(i["kind"] == "static" for i in form_content)
        sentences = R._extract_completion_sentences(text, q_first, q_last, short=has_statics)

    questions = []
    for num in range(q_first, q_last + 1):
        ans_raw = answers.get(num, {}).get("answer", "")
        if "/" in ans_raw and not ans_raw.startswith("B /"):
            ans = [a.strip() for a in ans_raw.split("/") if a.strip()]
        else:
            ans = [ans_raw] if ans_raw else []
        q = {
            "number": num,
            "prompt": sentences.get(num, f"_______ [{num}]"),
            "answer": ans,
            "wordLimit": word_limit,
            "explanation": answers.get(num, {}).get("explanation", ""),
        }
        questions.append(q)

    group = {
        "type": "completion",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": instructions,
        "formContent": form_content,
        "questions": questions,
    }
    if structured or any(i["kind"] in ("static", "subheader") for i in form_content):
        title = R._extract_form_title(text, q_first, q_last)
        if title:
            group["formTitle"] = title
    return group


def _letter_range_end(instr: str, default: str = "H") -> str:
    """Last option letter from an 'A-J' / 'A–H' range in the instructions."""
    m = re.search(r'\b[A-Z]\s*[-–—]\s*([A-Z])\b', instr)
    return m.group(1) if m else default


def _stems_with_trailing_number(text, q_first, q_last):
    """Collect 'stem … N' lines (number at end), joining wrapped lines.

    Shared by map labelling and box matching, whose prompts are place/feature
    names with the question number printed after them.
    """
    statements: dict[int, str] = {}
    pending: list[str] = []
    nums = set(range(q_first, q_last + 1))
    ALL_LETTERS = re.compile(r'^(?:[A-Z]\s+)+[A-Z]\s*$')  # the "A B C … J" key rows
    SKIP = re.compile(r'(?i)^(Questions?\b|Practice this section|Label the|Write the|Choose|Which|=== PAGE|[A-Z]\.\s)')

    for raw in text.splitlines():
        s = raw.strip()
        if not s or ALL_LETTERS.match(s) or SKIP.match(s):
            continue
        # A bullet marks the start of a fresh item, so any text buffered before
        # it (a box title, a column header) is pre-list noise, not a wrapped
        # stem — discard it so it can't leak into the first item's prompt.
        if re.match(r'^[•\-–—]\s*\S', s):
            pending = []
        # "stem text 25" or "• stem text 25"
        m = re.match(r'^[•\-–—]?\s*(.*?)\s+(\d{1,2})\s*$', s)
        if m and q_first <= int(m.group(2)) <= q_last:
            stem = re.sub(r'\s+', ' ', (' '.join(pending) + ' ' + m.group(1))).strip()
            statements[int(m.group(2))] = stem
            pending = []
            continue
        # "25 stem text" (number first)
        m2 = re.match(r'^(\d{1,2})\s+(.+)$', s)
        if m2 and q_first <= int(m2.group(1)) <= q_last:
            statements[int(m2.group(1))] = re.sub(r'\s+', ' ', m2.group(2)).strip()
            pending = []
            continue
        # standalone trailing number closing a wrapped stem
        if re.fullmatch(r'\d{1,2}', s) and q_first <= int(s) <= q_last:
            statements[int(s)] = re.sub(r'\s+', ' ', ' '.join(pending)).strip()
            pending = []
            continue
        frag = s.lstrip('•-–—').strip()
        if frag:
            pending.append(frag)
    return statements


def parse_map_labelling(text, q_first, q_last, answers, section_id, passage, map_image):
    """Label the map/plan/diagram — options are the bare letters shown on the image."""
    raw_instr = R._extract_instructions(text, q_first)
    kind = "map"
    if re.search(r'label the plan', raw_instr, re.IGNORECASE):
        kind = "plan"
    elif re.search(r'label the diagram', raw_instr, re.IGNORECASE):
        kind = "diagram"
    last = _letter_range_end(raw_instr, "H")
    options = [{"key": chr(c), "text": chr(c)}
               for c in range(ord('A'), ord(last) + 1)]

    statements = _stems_with_trailing_number(text, q_first, q_last)
    questions = []
    for num in range(q_first, q_last + 1):
        questions.append({
            "number": num,
            "prompt": statements.get(num, f"[Location {num}]"),
            "answer": answers.get(num, {}).get("answer", ""),
            "explanation": answers.get(num, {}).get("explanation", ""),
        })

    group = {
        "type": "matching",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": (f"Label the {kind} below. Write the correct letter, "
                         f"A–{last}, next to Questions {q_first}–{q_last}."),
        "options": options,
        "questions": questions,
    }
    if map_image:
        group["mapImage"] = map_image
    return group


_SUMMARY_DIRECTIVE = re.compile(
    r'(?i)^\s*(Choose|Write|Complete|Label|Practice this section|Questions?\b)')


def _strip_wordbank_from_summary(summary: str, word_bank: list[dict]) -> str:
    """Keep only the form: drop the box's letter entries and any directive lines
    (the 'Choose … from the box …' instruction) that precede the flow-chart."""
    keys = {o["key"] for o in word_bank}
    kept = []
    for ln in summary.split("\n"):
        hits = [h for h in re.findall(r'\b([A-J])\.', ln) if h in keys]
        if len(hits) >= 2:  # a bank row like "A. container B. soil C. weight"
            continue
        if _SUMMARY_DIRECTIVE.match(ln):
            continue
        kept.append(ln)
    return "\n".join(kept).strip()


def parse_letter_wordbank(text, q_first, q_last, answers, section_id):
    """Flow-chart / notes / table with inline blanks filled from a LETTER box."""
    raw_instr = R._extract_instructions(text, q_first)
    kind = R._detect_form_kind(raw_instr)
    word_bank = R._parse_word_bank(text)
    last = word_bank[-1]["key"] if word_bank else _letter_range_end(raw_instr)
    count = q_last - q_first + 1

    summary = R._extract_summary_text(text, q_first, q_last)
    summary = _strip_wordbank_from_summary(summary, word_bank)

    questions = [{
        "number": num,
        "prompt": "",
        "answer": answers.get(num, {}).get("answer", ""),
        "explanation": answers.get(num, {}).get("explanation", ""),
    } for num in range(q_first, q_last + 1)]

    return {
        "type": "completion",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": (f"Complete the {kind} below. Choose "
                         f"{R._num_word(count).upper()} answers from the box, A–{last}."),
        "summaryTitle": "",
        "summaryText": summary,
        "wordBank": word_bank if word_bank else None,
        "questions": questions,
    }


def parse_box_matching(text, q_first, q_last, answers, section_id, passage):
    """Feature matching: pick a letter (A–H) from a box for each item."""
    # Options: "A. text" or "A text"
    options = []
    expected = ord('A')
    for line in text.splitlines():
        m = re.match(r'^([A-J])[.\)]?\s+(\S.+)$', line.strip())
        if m and ord(m.group(1)) == expected:
            txt = re.sub(r'\s+', ' ', m.group(2)).strip()
            if txt and txt not in ("TRUE", "FALSE", "NOT GIVEN"):
                options.append({"key": m.group(1), "text": txt})
                expected += 1

    statements = _stems_with_trailing_number(text, q_first, q_last)
    questions = []
    for num in range(q_first, q_last + 1):
        questions.append({
            "number": num,
            "prompt": statements.get(num, f"[Item {num}]"),
            "answer": answers.get(num, {}).get("answer", ""),
            "explanation": answers.get(num, {}).get("explanation", ""),
        })

    last = options[-1]["key"] if options else _letter_range_end(R._extract_instructions(text, q_first))
    # Keep the source's descriptive lead question, drop the paper directive.
    lead = R._extract_instructions(text, q_first)
    lead = re.split(r'\bChoose\b|\bWrite the correct letter\b', lead)[0].strip()
    instr = lead if lead.endswith("?") else ""
    instr = (instr + " " if instr else "") + f"Choose the correct letter, A–{last}, for each."

    return {
        "type": "matching",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": instr.strip(),
        "optionsLabel": "Options",
        "options": options,
        "questions": questions,
    }


# ─────────────────────────────────────────────────────────────────────────────
# 3b. HAND-AUTHORED TABLE OVERRIDES
#
# Four grid tables flatten into unreadable column-order soup on PDF extraction
# (and one duplicated a blank). They are transcribed here by hand from the
# source worksheet — the standing verbatim rule — while the answers and
# transcript explanations still come from the parsed answer key. Each entry is
# ("header"|"static", text) or ("q", number, "text with _______").
# ─────────────────────────────────────────────────────────────────────────────

TABLE_OVERRIDES: dict[tuple[int, int, int], dict] = {
    (10, 1, 7): {
        "formTitle": "Self-drive tours",
        "entries": [
            ("header", "Trip One"),
            ("static", "Number of days: 12"),
            ("q", 7, "Total distance: _______ km"),
            ("static", "Price per person: £525"),
            ("q", 8, "Includes: accommodation, car and one _______ (no meals)"),
            ("header", "Trip Two"),
            ("static", "Number of days: 9"),
            ("static", "Total distance: 980 km"),
            ("q", 9, "Price per person: £_______"),
            ("q", 10, "The hotels offer _______ in the price"),
        ],
    },
    (11, 4, 1): {
        "formTitle": "Fingle Village Festival",
        "entries": [
            ("header", "Jazz band"),
            ("static", "Cost: tickets available for £15 (example)"),
            ("q", 1, "Venue: the _______ school"),
            ("q", 2, "Notes: also appearing — Carolyn Hart (plays the _______)"),
            ("header", "Duck races"),
            ("static", "Cost: £1 per duck"),
            ("q", 3, "Venue: start behind the _______"),
            ("q", 4, "Notes: prize is tickets for a _______ held at the end of the festival"),
            ("q", 5, "Ducks can be bought in the _______"),
            ("header", "Flower show"),
            ("static", "Cost: free"),
            ("q", 6, "Venue: _______ Hall"),
            ("q", 7, "Notes: prizes presented at 5 pm by a well-known _______"),
        ],
    },
    (19, 2, 7): {
        "formTitle": "A typical 45-minute guitar lesson",
        "entries": [
            ("header", "5 minutes"),
            ("q", 7, "Activity: tuning guitars, using an app or by _______"),
            ("header", "10 minutes"),
            ("static", "Activity: strumming chords using our thumbs"),
            ("q", 8, "Notes: keeping time while the teacher is _______"),
            ("header", "15 minutes"),
            ("static", "Activity: playing songs"),
            ("q", 9, "Notes: often listening to a _______ of a song"),
            ("header", "10 minutes"),
            ("static", "Activity: playing single notes and simple tunes"),
            ("q", 10, "Notes: playing together, then _______"),
            ("header", "5 minutes"),
            ("static", "Activity: noting things to practise at home"),
        ],
    },
    (21, 1, 1): {
        "formTitle": "Sailing courses",
        "entries": [
            ("header", "Taster day"),
            ("static", "What you learn: introduction to sailing"),
            ("static", "Cost: £120 if booking one place"),
            ("q", 1, "Other information: small groups (maximum _______ people)"),
            ("header", "Level 1"),
            ("q", 2, "What you learn: basic theory, e.g. understanding the _______ and tides"),
            ("q", 3, "Basic sailing skills including _______ information"),
            ("static", "Cost: £200"),
            ("q", 4, "Other information: _______ available for club members"),
            ("q", 5, "All inclusive (plus a useful _______)"),
            ("q", 6, "A _______ at the end of the course for all participants"),
        ],
    },
}


def build_override_group(spec, q_first, q_last, answers, instr_raw):
    kind = R._detect_form_kind(instr_raw)
    instructions = _listening_word_limit_instruction(instr_raw, kind)
    form_content, prompts = [], {}
    for entry in spec["entries"]:
        if entry[0] == "header":
            form_content.append({"kind": "subheader", "text": entry[1]})
        elif entry[0] == "static":
            form_content.append({"kind": "static", "text": entry[1]})
        elif entry[0] == "q":
            _, num, prompt = entry
            form_content.append({"kind": "question", "number": num})
            prompts[num] = prompt

    word_limit = R._extract_word_limit(instr_raw)
    questions = []
    for num in range(q_first, q_last + 1):
        ans_raw = answers.get(num, {}).get("answer", "")
        if "/" in ans_raw and not ans_raw.startswith("B /"):
            ans = [a.strip() for a in ans_raw.split("/") if a.strip()]
        else:
            ans = [ans_raw] if ans_raw else []
        questions.append({
            "number": num,
            "prompt": prompts.get(num, f"_______ [{num}]"),
            "answer": ans,
            "wordLimit": word_limit,
            "explanation": answers.get(num, {}).get("explanation", ""),
        })

    group = {
        "type": "completion",
        "label": f"Questions {q_first}–{q_last}",
        "instructions": instructions,
        "formTitle": spec["formTitle"],
        "formContent": form_content,
        "questions": questions,
    }
    return group


# ─────────────────────────────────────────────────────────────────────────────
# 4. GROUP DISPATCH
# ─────────────────────────────────────────────────────────────────────────────

def parse_listening_groups(part_text, answers, section_id, map_image, book, test):
    groups = []
    for block in split_question_blocks(part_text):
        block = block.strip()
        rng = R.parse_q_range(block)
        if not rng:
            continue
        q_first, q_last = rng
        qtype = detect_listening_type(block[:400])

        # A hand-authored override wins over the auto-parser for the grid tables
        # that flatten into soup.
        spec = TABLE_OVERRIDES.get((book, test, q_first))
        if spec:
            g = build_override_group(spec, q_first, q_last, answers,
                                     R._extract_instructions(block, q_first))
            g["id"] = f"g{q_first}"
            groups.append(g)
            continue

        try:
            if qtype == "mcq":
                g = R.parse_mcq(block, q_first, q_last, answers, section_id, [])
            elif qtype == "choose_two":
                g = R.parse_choose_two(block, q_first, q_last, answers, section_id, [])
            elif qtype == "map_labelling":
                g = parse_map_labelling(block, q_first, q_last, answers, section_id, [], map_image)
            elif qtype == "letter_wordbank":
                g = parse_letter_wordbank(block, q_first, q_last, answers, section_id)
            elif qtype == "box_matching":
                g = parse_box_matching(block, q_first, q_last, answers, section_id, [])
            elif qtype == "table_completion":
                g = parse_listening_completion(block, q_first, q_last, answers, section_id, [])
            else:
                g = parse_listening_completion(block, q_first, q_last, answers, section_id, [])
        except Exception as e:  # noqa: BLE001 — surfaced, never silently dropped
            print(f"  ⚠️  Q{q_first}-{q_last} ({qtype}): {e}")
            g = {"type": "completion", "label": f"Questions {q_first}–{q_last}",
                 "instructions": "", "questions": []}

        for sub in (g if isinstance(g, list) else [g]):
            first = sub["questions"][0]["number"] if sub.get("questions") else q_first
            sub["id"] = f"g{first}"
            groups.append(sub)
    return groups


# ─────────────────────────────────────────────────────────────────────────────
# 5. BUILD ONE TEST
# ─────────────────────────────────────────────────────────────────────────────

def build_listening_json(book_num: int, test_num: int) -> dict:
    pdf = LISTEN_DIR / f"Cambridge {book_num} Test {test_num}.pdf"
    if not pdf.exists():
        raise FileNotFoundError(f"PDF not found: {pdf}")

    print(f"  Reading {pdf.name} …")
    pages = R.extract_pages(pdf)
    answers = R.parse_answer_key(pages)
    print(f"  Parsed {len(answers)} answers from key")

    has_map = any(len(p.images) for p in _reader(pdf).pages)
    map_image = f"Cambridge {book_num} Test {test_num} map.png" if has_map else None

    sections = []
    for part_num, raw in segment_listening(pages):
        text = _clean_part_text(raw)
        section_id = f"p{part_num}"
        groups = parse_listening_groups(text, answers, section_id, map_image, book_num, test_num)
        sections.append({
            "id": section_id,
            "title": f"Part {part_num}",
            "groups": groups,
        })

    return {
        "audioPath": f"Cambridge {book_num} Test {test_num}.mp3",
        "sections": sections,
    }


def _reader(pdf):
    import pypdf
    return pypdf.PdfReader(str(pdf))


# ─────────────────────────────────────────────────────────────────────────────
# 6. SQL WRITER
# ─────────────────────────────────────────────────────────────────────────────

def write_sql(test_json: dict, book_num: int, test_num: int) -> None:
    tag = f"c{book_num}t{test_num}l"
    out = OUT_DIR / f"cambridge{book_num}-test{test_num}-listening.sql"
    content = json.dumps(test_json, ensure_ascii=False, indent=2)
    sql = f"""DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS {book_num}' AND test_label = 'Test {test_num}';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS {book_num}',
  'Test {test_num}',
  'academic',
  2004,
  ${tag}$
{content}
${tag}$,
  true
);
"""
    out.write_text(sql, encoding="utf-8")
    print(f"  ✓ Wrote {out}")


# ─────────────────────────────────────────────────────────────────────────────
# 7. VALIDATOR
# ─────────────────────────────────────────────────────────────────────────────

def validate(test_json: dict, book_num: int, test_num: int) -> list[str]:
    all_qs = [q for s in test_json["sections"] for g in s["groups"] for q in g["questions"]]
    nums = sorted(q["number"] for q in all_qs)
    missing = [n for n in range(1, 41) if n not in nums]
    dupes = sorted({n for n in nums if nums.count(n) > 1})
    no_answer = [q["number"] for q in all_qs if not q.get("answer")]

    errors: list[str] = []
    if not test_json.get("audioPath"):
        errors.append("no audioPath")

    for s in test_json["sections"]:
        for g in s["groups"]:
            gtype, label = g["type"], g.get("label", "?")
            instr = g.get("instructions", "")

            if not instr.strip():
                errors.append(f"{label}: empty instructions")
            elif re.search(r'answer sheet|next to questions\.?\s*$', instr, re.IGNORECASE):
                errors.append(f"{label}: paper-based text in instructions")
            elif any(re.search(r'(?<!\d)\b%d\b(?!\d)' % q["number"], instr) for q in g["questions"]
                     if instr and 'Questions ' not in instr[:0]):
                pass  # question numbers legitimately appear in the "Questions N–M" label of map/box instr

            if gtype in CHOICE_TYPES:
                for q in g["questions"]:
                    opt_keys = {o["key"] for o in (q.get("options") or g.get("options") or [])}
                    for letter in R._answer_letters(q.get("answer")):
                        if opt_keys and letter not in opt_keys:
                            errors.append(f"{label} Q{q['number']}: answer '{letter}' not in options {sorted(opt_keys)}")
                if gtype in ("matching", "choose_two") and not g.get("options"):
                    errors.append(f"{label}: no options")
                if gtype == "multiple_choice":
                    for q in g["questions"]:
                        if not q.get("options"):
                            errors.append(f"{label} Q{q['number']}: no options")

            # Word bank: every letter answer must exist in the bank
            if g.get("wordBank"):
                bank_keys = {o["key"] for o in g["wordBank"]}
                for q in g["questions"]:
                    a = q.get("answer")
                    if isinstance(a, str) and len(a) == 1 and a not in bank_keys:
                        errors.append(f"{label} Q{q['number']}: answer '{a}' not in word bank {sorted(bank_keys)}")

            if gtype == "matching" and not g.get("summaryText"):
                for q in g["questions"]:
                    p = q.get("prompt", "")
                    if not p.strip() or p.strip().startswith("["):
                        errors.append(f"{label} Q{q['number']}: empty/placeholder prompt")

            # A map/plan group must carry its image
            if re.search(r'label the (map|plan|diagram)', instr, re.IGNORECASE) and not g.get("mapImage"):
                errors.append(f"{label}: label-the-map group has no mapImage")

    label = f"C{book_num} T{test_num}"
    print(f"\n  {label} — {len(all_qs)} questions total")
    if missing:   print(f"  ⚠️  Missing Q numbers: {missing}")
    if dupes:     print(f"  ⚠️  Duplicate Q numbers: {dupes}")
    if no_answer: print(f"  ⚠️  No answer: Q{no_answer}")
    if errors:
        print(f"  ❌  {len(errors)} CONTENT ERRORS:")
        for e in errors:
            print(f"       • {e}")
    if not missing and not dupes and not no_answer and not errors:
        print("  ✅  Structure + content OK")
    return errors


# ─────────────────────────────────────────────────────────────────────────────
# 8. ENTRY POINT
# ─────────────────────────────────────────────────────────────────────────────

def main():
    args = sys.argv[1:]
    if not args or args[0] == "all":
        books, tests = list(range(10, 22)), [1, 2, 3, 4]
    elif len(args) == 1:
        books, tests = [int(args[0])], [1, 2, 3, 4]
    else:
        books, tests = [int(args[0])], [int(args[1])]

    OUT_DIR.mkdir(exist_ok=True)
    for book in books:
        for test in tests:
            print(f"\n{'='*60}\nCambridge IELTS {book}  Listening Test {test}\n{'='*60}")
            try:
                j = build_listening_json(book, test)
                validate(j, book, test)
                write_sql(j, book, test)
            except FileNotFoundError as e:
                print(f"  SKIP: {e}")
            except Exception as e:  # noqa: BLE001
                import traceback
                print(f"  ERROR: {e}")
                traceback.print_exc()
    print("\nDone.")


if __name__ == "__main__":
    main()
