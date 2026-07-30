"""
OCR extraction pipeline for Cambridge IELTS source PDFs.

Usage:
    py extract_ocr.py <pdf_path> <start_page> <end_page> [--book BOOK] [--test TEST]

Examples:
    py extract_ocr.py Cambridge_10.pdf 1 13 --book cambridge_10 --test test1_reading
    py extract_ocr.py Cambridge_10.pdf 14 27 --book cambridge_10 --test test1_listening

Output:
    ocr_output/<book>/<test>/page_<N>.txt        — raw OCR text
    ocr_output/<book>/<test>/page_<N>_lowconf.txt — words below 80% confidence
    ocr_output/<book>/<test>/summary.txt          — per-page low-confidence word counts

MANDATORY AFTER RUNNING:
    Open each page_<N>.txt side-by-side with the source image and manually proofread.
    Pay closest attention to words flagged in page_<N>_lowconf.txt. Do NOT use raw
    OCR output as final content. Only move corrected text into seed SQL.
"""

import argparse
import csv
import os
import pathlib
import shutil
import subprocess
import sys
import tempfile

# ── Tool paths ──────────────────────────────────────────────────────────────
TESSERACT_CANDIDATES = [
    "tesseract",
    r"C:\Program Files\Tesseract-OCR\tesseract.exe",
    r"C:\Program Files (x86)\Tesseract-OCR\tesseract.exe",
]

PDFTOPPM_CANDIDATES = [
    "pdftoppm",
    r"C:\poppler\bin\pdftoppm.exe",
]

LOW_CONF_THRESHOLD = 80   # percent; words below this are flagged


def find_tool(candidates: list[str], name: str) -> str:
    for path in candidates:
        if shutil.which(path) or (os.path.isfile(path) and os.access(path, os.X_OK)):
            return path
    print(f"ERROR: '{name}' not found. Tried: {candidates}", file=sys.stderr)
    sys.exit(1)


def run(cmd: list[str], **kwargs) -> subprocess.CompletedProcess:
    return subprocess.run(cmd, check=True, capture_output=True, text=True, **kwargs)


def convert_pages(pdf_path: str, start: int, end: int, output_dir: pathlib.Path,
                  pdftoppm: str) -> list[pathlib.Path]:
    """Convert PDF pages to 300-DPI PNGs. Returns sorted list of image paths."""
    prefix = str(output_dir / "page")
    run([pdftoppm, "-r", "300", "-f", str(start), "-l", str(end),
         "-png", pdf_path, prefix])
    images = sorted(output_dir.glob("page-*.png"))
    if not images:
        # pdftoppm names them page-001.png … match either pattern
        images = sorted(output_dir.glob("page*.png"))
    return images


def ocr_page(image: pathlib.Path, out_dir: pathlib.Path, tesseract: str,
             page_num: int) -> tuple[str, list[dict]]:
    """Run Tesseract on one image. Returns (plain_text, low_confidence_words)."""
    base = str(out_dir / f"page_{page_num:02d}")

    # Plain text
    run([tesseract, str(image), base, "txt"])
    txt_file = pathlib.Path(base + ".txt")
    plain = txt_file.read_text(encoding="utf-8", errors="replace")

    # TSV (confidence scores)
    tsv_base = base + "_tsv"
    run([tesseract, str(image), tsv_base, "tsv"])
    tsv_file = pathlib.Path(tsv_base + ".tsv")

    low_conf_words: list[dict] = []
    with tsv_file.open(newline="", encoding="utf-8", errors="replace") as f:
        reader = csv.DictReader(f, delimiter="\t")
        for row in reader:
            try:
                conf = float(row.get("conf", -1))
            except ValueError:
                continue
            word = row.get("text", "").strip()
            if 0 <= conf < LOW_CONF_THRESHOLD and word:
                low_conf_words.append({
                    "word": word,
                    "conf": conf,
                    "left": row.get("left", ""),
                    "top": row.get("top", ""),
                })

    tsv_file.unlink()  # remove raw tsv; we keep the derived low-conf file

    return plain, low_conf_words


def write_lowconf(out_dir: pathlib.Path, page_num: int,
                  low_conf_words: list[dict]) -> None:
    path = out_dir / f"page_{page_num:02d}_lowconf.txt"
    with path.open("w", encoding="utf-8") as f:
        if not low_conf_words:
            f.write("(no words below confidence threshold on this page)\n")
            return
        f.write(f"Words below {LOW_CONF_THRESHOLD}% confidence — verify against source image:\n\n")
        for w in low_conf_words:
            f.write(f"  {w['word']!r:30s}  conf={w['conf']:.0f}%  "
                    f"pos=({w['left']},{w['top']})\n")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("pdf",        help="Path to source PDF")
    parser.add_argument("start_page", type=int, help="First page to extract (1-indexed)")
    parser.add_argument("end_page",   type=int, help="Last page to extract (inclusive)")
    parser.add_argument("--book",     default="book",
                        help="Book identifier for output folder (e.g. cambridge_10)")
    parser.add_argument("--test",     default="test",
                        help="Test identifier for output folder (e.g. test1_reading)")
    args = parser.parse_args()

    pdf_path = pathlib.Path(args.pdf).resolve()
    if not pdf_path.exists():
        print(f"ERROR: PDF not found: {pdf_path}", file=sys.stderr)
        sys.exit(1)

    tesseract = find_tool(TESSERACT_CANDIDATES, "tesseract")
    pdftoppm  = find_tool(PDFTOPPM_CANDIDATES,  "pdftoppm")

    # Output directory (always relative to CWD so it lands in the project)
    out_dir = pathlib.Path("ocr_output") / args.book / args.test
    out_dir.mkdir(parents=True, exist_ok=True)

    print(f"Converting pages {args.start_page}–{args.end_page} of {pdf_path.name} …")

    with tempfile.TemporaryDirectory() as tmpdir:
        tmp = pathlib.Path(tmpdir)
        images = convert_pages(str(pdf_path), args.start_page, args.end_page,
                               tmp, pdftoppm)

        if not images:
            print("ERROR: pdftoppm produced no images. Check page range and PDF path.",
                  file=sys.stderr)
            sys.exit(1)

        print(f"  {len(images)} page image(s) generated at 300 DPI.")
        print("Running OCR …\n")

        summary_lines: list[str] = []
        for i, image in enumerate(images, start=1):
            page_num = args.start_page + i - 1
            print(f"  Page {page_num} …", end="", flush=True)
            plain, low_conf = ocr_page(image, out_dir, tesseract, page_num)
            write_lowconf(out_dir, page_num, low_conf)
            flag = f"  ⚠ {len(low_conf)} low-conf words" if low_conf else "  ✓ clean"
            print(flag)
            summary_lines.append(f"Page {page_num:3d}: {len(low_conf):4d} low-confidence words{' ← review' if low_conf else ''}")

    # Summary file
    summary_path = out_dir / "summary.txt"
    with summary_path.open("w", encoding="utf-8") as f:
        f.write(f"OCR Summary — {pdf_path.name}  pages {args.start_page}–{args.end_page}\n")
        f.write(f"Book: {args.book}   Test: {args.test}\n")
        f.write("=" * 60 + "\n\n")
        f.write("\n".join(summary_lines) + "\n\n")
        total = sum(int(l.split()[2]) for l in summary_lines)
        f.write(f"Total low-confidence words: {total}\n\n")
        f.write(
            "NEXT STEPS:\n"
            "1. Open each page_<N>.txt alongside the source PDF image.\n"
            "2. Correct OCR errors — focus on words in page_<N>_lowconf.txt,\n"
            "   numbers, italic/foreign words, and question numbering.\n"
            "3. Save corrected text as page_<N>_corrected.txt.\n"
            "4. Only then run the structuring step to build seed SQL.\n"
        )

    print(f"\n{'='*50}")
    print(f"Done. Output: {out_dir}/")
    print(f"\nPer-page summary:")
    for line in summary_lines:
        print(f"  {line}")
    total = sum(int(l.split()[2]) for l in summary_lines)
    print(f"\nTotal low-confidence words: {total}")
    print(f"\n⚠  MANDATORY: proofread every page_<N>.txt against the source")
    print(f"   before moving any text into seed content.")


if __name__ == "__main__":
    main()
