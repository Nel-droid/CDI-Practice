"""
Build SQL seed files for Cambridge IELTS 12 reading tests.

Reads passage bodies from OCR text files, combines with hardcoded question
metadata, and writes one SQL file per test into supabase/.

Usage:
    python build_cambridge12_seed.py [1|2|3|4|all]

Outputs:
    supabase/cambridge12-test1-reading.sql
    supabase/cambridge12-test2-reading.sql
    supabase/cambridge12-test3-reading.sql
    supabase/cambridge12-test4-reading.sql
"""

import json
import pathlib
import re
import sys

OCR_BASE = pathlib.Path("ocr_output/cambridge_12")
OUT_DIR  = pathlib.Path("supabase")

# ─────────────────────────────────────────────────────────────────────────────
# OCR parsing helpers
# ─────────────────────────────────────────────────────────────────────────────

def load_ocr(test_num: int) -> str:
    path = OCR_BASE / f"test{test_num}_reading" / "extracted_text.txt"
    return path.read_text(encoding="utf-8")


def extract_between(text: str, start_marker: str, end_marker: str) -> str:
    s = text.find(start_marker)
    if s == -1:
        return ""
    s += len(start_marker)
    e = text.find(end_marker, s)
    if e == -1:
        return text[s:].strip()
    return text[s:e].strip()


def clean_para(t: str) -> str:
    return re.sub(r"\s+", " ", t).strip()


def parse_plain_paras(body: str) -> list[dict]:
    raw_lines = body.split("\n")
    lines = []
    for ln in raw_lines:
        ln = ln.strip()
        if not ln or re.match(r"^=== PAGE \d+ ===$", ln):
            continue
        lines.append(ln)

    if not lines:
        return []

    lengths = sorted(len(l) for l in lines)
    p75 = lengths[int(len(lengths) * 0.75)]
    SHORT = max(p75 * 0.90, 40)
    PUNCT_SHORT = re.compile(r"[.)\]\"'’]$")
    PUNCT_ALWAYS = re.compile(r"[?!]$")

    paras = []
    current: list[str] = []
    n = 1
    for i, line in enumerate(lines):
        current.append(line)
        is_last = (i == len(lines) - 1)
        is_para_end = (
            bool(PUNCT_ALWAYS.search(line))
            or (len(line) < SHORT and bool(PUNCT_SHORT.search(line)))
        )
        if is_last or is_para_end:
            text = clean_para(" ".join(current))
            if text:
                paras.append({"ref": str(n), "text": text})
                n += 1
            current = []

    if current:
        text = clean_para(" ".join(current))
        if text:
            paras.append({"ref": str(n), "text": text})

    return paras


def parse_lettered_paras(body: str, letters: str) -> list[dict]:
    cleaned = re.sub(r"(?m)^\d+\s*$", "", body)
    paras = []
    for letter in letters:
        pat = rf"(?m)^{letter}\s*$"
        m = re.search(pat, cleaned)
        if not m:
            continue
        start = m.end()
        next_letters = letters[letters.index(letter)+1:]
        end = len(cleaned)
        for nl in next_letters:
            nm = re.search(rf"(?m)^{nl}\s*$", cleaned[start:])
            if nm:
                end = start + nm.start()
                break
        text = cleaned[start:end].strip()
        paras.append({"ref": letter, "text": clean_para(text)})
    return paras


# ─────────────────────────────────────────────────────────────────────────────
# SQL generation
# ─────────────────────────────────────────────────────────────────────────────

def sql_str(v) -> str:
    return json.dumps(v, ensure_ascii=False)


def build_sql(test_num: int, sections: list[dict], tag: str) -> str:
    content = {"sections": sections}
    j = json.dumps(content, ensure_ascii=False, indent=2)
    return (
        f"INSERT INTO public.tests "
        f"(skill, book, test_label, variant, duration_seconds, content, published)\n"
        f"VALUES (\n"
        f"  'reading',\n"
        f"  'Cambridge IELTS 12',\n"
        f"  'Test {test_num}',\n"
        f"  'academic',\n"
        f"  3600,\n"
        f"  ${tag}$\n{j}\n${tag}$,\n"
        f"  true\n);\n"
    )


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 1 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test1() -> str:
    ocr = load_ocr(1)

    # ── Passage 1: Cork ──────────────────────────────────────────────────────
    p1_body = extract_between(ocr, "Cork\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "true_false_notgiven",
            "label": "Questions 1–5",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 1, "prompt": "The cork oak has the thickest bark of any living tree.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions bark grows up to 20 cm but makes no comparison with other trees.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "Its bark grows up to 20 cm in thickness"}},
                {"number": 2, "prompt": "Scientists have developed a synthetic cork with the same cellular structure as natural cork.",
                 "answer": "FALSE",
                 "explanation": "Technology has never succeeded in replicating the cellular structure.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "the bark of the cork oak has a particular cellular structure – with about 40 million cells per cubic centimetre – that technology has never succeeded in replicating"}},
                {"number": 3, "prompt": "Individual cork oak trees must be left for 25 years between the first and second harvest.",
                 "answer": "FALSE",
                 "explanation": "25 years is from planting to first harvest; between harvests it is approximately a decade.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "From the planting of a cork sapling to the first harvest takes 25 years, and a gap of approximately a decade must separate harvests from an individual tree"}},
                {"number": 4, "prompt": "Cork bark should be stripped in dry atmospheric conditions.",
                 "answer": "TRUE",
                 "explanation": "If the bark is stripped when the air is damp, the tree will be damaged.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "If the bark is stripped on a day when it’s too cold – or when the air is damp – the tree will be damaged"}},
                {"number": 5, "prompt": "The only way to remove the bark from cork oak trees is by hand.",
                 "answer": "TRUE",
                 "explanation": "No mechanical means of stripping cork bark has been invented.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "No mechanical means of stripping cork bark has been invented, so the job is done by teams of highly skilled workers"}},
            ],
        },
        {
            "id": "g2",
            "type": "completion",
            "label": "Questions 6–13",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "Comparison of aluminium screw caps and cork bottle stoppers",
            "formContent": [
                {"kind": "subheader", "text": "Advantages of aluminium screw caps"},
                {"kind": "question", "number": 6},
                {"kind": "question", "number": 7},
                {"kind": "question", "number": 8},
                {"kind": "subheader", "text": "Advantages of cork bottle stoppers"},
                {"kind": "question", "number": 9},
                {"kind": "question", "number": 10},
                {"kind": "question", "number": 11},
                {"kind": "question", "number": 12},
                {"kind": "question", "number": 13},
            ],
            "questions": [
                {"number": 6, "prompt": "do not affect the _______ of the bottle contents",
                 "answer": ["taste"], "wordLimit": 1,
                 "explanation": "TCA can spoil the taste of the product.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "can spoil the taste of the product contained in the bottle"}},
                {"number": 7, "prompt": "are _______ to produce",
                 "answer": ["cheaper"], "wordLimit": 1,
                 "explanation": "These substitutes are cheaper to manufacture.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "These substitutes are cheaper to manufacture"}},
                {"number": 8, "prompt": "are _______ to use",
                 "answer": ["convenient"], "wordLimit": 1,
                 "explanation": "Screw caps are more convenient for the user.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "in the case of screw caps, more convenient for the user"}},
                {"number": 9, "prompt": "suit the _______ of quality products",
                 "answer": ["image"], "wordLimit": 1,
                 "explanation": "Its traditional image is more in keeping with high quality goods.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "its traditional image is more in keeping with that of the type of high quality goods with which it has long been associated"}},
                {"number": 10, "prompt": "made from a _______ material",
                 "answer": ["sustainable"], "wordLimit": 1,
                 "explanation": "Cork is a sustainable product.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "cork is a sustainable product that can be recycled without difficulty"}},
                {"number": 11, "prompt": "easily _______",
                 "answer": ["recycled"], "wordLimit": 1,
                 "explanation": "Cork can be recycled without difficulty.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "can be recycled without difficulty"}},
                {"number": 12, "prompt": "cork forests aid _______",
                 "answer": ["biodiversity"], "wordLimit": 1,
                 "explanation": "Cork forests support local biodiversity.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "cork forests are a resource which support local biodiversity"}},
                {"number": 13, "prompt": "cork forests stop _______ happening",
                 "answer": ["desertification"], "wordLimit": 1,
                 "explanation": "Cork forests prevent desertification.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "prevent desertification in the regions where they are planted"}},
            ],
        },
    ]

    # ── Passage 2: Collecting as a Hobby ─────────────────────────────────────
    p2_body = extract_between(ocr, "COLLECTING AS A HOBBY\n", "PART 2 — QUESTIONS")
    p2_paras = parse_plain_paras(p2_body)

    p2_groups = [
        {
            "id": "g3",
            "type": "completion",
            "label": "Questions 14–21",
            "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
            "questions": [
                {"number": 14, "prompt": "The writer mentions collecting _______ as an example of collecting in order to make money.",
                 "answer": ["antiques"], "wordLimit": 1,
                 "explanation": "They'll look for antiques that they can buy cheaply and sell at a profit.",
                 "evidence": {"sectionId": "p2", "ref": "2", "quote": "They’ll look for, say, antiques that they can buy cheaply and expect to be able to sell at a profit"}},
                {"number": 15, "prompt": "Collectors may get a feeling of _______ from buying and selling items.",
                 "answer": ["triumph"], "wordLimit": 1,
                 "explanation": "Buying cheap and selling dear can give a sense of triumph.",
                 "evidence": {"sectionId": "p2", "ref": "2", "quote": "buying cheap and selling dear can give the collector a sense of triumph"}},
                {"number": 16, "prompt": "Collectors’ clubs provide opportunities to share _______",
                 "answer": ["information"], "wordLimit": 1,
                 "explanation": "Attending meetings and exchanging information on items.",
                 "evidence": {"sectionId": "p2", "ref": "3", "quote": "attending meetings of a group of collectors and exchanging information on items"}},
                {"number": 17, "prompt": "Collectors’ clubs offer _______ with people who have similar interests.",
                 "answer": ["contact", "meetings"], "wordLimit": 1,
                 "explanation": "It brings them into contact with like-minded people.",
                 "evidence": {"sectionId": "p2", "ref": "3", "quote": "brings them into contact with like-minded people"}},
                {"number": 18, "prompt": "Collecting sometimes involves a life-long _______ for a special item.",
                 "answer": ["hunt", "desire"], "wordLimit": 1,
                 "explanation": "Some may spend their whole lives in a hunt for a rare item.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "Some may spend their whole lives in a hunt for this"}},
                {"number": 19, "prompt": "Searching for something particular may prevent people from feeling their life is completely _______",
                 "answer": ["aimless", "empty"], "wordLimit": 1,
                 "explanation": "Collecting can give a purpose to a life that otherwise feels aimless.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "this can give a purpose to a life that otherwise feels aimless"}},
                {"number": 20, "prompt": "Stamp collecting may be _______ because it provides facts about different countries.",
                 "answer": ["educational"], "wordLimit": 1,
                 "explanation": "Another potential reason for collecting is its educational value.",
                 "evidence": {"sectionId": "p2", "ref": "5", "quote": "another potential reason for it – or, perhaps, a result of collecting – is its educational value"}},
                {"number": 21, "prompt": "_______ tends to be mostly a male hobby.",
                 "answer": ["Trainspotting"], "wordLimit": 1,
                 "explanation": "A popular form of collecting particularly among boys and men was trainspotting.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "a popular form of collecting, particularly among boys and men, was trainspotting"}},
            ],
        },
        {
            "id": "g4",
            "type": "true_false_notgiven",
            "label": "Questions 22–26",
            "instructions": "Do the following statements agree with the information given in the passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 22, "prompt": "The number of people buying dolls has grown over the centuries.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage discusses doll collectors’ interests but not the number of buyers.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "people who collect dolls may go beyond simply enlarging their collection"}},
                {"number": 23, "prompt": "Sixteenth century European dolls were normally made of wax and porcelain.",
                 "answer": "FALSE",
                 "explanation": "Wood was standard in 16th century Europe; wax and porcelain came later.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "the wood that was standard in 16th century Europe, through the wax and porcelain of later centuries"}},
                {"number": 24, "prompt": "Arranging a stamp collection by the size of the stamps is less common than other methods.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions methods like country or subject but does not mention size or compare frequency.",
                 "evidence": {"sectionId": "p2", "ref": "8", "quote": "organising their collection according to certain commonplace principles – perhaps by country in alphabetical order, or grouping stamps by what they depict"}},
                {"number": 25, "prompt": "Someone who collects unusual objects may want others to think he or she is also unusual.",
                 "answer": "TRUE",
                 "explanation": "Collecting unexpected things may convey the belief that the collector must be interesting.",
                 "evidence": {"sectionId": "p2", "ref": "9", "quote": "Someone who decides to collect something as unexpected as dog collars, for instance, may be conveying their belief that they must be interesting themselves"}},
                {"number": 26, "prompt": "Collecting gives a feeling that other hobbies are unlikely to inspire.",
                 "answer": "TRUE",
                 "explanation": "Collecting can give a strong sense of personal fulfilment beyond what most other hobbies offer.",
                 "evidence": {"sectionId": "p2", "ref": "10", "quote": "More than most other hobbies, collecting can be totally engrossing, and can give a strong sense of personal fulfilment"}},
            ],
        },
    ]

    # ── Passage 3: What's the purpose of gaining knowledge? ──────────────────
    p3_body = extract_between(ocr, "What’s the purpose of gaining knowledge?\n",
                              "PART 3 — QUESTIONS")
    p3_paras = parse_lettered_paras(p3_body, "ABCDEF")

    p3_groups = [
        {
            "id": "g5",
            "type": "matching",
            "label": "Questions 27–32",
            "instructions": "The Reading Passage has six sections, A–F. Choose the correct heading for each section from the list of headings below.",
            "options": [
                {"key": "i",    "text": "Courses that require a high level of commitment"},
                {"key": "ii",   "text": "A course title with two meanings"},
                {"key": "iii",  "text": "The equal importance of two key issues"},
                {"key": "iv",   "text": "Applying a theory in an unexpected context"},
                {"key": "v",    "text": "The financial benefits of studying"},
                {"key": "vi",   "text": "A surprising course title"},
                {"key": "vii",  "text": "Different names for different outcomes"},
                {"key": "viii", "text": "The possibility of attracting the wrong kind of student"},
            ],
            "questions": [
                {"number": 27, "prompt": "Section A", "answer": "vi",
                 "explanation": "Section A introduces the surprising course title ‘Arson for Profit’.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "what would the founders of these two institutions have thought of a course called ‘Arson for Profit’"}},
                {"number": 28, "prompt": "Section B", "answer": "viii",
                 "explanation": "Section B raises the concern that arsonists could enrol in the arson-investigation course.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "wouldn’t this also be the perfect course for prospective arsonists to sign up for"}},
                {"number": 29, "prompt": "Section C", "answer": "ii",
                 "explanation": "Section C discusses ‘Principles of Marketing’ which has two meanings: codified rules and ethical principles.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "a subject matter can have principles in the sense of being codified … without being principled in the sense of being ethical"}},
                {"number": 30, "prompt": "Section D", "answer": "iv",
                 "explanation": "Section D applies Kant’s theory of means and ends to the unexpected context of marketing.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "My inspiration for this judgement is the philosopher Immanuel Kant, who argued that any body of knowledge consists of an end (or purpose) and a means"}},
                {"number": 31, "prompt": "Section E", "answer": "iii",
                 "explanation": "Section E argues that both means (how to market) and end (what marketing is for) deserve equal scrutiny.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "A field of knowledge or a professional endeavor is defined by both the means and the end; hence both deserve scrutiny"}},
                {"number": 32, "prompt": "Section F", "answer": "vii",
                 "explanation": "Section F shows that the same knowledge used for different ends produces different names: firefighting vs arson, marketing vs fraud.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "We have a separate word for it: arson. Similarly, if you employed the ‘principles of marketing’ in an unprincipled way, you would not be doing marketing. We have another term for it: fraud"}},
            ],
        },
        {
            "id": "g6",
            "type": "short_answer",
            "label": "Questions 33–36",
            "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "summaryTitle": "The ‘Arson for Profit’ course",
            "summaryText": "This is a university course intended for students who are undergraduates and who are studying {33}. The expectation is that they will become {34} specialising in arson. The course will help them to detect cases of arson and find {35} of criminal intent, leading to successful {36} in the courts.",
            "questions": [
                {"number": 33, "prompt": "", "answer": ["fire science"], "wordLimit": 2,
                 "explanation": "Students in the program in fire science.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "our program in ‘fire science’"}},
                {"number": 34, "prompt": "", "answer": ["investigators"], "wordLimit": 2,
                 "explanation": "Prospective arson investigators.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "the course is intended for prospective arson investigators"}},
                {"number": 35, "prompt": "", "answer": ["evidence"], "wordLimit": 2,
                 "explanation": "Establishing a chain of evidence for prosecution.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "establishing a chain of evidence for effective prosecution in a court of law"}},
                {"number": 36, "prompt": "", "answer": ["prosecution"], "wordLimit": 2,
                 "explanation": "Leading to effective prosecution in a court of law.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "establishing a chain of evidence for effective prosecution in a court of law"}},
            ],
        },
        {
            "id": "g7",
            "type": "yes_no_notgiven",
            "label": "Questions 37–40",
            "instructions": "Do the following statements agree with the views of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {"number": 37, "prompt": "It is difficult to attract students onto courses that do not focus on a career.",
                 "answer": "NOT GIVEN",
                 "explanation": "The writer does not discuss difficulty in attracting students to non-vocational courses.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "A student can prepare for a career in resort management, engineering, interior design, accounting, music, law enforcement, you name it"}},
                {"number": 38, "prompt": "The ‘Arson for Profit’ course would be useful for people intending to set fire to buildings.",
                 "answer": "YES",
                 "explanation": "The writer says the course would be the perfect course for prospective arsonists.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "wouldn’t this also be the perfect course for prospective arsonists to sign up for"}},
                {"number": 39, "prompt": "Fire science courses are too academic to help people to be good at the job of firefighting.",
                 "answer": "NO",
                 "explanation": "The writer says fire science courses are highly welcome as part of professionalisation; they do not say the courses are too academic.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "My point is not to criticize academic programs in fire science: they are highly welcome as part of the increasing professionalization"}},
                {"number": 40, "prompt": "The writer’s fire science students provided a detailed definition of the purpose of their studies.",
                 "answer": "NO",
                 "explanation": "Students only eventually generalised to something like ‘the safety and welfare of society’ – vague, not detailed.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "they eventually generalize to something like, ‘The safety and welfare of society,’ which seems right"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Cork", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Collecting as a Hobby", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "What’s the purpose of gaining knowledge?", "passage": p3_paras, "groups": p3_groups},
    ]

    sql = "DELETE FROM public.tests WHERE book='Cambridge IELTS 12' AND test_label='Test 1' AND skill='reading';\n"
    sql += build_sql(1, sections, "c12t1r")
    return sql


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 2 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test2() -> str:
    ocr = load_ocr(2)

    # ── Passage 1: The risks agriculture faces in developing countries ────────
    p1_body = extract_between(ocr, "The risks agriculture faces in developing countries\n",
                              "PART 1 — QUESTIONS")
    p1_paras = parse_lettered_paras(p1_body, "ABCDEFGHI")

    p1_groups = [
        {
            "id": "g1",
            "type": "matching",
            "label": "Questions 1–3",
            "instructions": "The Reading Passage has nine paragraphs, A–I. Which paragraph contains the following information?",
            "options": [
                {"key": "A", "text": "Paragraph A"}, {"key": "B", "text": "Paragraph B"},
                {"key": "C", "text": "Paragraph C"}, {"key": "D", "text": "Paragraph D"},
                {"key": "E", "text": "Paragraph E"}, {"key": "F", "text": "Paragraph F"},
                {"key": "G", "text": "Paragraph G"}, {"key": "H", "text": "Paragraph H"},
                {"key": "I", "text": "Paragraph I"},
            ],
            "questions": [
                {"number": 1, "prompt": "a reference to characteristics that only apply to food production",
                 "answer": "A",
                 "explanation": "Paragraph A describes two unique aspects that distinguish food production from all other activities.",
                 "evidence": {"sectionId": "p1", "ref": "A", "quote": "Two things distinguish food production from all other productive activities"}},
                {"number": 2, "prompt": "a reference to challenges faced only by farmers in certain parts of the world",
                 "answer": "B",
                 "explanation": "Paragraph B notes that smallholder farmers in developing countries face additional adverse environments.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "smallholder farmers in developing countries must in addition deal with adverse environments"}},
                {"number": 3, "prompt": "a reference to difficulties in bringing about co-operation between farmers",
                 "answer": "H",
                 "explanation": "Paragraph H warns that collective action takes time, effort and money to organise and build trust.",
                 "evidence": {"sectionId": "p1", "ref": "H", "quote": "collective action does not come as a free good. It takes time, effort and money to organise, build trust and to experiment"}},
            ],
        },
        {
            "id": "g2",
            "type": "matching",
            "label": "Questions 4–9",
            "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, A–G. NB You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Kanayo F. Nwanze"},
                {"key": "B", "text": "Sophia Murphy"},
                {"key": "C", "text": "Shenggen Fan"},
                {"key": "D", "text": "Rokeya Kabir"},
                {"key": "E", "text": "Pat Mooney"},
                {"key": "F", "text": "Giel Ton"},
                {"key": "G", "text": "Sonali Bisht"},
            ],
            "questions": [
                {"number": 4, "prompt": "Financial assistance from the government does not always go to the farmers who most need it.",
                 "answer": "D",
                 "explanation": "Rokeya Kabir stated that sixty percent of beneficiaries of subsidies are not poor, but rich landowners.",
                 "evidence": {"sectionId": "p1", "ref": "E", "quote": "sixty percent of beneficiaries of subsidies are not poor, but rich landowners and non-farmer traders"}},
                {"number": 5, "prompt": "Farmers can benefit from collaborating as a group.",
                 "answer": "B",
                 "explanation": "Murphy said collective action offers an important way for farmers to strengthen their political and economic bargaining power.",
                 "evidence": {"sectionId": "p1", "ref": "H", "quote": "collective action offers an important way for farmers to strengthen their political and economic bargaining power"}},
                {"number": 6, "prompt": "Financial assistance from the government can improve the standard of living of farmers.",
                 "answer": "C",
                 "explanation": "Shenggen Fan held up social safety nets as valuable ways to address poverty among farming families.",
                 "evidence": {"sectionId": "p1", "ref": "E", "quote": "Shenggen Fan … held up social safety nets and public welfare programmes … as valuable ways to address poverty among farming families"}},
                {"number": 7, "prompt": "Farmers may be helped if there is financial input by the same individuals who buy from them.",
                 "answer": "G",
                 "explanation": "Sonali Bisht wrote about community-supported agriculture where consumers invest in local farmers by subscription.",
                 "evidence": {"sectionId": "p1", "ref": "I", "quote": "community-supported agriculture, where consumers invest in local farmers by subscription and guarantee producers a fair price"}},
                {"number": 8, "prompt": "Governments can help to reduce variation in prices.",
                 "answer": "B",
                 "explanation": "Murphy suggested procurement and holding of stocks by governments can mitigate wild swings in food prices.",
                 "evidence": {"sectionId": "p1", "ref": "D", "quote": "the procurement and holding of stocks by governments can also help mitigate wild swings in food prices"}},
                {"number": 9, "prompt": "Improvements to infrastructure can have a major impact on risk for farmers.",
                 "answer": "A",
                 "explanation": "Nwanze argued governments can reduce risks by providing basic services like roads.",
                 "evidence": {"sectionId": "p1", "ref": "D", "quote": "governments can significantly reduce risks for farmers by providing basic services like roads to get produce more efficiently to markets"}},
            ],
        },
        {
            "id": "g3",
            "type": "choose_two",
            "label": "Questions 10–11",
            "instructions": "Choose TWO letters, A–E. Which TWO problems are mentioned which affect farmers with small farms in developing countries?",
            "paired": True,
            "options": [
                {"key": "A", "text": "lack of demand for locally produced food"},
                {"key": "B", "text": "lack of irrigation programmes"},
                {"key": "C", "text": "being unable to get insurance"},
                {"key": "D", "text": "the effects of changing weather patterns"},
                {"key": "E", "text": "having to sell their goods to intermediary buyers"},
            ],
            "questions": [
                {"number": 10, "answer": ["D", "E"],
                 "explanation": "Changing weather patterns and intermediary buyers who dictate prices are mentioned as problems for small-scale farmers.",
                 "evidence": {"sectionId": "p1", "ref": "G", "quote": "The growing unpredictability of weather patterns increases farmers’ difficulty"}},
                {"number": 11, "answer": ["D", "E"],
                 "explanation": "Changing weather patterns and intermediary buyers who dictate prices are mentioned as problems for small-scale farmers.",
                 "evidence": {"sectionId": "p1", "ref": "I", "quote": "market price volatility is often worsened by the presence of intermediary purchasers who, taking advantage of farmers’ vulnerability, dictate prices"}},
            ],
        },
        {
            "id": "g4",
            "type": "choose_two",
            "label": "Questions 12–13",
            "instructions": "Choose TWO letters, A–E. Which TWO actions are recommended for improving conditions for farmers?",
            "paired": True,
            "options": [
                {"key": "A", "text": "reducing the size of food stocks"},
                {"key": "B", "text": "attempting to ensure that prices rise at certain times of the year"},
                {"key": "C", "text": "organising co-operation between a wide range of interested parties"},
                {"key": "D", "text": "encouraging consumers to take a financial stake in farming"},
                {"key": "E", "text": "making customers aware of the reasons for changing food prices"},
            ],
            "questions": [
                {"number": 12, "answer": ["C", "D"],
                 "explanation": "Stakeholder collaboration (C) and consumer investment in farms (D) are both recommended.",
                 "evidence": {"sectionId": "p1", "ref": "H", "quote": "all stakeholders, including business, government, scientists and civil society, must work together"}},
                {"number": 13, "answer": ["C", "D"],
                 "explanation": "Stakeholder collaboration (C) and consumer investment in farms (D) are both recommended.",
                 "evidence": {"sectionId": "p1", "ref": "I", "quote": "community-supported agriculture, where consumers invest in local farmers by subscription"}},
            ],
        },
    ]

    # ── Passage 2: The Lost City ──────────────────────────────────────────────
    p2_body = extract_between(ocr, "The Lost City\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEFG")

    p2_groups = [
        {
            "id": "g5",
            "type": "matching",
            "label": "Questions 14–20",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Choose the correct heading for each paragraph from the list of headings below.",
            "options": [
                {"key": "i",    "text": "Different accounts of the same journey"},
                {"key": "ii",   "text": "Bingham gains support"},
                {"key": "iii",  "text": "A common belief"},
                {"key": "iv",   "text": "The aim of the trip"},
                {"key": "v",    "text": "A dramatic description"},
                {"key": "vi",   "text": "A new route"},
                {"key": "vii",  "text": "Bingham publishes his theory"},
                {"key": "viii", "text": "Bingham’s lack of enthusiasm"},
            ],
            "questions": [
                {"number": 14, "prompt": "Paragraph A", "answer": "iv",
                 "explanation": "Paragraph A describes Bingham’s goal: to locate the remains of Vitcos, the last Inca capital.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "His goal was to locate the remains of a city called Vitcos, the last capital of the Inca civilisation"}},
                {"number": 15, "prompt": "Paragraph B", "answer": "vi",
                 "explanation": "Paragraph B describes a new route down the Urubamba valley that previous travellers had not taken.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "Almost all previous travelers had left the river at Ollantaytambo and taken a high pass across the mountains"}},
                {"number": 16, "prompt": "Paragraph C", "answer": "viii",
                 "explanation": "Paragraph C describes Bingham’s lack of enthusiasm for climbing the hill that day.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "Bingham also seems to have been less than keen on the prospect of climbing the hill"}},
                {"number": 17, "prompt": "Paragraph D", "answer": "v",
                 "explanation": "Paragraph D gives Bingham’s dramatic description of ascending to Machu Picchu.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "It seemed like an unbelievable dream … the sight held me spellbound"}},
                {"number": 18, "prompt": "Paragraph E", "answer": "i",
                 "explanation": "Paragraph E contrasts Bingham’s later published account with his journal entries at the time.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "Lost City of the Incas is a work of hindsight, not written until 1948, many years after his journey. His journal entries of the time reveal a much more gradual appreciation"}},
                {"number": 19, "prompt": "Paragraph F", "answer": "vii",
                 "explanation": "Paragraph F describes Bingham publishing his theory in the National Geographic article.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "When he came to write the National Geographic magazine article that broke the story to the world in April 1913"}},
                {"number": 20, "prompt": "Paragraph G", "answer": "iii",
                 "explanation": "Paragraph G discusses the common belief that Machu Picchu was a royal country estate.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "An idea which has gained wide acceptance over the past few years is that Machu Picchu was a moya, a country estate built by an Inca emperor"}},
            ],
        },
        {
            "id": "g6",
            "type": "true_false_notgiven",
            "label": "Questions 21–24",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 21, "prompt": "Bingham went to South America in search of an Inca city.",
                 "answer": "TRUE",
                 "explanation": "His goal was to locate the remains of Vitcos, the last capital of the Inca civilisation.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "His goal was to locate the remains of a city called Vitcos, the last capital of the Inca civilisation"}},
                {"number": 22, "prompt": "Bingham chose a particular route down the Urubamba valley because it was the most common route used by travellers.",
                 "answer": "FALSE",
                 "explanation": "Almost all previous travellers had taken a different route via a high pass; Bingham’s route was a new one.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "Almost all previous travelers had left the river at Ollantaytambo and taken a high pass across the mountains to rejoin the river lower down"}},
                {"number": 23, "prompt": "Bingham understood the significance of Machu Picchu as soon as he saw it.",
                 "answer": "FALSE",
                 "explanation": "His journal reveals a much more gradual appreciation; he didn’t realise the extent or importance of the site.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "His journal entries of the time reveal a much more gradual appreciation of his achievement … Bingham didn’t realise the extent or the importance of the site"}},
                {"number": 24, "prompt": "Bingham returned to Machu Picchu in order to find evidence to support his theory.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage says he made desperate attempts to prove his belief but does not say he returned to the site.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "Bingham made desperate attempts to prove this belief for nearly 40 years"}},
            ],
        },
        {
            "id": "g7",
            "type": "completion",
            "label": "Questions 25–26",
            "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
            "questions": [
                {"number": 25, "prompt": "The track that took Bingham down the Urubamba valley had been created for the transportation of _______",
                 "answer": ["rubber"], "wordLimit": 1,
                 "explanation": "A track had recently been blasted to enable rubber to be brought up by mules from the jungle.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "a track had recently been blasted down the valley canyon to enable rubber to be brought up by mules from the jungle"}},
                {"number": 26, "prompt": "Bingham found out about the ruins of Machu Picchu from a _______ in the Urubamba valley.",
                 "answer": ["farmer"], "wordLimit": 1,
                 "explanation": "A local farmer, Melchor Arteaga, had told them about the ruins.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "ruins that a local farmer, Melchor Arteaga, had told them about the night before"}},
            ],
        },
    ]

    # ── Passage 3: The Benefits of Being Bilingual ───────────────────────────
    p3_body = extract_between(ocr, "The Benefits of Being Bilingual\n", "PART 3 — QUESTIONS")
    p3_paras = parse_lettered_paras(p3_body, "ABCDEFG")

    p3_groups = [
        {
            "id": "g8",
            "type": "completion",
            "label": "Questions 27–31",
            "instructions": "Complete the table below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "questions": [
                {"number": 27, "prompt": "Observing the _______ of Russian-English bilingual people when asked to select certain objects",
                 "answer": ["eye movements"], "wordLimit": 2,
                 "explanation": "Some of the most compelling evidence comes from studying eye movements.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "Some of the most compelling evidence for this phenomenon … comes from studying eye movements"}},
                {"number": 28, "prompt": "Bilingual people engage both languages simultaneously: a mechanism known as _______",
                 "answer": ["language co-activation"], "wordLimit": 2,
                 "explanation": "This phenomenon is called language co-activation.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "this phenomenon, called ‘language co-activation’"}},
                {"number": 29, "prompt": "A test called the _______, focusing on naming colours",
                 "answer": ["Stroop Task"], "wordLimit": 2,
                 "explanation": "In the classic Stroop Task, people see a word and are asked to name the colour of the word’s font.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "In the classic Stroop Task, people see a word and are asked to name the colour of the word’s font"}},
                {"number": 30, "prompt": "Bilingual people are more able to handle tasks involving a skill called _______",
                 "answer": ["conflict management"], "wordLimit": 2,
                 "explanation": "Bilingual people often perform better on tasks that require conflict management.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "bilingual people often perform better on tasks that require conflict management"}},
                {"number": 31, "prompt": "When changing strategies, bilingual people have superior _______",
                 "answer": ["cognitive control"], "wordLimit": 2,
                 "explanation": "Bilinguals switch between tasks more quickly, reflecting better cognitive control.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "they do so more quickly than monolingual people, reflecting better cognitive control when having to make rapid changes of strategy"}},
            ],
        },
        {
            "id": "g9",
            "type": "yes_no_notgiven",
            "label": "Questions 32–36",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {"number": 32, "prompt": "Attitudes towards bilingualism have changed in recent years.",
                 "answer": "YES",
                 "explanation": "In the past bilingual children were considered at a disadvantage; now researchers have identified clear benefits.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "In the past, such children were considered to be at a disadvantage compared with their monolingual peers. Over the past few decades, however … several clear benefits of being bilingual"}},
                {"number": 33, "prompt": "Bilingual people are better than monolingual people at guessing correctly what words are before they are finished.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage describes language co-activation in bilinguals but does not compare their word-guessing accuracy with monolinguals.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "the brain’s language system begins to guess what that word might be"}},
                {"number": 34, "prompt": "Bilingual people consistently name images faster than monolingual people.",
                 "answer": "NO",
                 "explanation": "Knowing more than one language can cause speakers to name pictures more slowly.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "knowing more than one language can cause speakers to name pictures more slowly"}},
                {"number": 35, "prompt": "Bilingual people’s brains process single sounds more efficiently than monolingual people in all situations.",
                 "answer": "NO",
                 "explanation": "Without background noise both groups show highly similar brain stem responses; bilinguals are better only with background noise.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "When monolingual and bilingual adolescents listen to simple speech sounds without any intervening background noise, they show highly similar brain stem responses"}},
                {"number": 36, "prompt": "Fewer bilingual people than monolingual people suffer from brain disease in old age.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage states bilingual patients show symptoms later on average, but does not state that fewer bilinguals suffer brain disease.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "bilingual patients reported showing initial symptoms of the disease an average of five years later than monolingual patients"}},
            ],
        },
        {
            "id": "g10",
            "type": "matching",
            "label": "Questions 37–40",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Which paragraph contains the following information?",
            "options": [
                {"key": "A", "text": "Paragraph A"}, {"key": "B", "text": "Paragraph B"},
                {"key": "C", "text": "Paragraph C"}, {"key": "D", "text": "Paragraph D"},
                {"key": "E", "text": "Paragraph E"}, {"key": "F", "text": "Paragraph F"},
                {"key": "G", "text": "Paragraph G"},
            ],
            "questions": [
                {"number": 37, "prompt": "an example of how bilingual and monolingual people’s brains respond differently to a certain type of non-verbal auditory input",
                 "answer": "D",
                 "explanation": "Paragraph D discusses brain stem responses to speech sounds with and without background noise.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "It also seems that the neurological roots of the bilingual advantage extend to brain areas more traditionally associated with sensory processing"}},
                {"number": 38, "prompt": "a demonstration of how a bilingual upbringing has benefits even before we learn to speak",
                 "answer": "G",
                 "explanation": "Paragraph G describes seven-month-old bilingual babies adjusting to a new rule faster than monolingual babies.",
                 "evidence": {"sectionId": "p3", "ref": "G", "quote": "researchers taught seven-month-old babies growing up in monolingual or bilingual homes … only the bilingual babies were able to successfully learn the new rule"}},
                {"number": 39, "prompt": "a description of the process by which people identify words that they hear",
                 "answer": "B",
                 "explanation": "Paragraph B describes how the brain’s language system begins to guess words before they are fully heard.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "Long before the word is finished, the brain’s language system begins to guess what that word might be"}},
                {"number": 40, "prompt": "reference to some negative consequences of being bilingual",
                 "answer": "C",
                 "explanation": "Paragraph C mentions that bilinguals can name pictures more slowly and experience more tip-of-the-tongue states.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "knowing more than one language can cause speakers to name pictures more slowly, and can increase ‘tip-of-the-tongue states’"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "The risks agriculture faces in developing countries", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "The Lost City", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "The Benefits of Being Bilingual", "passage": p3_paras, "groups": p3_groups},
    ]

    sql = "DELETE FROM public.tests WHERE book='Cambridge IELTS 12' AND test_label='Test 2' AND skill='reading';\n"
    sql += build_sql(2, sections, "c12t2r")
    return sql


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 3 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test3() -> str:
    ocr = load_ocr(3)

    # ── Passage 1: Flying tortoises ───────────────────────────────────────────
    p1_body = extract_between(ocr, "Flying tortoises\n", "PART 1 — QUESTIONS")
    p1_paras = parse_lettered_paras(p1_body, "ABCDEFG")

    p1_groups = [
        {
            "id": "g1",
            "type": "matching",
            "label": "Questions 1–7",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Choose the correct heading for each paragraph from the list of headings below.",
            "options": [
                {"key": "i",    "text": "The importance of getting the timing right"},
                {"key": "ii",   "text": "Young meets old"},
                {"key": "iii",  "text": "Developments to the disadvantage of tortoise populations"},
                {"key": "iv",   "text": "Planning a bigger idea"},
                {"key": "v",    "text": "Tortoises populate the islands"},
                {"key": "vi",   "text": "Carrying out a carefully prepared operation"},
                {"key": "vii",  "text": "Looking for a home for the islands’ tortoises"},
                {"key": "viii", "text": "The start of the conservation project"},
            ],
            "questions": [
                {"number": 1, "prompt": "Paragraph A", "answer": "v",
                 "explanation": "Paragraph A describes how tortoises colonised the Galápagos islands from mainland South America.",
                 "evidence": {"sectionId": "p1", "ref": "A", "quote": "the islands were colonised by one or more tortoises from mainland South America"}},
                {"number": 2, "prompt": "Paragraph B", "answer": "iii",
                 "explanation": "Paragraph B describes exploitation and habitat destruction that harmed tortoise populations.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "They hunted the tortoises and destroyed their habitat to clear land for agriculture"}},
                {"number": 3, "prompt": "Paragraph C", "answer": "viii",
                 "explanation": "Paragraph C describes the start of the tortoise-breeding centre in 1989.",
                 "evidence": {"sectionId": "p1", "ref": "C", "quote": "In 1989, work began on a tortoise-breeding centre just outside the town of Puerto Villamil on Isabela"}},
                {"number": 4, "prompt": "Paragraph D", "answer": "i",
                 "explanation": "Paragraph D explains the timing constraints: tortoises must be reintroduced within a specific age/weight window.",
                 "evidence": {"sectionId": "p1", "ref": "D", "quote": "if people wait too long after that point, the tortoises eventually become too large to transport"}},
                {"number": 5, "prompt": "Paragraph E", "answer": "iv",
                 "explanation": "Paragraph E describes the planning meeting for a more ambitious helicopter-based reintroduction.",
                 "evidence": {"sectionId": "p1", "ref": "E", "quote": "gathered around a table in a small café … to work out more ambitious reintroduction"}},
                {"number": 6, "prompt": "Paragraph F", "answer": "vi",
                 "explanation": "Paragraph F describes the careful preparation and execution of the helicopter operation.",
                 "evidence": {"sectionId": "p1", "ref": "F", "quote": "a group of volunteers from the breeding centre worked around the clock to prepare the young tortoises for transport"}},
                {"number": 7, "prompt": "Paragraph G", "answer": "ii",
                 "explanation": "Paragraph G describes a young tortoise meeting a century-old giant after release.",
                 "evidence": {"sectionId": "p1", "ref": "G", "quote": "one tiny tortoise came across a fully grown giant who had been lumbering around the island for around a hundred years"}},
            ],
        },
        {
            "id": "g2",
            "type": "completion",
            "label": "Questions 8–13",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "The decline of the Galápagos tortoise",
            "formContent": [
                {"kind": "static", "text": "Originally from mainland South America", "noBullet": True},
                {"kind": "static", "text": "Numbers on Galápagos islands increased, due to lack of predators", "noBullet": True},
                {"kind": "question", "number": 8},
                {"kind": "question", "number": 9},
                {"kind": "question", "number": 10},
                {"kind": "question", "number": 11},
                {"kind": "question", "number": 12},
                {"kind": "question", "number": 13},
            ],
            "questions": [
                {"number": 8, "prompt": "17th century: small numbers taken onto ships used by _______",
                 "answer": ["pirates"], "wordLimit": 1,
                 "explanation": "From the 17th century onwards, pirates took a few on board for food.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "From the 17th century onwards, pirates took a few on board for food"}},
                {"number": 9, "prompt": "1790s: very large numbers taken onto whaling ships, kept for _______,",
                 "answer": ["food"], "wordLimit": 1,
                 "explanation": "The tortoises were taken on board whaling ships to act as food supplies.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "the tortoises were taken on board these ships to act as food supplies during long ocean passages"}},
                {"number": 10, "prompt": "and also used to produce _______",
                 "answer": ["oil"], "wordLimit": 1,
                 "explanation": "Sometimes their bodies were processed into high-grade oil.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "their bodies were processed into high-grade oil"}},
                {"number": 11, "prompt": "Hunted by _______ on the islands",
                 "answer": ["settlers"], "wordLimit": 1,
                 "explanation": "Settlers came to the islands and hunted the tortoises.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "This historical exploitation was then exacerbated when settlers came to the islands. They hunted the tortoises"}},
                {"number": 12, "prompt": "Habitat destruction: for the establishment of agriculture and by various _______ not native to the islands,",
                 "answer": ["species"], "wordLimit": 1,
                 "explanation": "Settlers introduced alien species ranging from cattle, pigs, goats, rats and dogs.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "They also introduced alien species – ranging from cattle, pigs, goats, rats and dogs to plants and ants"}},
                {"number": 13, "prompt": "which also fed on baby tortoises and tortoises’ _______",
                 "answer": ["eggs"], "wordLimit": 1,
                 "explanation": "Alien species prey on the eggs and young tortoises.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "that either prey on the eggs and young tortoises or damage or destroy their habitat"}},
            ],
        },
    ]

    # ── Passage 2: The Intersection of Health Sciences and Geography ──────────
    p2_body = extract_between(ocr, "The Intersection of Health Sciences and Geography\n",
                              "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEFGH")

    p2_groups = [
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 14–19",
            "instructions": "The Reading Passage has eight sections, A–H. Which paragraph contains the following information? NB You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Paragraph A"}, {"key": "B", "text": "Paragraph B"},
                {"key": "C", "text": "Paragraph C"}, {"key": "D", "text": "Paragraph D"},
                {"key": "E", "text": "Paragraph E"}, {"key": "F", "text": "Paragraph F"},
                {"key": "G", "text": "Paragraph G"}, {"key": "H", "text": "Paragraph H"},
            ],
            "questions": [
                {"number": 14, "prompt": "an acceptance that not all diseases can be totally eliminated",
                 "answer": "D",
                 "explanation": "Paragraph D says ‘While people will always be prone to illness’, accepting that not all disease can be eliminated.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "While people will always be prone to illness, the study of how geography affects our health could lead to the eradication of certain illnesses"}},
                {"number": 15, "prompt": "examples of physical conditions caused by human behaviour",
                 "answer": "C",
                 "explanation": "Paragraph C describes smog and pollution from cars and coal factories causing asthma and other conditions.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "In many large cities, the wind is not strong enough to clear the air of the massive amounts of smog and pollution that cause asthma, lung problems, eyesight issues"}},
                {"number": 16, "prompt": "a reference to classifying diseases on the basis of how far they extend geographically",
                 "answer": "F",
                 "explanation": "Paragraph F describes creating a way of categorising illnesses into local and global scales.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "work to create a clear way of categorizing illnesses, diseases and epidemics into local and global scales"}},
                {"number": 17, "prompt": "reasons why the level of access to healthcare can vary within a country",
                 "answer": "G",
                 "explanation": "Paragraph G describes discrepancies between options available to people of different social classes and income brackets.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "there is often a very large discrepancy between the options available to people in different social classes, income brackets, and levels of education"}},
                {"number": 18, "prompt": "a description of health geography as a mixture of different academic fields",
                 "answer": "D",
                 "explanation": "Paragraph D defines health geography as the combination of geography knowledge and the study of health.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "Health geography is the combination of, on the one hand, knowledge regarding geography and methods used to analyse and interpret geographical information, and on the other, the study of health, diseases and healthcare practices"}},
                {"number": 19, "prompt": "a description of the type of area where a particular illness is rare",
                 "answer": "B",
                 "explanation": "Paragraph B notes that malaria is much less of a problem in high-altitude deserts.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "Malaria is much less of a problem in high-altitude deserts, for instance"}},
            ],
        },
        {
            "id": "g4",
            "type": "completion",
            "label": "Questions 20–26",
            "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
            "questions": [
                {"number": 20, "prompt": "Certain diseases have disappeared, thanks to better _______ and healthcare.",
                 "answer": ["vaccinations"], "wordLimit": 1,
                 "explanation": "Many diseases have been eradicated due to improvements in vaccinations.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "many diseases that affect humans have been eradicated due to improvements in vaccinations and the availability of healthcare"}},
                {"number": 21, "prompt": "Because there is more contact between people, _______ are losing their usefulness.",
                 "answer": ["antibiotics"], "wordLimit": 1,
                 "explanation": "Super-viruses and infections resistant to antibiotics are becoming more common.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "super-viruses and other infections resistant to antibiotics are becoming more and more common"}},
                {"number": 22, "prompt": "Disease-causing _______ are most likely to be found in hot, damp regions.",
                 "answer": ["mosquitos"], "wordLimit": 1,
                 "explanation": "Mosquitos that can give people malaria grow in warm and damp environments.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "the mosquitos that can give people this disease can grow"}},
                {"number": 23, "prompt": "One cause of pollution is _______ that burn a particular fuel.",
                 "answer": ["factories"], "wordLimit": 1,
                 "explanation": "Factories that run on coal power contribute to pollution.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "factories that run on coal power"}},
                {"number": 24, "prompt": "The growth of cities often has an impact on nearby _______",
                 "answer": ["forests"], "wordLimit": 1,
                 "explanation": "Rapid industrialisation has led to the cutting down of forests to allow for expansion of big cities.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "the cutting down of forests to allow for the expansion of big cities"}},
                {"number": 25, "prompt": "_______ is one disease that is growing after having been eradicated.",
                 "answer": ["Polio"], "wordLimit": 1,
                 "explanation": "Diseases like polio are re-emerging.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "diseases like polio are re-emerging"}},
                {"number": 26, "prompt": "A physical barrier such as a _______ can prevent people from reaching a hospital.",
                 "answer": ["mountain"], "wordLimit": 1,
                 "explanation": "It may be very difficult for people to get medical attention because there is a mountain between their village and the nearest hospital.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "it may be very difficult for people to get medical attention because there is a mountain between their village and the nearest hospital"}},
            ],
        },
    ]

    # ── Passage 3: Music and the emotions ────────────────────────────────────
    p3_body = extract_between(ocr, "Music and the emotions\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g5",
            "type": "short_answer",
            "label": "Questions 27–31",
            "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "summaryTitle": "The Montreal Study",
            "summaryText": "Participants, who were recruited for the study through advertisements, had their brain activity monitored while listening to their favourite music. It was noted that the music stimulated the brain’s neurons to release a substance called {27} in two of the parts of the brain which are associated with feeling {28}. Researchers also observed that the neurons in the area of the brain called the {29} were particularly active just before the participants’ favourite moments in the music – the period known as the {30}. Activity in this part of the brain is associated with the expectation of ‘reward’ stimuli such as {31}.",
            "questions": [
                {"number": 27, "prompt": "", "answer": ["dopamine"], "wordLimit": 2,
                 "explanation": "Music triggers the production of dopamine by neurons in the brain.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "music triggers the production of dopamine – a chemical with a key role in setting people’s moods – by the neurons"}},
                {"number": 28, "prompt": "", "answer": ["pleasure"], "wordLimit": 2,
                 "explanation": "The two regions are linked with the experience of pleasure.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "these two regions have long been linked with the experience of pleasure"}},
                {"number": 29, "prompt": "", "answer": ["caudate"], "wordLimit": 2,
                 "explanation": "The dopamine neurons in the caudate were most active before favourite moments.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "the dopamine neurons in the caudate – a region of the brain involved in learning stimulus-response associations"}},
                {"number": 30, "prompt": "", "answer": ["anticipatory phase"], "wordLimit": 2,
                 "explanation": "The researchers call this the anticipatory phase.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "The researchers call this the ‘anticipatory phase’"}},
                {"number": 31, "prompt": "", "answer": ["food"], "wordLimit": 2,
                 "explanation": "The caudate is involved in anticipating food and other reward stimuli.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "a region of the brain involved in learning stimulus-response associations, and in anticipating food and other ‘reward’ stimuli"}},
            ],
        },
        {
            "id": "g6",
            "type": "multiple_choice",
            "label": "Questions 32–36",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {"number": 32, "prompt": "What point does the writer emphasise in the first paragraph?",
                 "options": [
                     {"key": "A", "text": "how dramatically our reactions to music can vary"},
                     {"key": "B", "text": "how intense our physical responses to music can be"},
                     {"key": "C", "text": "how little we know about the way that music affects us"},
                     {"key": "D", "text": "how much music can tell us about how our brains operate"},
                 ],
                 "answer": "B",
                 "explanation": "The first paragraph describes the physical symptoms of emotional arousal: dilating pupils, rising pulse, redirected blood flow.",
                 "evidence": {"sectionId": "p3", "ref": "1", "quote": "our body betrays all the symptoms of emotional arousal. The pupils in our eyes dilate, our pulse and blood pressure rise"}},
                {"number": 33, "prompt": "What view of the Montreal study does the writer express in the second paragraph?",
                 "options": [
                     {"key": "A", "text": "Its aims were innovative."},
                     {"key": "B", "text": "The approach was too simplistic."},
                     {"key": "C", "text": "It produced some remarkably precise data."},
                     {"key": "D", "text": "The technology used was unnecessarily complex."},
                 ],
                 "answer": "C",
                 "explanation": "The writers says PET and fMRI together produced an impressively exact and detailed portrait.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "they were able to obtain an impressively exact and detailed portrait of music in the brain"}},
                {"number": 34, "prompt": "What does the writer find interesting about the results of the Montreal study?",
                 "options": [
                     {"key": "A", "text": "the timing of participants’ neural responses to the music"},
                     {"key": "B", "text": "the impact of the music on participants’ emotional state"},
                     {"key": "C", "text": "the section of participants’ brains which was activated by the music"},
                     {"key": "D", "text": "the type of music which had the strongest effect on participants’ brains"},
                 ],
                 "answer": "A",
                 "explanation": "The writer says ‘What is rather more significant’ is that the caudate is most active ~15 seconds BEFORE the favourite moments.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "What is rather more significant is the finding that the dopamine neurons in the caudate … were at their most active around 15 seconds before the participants’ favourite moments"}},
                {"number": 35, "prompt": "Why does the writer refer to Meyer’s work on music and emotion?",
                 "options": [
                     {"key": "A", "text": "to propose an original theory about the subject"},
                     {"key": "B", "text": "to offer support for the findings of the Montreal study"},
                     {"key": "C", "text": "to recommend the need for further research into the subject"},
                     {"key": "D", "text": "to present a view which opposes that of the Montreal researchers"},
                 ],
                 "answer": "B",
                 "explanation": "Meyer’s analysis of Beethoven demonstrates the same principle of unfulfilled expectation that drives dopamine activity in the Montreal study.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "It is this uncertainty that triggers the surge of dopamine in the caudate, as we struggle to figure out what will happen next"}},
                {"number": 36, "prompt": "According to Leonard Meyer, what causes the listener’s emotional response to music?",
                 "options": [
                     {"key": "A", "text": "the way that the music evokes poignant memories in the listener"},
                     {"key": "B", "text": "the association of certain musical chords with certain feelings"},
                     {"key": "C", "text": "the listener’s sympathy with the composer’s intentions"},
                     {"key": "D", "text": "the internal structure of the musical composition"},
                 ],
                 "answer": "D",
                 "explanation": "Meyer argued that emotions in music come from the unfolding events of the music itself – its internal structure.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "the emotions we find in music come from the unfolding events of the music itself. This ‘embodied meaning’ arises from the patterns the symphony invokes and then ignores"}},
            ],
        },
        {
            "id": "g7",
            "type": "matching",
            "label": "Questions 37–40",
            "instructions": "Complete each sentence with the correct ending, A–F, below.",
            "options": [
                {"key": "A", "text": "our response to music depends on our initial emotional state."},
                {"key": "B", "text": "neuron activity decreases if outcomes become predictable."},
                {"key": "C", "text": "emotive music can bring to mind actual pictures and events."},
                {"key": "D", "text": "experiences in our past can influence our emotional reaction to music."},
                {"key": "E", "text": "emotive music delays giving listeners what they expect to hear."},
                {"key": "F", "text": "neuron activity increases prior to key points in a musical piece."},
            ],
            "questions": [
                {"number": 37, "prompt": "The Montreal researchers discovered that",
                 "answer": "F",
                 "explanation": "The caudate neurons were most active around 15 seconds before favourite moments – neuron activity increases prior to key points.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "the dopamine neurons in the caudate … were at their most active around 15 seconds before the participants’ favourite moments"}},
                {"number": 38, "prompt": "Many studies have demonstrated that",
                 "answer": "B",
                 "explanation": "Dopamine neurons quickly adapt to predictable rewards; if we know what’s going to happen, we don’t get excited.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "dopamine neurons quickly adapt to predictable rewards. If we know what’s going to happen next, then we don’t get excited"}},
                {"number": 39, "prompt": "Meyer’s analysis of Beethoven’s music shows that",
                 "answer": "E",
                 "explanation": "Beethoven carefully holds off repeating the expected pattern – the music delays giving listeners what they expect.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "Beethoven begins with the clear statement of a rhythmic and harmonic pattern and then, in an ingenious tonal dance, carefully holds off repeating it"}},
                {"number": 40, "prompt": "Earlier theories of music suggested that",
                 "answer": "C",
                 "explanation": "Earlier theories focused on connotative meaning – the way sound refers to the real world of images and experiences.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "earlier theories of music focused on the way a sound can refer to the real world of images and experiences – its ‘connotative’ meaning"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Flying tortoises", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "The Intersection of Health Sciences and Geography", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Music and the emotions", "passage": p3_paras, "groups": p3_groups},
    ]

    sql = "DELETE FROM public.tests WHERE book='Cambridge IELTS 12' AND test_label='Test 3' AND skill='reading';\n"
    sql += build_sql(3, sections, "c12t3r")
    return sql


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 4 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test4() -> str:
    ocr = load_ocr(4)

    # ── Passage 1: The History of Glass ──────────────────────────────────────
    p1_body = extract_between(ocr, "The History of Glass\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–8",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "The History of Glass",
            "formContent": [
                {"kind": "question", "number": 1},
                {"kind": "question", "number": 2},
                {"kind": "question", "number": 3},
                {"kind": "question", "number": 4},
                {"kind": "question", "number": 5},
                {"kind": "static", "text": "From 10th century: Venetians became famous for making bottles out of glass.", "noBullet": True},
                {"kind": "question", "number": 6},
                {"kind": "question", "number": 7},
                {"kind": "question", "number": 8},
            ],
            "questions": [
                {"number": 1, "prompt": "Early humans used a material called _______ to make the sharp points of their",
                 "answer": ["obsidian"], "wordLimit": 1,
                 "explanation": "A type of natural glass called obsidian was first used as tips for spears.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "a type of natural glass – obsidian – formed in places such as the mouth of a volcano"}},
                {"number": 2, "prompt": "_______",
                 "answer": ["spears"], "wordLimit": 1,
                 "explanation": "Obsidian was first used as tips for spears.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "was first used as tips for spears"}},
                {"number": 3, "prompt": "4000 BC: _______ made of stone were covered in a coating of man-made glass.",
                 "answer": ["beads"], "wordLimit": 1,
                 "explanation": "Man-made glass was used as glazes for coating stone beads.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "this took the form of glazes used for coating stone beads"}},
                {"number": 4, "prompt": "First century BC: glass was coloured because of the _______ in the material.",
                 "answer": ["impurities"], "wordLimit": 1,
                 "explanation": "Glass was highly coloured due to the impurities of the raw material.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "The glass made during this time was highly coloured due to the impurities of the raw material"}},
                {"number": 5, "prompt": "Until 476 AD: Only the _______ knew how to make glass.",
                 "answer": ["Romans"], "wordLimit": 1,
                 "explanation": "The Romans guarded the skills and technology required to make glass.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "The secret of glass making was taken across Europe by the Romans during this century. However, they guarded the skills and technology required to make glass very closely"}},
                {"number": 6, "prompt": "17th century: George Ravenscroft developed a process using _______ to avoid the occurrence of",
                 "answer": ["lead"], "wordLimit": 1,
                 "explanation": "Ravenscroft countered clouding by introducing lead to the raw materials.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "He attempted to counter the effect of clouding that sometimes occurred in blown glass by introducing lead to the raw materials"}},
                {"number": 7, "prompt": "_______ in blown glass.",
                 "answer": ["clouding"], "wordLimit": 1,
                 "explanation": "Lead was introduced to counter the effect of clouding.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "He attempted to counter the effect of clouding that sometimes occurred in blown glass"}},
                {"number": 8, "prompt": "Mid-19th century: British glass production developed after changes to laws concerning _______",
                 "answer": ["taxes"], "wordLimit": 1,
                 "explanation": "The glass industry developed after the repeal of the Excise Act; heavy taxes had been placed on glass production.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "heavy taxes had been placed on the amount of glass melted in a glasshouse, and were levied continuously from 1745 to 1845"}},
            ],
        },
        {
            "id": "g2",
            "type": "true_false_notgiven",
            "label": "Questions 9–13",
            "instructions": "Do the following statements agree with the information given in the passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 9, "prompt": "In 1887, HM Ashley had the fastest bottle-producing machine that existed at the time.",
                 "answer": "TRUE",
                 "explanation": "Ashley’s machine could produce 200 bottles per hour, more than three times quicker than any previous method.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "factory-owner HM Ashley introduced a machine capable of producing 200 bottles per hour … more than three times quicker than any previous production method"}},
                {"number": 10, "prompt": "Michael Owens was hired by a large US company to design a fully-automated bottle manufacturing machine for them.",
                 "answer": "FALSE",
                 "explanation": "Owens was the founder of the Owens Bottle Machine Company – he was not hired by an existing company.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "the first fully automated machine was developed in the USA by Michael Owens – founder of the Owens Bottle Machine Company"}},
                {"number": 11, "prompt": "Nowadays, most glass is produced by large international manufacturers.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage says glass making is big business but does not specify that most is produced by large international manufacturers.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "Today, glass making is big business. It has become a modern, hi-tech industry operating in a fiercely competitive global market"}},
                {"number": 12, "prompt": "Concern for the environment is leading to an increased demand for glass containers.",
                 "answer": "TRUE",
                 "explanation": "With growing consumer concern for green issues, glass bottles and jars are becoming ever more popular.",
                 "evidence": {"sectionId": "p1", "ref": "7", "quote": "with growing consumer concern for green issues, glass bottles and jars are becoming ever more popular"}},
                {"number": 13, "prompt": "It is more expensive to produce recycled glass than to manufacture new glass.",
                 "answer": "FALSE",
                 "explanation": "Less energy is needed to melt recycled glass than to melt down raw materials, so recycling saves fuel and costs.",
                 "evidence": {"sectionId": "p1", "ref": "7", "quote": "As less energy is needed to melt recycled glass than to melt down raw materials, this also saves fuel and production costs"}},
            ],
        },
    ]

    # ── Passage 2: Bring back the big cats ───────────────────────────────────
    p2_body = extract_between(ocr, "Bring back the big cats\n", "PART 2 — QUESTIONS")
    p2_paras = parse_plain_paras(p2_body)

    p2_groups = [
        {
            "id": "g3",
            "type": "multiple_choice",
            "label": "Questions 14–18",
            "instructions": "Write the correct letter, A, B, C or D, in boxes on your answer sheet.",
            "questions": [
                {"number": 14, "prompt": "What did the 2006 discovery of the animal bone reveal about the lynx?",
                 "options": [
                     {"key": "A", "text": "Its physical appearance was very distinctive."},
                     {"key": "B", "text": "Its extinction was linked to the spread of farming."},
                     {"key": "C", "text": "It vanished from Britain several thousand years ago."},
                     {"key": "D", "text": "It survived in Britain longer than was previously thought."},
                 ],
                 "answer": "D",
                 "explanation": "The 2006 find brings forward the lynx’s estimated extinction date by roughly 5,000 years, meaning it survived longer than thought.",
                 "evidence": {"sectionId": "p2", "ref": "1", "quote": "it would bring forward the tassel-eared cat’s estimated extinction date by roughly 5,000 years"}},
                {"number": 15, "prompt": "What point does the writer make about large predators in the third paragraph?",
                 "options": [
                     {"key": "A", "text": "Their presence can increase biodiversity."},
                     {"key": "B", "text": "They may cause damage to local ecosystems."},
                     {"key": "C", "text": "Their behaviour can alter according to the environment."},
                     {"key": "D", "text": "They should be reintroduced only to areas where they were native."},
                 ],
                 "answer": "A",
                 "explanation": "Large predators drive dynamic processes that create niches for hundreds of species.",
                 "evidence": {"sectionId": "p2", "ref": "3", "quote": "Some of them drive dynamic processes that resonate through the whole food chain, creating niches for hundreds of species that might otherwise struggle to survive"}},
                {"number": 16, "prompt": "What does the writer suggest about British conservation in the fourth paragraph?",
                 "options": [
                     {"key": "A", "text": "It has failed to achieve its aims."},
                     {"key": "B", "text": "It is beginning to change direction."},
                     {"key": "C", "text": "It has taken a misguided approach."},
                     {"key": "D", "text": "It has focused on the most widespread species."},
                 ],
                 "answer": "C",
                 "explanation": "British conservation has tried to preserve the living world as if it were a jar of pickles, keeping nature in a state of arrested development – a misguided approach.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "It has tried to preserve the living world as if it were a jar of pickles, letting nothing in and nothing out, keeping nature in a state of arrested development"}},
                {"number": 17, "prompt": "Protecting large areas of the sea from commercial fishing would result in",
                 "options": [
                     {"key": "A", "text": "practical benefits for the fishing industry."},
                     {"key": "B", "text": "some short-term losses to the fishing industry."},
                     {"key": "C", "text": "widespread opposition from the fishing industry."},
                     {"key": "D", "text": "certain changes to techniques within the fishing industry."},
                 ],
                 "answer": "A",
                 "explanation": "The policy would greatly boost catches in the surrounding seas – a practical benefit for the fishing industry.",
                 "evidence": {"sectionId": "p2", "ref": "5", "quote": "This policy would also greatly boost catches in the surrounding seas"}},
                {"number": 18, "prompt": "According to the author, what distinguishes rewilding from other environmental campaigns?",
                 "options": [
                     {"key": "A", "text": "Its objective is more achievable."},
                     {"key": "B", "text": "Its supporters are more articulate."},
                     {"key": "C", "text": "Its positive message is more appealing."},
                     {"key": "D", "text": "It is based on sounder scientific principles."},
                 ],
                 "answer": "C",
                 "explanation": "Rewilding helps create a more inspiring vision than the green movement’s usual promise of a slightly less awful world.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "it helps to create a more inspiring vision than the green movement’s usual promise of ‘Follow us and the world will be slightly less awful than it would otherwise have been’"}},
            ],
        },
        {
            "id": "g4",
            "type": "short_answer",
            "label": "Questions 19–22",
            "instructions": "Complete the summary using the list of words and phrases, A–F, below.",
            "summaryTitle": "Reintroducing the lynx to Britain",
            "summaryText": "There would be many advantages to reintroducing the lynx to Britain. While there is no evidence that the lynx has ever put {19} in danger, it would reduce the numbers of certain {20} whose populations have increased enormously in recent decades. It would present only a minimal threat to {21}, provided these were kept away from lynx habitats. Furthermore, the reintroduction programme would also link efficiently with initiatives to return native {22} to certain areas of the country.",
            "wordBank": [
                {"key": "A", "text": "trees"},
                {"key": "B", "text": "endangered species"},
                {"key": "C", "text": "hillsides"},
                {"key": "D", "text": "wild animals"},
                {"key": "E", "text": "humans"},
                {"key": "F", "text": "farm animals"},
            ],
            "questions": [
                {"number": 19, "prompt": "", "answer": ["humans"], "wordLimit": 2,
                 "explanation": "The lynx presents no threat to human beings; there is no known instance of one preying on people.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "The lynx presents no threat to human beings: there is no known instance of one preying on people"}},
                {"number": 20, "prompt": "", "answer": ["wild animals"], "wordLimit": 2,
                 "explanation": "The lynx is a specialist predator of roe deer, a species that has exploded in Britain.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "It is a specialist predator of roe deer, a species that has exploded in Britain in recent decades"}},
                {"number": 21, "prompt": "", "answer": ["farm animals"], "wordLimit": 2,
                 "explanation": "The lynx presents little risk to sheep and other livestock, which should be kept out of the woods.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "the lynx requires deep cover, and as such presents little risk to sheep and other livestock"}},
                {"number": 22, "prompt": "", "answer": ["trees"], "wordLimit": 2,
                 "explanation": "The aim of bringing forests back to bare uplands marries with reintroducing the lynx.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "The attempt to reintroduce this predator marries well with the aim of bringing forests back to parts of our bare and barren uplands"}},
            ],
        },
        {
            "id": "g5",
            "type": "yes_no_notgiven",
            "label": "Questions 23–26",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {"number": 23, "prompt": "Britain could become the first European country to reintroduce the lynx.",
                 "answer": "NO",
                 "explanation": "The lynx has already been reintroduced to the Jura Mountains, the Alps and other European locations.",
                 "evidence": {"sectionId": "p2", "ref": "8", "quote": "The lynx has now been reintroduced to the Jura Mountains, the Alps, the Vosges in eastern France and the Harz mountains in Germany"}},
                {"number": 24, "prompt": "The large growth in the European lynx population since 1970 has exceeded conservationists’ expectations.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage states the population has tripled but does not compare this to any expectations.",
                 "evidence": {"sectionId": "p2", "ref": "8", "quote": "The European population has tripled since 1970 to roughly 10,000"}},
                {"number": 25, "prompt": "Changes in agricultural practices have extended the habitat of the lynx in Europe.",
                 "answer": "YES",
                 "explanation": "The lynx has been able to spread as farming has left the hills.",
                 "evidence": {"sectionId": "p2", "ref": "8", "quote": "the lynx has been able to spread as farming has left the hills and people discover that it is more lucrative to protect charismatic wildlife than to hunt it"}},
                {"number": 26, "prompt": "It has become apparent that species reintroduction has commercial advantages.",
                 "answer": "YES",
                 "explanation": "Tourists will pay for the chance to see charismatic wildlife, making protection more lucrative than hunting.",
                 "evidence": {"sectionId": "p2", "ref": "8", "quote": "people discover that it is more lucrative to protect charismatic wildlife than to hunt it, as tourists will pay for the chance to see it"}},
            ],
        },
    ]

    # ── Passage 3: UK companies need more effective boards of directors ───────
    p3_body = extract_between(ocr, "UK companies need more effective boards of directors\n",
                              "PART 3 — QUESTIONS")
    p3_paras = parse_lettered_paras(p3_body, "ABCDEFG")

    p3_groups = [
        {
            "id": "g6",
            "type": "matching",
            "label": "Questions 27–33",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Choose the correct heading for each paragraph from the list of headings below.",
            "options": [
                {"key": "i",    "text": "Disputes over financial arrangements regarding senior managers"},
                {"key": "ii",   "text": "The impact on companies of being subjected to close examination"},
                {"key": "iii",  "text": "The possible need for fundamental change in every area of business"},
                {"key": "iv",   "text": "Many external bodies being held responsible for problems"},
                {"key": "v",    "text": "The falling number of board members with broad enough experience"},
                {"key": "vi",   "text": "A risk that not all directors take part in solving major problems"},
                {"key": "vii",  "text": "Boards not looking far enough ahead"},
                {"key": "viii", "text": "A proposal to change the way the board operates"},
            ],
            "questions": [
                {"number": 27, "prompt": "Paragraph A", "answer": "iv",
                 "explanation": "Paragraph A describes blame being spread to governments, regulators, central banks and auditors after the 2008 crisis.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "Governments, regulators, central banks and auditors have all been in the frame"}},
                {"number": 28, "prompt": "Paragraph B", "answer": "ii",
                 "explanation": "Paragraph B describes how scrutiny of bank directors has increased pressures and responsibilities on all company directors.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "The knock-on effect of this scrutiny has been to make the governance of companies in general an issue of intense public debate"}},
                {"number": 29, "prompt": "Paragraph C", "answer": "vi",
                 "explanation": "Paragraph C describes the risk that non-executive directors are unable to engage fully due to time pressures.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "there is a real danger that some of the most important issues … are addressed by only a small sub-group"}},
                {"number": 30, "prompt": "Paragraph D", "answer": "viii",
                 "explanation": "Paragraph D proposes the professional board as a new way to operate.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "A radical solution … is the professional board, whose members would work up to three or four days a week"}},
                {"number": 31, "prompt": "Paragraph E", "answer": "vii",
                 "explanation": "Paragraph E criticises boards for focusing too much on short-term metrics and not enough on long-term strategy.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "they do not focus sufficiently on longer-term matters of strategy, sustainability and governance, but instead concentrate too much on short-term financial metrics"}},
                {"number": 32, "prompt": "Paragraph F", "answer": "i",
                 "explanation": "Paragraph F is about executive compensation becoming a combat zone between investors, management and board members.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "Compensation for chief executives has become a combat zone where pitched battles between investors, management and board members are fought"}},
                {"number": 33, "prompt": "Paragraph G", "answer": "iii",
                 "explanation": "Paragraph G argues that boards will need to widen their perspective across all areas of business, possibly requiring a realignment of corporate goals.",
                 "evidence": {"sectionId": "p3", "ref": "G", "quote": "Boards of companies in all sectors will need to widen their perspective to encompass these issues and this may involve a realignment of corporate goals"}},
            ],
        },
        {
            "id": "g7",
            "type": "yes_no_notgiven",
            "label": "Questions 34–37",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {"number": 34, "prompt": "Close scrutiny of the behaviour of boards has increased since the economic downturn.",
                 "answer": "YES",
                 "explanation": "The knock-on effect of scrutiny of bank directors has significantly increased pressures on company directors in general.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "The knock-on effect of this scrutiny has been to make the governance of companies in general an issue of intense public debate and has significantly increased the pressures on, and the responsibilities of, directors"}},
                {"number": 35, "prompt": "Banks have been mismanaged to a greater extent than other businesses.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage discusses bank director failures but does not compare them with mismanagement in other sectors.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "The role of bank directors and management and their widely publicised failures have been extensively picked over"}},
                {"number": 36, "prompt": "Board meetings normally continue for as long as necessary to debate matters in full.",
                 "answer": "NO",
                 "explanation": "The passage states that the number of events requiring board input has increased dramatically, which by implication limits the time per topic.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "the number of events requiring board input and decisions has"}},
                {"number": 37, "prompt": "Using a committee structure would ensure that board members are fully informed about significant issues.",
                 "answer": "NO",
                 "explanation": "The passage warns that important issues may be addressed by only a small sub-group, leaving other board members uninformed.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "there is a real danger that some of the most important issues … are addressed by only a small sub-group"}},
            ],
        },
        {
            "id": "g8",
            "type": "completion",
            "label": "Questions 38–40",
            "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
            "questions": [
                {"number": 38, "prompt": "Before 2008, non-executive directors were at a disadvantage because of their lack of _______",
                 "answer": ["information"], "wordLimit": 1,
                 "explanation": "Executives had access to information that part-time non-executive directors lacked.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "the executives had access to information that part-time non-executive directors lacked, leaving the latter unable to comprehend or anticipate the 2008 crash"}},
                {"number": 39, "prompt": "Boards tend to place too much emphasis on _______ considerations that are only of short-term relevance.",
                 "answer": ["financial"], "wordLimit": 1,
                 "explanation": "Boards concentrate too much on short-term financial metrics.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "concentrate too much on short-term financial metrics"}},
                {"number": 40, "prompt": "On certain matters, such as pay, the board may have to accept the views of _______",
                 "answer": ["shareholders", "investors"], "wordLimit": 1,
                 "explanation": "Shareholders use their muscle in the area of pay to pressure boards.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "shareholders use their muscle in the area of pay to pressure boards to remove underperforming chief executives"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "The History of Glass", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Bring back the big cats", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "UK companies need more effective boards of directors", "passage": p3_paras, "groups": p3_groups},
    ]

    sql = "DELETE FROM public.tests WHERE book='Cambridge IELTS 12' AND test_label='Test 4' AND skill='reading';\n"
    sql += build_sql(4, sections, "c12t4r")
    return sql


# ─────────────────────────────────────────────────────────────────────────────
# Entry point
# ─────────────────────────────────────────────────────────────────────────────

BUILDERS = {1: build_test1, 2: build_test2, 3: build_test3, 4: build_test4}

def main():
    arg = sys.argv[1] if len(sys.argv) > 1 else "all"
    tests = list(range(1, 5)) if arg == "all" else [int(arg)]

    OUT_DIR.mkdir(exist_ok=True)
    for t in tests:
        sql = BUILDERS[t]()
        # Ensure the field name is always plural "instructions"
        sql = sql.replace('"instruction":', '"instructions":')
        out = OUT_DIR / f"cambridge12-test{t}-reading.sql"
        out.write_text(sql, encoding="utf-8")
        print(f"Wrote {out}  ({len(sql):,} bytes)")


if __name__ == "__main__":
    main()
