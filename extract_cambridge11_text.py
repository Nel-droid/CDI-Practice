"""
Extract text from Cambridge IELTS 11 reading PDFs using pypdf.
Saves one file per page into ocr_output/cambridge_11/test{N}_reading/.
Run from the project root:
    python extract_cambridge11_text.py
"""

import pathlib
import pypdf

BOOK_DIR = pathlib.Path("books")
OUT_BASE  = pathlib.Path("ocr_output") / "cambridge_11"

TESTS = [
    ("Cambridge 11 Test 1.pdf", "test1_reading"),
    ("Cambridge 11 Test 2.pdf", "test2_reading"),
    ("Cambridge 11 Test 3.pdf", "test3_reading"),
    ("Cambridge 11 Test 4.pdf", "test4_reading"),
]

for pdf_name, test_key in TESTS:
    pdf_path = BOOK_DIR / pdf_name
    out_dir  = OUT_BASE / test_key
    out_dir.mkdir(parents=True, exist_ok=True)

    reader = pypdf.PdfReader(str(pdf_path))
    n = len(reader.pages)
    print(f"{pdf_name}: {n} pages")

    all_text = []
    for i, page in enumerate(reader.pages, start=1):
        text = page.extract_text() or ""
        page_file = out_dir / f"page_{i:02d}.txt"
        page_file.write_text(text, encoding="utf-8")
        all_text.append(f"=== PAGE {i} ===\n{text}")
        print(f"  page {i}: {len(text)} chars")

    combined = out_dir / "extracted_text.txt"
    combined.write_text("\n\n".join(all_text), encoding="utf-8")
    print(f"  → {combined}\n")

print("Done.")
