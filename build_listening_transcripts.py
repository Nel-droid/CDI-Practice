#!/usr/bin/env python3
"""
Add transcripts (and answer-sentence highlighting) to the listening tests.

For each Cambridge listening PDF this:
  1. rebuilds the test content with the existing seed generator,
  2. extracts the "Transcripts" section (cleaned; the answer key and page
     markers are stripped),
  3. splits each part into readable entries (by speaker, or into short
     paragraphs for monologues),
  4. attaches an `explanation` + `evidence` to every question using the answer
     key's explanation column and the SAME matcher the Reading seeds use, so the
     review highlights the sentence that proves each answer — just like Reading.

It then writes UPDATE statements (never DELETE/INSERT, so the existing test row
ids — and any attempts pointing at them — are preserved).

Nothing here fabricates content: transcripts and explanations come straight from
the licensed books, which already contain them.

Usage:
    python build_listening_transcripts.py            # all books 10-21
    python build_listening_transcripts.py 16 1       # one test (check it first)

Output: supabase/phase14-listening-transcripts.sql   (run once in Supabase)
"""

import json
import pathlib
import re
import sys

import build_cambridge_seeds as R       # reading generator: PDF + answer-key helpers
import build_listening_seeds as L       # listening generator: build_listening_json

LISTEN_DIR = pathlib.Path("Listening Books")
OUT_DIR = pathlib.Path("supabase")

PART_HEAD_RE = re.compile(r'(?im)^\s*(?:PART|SECTION)\s+([1-4])\b[^\n]*$')
SPEAKER_RE = re.compile(r'(?m)^\s*([A-Z][A-Z0-9 .\'’/\-]{1,24}):\s+')
SENT_SPLIT_RE = re.compile(r'(?<=[.!?])\s+(?=[A-Z“"])')


def _clean(text: str) -> str:
    text = re.sub(r'=== PAGE \d+ ===', '', text)         # page separators from all_text
    text = re.sub(r'https?://\S+', '', text)             # printed audio URLs
    text = re.sub(r'(?im)^\s*Test\s+\d+\s*$', '', text)  # running headers
    text = re.sub(r'(?m)^\s*\d{1,3}\s*$', '', text)      # bare page numbers
    text = re.sub(r'-{3,}', ' ', text)                   # horizontal-rule artifacts
    text = re.sub(r'[ \t]+', ' ', text)
    text = re.sub(r'\n{2,}', '\n', text)
    return text.strip()


def _quote(expl: str) -> str:
    """A word/sentence-bounded evidence snippet (never a mid-word cut)."""
    q = expl.strip()
    if len(q) <= 150:
        return q
    head = q[:150]
    for end in ('. ', '? ', '! '):          # prefer a sentence boundary
        i = head.rfind(end)
        if i > 50:
            return head[:i + 1].strip()
    sp = head.rfind(' ')                     # otherwise the last whole word
    return (head[:sp] if sp > 50 else head).strip()


def _transcript_block(full: str) -> str:
    start = full.find("Transcripts")
    if start < 0:
        return ""
    block = full[start + len("Transcripts"):]
    end = re.search(r'(?i)\banswer key\b|listening and reading answer keys', block)
    if end:
        block = block[:end.start()]
    return block


def _split_parts(block: str) -> dict[int, str]:
    parts: dict[int, str] = {}
    matches = list(PART_HEAD_RE.finditer(block))
    for idx, m in enumerate(matches):
        part_num = int(m.group(1))
        seg = block[m.end(): matches[idx + 1].start() if idx + 1 < len(matches) else len(block)]
        parts.setdefault(part_num, seg)
    return parts


def _entries(part_text: str, section_id: str) -> list[dict]:
    """Split a part into {id, speaker, text}. Dialogue → by speaker; monologue →
    into short paragraphs so it reads well and highlights land in small spans."""
    text = _clean(part_text)
    if not text:
        return []

    labels = list(SPEAKER_RE.finditer(text))
    entries: list[dict] = []

    if labels:
        for i, m in enumerate(labels):
            speaker = m.group(1).strip().title()
            body = text[m.end(): labels[i + 1].start() if i + 1 < len(labels) else len(text)]
            body = re.sub(r'\s+', ' ', body).strip()
            if body:
                entries.append({"id": f"{section_id}-{len(entries)+1}", "speaker": speaker, "text": body})
        return entries

    # Monologue: group ~2 sentences per paragraph entry.
    sentences = [s.strip() for s in SENT_SPLIT_RE.split(re.sub(r'\s+', ' ', text)) if s.strip()]
    for i in range(0, len(sentences), 2):
        chunk = " ".join(sentences[i:i + 2]).strip()
        if chunk:
            entries.append({"id": f"{section_id}-{len(entries)+1}", "speaker": "", "text": chunk})
    return entries


def enrich(book_num: int, test_num: int) -> dict | None:
    pdf = LISTEN_DIR / f"Cambridge {book_num} Test {test_num}.pdf"
    if not pdf.exists():
        print(f"  ⚠ missing {pdf.name} — skipped")
        return None

    content = L.build_listening_json(book_num, test_num)   # same content as the live seed
    pages = R.extract_pages(pdf)
    keydata = R.parse_answer_key(pages)
    block = _transcript_block(R.all_text(pages))
    if not block.strip():
        print(f"  ⚠ no 'Transcripts' section in {pdf.name} — skipped")
        return None

    parts = {p: _entries(t, f"p{p}") for p, t in _split_parts(block).items()}

    matched = 0
    for sec in content["sections"]:
        pnum = int(sec["id"][1:]) if sec["id"].startswith("p") else None
        entries = parts.get(pnum, [])
        sec["transcript"] = entries
        pseudo = [{"ref": e["id"], "text": e["text"]} for e in entries]
        for grp in sec.get("groups", []):
            for q in grp.get("questions", []):
                expl = (keydata.get(q["number"]) or {}).get("explanation", "").strip()
                if not expl:
                    continue
                q["explanation"] = expl
                ref = R.find_evidence_ref(expl, pseudo)
                if ref:
                    q["evidence"] = {"sectionId": sec["id"], "ref": ref, "quote": _quote(expl)}
                    matched += 1

    total_entries = sum(len(v) for v in parts.values())
    counts = ", ".join(f"P{p}={len(e)}" for p, e in sorted(parts.items()))
    print(f"  ✓ {counts}  |  {total_entries} entries, {matched}/40 answers highlighted")
    return content


def _update_sql(book_num: int, test_num: int, content: dict) -> str:
    tag = f"c{book_num}t{test_num}tr"
    body = json.dumps(content, ensure_ascii=False, indent=2)
    return (
        f"-- Cambridge IELTS {book_num} · Test {test_num}\n"
        f"UPDATE public.tests SET content = ${tag}$\n{body}\n${tag}$::jsonb\n"
        f"WHERE skill = 'listening' AND book = 'Cambridge IELTS {book_num}' "
        f"AND test_label = 'Test {test_num}';\n"
    )


HEADER = [
    "-- Phase 14 — listening transcripts + answer-sentence evidence.",
    "-- UPDATEs existing rows (keeps ids/attempts). Non-destructive. Safe to re-run.",
    "-- Generated by build_listening_transcripts.py — one file per book so each",
    "-- stays under Supabase's free-tier statement limit. Run each file once.",
    "",
]


def main() -> None:
    args = sys.argv[1:]
    targets = [(int(args[0]), int(args[1]))] if len(args) == 2 else \
        [(b, t) for b in range(10, 22) for t in range(1, 5)]

    OUT_DIR.mkdir(exist_ok=True)
    # Remove the old single combined file if a previous run created it.
    (OUT_DIR / "phase14-listening-transcripts.sql").unlink(missing_ok=True)

    by_book: dict[int, list[str]] = {}
    ok = 0
    for book_num, test_num in targets:
        print(f"Cambridge {book_num} Test {test_num}:")
        try:
            content = enrich(book_num, test_num)
        except Exception as e:  # keep going; report the failing test
            print(f"  ✗ error: {e}")
            continue
        if not content:
            continue
        by_book.setdefault(book_num, []).append(_update_sql(book_num, test_num, content))
        ok += 1

    files = 0
    for book_num, blocks in sorted(by_book.items()):
        out = OUT_DIR / f"phase14-cambridge{book_num}-transcripts.sql"
        out.write_text("\n".join(HEADER + blocks), encoding="utf-8")
        print(f"  → wrote {out.name} ({len(blocks)} test(s))")
        files += 1

    print(f"\nDone: {ok} test(s) across {files} file(s).")


if __name__ == "__main__":
    main()
