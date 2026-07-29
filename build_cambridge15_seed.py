"""
Build SQL seed files for Cambridge IELTS 15 reading tests.

Usage:
    python build_cambridge15_seed.py [1|2|3|4|all]

Outputs:
    supabase/cambridge15-test1-reading.sql
    supabase/cambridge15-test2-reading.sql
    supabase/cambridge15-test3-reading.sql
    supabase/cambridge15-test4-reading.sql
"""

import json
import pathlib
import re
import sys

OCR_BASE = pathlib.Path("ocr_output/cambridge_15")
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
    # Split into blocks of consecutive non-blank lines (blank lines are boundaries)
    blocks: list[list[str]] = []
    current_block: list[str] = []
    for ln in body.split("\n"):
        ln = ln.strip()
        if re.match(r"^=== PAGE \d+ ===$", ln):
            continue
        if not ln:
            if current_block:
                blocks.append(current_block)
                current_block = []
        else:
            current_block.append(ln)
    if current_block:
        blocks.append(current_block)

    if not blocks:
        return []

    def join_lines(lines: list[str]) -> str:
        result: list[str] = []
        for line in lines:
            if result and result[-1].endswith("-"):
                result[-1] = result[-1] + line
            else:
                if result:
                    result.append(" ")
                result.append(line)
        return "".join(result)

    merged = [join_lines(b) for b in blocks]

    # A paragraph ends when the block ends with strong punctuation AND the
    # next block starts a new sentence (capital letter or open quote/paren).
    STRONG_END = re.compile("[.?!][‘’“”]*$")
    STARTS_NEW  = re.compile("^[A-Z‘“]")

    paras: list[dict] = []
    n = 1
    current_parts: list[str] = []

    for i, block in enumerate(merged):
        current_parts.append(block)
        is_last       = (i == len(merged) - 1)
        ends_strongly = bool(STRONG_END.search(block))
        next_is_new   = is_last or bool(STARTS_NEW.match(merged[i + 1]))

        if is_last or (ends_strongly and next_is_new):
            text = clean_para(" ".join(current_parts))
            if text:
                paras.append({"ref": str(n), "text": text})
                n += 1
            current_parts = []

    if current_parts:
        text = clean_para(" ".join(current_parts))
        if text:
            paras.append({"ref": str(n), "text": text})

    return paras


def parse_lettered_paras(body: str, letters: str) -> list[dict]:
    cleaned = body
    for letter in letters:
        cleaned = re.sub(rf"(?m)^{letter}{letter}\s*$", letter, cleaned)
    cleaned = re.sub(r"(?m)^\d+\s*$", "", cleaned)
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
    delete = (
        f"DELETE FROM public.tests\n"
        f"WHERE skill = 'reading' AND book = 'Cambridge IELTS 15'"
        f" AND test_label = 'Test {test_num}';\n\n"
    )
    insert = (
        f"INSERT INTO public.tests "
        f"(skill, book, test_label, variant, duration_seconds, content, published)\n"
        f"VALUES (\n"
        f"  'reading',\n"
        f"  'Cambridge IELTS 15',\n"
        f"  'Test {test_num}',\n"
        f"  'academic',\n"
        f"  3600,\n"
        f"  ${tag}$\n{j}\n${tag}$,\n"
        f"  true\n);\n"
    )
    return delete + insert


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 1 ── Nutmeg / Driverless cars / What is exploration?
# ─────────────────────────────────────────────────────────────────────────────

def build_test1() -> str:
    ocr = load_ocr(1)

    # ── Passage 1: Nutmeg ────────────────────────────────────────────────────
    p1_body  = extract_between(ocr, "Nutmeg - a valuable spice\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–4",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "The nutmeg tree and fruit",
            "formContent": [
                {"kind": "question", "number": 1},
                {"kind": "question", "number": 2},
                {"kind": "question", "number": 3},
                {"kind": "question", "number": 4},
                {"kind": "static", "text": "the tree has yellow flowers and fruit"},
            ],
            "questions": [
                {
                    "number": 1,
                    "prompt": "the leaves of the tree are _______ in shape",
                    "answer": ["oval"], "wordLimit": 1,
                    "explanation": "The tree has dark green oval leaves.",
                    "evidence": {"sectionId": "p1", "ref": "1",
                                 "quote": "dense foliage of tough, dark green oval leaves"},
                },
                {
                    "number": 2,
                    "prompt": "the _______ surrounds the fruit and breaks open when the fruit is ripe",
                    "answer": ["husk"], "wordLimit": 1,
                    "explanation": "The fruit is encased in a flesh husk which splits open when ripe.",
                    "evidence": {"sectionId": "p1", "ref": "1",
                                 "quote": "The fruit is encased in a flesh husk. When the fruit is ripe, this husk splits into two halves"},
                },
                {
                    "number": 3,
                    "prompt": "the _______ is used to produce the spice nutmeg",
                    "answer": ["seed"], "wordLimit": 1,
                    "explanation": "The dried seed produces the spice nutmeg.",
                    "evidence": {"sectionId": "p1", "ref": "1",
                                 "quote": "the former being produced from the dried seed"},
                },
                {
                    "number": 4,
                    "prompt": "the covering known as the aril is used to produce _______",
                    "answer": ["mace"], "wordLimit": 1,
                    "explanation": "The aril produces the spice mace.",
                    "evidence": {"sectionId": "p1", "ref": "1",
                                 "quote": "These are the sources of the two spices nutmeg and mace"},
                },
            ],
        },
        {
            "id": "g2",
            "type": "true_false_notgiven",
            "label": "Questions 5–7",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {
                    "number": 5,
                    "prompt": "In the Middle Ages, most Europeans knew where nutmeg was grown.",
                    "answer": "FALSE",
                    "explanation": "The Arabs never revealed the exact location of the source of nutmeg to European merchants.",
                    "evidence": {"sectionId": "p1", "ref": "2",
                                 "quote": "they never revealed the exact location of the source of this extremely valuable commodity"},
                },
                {
                    "number": 6,
                    "prompt": "The VOC was the world's first major trading company.",
                    "answer": "NOT GIVEN",
                    "explanation": "The passage states the VOC was the richest commercial operation by 1617, but says nothing about it being the first.",
                    "evidence": {"sectionId": "p1", "ref": "4",
                                 "quote": "By 1617, the VOC was the richest commercial operation in the world"},
                },
                {
                    "number": 7,
                    "prompt": "Following the Treaty of Breda, the Dutch had control of all the islands where nutmeg grew.",
                    "answer": "TRUE",
                    "explanation": "After getting the island of Run from the British, the Dutch had a complete monopoly over the nutmeg trade.",
                    "evidence": {"sectionId": "p1", "ref": "5",
                                 "quote": "The Dutch now had a monopoly over the nutmeg trade which would last for another century"},
                },
            ],
        },
        {
            "id": "g3",
            "type": "completion",
            "label": "Questions 8–13",
            "instructions": "Complete the table below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "The history of nutmeg",
            "formContent": [
                {"kind": "subheader", "text": "Middle Ages"},
                {"kind": "question", "number": 8},
                {"kind": "subheader", "text": "16th century"},
                {"kind": "static", "text": "European nations took control of the nutmeg trade"},
                {"kind": "question", "number": 9},
                {"kind": "subheader", "text": "17th century — The Dutch"},
                {"kind": "static", "text": "took control of the Banda Islands"},
                {"kind": "static", "text": "restricted nutmeg production to a few areas"},
                {"kind": "question", "number": 10},
                {"kind": "question", "number": 11},
                {"kind": "subheader", "text": "Late 18th century"},
                {"kind": "question", "number": 12},
                {"kind": "question", "number": 13},
            ],
            "questions": [
                {
                    "number": 8,
                    "prompt": "Nutmeg was brought to Europe by the _______",
                    "answer": ["Arabs"], "wordLimit": 1,
                    "explanation": "Throughout the Middle Ages, the Arabs were the exclusive importers of nutmeg to Europe.",
                    "evidence": {"sectionId": "p1", "ref": "2",
                                 "quote": "the Arabs were the exclusive importers of the spice to Europe"},
                },
                {
                    "number": 9,
                    "prompt": "Demand for nutmeg grew, as it was believed to be effective against the disease known as the _______",
                    "answer": ["plague"], "wordLimit": 1,
                    "explanation": "Doctors believed nutmeg could cure the plague, creating enormous demand.",
                    "evidence": {"sectionId": "p1", "ref": "4",
                                 "quote": "thousands of people across Europe were dying of the plague"},
                },
                {
                    "number": 10,
                    "prompt": "put _______ on nutmeg to avoid it being cultivated outside the islands",
                    "answer": ["lime"], "wordLimit": 1,
                    "explanation": "All exported nutmeg was covered with lime to prevent fertile seeds from leaving the islands.",
                    "evidence": {"sectionId": "p1", "ref": "5",
                                 "quote": "all exported nutmeg was covered with lime to make sure there was no chance a fertile seed which could be grown elsewhere would leave the islands"},
                },
                {
                    "number": 11,
                    "prompt": "finally obtained the island of _______ from the British",
                    "answer": ["Run"], "wordLimit": 1,
                    "explanation": "The Dutch traded Manhattan to Britain in exchange for the island of Run.",
                    "evidence": {"sectionId": "p1", "ref": "5",
                                 "quote": "if the British would give them the island of Run, they would in turn give Britain a distant and much less valuable island in North America"},
                },
                {
                    "number": 12,
                    "prompt": "1770 – nutmeg plants were secretly taken to _______",
                    "answer": ["Mauritius"], "wordLimit": 1,
                    "explanation": "Pierre Poivre smuggled nutmeg plants to Mauritius in 1770, breaking the Dutch monopoly.",
                    "evidence": {"sectionId": "p1", "ref": "6",
                                 "quote": "a Frenchman named Pierre Poivre successfully smuggled nutmeg plants to safety in Mauritius"},
                },
                {
                    "number": 13,
                    "prompt": "1778 – half the Banda Islands' nutmeg plantations were destroyed by _______",
                    "answer": ["tsunami"], "wordLimit": 1,
                    "explanation": "A volcanic eruption caused a tsunami that wiped out half the nutmeg groves.",
                    "evidence": {"sectionId": "p1", "ref": "6",
                                 "quote": "a volcanic eruption in the Banda region caused a tsunami that wiped out half the nutmeg groves"},
                },
            ],
        },
    ]

    # ── Passage 2: Driverless cars ───────────────────────────────────────────
    p2_body  = extract_between(ocr, "Driverless cars\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEFG")

    p2_groups = [
        {
            "id": "g4",
            "type": "matching",
            "label": "Questions 14–18",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Which section contains the following information? Write the correct letter, A–G, in boxes on your answer sheet.",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
                {"key": "G", "text": "G"},
            ],
            "questions": [
                {
                    "number": 14,
                    "prompt": "reference to the amount of time when a car is not in use",
                    "answer": "C",
                    "explanation": "Paragraph C states that the average car spends more than 90% of its life parked.",
                    "evidence": {"sectionId": "p2", "ref": "C",
                                 "quote": "the average car spends more than 90 percent of its life parked"},
                },
                {
                    "number": 15,
                    "prompt": "mention of several advantages of driverless vehicles for individual road-users",
                    "answer": "B",
                    "explanation": "Paragraph B discusses safety, freed-up time, and travel autonomy for individuals.",
                    "evidence": {"sectionId": "p2", "ref": "B",
                                 "quote": "to be productive, to socialise or simply to relax"},
                },
                {
                    "number": 16,
                    "prompt": "reference to the opportunity of choosing the most appropriate vehicle for each trip",
                    "answer": "E",
                    "explanation": "Paragraph E (D in some editions) describes drivers having freedom to select a vehicle suited to each journey.",
                    "evidence": {"sectionId": "p2", "ref": "D",
                                 "quote": "drivers will have the freedom to select one that best suits their needs for a particular journey"},
                },
                {
                    "number": 17,
                    "prompt": "an estimate of how long it will take to overcome a number of problems",
                    "answer": "G",
                    "explanation": "Paragraph G states that challenges can most probably be conquered within the next 10 years.",
                    "evidence": {"sectionId": "p2", "ref": "G",
                                 "quote": "these can most probably be conquered within the next 10 years"},
                },
                {
                    "number": 18,
                    "prompt": "a suggestion that the use of driverless cars may have no effect on the number of vehicles manufactured",
                    "answer": "D",
                    "explanation": "Paragraph D notes that vehicle production will not necessarily decrease.",
                    "evidence": {"sectionId": "p2", "ref": "D",
                                 "quote": "vehicle production will not necessarily decrease"},
                },
            ],
        },
        {
            "id": "g5",
            "type": "completion",
            "label": "Questions 19–22",
            "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "formTitle": "The impact of driverless cars",
            "formContent": [
                {"kind": "question", "number": 19},
                {"kind": "question", "number": 20},
                {"kind": "question", "number": 21},
                {"kind": "question", "number": 22},
            ],
            "questions": [
                {
                    "number": 19,
                    "prompt": "Figures from the Transport Research Laboratory indicate that most motor accidents are partly due to _______",
                    "answer": ["human error"], "wordLimit": 2,
                    "explanation": "More than 90% of road collisions involve human error as a contributory factor.",
                    "evidence": {"sectionId": "p2", "ref": "B",
                                 "quote": "more than 90 percent of road collisions involve human error as a contributory factor"},
                },
                {
                    "number": 20,
                    "prompt": "schemes for _______ will be more workable, especially in towns and cities, resulting in fewer cars on the road",
                    "answer": ["car sharing", "car-sharing"], "wordLimit": 2,
                    "explanation": "Automation makes car-sharing initiatives much more viable, particularly in urban areas.",
                    "evidence": {"sectionId": "p2", "ref": "C",
                                 "quote": "initiatives for car-sharing become much more viable, particularly in urban areas"},
                },
                {
                    "number": 21,
                    "prompt": "there could be a 43 percent drop in _______ of cars",
                    "answer": ["ownership"], "wordLimit": 2,
                    "explanation": "The University of Michigan model suggests automated vehicles might reduce vehicle ownership by 43%.",
                    "evidence": {"sectionId": "p2", "ref": "D",
                                 "quote": "automated vehicles might reduce vehicle ownership by 43 percent"},
                },
                {
                    "number": 22,
                    "prompt": "the yearly _______ of each car would, on average, be twice as high as it currently is",
                    "answer": ["mileage"], "wordLimit": 2,
                    "explanation": "Vehicles' average annual mileage would double as a result of more intensive use.",
                    "evidence": {"sectionId": "p2", "ref": "D",
                                 "quote": "vehicles' average annual mileage double as a result"},
                },
            ],
        },
        {
            "id": "g6",
            "type": "choose_two",
            "label": "Questions 23–24",
            "instructions": "Choose TWO letters, A–E. Which TWO benefits of automated vehicles does the writer mention?",
            "options": [
                {"key": "A", "text": "Car travellers could enjoy considerable cost savings."},
                {"key": "B", "text": "It would be easier to find parking spaces in urban areas."},
                {"key": "C", "text": "Travellers could spend journeys doing something other than driving."},
                {"key": "D", "text": "People who find driving physically difficult could travel independently."},
                {"key": "E", "text": "A reduction in the number of cars would mean a reduction in pollution."},
            ],
            "questions": [
                {
                    "number": 23,
                    "prompt": "Which TWO benefits of automated vehicles does the writer mention? (first answer)",
                    "answer": "C",
                    "explanation": "The passage mentions travellers being productive, socialising or relaxing while the vehicle drives.",
                    "evidence": {"sectionId": "p2", "ref": "B",
                                 "quote": "to be productive, to socialise or simply to relax while automation systems have responsibility"},
                },
                {
                    "number": 24,
                    "prompt": "Which TWO benefits of automated vehicles does the writer mention? (second answer)",
                    "answer": "D",
                    "explanation": "Older or disabled travellers may be able to enjoy significantly greater travel autonomy.",
                    "evidence": {"sectionId": "p2", "ref": "B",
                                 "quote": "those who are challenged by existing mobility models — such as older or disabled travellers — may be able to enjoy significantly greater travel autonomy"},
                },
            ],
        },
        {
            "id": "g7",
            "type": "choose_two",
            "label": "Questions 25–26",
            "instructions": "Choose TWO letters, A–E. Which TWO challenges to automated vehicle development does the writer mention?",
            "options": [
                {"key": "A", "text": "making sure the general public has confidence in automated vehicles"},
                {"key": "B", "text": "managing the pace of transition from conventional to automated vehicles"},
                {"key": "C", "text": "deciding how to compensate professional drivers who become redundant"},
                {"key": "D", "text": "setting up the infrastructure to make roads suitable for automated vehicles"},
                {"key": "E", "text": "getting automated vehicles to adapt to various different driving conditions"},
            ],
            "questions": [
                {
                    "number": 25,
                    "prompt": "Which TWO challenges to automated vehicle development does the writer mention? (first answer)",
                    "answer": "A",
                    "explanation": "The passage mentions societal changes required for communities to trust and accept automated vehicles.",
                    "evidence": {"sectionId": "p2", "ref": "F",
                                 "quote": "the societal changes that may be required for communities to trust and accept automated vehicles"},
                },
                {
                    "number": 26,
                    "prompt": "Which TWO challenges to automated vehicle development does the writer mention? (second answer)",
                    "answer": "E",
                    "explanation": "The passage mentions technical difficulties ensuring the vehicle works in the infinite range of traffic, weather and road situations.",
                    "evidence": {"sectionId": "p2", "ref": "F",
                                 "quote": "the technical difficulties in ensuring that the vehicle works reliably in the infinite range of traffic, weather and road situations"},
                },
            ],
        },
    ]

    # ── Passage 3: What is exploration? ─────────────────────────────────────
    p3_body  = extract_between(ocr, "What is exploration?\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g8",
            "type": "multiple_choice",
            "label": "Questions 27–32",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {
                    "number": 27,
                    "prompt": "The writer refers to visitors to New York to illustrate the point that",
                    "options": [
                        {"key": "A", "text": "exploration is an intrinsic element of being human."},
                        {"key": "B", "text": "most people are enthusiastic about exploring."},
                        {"key": "C", "text": "exploration can lead to surprising results."},
                        {"key": "D", "text": "most people find exploration daunting."},
                    ],
                    "answer": "A",
                    "explanation": "The writer uses New York visitors alongside nomads to show that the questing nature of humans is universal.",
                    "evidence": {"sectionId": "p3", "ref": "1",
                                 "quote": "a visitor negotiate the subways of New York"},
                },
                {
                    "number": 28,
                    "prompt": "According to the second paragraph, what is the writer's view of explorers?",
                    "options": [
                        {"key": "A", "text": "Their discoveries have brought both benefits and disadvantages."},
                        {"key": "B", "text": "Their main value is in teaching others."},
                        {"key": "C", "text": "They act on an urge that is common to everyone."},
                        {"key": "D", "text": "They tend to be more attracted to certain professions than to others."},
                    ],
                    "answer": "C",
                    "explanation": "The writer says we all have this enquiring instinct, even today.",
                    "evidence": {"sectionId": "p3", "ref": "2",
                                 "quote": "we all have this enquiring instinct, even today"},
                },
                {
                    "number": 29,
                    "prompt": "The writer refers to a description of Egdon Heath to suggest that",
                    "options": [
                        {"key": "A", "text": "Hardy was writing about his own experience of exploration."},
                        {"key": "B", "text": "Hardy was mistaken about the nature of exploration."},
                        {"key": "C", "text": "Hardy's aim was to investigate people's emotional states."},
                        {"key": "D", "text": "Hardy's aim was to show the attraction of isolation."},
                    ],
                    "answer": "C",
                    "explanation": "Hardy used the landscape to suggest the desires and fears of his characters — an exploration of emotional states.",
                    "evidence": {"sectionId": "p3", "ref": "3",
                                 "quote": "used the landscape to suggest the desires and fears of his characters"},
                },
                {
                    "number": 30,
                    "prompt": "In the fourth paragraph, the writer refers to 'a golden age' to suggest that",
                    "options": [
                        {"key": "A", "text": "the amount of useful information produced by exploration has decreased."},
                        {"key": "B", "text": "fewer people are interested in exploring than in the 19th century."},
                        {"key": "C", "text": "recent developments have made exploration less exciting."},
                        {"key": "D", "text": "we are wrong to think that exploration is no longer necessary."},
                    ],
                    "answer": "D",
                    "explanation": "The writer argues the assumption that exploration peaked in the 19th century is wrong — vast amounts remain unknown.",
                    "evidence": {"sectionId": "p3", "ref": "4",
                                 "quote": "as if the process of discovery is now on the decline, though the truth is that we have named only one and a half million of this planet's species"},
                },
                {
                    "number": 31,
                    "prompt": "In the sixth paragraph, when discussing the definition of exploration, the writer argues that",
                    "options": [
                        {"key": "A", "text": "people tend to relate exploration to their own professional interests."},
                        {"key": "B", "text": "certain people are likely to misunderstand the nature of exploration."},
                        {"key": "C", "text": "the generally accepted definition has changed over time."},
                        {"key": "D", "text": "historians and scientists have more valid definitions than the general public."},
                    ],
                    "answer": "A",
                    "explanation": "Each expert's definition reflected their own field — the historian said it was past, the scientist said it was present.",
                    "evidence": {"sectionId": "p3", "ref": "6",
                                 "quote": "the prominent historian would say exploration was a thing of the past, the cutting-edge scientist would say it was of the present"},
                },
                {
                    "number": 32,
                    "prompt": "In the last paragraph, the writer explains that he is interested in",
                    "options": [
                        {"key": "A", "text": "how someone's personality is reflected in their choice of places to visit."},
                        {"key": "B", "text": "the human ability to cast new light on places that may be familiar."},
                        {"key": "C", "text": "how travel writing has evolved to meet changing demands."},
                        {"key": "D", "text": "the feelings that writers develop about the places that they explore."},
                    ],
                    "answer": "B",
                    "explanation": "The writer is interested in how a fresh interpretation, even of a well-travelled route, can give readers new insights.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "how a fresh interpretation, even of a well-travelled route, can give its readers new insights"},
                },
            ],
        },
        {
            "id": "g9",
            "type": "matching",
            "label": "Questions 33–37",
            "instructions": "Look at the following statements and the list of explorers below. Match each statement with the correct explorer, A–E. NB You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Peter Fleming"},
                {"key": "B", "text": "Ran Fiennes"},
                {"key": "C", "text": "Chris Bonington"},
                {"key": "D", "text": "Robin Hanbury-Tenison"},
                {"key": "E", "text": "Wilfred Thesiger"},
            ],
            "questions": [
                {
                    "number": 33,
                    "prompt": "He referred to the relevance of the form of transport used.",
                    "answer": "E",
                    "explanation": "Thesiger said going by camel when he could have gone by car would have been a stunt.",
                    "evidence": {"sectionId": "p3", "ref": "5",
                                 "quote": "If I'd gone across by camel when I could have gone by car, it would have been a stunt"},
                },
                {
                    "number": 34,
                    "prompt": "He described feelings on coming back home after a long journey.",
                    "answer": "A",
                    "explanation": "Fleming talks of the moment when the explorer returns to the existence left behind.",
                    "evidence": {"sectionId": "p3", "ref": "3",
                                 "quote": "Explorer and travel writer Peter Fleming talks of the moment when the explorer returns to the existence he has left behind"},
                },
                {
                    "number": 35,
                    "prompt": "He worked for the benefit of specific groups of people.",
                    "answer": "D",
                    "explanation": "Hanbury-Tenison is described as a campaigner on behalf of remote so-called 'tribal' peoples.",
                    "evidence": {"sectionId": "p3", "ref": "5",
                                 "quote": "Robin Hanbury-Tenison, a campaigner on behalf of remote so-called 'tribal' peoples"},
                },
                {
                    "number": 36,
                    "prompt": "He did not consider learning about oneself an essential part of exploration.",
                    "answer": "E",
                    "explanation": "Thesiger said exploration meant bringing back information from a remote place regardless of any great self-discovery.",
                    "evidence": {"sectionId": "p3", "ref": "5",
                                 "quote": "exploration meant bringing back information from a remote place regardless of any great self-discovery"},
                },
                {
                    "number": 37,
                    "prompt": "He defined exploration as being both unique and of value to others.",
                    "answer": "B",
                    "explanation": "Fiennes defined an explorer as someone who has done something no human has done before and something scientifically useful.",
                    "evidence": {"sectionId": "p3", "ref": "5",
                                 "quote": "An explorer is someone who has done something that no human has done before — and also done something scientifically useful"},
                },
            ],
        },
        {
            "id": "g10",
            "type": "completion",
            "label": "Questions 38–40",
            "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "formTitle": "The writer's own bias",
            "formContent": [
                {"kind": "question", "number": 38},
                {"kind": "question", "number": 39},
                {"kind": "question", "number": 40},
            ],
            "questions": [
                {
                    "number": 38,
                    "prompt": "The writer has experience of a large number of _______",
                    "answer": ["expeditions"], "wordLimit": 2,
                    "explanation": "The writer says he has done a great many expeditions.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "I've done a great many expeditions"},
                },
                {
                    "number": 39,
                    "prompt": "was the first stranger that certain previously _______ people had encountered",
                    "answer": ["uncontacted"], "wordLimit": 2,
                    "explanation": "The writer lived with isolated groups including two 'uncontacted tribes'.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "even two 'uncontacted tribes'"},
                },
                {
                    "number": 40,
                    "prompt": "there is no need for further exploration of Earth's _______",
                    "answer": ["surface"], "wordLimit": 2,
                    "explanation": "We know how the land surface of our planet lies — exploration is now down to the details.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "We know how the land surface of our planet lies"},
                },
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Nutmeg – a valuable spice", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Driverless cars", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "What is exploration?", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(1, sections, "c15t1r")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 2 ── Dance/Engineering / Extinct species / Having a laugh
# ─────────────────────────────────────────────────────────────────────────────

def build_test2() -> str:
    ocr = load_ocr(2)

    # ── Passage 1: Could urban engineers learn from dance? ───────────────────
    p1_body  = extract_between(ocr, "Could urban engineers learn from dance?\n", "PART 1 — QUESTIONS")
    p1_paras = parse_lettered_paras(p1_body, "ABCDEFG")

    p1_groups = [
        {
            "id": "g1",
            "type": "matching",
            "label": "Questions 1–6",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Which paragraph contains the following information? Write the correct letter, A–G, in boxes on your answer sheet.",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
                {"key": "G", "text": "G"},
            ],
            "questions": [
                {
                    "number": 1,
                    "prompt": "reference to an appealing way of using dance that the writer is not proposing",
                    "answer": "B",
                    "explanation": "Paragraph B says 'that is not to suggest everyone should dance their way to work'.",
                    "evidence": {"sectionId": "p1", "ref": "B",
                                 "quote": "That is not to suggest everyone should dance their way to work"},
                },
                {
                    "number": 2,
                    "prompt": "an example of a contrast between past and present approaches to building",
                    "answer": "C",
                    "explanation": "Paragraph C contrasts medieval builders who improvised with modern designers who use media technologies.",
                    "evidence": {"sectionId": "p1", "ref": "C",
                                 "quote": "Whereas medieval builders improvised and adapted construction through their intimate knowledge of materials"},
                },
                {
                    "number": 3,
                    "prompt": "mention of an objective of both dance and engineering",
                    "answer": "F",
                    "explanation": "Paragraph F states choreography shares with engineering the aim of designing patterns of movement within limitations of space.",
                    "evidence": {"sectionId": "p1", "ref": "F",
                                 "quote": "it shares with engineering the aim of designing patterns of movement within limitations of space"},
                },
                {
                    "number": 4,
                    "prompt": "reference to an unforeseen problem arising from ignoring the climate",
                    "answer": "D",
                    "explanation": "Paragraph D describes how street cafés in Peachtree could not operate in the hot sun — an unforeseen problem.",
                    "evidence": {"sectionId": "p1", "ref": "D",
                                 "quote": "purpose-built street cafés could not operate in the hot sun without the protective awnings"},
                },
                {
                    "number": 5,
                    "prompt": "why some measures intended to help people are being reversed",
                    "answer": "E",
                    "explanation": "Paragraph E explains that many guard rails are now being removed, causing disruption, cost, and waste.",
                    "evidence": {"sectionId": "p1", "ref": "E",
                                 "quote": "many are now being removed, causing disruption, cost, and waste"},
                },
                {
                    "number": 6,
                    "prompt": "reference to how transport has an impact on human lives",
                    "answer": "A",
                    "explanation": "Paragraph A describes how the ways we travel affect our physical and mental health, social lives, access to work and culture.",
                    "evidence": {"sectionId": "p1", "ref": "A",
                                 "quote": "The ways we travel affect our physical and mental health, our social lives, our access to work and culture"},
                },
            ],
        },
        {
            "id": "g2",
            "type": "completion",
            "label": "Questions 7–13",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "Guard rails",
            "formContent": [
                {"kind": "question", "number": 7},
                {"kind": "question", "number": 8},
                {"kind": "question", "number": 9},
                {"kind": "question", "number": 10},
                {"kind": "question", "number": 11},
                {"kind": "question", "number": 12},
                {"kind": "question", "number": 13},
            ],
            "questions": [
                {
                    "number": 7,
                    "prompt": "Guard rails were introduced on British roads to improve the _______ of pedestrians",
                    "answer": ["safety"], "wordLimit": 1,
                    "explanation": "Guard rails were an engineering solution to pedestrian safety.",
                    "evidence": {"sectionId": "p1", "ref": "E",
                                 "quote": "were an engineering solution to pedestrian safety"},
                },
                {
                    "number": 8,
                    "prompt": "while ensuring that the movement of _______ is not disrupted",
                    "answer": ["traffic"], "wordLimit": 1,
                    "explanation": "The models prioritised the smooth flow of traffic.",
                    "evidence": {"sectionId": "p1", "ref": "E",
                                 "quote": "based on models that prioritise the smooth flow of traffic"},
                },
                {
                    "number": 9,
                    "prompt": "Pedestrians are led to access points, and encouraged to cross one _______ at a time",
                    "answer": ["carriageway"], "wordLimit": 1,
                    "explanation": "Staggered access points divide the crossing into two — one for each carriageway.",
                    "evidence": {"sectionId": "p1", "ref": "E",
                                 "quote": "staggered access points divide the crossing into two — one for each carriageway"},
                },
                {
                    "number": 10,
                    "prompt": "An unintended effect is to create psychological difficulties in crossing the road, particularly for less _______ people",
                    "answer": ["mobile"], "wordLimit": 1,
                    "explanation": "The barriers greatly impact those that are the least mobile.",
                    "evidence": {"sectionId": "p1", "ref": "E",
                                 "quote": "introducing psychological barriers greatly impacting those that are the least mobile"},
                },
                {
                    "number": 11,
                    "prompt": "Another result is that some people cross the road in a _______ way",
                    "answer": ["dangerous"], "wordLimit": 1,
                    "explanation": "People make dangerous crossings to get around the guard rails.",
                    "evidence": {"sectionId": "p1", "ref": "E",
                                 "quote": "encouraging others to make dangerous crossings to get around the guard rails"},
                },
                {
                    "number": 12,
                    "prompt": "The guard rails separate _______",
                    "answer": ["communities"], "wordLimit": 1,
                    "explanation": "The barriers divide communities.",
                    "evidence": {"sectionId": "p1", "ref": "E",
                                 "quote": "they divide communities"},
                },
                {
                    "number": 13,
                    "prompt": "and make it more difficult to introduce forms of transport that are _______",
                    "answer": ["healthy"], "wordLimit": 1,
                    "explanation": "The guard rails decrease opportunities for healthy transport.",
                    "evidence": {"sectionId": "p1", "ref": "E",
                                 "quote": "decrease opportunities for healthy transport"},
                },
            ],
        },
    ]

    # ── Passage 2: Should we try to bring extinct species back to life? ───────
    p2_body  = extract_between(ocr, "Should we try to bring extinct species back to life?\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEF")

    p2_groups = [
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 14–17",
            "instructions": "The Reading Passage has six paragraphs, A–F. Which paragraph contains the following information? Write the correct letter, A–F, in boxes on your answer sheet. NB You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
            ],
            "questions": [
                {
                    "number": 14,
                    "prompt": "a reference to how further disappearance of multiple species could be avoided",
                    "answer": "F",
                    "explanation": "Paragraph F discusses using technology to prevent mass extinctions in the future.",
                    "evidence": {"sectionId": "p2", "ref": "F",
                                 "quote": "how we could use it to make genetic modifications which could prevent mass extinctions in the future"},
                },
                {
                    "number": 15,
                    "prompt": "explanation of a way of reproducing an extinct animal using the DNA of only that species",
                    "answer": "A",
                    "explanation": "Paragraph A describes cloning technology using DNA of extinct animals.",
                    "evidence": {"sectionId": "p2", "ref": "A",
                                 "quote": "using cloning technology to turn the DNA of extinct animals into a fertilised embryo"},
                },
                {
                    "number": 16,
                    "prompt": "reference to a habitat which has suffered following the extinction of a species",
                    "answer": "D",
                    "explanation": "Paragraph D describes how ecosystems in the eastern US have suffered since the passenger pigeon disappeared.",
                    "evidence": {"sectionId": "p2", "ref": "D",
                                 "quote": "Since the disappearance of this key species, ecosystems in the eastern US have suffered"},
                },
                {
                    "number": 17,
                    "prompt": "mention of the exact point at which a particular species became extinct",
                    "answer": "A",
                    "explanation": "Paragraph A states the passenger pigeon's existence came to an end on 1 September 1914.",
                    "evidence": {"sectionId": "p2", "ref": "A",
                                 "quote": "the passenger pigeon's existence came to an end on 1 September 1914"},
                },
            ],
        },
        {
            "id": "g4",
            "type": "completion",
            "label": "Questions 18–22",
            "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "formTitle": "The woolly mammoth revival project",
            "formContent": [
                {"kind": "question", "number": 18},
                {"kind": "question", "number": 19},
                {"kind": "question", "number": 20},
                {"kind": "question", "number": 21},
                {"kind": "question", "number": 22},
            ],
            "questions": [
                {
                    "number": 18,
                    "prompt": "Professor George Church and his team are trying to identify the _______ that enabled mammoths to live in the tundra",
                    "answer": ["genetic traits"], "wordLimit": 2,
                    "explanation": "By pinpointing which genetic traits made it possible for mammoths to survive the icy climate.",
                    "evidence": {"sectionId": "p2", "ref": "E",
                                 "quote": "By pinpointing which genetic traits made it possible for mammoths to survive the icy climate of the tundra"},
                },
                {
                    "number": 19,
                    "prompt": "introducing Asian elephants to the tundra would involve certain physical adaptations to minimise _______",
                    "answer": ["heat loss"], "wordLimit": 2,
                    "explanation": "Adaptations would include smaller ears, thicker hair, and extra insulating fat, all for the purpose of reducing heat loss.",
                    "evidence": {"sectionId": "p2", "ref": "E",
                                 "quote": "all for the purpose of reducing heat loss in the tundra"},
                },
                {
                    "number": 20,
                    "prompt": "the species would need to have the mammoth-like features of thicker hair, of a reduced _______ size",
                    "answer": ["ears"], "wordLimit": 2,
                    "explanation": "Necessary adaptations would include smaller ears.",
                    "evidence": {"sectionId": "p2", "ref": "E",
                                 "quote": "Necessary adaptations would include smaller ears"},
                },
                {
                    "number": 21,
                    "prompt": "and more _______",
                    "answer": ["fat", "insulating fat"], "wordLimit": 2,
                    "explanation": "Extra insulating fat is needed for tundra survival.",
                    "evidence": {"sectionId": "p2", "ref": "E",
                                 "quote": "extra insulating fat"},
                },
                {
                    "number": 22,
                    "prompt": "impact on the environment, which could help to reduce temperatures and decrease _______",
                    "answer": ["emissions", "carbon emissions"], "wordLimit": 2,
                    "explanation": "This could mitigate emissions from melting permafrost.",
                    "evidence": {"sectionId": "p2", "ref": "E",
                                 "quote": "mitigate emissions from melting permafrost"},
                },
            ],
        },
        {
            "id": "g5",
            "type": "matching",
            "label": "Questions 23–26",
            "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, A, B or C. NB You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Ben Novak"},
                {"key": "B", "text": "Michael Archer"},
                {"key": "C", "text": "Beth Shapiro"},
            ],
            "questions": [
                {
                    "number": 23,
                    "prompt": "Reintroducing an extinct species to its original habitat could improve the health of a particular species living there.",
                    "answer": "B",
                    "explanation": "Archer argues thylacines would have prevented the spread of the facial tumour syndrome threatening Tasmanian devils.",
                    "evidence": {"sectionId": "p2", "ref": "B",
                                 "quote": "The return of thylacines to Tasmania could help to ensure that devils are never again subjected to risks of this kind"},
                },
                {
                    "number": 24,
                    "prompt": "It is important to concentrate on the causes of an animal's extinction.",
                    "answer": "C",
                    "explanation": "Shapiro prefers to focus on understanding why species went extinct in the first place.",
                    "evidence": {"sectionId": "p2", "ref": "F",
                                 "quote": "She prefers to focus the debate on how this emerging technology could be used to fully understand why various species went extinct"},
                },
                {
                    "number": 25,
                    "prompt": "A species brought back from extinction could have an important beneficial impact on the vegetation of its habitat.",
                    "answer": "A",
                    "explanation": "Novak explains that passenger pigeons wrecking trees created disturbance needed for forest regrowth.",
                    "evidence": {"sectionId": "p2", "ref": "D",
                                 "quote": "re-establish that forest disturbance, thereby creating a habitat necessary for a great many other native species to thrive"},
                },
                {
                    "number": 26,
                    "prompt": "Our current efforts at preserving biodiversity are insufficient.",
                    "answer": "C",
                    "explanation": "Shapiro says 'we know that what we are doing today is not enough'.",
                    "evidence": {"sectionId": "p2", "ref": "F",
                                 "quote": "We know that what we are doing today is not enough"},
                },
            ],
        },
    ]

    # ── Passage 3: Having a laugh ────────────────────────────────────────────
    p3_body  = extract_between(ocr, "Having a laugh\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g6",
            "type": "multiple_choice",
            "label": "Questions 27–31",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {
                    "number": 27,
                    "prompt": "When referring to laughter in the first paragraphs, the writer emphasises",
                    "options": [
                        {"key": "A", "text": "its impact on language."},
                        {"key": "B", "text": "its function in human culture."},
                        {"key": "C", "text": "its value to scientific research."},
                        {"key": "D", "text": "its universality in animal societies."},
                    ],
                    "answer": "C",
                    "explanation": "The writer states laughter provides psychological scientists with rich resources for studying human psychology.",
                    "evidence": {"sectionId": "p3", "ref": "1",
                                 "quote": "laughter and humour provide psychological scientists with rich resources for studying human psychology"},
                },
                {
                    "number": 28,
                    "prompt": "What does the writer suggest about Charley Douglass?",
                    "options": [
                        {"key": "A", "text": "He understood the importance of enjoying humour in a group setting."},
                        {"key": "B", "text": "He believed that TV viewers at home needed to be told when to laugh."},
                        {"key": "C", "text": "He wanted his shows to appeal to audiences across the social spectrum."},
                        {"key": "D", "text": "He preferred shows where audiences were present in the recording studio."},
                    ],
                    "answer": "A",
                    "explanation": "Douglass's laugh tracks were intended to help people at home feel like they were in a social situation.",
                    "evidence": {"sectionId": "p3", "ref": "2",
                                 "quote": "intended to help people at home feel like they were in a social situation, such as a crowded theatre"},
                },
                {
                    "number": 29,
                    "prompt": "What makes the Santa Cruz study particularly significant?",
                    "options": [
                        {"key": "A", "text": "the various different types of laughter that were studied"},
                        {"key": "B", "text": "the similar results produced by a wide range of cultures"},
                        {"key": "C", "text": "the number of different academic disciplines involved"},
                        {"key": "D", "text": "the many kinds of people whose laughter was recorded"},
                    ],
                    "answer": "B",
                    "explanation": "The results were remarkably consistent worldwide across 24 diverse societies.",
                    "evidence": {"sectionId": "p3", "ref": "3",
                                 "quote": "the results were remarkably consistent: worldwide, people's guesses were correct approximately 60% of the time"},
                },
                {
                    "number": 30,
                    "prompt": "Which of the following happened in the San Diego study?",
                    "options": [
                        {"key": "A", "text": "Some participants became very upset."},
                        {"key": "B", "text": "Participants exchanged roles."},
                        {"key": "C", "text": "Participants who had not met before became friends."},
                        {"key": "D", "text": "Some participants were unable to laugh."},
                    ],
                    "answer": "B",
                    "explanation": "Each older student took a turn at being teased by the others — participants exchanged the roles of teaser and teased.",
                    "evidence": {"sectionId": "p3", "ref": "4",
                                 "quote": "each group composed of two low-status members...and two high-status members, older student took a turn at being teased"},
                },
                {
                    "number": 31,
                    "prompt": "In the fifth paragraph, what did the results of the San Diego study suggest?",
                    "options": [
                        {"key": "A", "text": "It is clear whether a dominant laugh is produced by a high- or low-status person."},
                        {"key": "B", "text": "Low-status individuals in a position of power will still produce submissive laughs."},
                        {"key": "C", "text": "The submissive laughs of low- and high-status individuals are surprisingly similar."},
                        {"key": "D", "text": "High-status individuals can always be identified by their way of laughing."},
                    ],
                    "answer": "D",
                    "explanation": "High-status individuals were rated as high-status whether they produced a dominant or submissive laugh.",
                    "evidence": {"sectionId": "p3", "ref": "5",
                                 "quote": "high-status individuals were rated as high-status whether they produced their natural dominant laugh or tried to do a submissive one"},
                },
            ],
        },
        {
            "id": "g7",
            "type": "completion",
            "label": "Questions 32–36",
            "instructions": "Complete the summary using the list of words, A–H, below. Write the correct letter, A–H, in boxes on your answer sheet.",
            "summaryTitle": "The benefits of humour",
            "summaryText": "In one study at Australian National University, randomly chosen groups of participants were shown one of three videos, each designed to generate a different kind of {32}. When all participants were then given a deliberately frustrating task to do, it was found that those who had watched the {33} video persisted with the task for longer and tried harder to accomplish the task than either of the other two groups. A second study in which participants were asked to perform a particularly {34} task produced similar results. According to researchers David Cheng and Lu Wang, these findings suggest that humour not only reduces {35} and helps build social connections but it may also have a {36} effect on the body and mind.",
            "wordBank": [
                {"key": "A", "text": "laughter"},
                {"key": "B", "text": "relaxing"},
                {"key": "C", "text": "boring"},
                {"key": "D", "text": "anxiety"},
                {"key": "E", "text": "stimulating"},
                {"key": "F", "text": "emotion"},
                {"key": "G", "text": "enjoyment"},
                {"key": "H", "text": "amusing"},
            ],
            "questions": [
                {
                    "number": 32,
                    "prompt": "",
                    "answer": "F",
                    "explanation": "Videos generated different kinds of emotion (humour, contentment, or neutral).",
                    "evidence": {"sectionId": "p3", "ref": "6",
                                 "quote": "watch a video clip eliciting either humour, contentment, or neutral feelings"},
                },
                {
                    "number": 33,
                    "prompt": "",
                    "answer": "H",
                    "explanation": "Students who watched the Mr. Bean (amusing/humorous) video spent significantly more time on the task.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "Students who had watched the Mr. Bean video ended up spending significantly more time working on the task"},
                },
                {
                    "number": 34,
                    "prompt": "",
                    "answer": ["C", "boring"],
                    "explanation": "The second study involved long multiplication questions — a particularly boring/tedious task.",
                    "evidence": {"sectionId": "p3", "ref": "8",
                                 "quote": "participants complete long multiplication questions by hand"},
                },
                {
                    "number": 35,
                    "prompt": "",
                    "answer": "D",
                    "explanation": "Humour has been found to help relieve stress and facilitate social relationships.",
                    "evidence": {"sectionId": "p3", "ref": "8",
                                 "quote": "humour has been found to help relieve stress and facilitate social relationships"},
                },
                {
                    "number": 36,
                    "prompt": "",
                    "answer": "E",
                    "explanation": "Cheng and Wang suggest humour is not only enjoyable but more importantly, energising.",
                    "evidence": {"sectionId": "p3", "ref": "8",
                                 "quote": "humour is not only enjoyable but more importantly, energising"},
                },
            ],
        },
        {
            "id": "g8",
            "type": "true_false_notgiven",
            "label": "Questions 37–40",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {
                    "number": 37,
                    "prompt": "Participants in the Santa Cruz study were more accurate at identifying the laughs of friends than those of strangers.",
                    "answer": "NOT GIVEN",
                    "explanation": "The passage only states that on average guesses were correct about 60% of the time — it does not compare friend vs. stranger accuracy.",
                    "evidence": {"sectionId": "p3", "ref": "3",
                                 "quote": "worldwide, people's guesses were correct approximately 60% of the time"},
                },
                {
                    "number": 38,
                    "prompt": "The researchers in the San Diego study were correct in their predictions regarding the behaviour of the high-status individuals.",
                    "answer": "TRUE",
                    "explanation": "Analysis revealed that, as expected, high-status individuals produced more dominant laughs.",
                    "evidence": {"sectionId": "p3", "ref": "4",
                                 "quote": "Analysis revealed that, as expected, high-status individuals produced more dominant laughs"},
                },
                {
                    "number": 39,
                    "prompt": "The participants in the Australian National University study were given a fixed amount of time to complete the task focusing on employee profiles.",
                    "answer": "FALSE",
                    "explanation": "Participants were allowed to quit the task at any point — there was no fixed time.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "Participants were allowed to quit the task at any point"},
                },
                {
                    "number": 40,
                    "prompt": "Cheng and Wang's conclusions were in line with established notions regarding task performance.",
                    "answer": "FALSE",
                    "explanation": "Traditional views imply individuals should avoid humour that distracts from task goals — Cheng and Wang's findings contradicted this.",
                    "evidence": {"sectionId": "p3", "ref": "8",
                                 "quote": "traditional view of task performance implies that individuals should avoid things such as humour that may distract them"},
                },
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Could urban engineers learn from dance?", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Should we try to bring extinct species back to life?", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Having a laugh", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(2, sections, "c15t2r")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 3 ── Henry Moore / Desolenator / Fairy tales
# ─────────────────────────────────────────────────────────────────────────────

def build_test3() -> str:
    ocr = load_ocr(3)

    # ── Passage 1: Henry Moore ───────────────────────────────────────────────
    p1_body  = extract_between(ocr, "Henry Moore (1898-1986)\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "true_false_notgiven",
            "label": "Questions 1–7",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {
                    "number": 1,
                    "prompt": "On leaving school, Moore did what his father wanted him to do.",
                    "answer": "TRUE",
                    "explanation": "Moore complied with his father's wish that he train as a schoolteacher.",
                    "evidence": {"sectionId": "p1", "ref": "1",
                                 "quote": "instead he complied with his father's wish that he train as a schoolteacher"},
                },
                {
                    "number": 2,
                    "prompt": "Moore began studying sculpture in his first term at the Leeds School of Art.",
                    "answer": "FALSE",
                    "explanation": "In his first year at Leeds he spent most of his time drawing; no sculpture teacher was appointed until his second year.",
                    "evidence": {"sectionId": "p1", "ref": "2",
                                 "quote": "In his first year, he spent most of his time drawing. Although he wanted to study sculpture, no teacher was appointed until his second year"},
                },
                {
                    "number": 3,
                    "prompt": "When Moore started at the Royal College of Art, its reputation for teaching sculpture was excellent.",
                    "answer": "NOT GIVEN",
                    "explanation": "The passage mentions Moore winning a scholarship to the Royal College but says nothing about its reputation.",
                    "evidence": {"sectionId": "p1", "ref": "2",
                                 "quote": "he passed the sculpture examination and was awarded a scholarship to the Royal College of Art in London"},
                },
                {
                    "number": 4,
                    "prompt": "Moore became aware of ancient sculpture as a result of visiting London museums.",
                    "answer": "TRUE",
                    "explanation": "Moore visited London museums, particularly the British Museum, where he discovered ancient Egyptian and African sculpture.",
                    "evidence": {"sectionId": "p1", "ref": "3",
                                 "quote": "Moore visited many of the London museums, particularly the British Museum...During these visits, he discovered the power and beauty of ancient Egyptian and African sculpture"},
                },
                {
                    "number": 5,
                    "prompt": "The Trocadero Museum's Mayan sculpture attracted a lot of public interest.",
                    "answer": "NOT GIVEN",
                    "explanation": "The passage describes Moore's personal fascination with the Mayan sculpture but says nothing about public interest in it.",
                    "evidence": {"sectionId": "p1", "ref": "4",
                                 "quote": "he was impressed by a cast of a Mayan sculpture of the rain spirit"},
                },
                {
                    "number": 6,
                    "prompt": "Moore thought the Mayan sculpture was similar in certain respects to other stone sculptures.",
                    "answer": "FALSE",
                    "explanation": "Moore thought the Mayan sculpture had a power and originality that no other stone sculpture possessed.",
                    "evidence": {"sectionId": "p1", "ref": "4",
                                 "quote": "he thought had a power and originality that no other stone sculpture possessed"},
                },
                {
                    "number": 7,
                    "prompt": "The artists who belonged to Unit One wanted to make modern art and architecture more popular.",
                    "answer": "TRUE",
                    "explanation": "Unit One's aim was to convince the English public of the merits of the emerging international movement in modern art and architecture.",
                    "evidence": {"sectionId": "p1", "ref": "5",
                                 "quote": "The aim of the group was to convince the English public of the merits of the emerging international movement in modern art and architecture"},
                },
            ],
        },
        {
            "id": "g2",
            "type": "completion",
            "label": "Questions 8–13",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "Moore's career as an artist",
            "formContent": [
                {"kind": "subheader", "text": "1930s"},
                {"kind": "static", "text": "Moore's exhibition at the Leicester Galleries is criticised by the press"},
                {"kind": "question", "number": 8},
                {"kind": "subheader", "text": "1940s"},
                {"kind": "question", "number": 9},
                {"kind": "question", "number": 10},
                {"kind": "question", "number": 11},
                {"kind": "question", "number": 12},
                {"kind": "question", "number": 13},
                {"kind": "subheader", "text": "1950s"},
                {"kind": "static", "text": "Moore's series of bronze figures marks a further change in his style"},
            ],
            "questions": [
                {
                    "number": 8,
                    "prompt": "Moore is urged to offer his _______ and leave the Royal College",
                    "answer": ["resignation"], "wordLimit": 1,
                    "explanation": "There were calls for his resignation from the Royal College.",
                    "evidence": {"sectionId": "p1", "ref": "6",
                                 "quote": "There were calls for his resignation from the Royal College"},
                },
                {
                    "number": 9,
                    "prompt": "Moore turns to drawing because _______ for sculpting are not readily available",
                    "answer": ["materials"], "wordLimit": 1,
                    "explanation": "A shortage of materials forced him to focus on drawing.",
                    "evidence": {"sectionId": "p1", "ref": "8",
                                 "quote": "A shortage of materials forced him to focus on drawing"},
                },
                {
                    "number": 10,
                    "prompt": "While visiting his hometown, Moore does some drawings of _______",
                    "answer": ["miners"], "wordLimit": 1,
                    "explanation": "In 1942, Moore returned to Castleford to make sketches of the miners who worked there.",
                    "evidence": {"sectionId": "p1", "ref": "8",
                                 "quote": "he returned to Castleford to make a series of sketches of the miners who worked there"},
                },
                {
                    "number": 11,
                    "prompt": "Moore is employed to produce a sculpture of a _______",
                    "answer": ["family"], "wordLimit": 1,
                    "explanation": "Harlow offered Moore a commission for a sculpture depicting a family.",
                    "evidence": {"sectionId": "p1", "ref": "9",
                                 "quote": "offered Moore a commission for a sculpture depicting a family"},
                },
                {
                    "number": 12,
                    "prompt": "_______ start to buy Moore's work",
                    "answer": ["collectors"], "wordLimit": 1,
                    "explanation": "Moore's work became available to collectors all over the world.",
                    "evidence": {"sectionId": "p1", "ref": "9",
                                 "quote": "Moore's work became available to collectors all over the world"},
                },
                {
                    "number": 13,
                    "prompt": "Moore's increased _______ makes it possible for him to do more ambitious sculptures",
                    "answer": ["income"], "wordLimit": 1,
                    "explanation": "The boost to his income enabled him to take on ambitious projects.",
                    "evidence": {"sectionId": "p1", "ref": "9",
                                 "quote": "The boost to his income enabled him to take on ambitious projects"},
                },
            ],
        },
    ]

    # ── Passage 2: The Desolenator ───────────────────────────────────────────
    p2_body  = extract_between(ocr, "The Desolenator: producing clean water\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEFG")

    headings = [
        {"key": "i",   "text": "Getting the finance for production"},
        {"key": "ii",  "text": "An unexpected benefit"},
        {"key": "iii", "text": "From initial inspiration to new product"},
        {"key": "iv",  "text": "The range of potential customers for the device"},
        {"key": "v",   "text": "What makes the device different from alternatives"},
        {"key": "vi",  "text": "Cleaning water from a range of sources"},
        {"key": "vii", "text": "Overcoming production difficulties"},
        {"key": "viii","text": "Profit not the primary goal"},
        {"key": "ix",  "text": "A warm welcome for the device"},
        {"key": "x",   "text": "The number of people affected by water shortages"},
    ]

    p2_groups = [
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 14–20",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Choose the correct heading for each section from the list of headings below. Write the correct number, i–x, in boxes on your answer sheet.",
            "options": headings,
            "questions": [
                {
                    "number": 14, "prompt": "Paragraph A", "answer": "iii",
                    "explanation": "Paragraph A describes Janssen's initial inspiration in Thailand leading to a new product.",
                    "evidence": {"sectionId": "p2", "ref": "A",
                                 "quote": "Two decades later Janssen developed that basic idea he saw in Southeast Asia into a portable device"},
                },
                {
                    "number": 15, "prompt": "Paragraph B", "answer": "vi",
                    "explanation": "Paragraph B describes the Desolenator taking water from the sea, rivers, boreholes and rain.",
                    "evidence": {"sectionId": "p2", "ref": "B",
                                 "quote": "can take water from different places, such as the sea, rivers, boreholes and rain"},
                },
                {
                    "number": 16, "prompt": "Paragraph C", "answer": "v",
                    "explanation": "Paragraph C describes what makes the Desolenator different — it doesn't require a generated power supply.",
                    "evidence": {"sectionId": "p2", "ref": "C",
                                 "quote": "unlike standard desalination techniques, it doesn't require a generated power supply: just sunlight"},
                },
                {
                    "number": 17, "prompt": "Paragraph D", "answer": "x",
                    "explanation": "Paragraph D discusses the number of people facing water scarcity.",
                    "evidence": {"sectionId": "p2", "ref": "D",
                                 "quote": "at least two-thirds of the world's population lives with severe water scarcity for at least a month every year"},
                },
                {
                    "number": 18, "prompt": "Paragraph E", "answer": "iv",
                    "explanation": "Paragraph E describes the wide variety of users — from developing-world homeowners to off-grid rural US residents.",
                    "evidence": {"sectionId": "p2", "ref": "E",
                                 "quote": "The device is aimed at a wide variety of users"},
                },
                {
                    "number": 19, "prompt": "Paragraph F", "answer": "viii",
                    "explanation": "Paragraph F states the company has a social mission and is aware profit is not the primary goal.",
                    "evidence": {"sectionId": "p2", "ref": "F",
                                 "quote": "We are a venture with a social mission"},
                },
                {
                    "number": 20, "prompt": "Paragraph G", "answer": "i",
                    "explanation": "Paragraph G discusses the company's funding — it has raised £340,000 so far.",
                    "evidence": {"sectionId": "p2", "ref": "G",
                                 "quote": "It has raised £340,000 in funding so far"},
                },
            ],
        },
        {
            "id": "g4",
            "type": "completion",
            "label": "Questions 21–26",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "How the Desolenator works",
            "formContent": [
                {"kind": "question", "number": 21},
                {"kind": "question", "number": 22},
                {"kind": "question", "number": 23},
                {"kind": "question", "number": 24},
                {"kind": "question", "number": 25},
                {"kind": "question", "number": 26},
            ],
            "questions": [
                {
                    "number": 21,
                    "prompt": "The device can be used in different locations, as it has _______",
                    "answer": ["wheels"], "wordLimit": 1,
                    "explanation": "The device is easy to transport, thanks to its two wheels.",
                    "evidence": {"sectionId": "p2", "ref": "C",
                                 "quote": "it easy to transport, thanks to its two wheels"},
                },
                {
                    "number": 22,
                    "prompt": "Water is fed into a pipe, and a _______ of water flows over a solar panel",
                    "answer": ["film"], "wordLimit": 1,
                    "explanation": "Water flows as a thin film between a sheet of double glazing and the surface of a solar panel.",
                    "evidence": {"sectionId": "p2", "ref": "C",
                                 "quote": "flows as a thin film between a sheet of double glazing and the surface of a solar panel"},
                },
                {
                    "number": 23,
                    "prompt": "Any particles in the water are caught in a _______",
                    "answer": ["filter"], "wordLimit": 1,
                    "explanation": "The device has a very simple filter to trap particles.",
                    "evidence": {"sectionId": "p2", "ref": "C",
                                 "quote": "The device has a very simple filter to trap particles"},
                },
                {
                    "number": 24,
                    "prompt": "all types of _______ come out through another tube",
                    "answer": ["waste"], "wordLimit": 1,
                    "explanation": "One tube carries the waste — salt from seawater, fluoride, etc.",
                    "evidence": {"sectionId": "p2", "ref": "C",
                                 "quote": "one for the waste — salt from seawater, fluoride, etc."},
                },
                {
                    "number": 25,
                    "prompt": "A screen displays the _______ of the device",
                    "answer": ["performance"], "wordLimit": 1,
                    "explanation": "The performance of the unit is shown on an LCD screen.",
                    "evidence": {"sectionId": "p2", "ref": "C",
                                 "quote": "The performance of the unit is shown on an LCD screen"},
                },
                {
                    "number": 26,
                    "prompt": "and transmits the information to the company so that they know when the Desolenator requires _______",
                    "answer": ["servicing"], "wordLimit": 1,
                    "explanation": "Information is transmitted to the company which provides servicing when necessary.",
                    "evidence": {"sectionId": "p2", "ref": "C",
                                 "quote": "transmitted to the company which provides servicing when necessary"},
                },
            ],
        },
    ]

    # ── Passage 3: Why fairy tales are really scary tales ────────────────────
    p3_body  = extract_between(ocr, "Why fairy tales are really scary tales\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g5",
            "type": "matching",
            "label": "Questions 27–31",
            "instructions": "Complete each sentence with the correct ending, A–F, below. Write the correct letter, A–F, in boxes on your answer sheet.",
            "options": [
                {"key": "A", "text": "may be provided through methods used in biological research."},
                {"key": "B", "text": "are the reason for their survival."},
                {"key": "C", "text": "show considerable global variation."},
                {"key": "D", "text": "contain animals which transform to become humans."},
                {"key": "E", "text": "were originally spoken rather than written."},
                {"key": "F", "text": "have been developed without factual basis."},
            ],
            "questions": [
                {
                    "number": 27,
                    "prompt": "In fairy tales, details of the plot",
                    "answer": "C",
                    "explanation": "The same story often takes a variety of forms in different parts of the world — details show considerable global variation.",
                    "evidence": {"sectionId": "p3", "ref": "1",
                                 "quote": "the same story often takes a variety of forms in different parts of the world"},
                },
                {
                    "number": 28,
                    "prompt": "Tehrani rejects the idea that the useful lessons for life in fairy tales",
                    "answer": "B",
                    "explanation": "Tehrani's research suggests cautionary messages are not what explains the tales' survival — the gruesome elements are more important.",
                    "evidence": {"sectionId": "p3", "ref": "2",
                                 "quote": "But his research suggests otherwise"},
                },
                {
                    "number": 29,
                    "prompt": "Various theories about the social significance of fairy tales",
                    "answer": "F",
                    "explanation": "Tehrani found that cautionary elements were just as flexible as seemingly trivial details — suggesting theories are not well founded.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "such elements were just as flexible as seemingly trivial details"},
                },
                {
                    "number": 30,
                    "prompt": "Insights into the development of fairy tales",
                    "answer": "A",
                    "explanation": "Tehrani borrowed the phylogenetic analysis technique from evolutionary biologists.",
                    "evidence": {"sectionId": "p3", "ref": "3",
                                 "quote": "borrowing a technique from evolutionary biologists"},
                },
                {
                    "number": 31,
                    "prompt": "All the fairy tales analysed by Tehrani",
                    "answer": "E",
                    "explanation": "The 58 stories were recorded from oral traditions.",
                    "evidence": {"sectionId": "p3", "ref": "4",
                                 "quote": "he ended up with 58 stories recorded from oral traditions"},
                },
            ],
        },
        {
            "id": "g6",
            "type": "completion",
            "label": "Questions 32–36",
            "instructions": "Complete the summary using the list of words, A–I, below. Write the correct letter, A–I, in boxes on your answer sheet.",
            "summaryTitle": "Phylogenetic analysis of Little Red Riding Hood",
            "summaryText": "Tehrani used techniques from evolutionary biology to find out if {32} existed among 58 stories from around the world. He also wanted to know which aspects of the stories had fewest {33}, as he believed these aspects would be the most important ones. Contrary to other beliefs, he found that some {34} that were included in a story tended to change over time, and that the middle of a story seemed no more important than the other parts. He was also surprised that parts of a story which seemed to provide some sort of {35} were unimportant. The aspect that he found most important in a story's survival was {36}.",
            "wordBank": [
                {"key": "A", "text": "ending"},
                {"key": "B", "text": "events"},
                {"key": "C", "text": "warning"},
                {"key": "D", "text": "links"},
                {"key": "E", "text": "records"},
                {"key": "F", "text": "variations"},
                {"key": "G", "text": "horror"},
                {"key": "H", "text": "people"},
                {"key": "I", "text": "plot"},
            ],
            "questions": [
                {
                    "number": 32,
                    "prompt": "",
                    "answer": "D",
                    "explanation": "Tehrani compared related versions of fairy tales to discover how they were linked and evolved.",
                    "evidence": {"sectionId": "p3", "ref": "4",
                                 "quote": "compare related versions of fairy tales to discover how they have evolved"},
                },
                {
                    "number": 33,
                    "prompt": "",
                    "answer": "F",
                    "explanation": "Tehrani looked for which aspects had the fewest variations (were most stable/conserved).",
                    "evidence": {"sectionId": "p3", "ref": "5",
                                 "quote": "which aspects of the story alter least as it evolves, indicating their importance"},
                },
                {
                    "number": 34,
                    "prompt": "",
                    "answer": "B",
                    "explanation": "Tehrani found no significant difference in the rate of evolution of incidents (events) compared with characters.",
                    "evidence": {"sectionId": "p3", "ref": "6",
                                 "quote": "no significant difference in the rate of evolution of incidents compared with that of characters"},
                },
                {
                    "number": 35,
                    "prompt": "",
                    "answer": "C",
                    "explanation": "Cautionary elements were just as flexible as trivial details — a warning was not what made a story survive.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "such elements were just as flexible as seemingly trivial details"},
                },
                {
                    "number": 36,
                    "prompt": "",
                    "answer": "G",
                    "explanation": "Blood-thirsty and gruesome (horror) aspects were the best preserved of all.",
                    "evidence": {"sectionId": "p3", "ref": "8",
                                 "quote": "blood-thirsty and gruesome aspects of the story...turned out to be the best preserved of all"},
                },
            ],
        },
        {
            "id": "g7",
            "type": "multiple_choice",
            "label": "Questions 37–40",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {
                    "number": 37,
                    "prompt": "What method did Jamie Tehrani use to test his ideas about fairy tales?",
                    "options": [
                        {"key": "A", "text": "He compared oral and written forms of the same stories."},
                        {"key": "B", "text": "He looked at many different forms of the same basic story."},
                        {"key": "C", "text": "He looked at unrelated stories from many different countries."},
                        {"key": "D", "text": "He contrasted the development of fairy tales with that of living creatures."},
                    ],
                    "answer": "B",
                    "explanation": "Tehrani used phylogenetic analysis to compare related versions of fairy tales across 58 stories.",
                    "evidence": {"sectionId": "p3", "ref": "4",
                                 "quote": "Checking for variants of these two tales and similar stories from Africa, East Asia and other regions, he ended up with 58 stories"},
                },
                {
                    "number": 38,
                    "prompt": "When discussing Tehrani's views, Jack Zipes suggests that",
                    "options": [
                        {"key": "A", "text": "Tehrani ignores key changes in the role of women."},
                        {"key": "B", "text": "stories which are too horrific are not always taken seriously."},
                        {"key": "C", "text": "Tehrani overemphasises the importance of violence in stories."},
                        {"key": "D", "text": "features of stories only survive if they have a deeper significance."},
                    ],
                    "answer": "D",
                    "explanation": "Zipes says 'Even if they're gruesome, they won't stick unless they matter' — they need deeper significance.",
                    "evidence": {"sectionId": "p3", "ref": "9",
                                 "quote": "Even if they're gruesome, they won't stick unless they matter"},
                },
                {
                    "number": 39,
                    "prompt": "Why does Tehrani refer to Chinese and Japanese fairy tales?",
                    "options": [
                        {"key": "A", "text": "to indicate that Jack Zipes' theory is incorrect"},
                        {"key": "B", "text": "to suggest that crime is a global problem"},
                        {"key": "C", "text": "to imply that all fairy tales have a similar meaning"},
                        {"key": "D", "text": "to add more evidence for Jack Zipes' ideas"},
                    ],
                    "answer": "A",
                    "explanation": "Tehrani points out that in Chinese and Japanese versions the villain is a woman, and in Iran and Nigeria the victim is a boy — countering Zipes' claim that women-as-victims explains relevance.",
                    "evidence": {"sectionId": "p3", "ref": "9",
                                 "quote": "in Chinese and Japanese versions...the villain is a woman, and in both Iran and Nigeria, the victim is a boy"},
                },
                {
                    "number": 40,
                    "prompt": "What does Mathias Clasen believe about fairy tales?",
                    "options": [
                        {"key": "A", "text": "They are a safe way of learning to deal with fear."},
                        {"key": "B", "text": "They are a type of entertainment that some people avoid."},
                        {"key": "C", "text": "They reflect the changing values of our society."},
                        {"key": "D", "text": "They reduce our ability to deal with real-world problems."},
                    ],
                    "answer": "A",
                    "explanation": "Clasen believes scary stories teach us what it feels like to be afraid without real danger, building resistance to negative emotions.",
                    "evidence": {"sectionId": "p3", "ref": "10",
                                 "quote": "scary stories teach us what it feels like to be afraid without having to experience real danger, and so build up resistance to negative emotions"},
                },
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Henry Moore (1898–1986)", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "The Desolenator: producing clean water", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Why fairy tales are really scary tales", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(3, sections, "c15t3r")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 4 ── Huarango / Silbo Gomero / Environmental practices
# ─────────────────────────────────────────────────────────────────────────────

def build_test4() -> str:
    ocr = load_ocr(4)

    # ── Passage 1: The return of the huarango ────────────────────────────────
    p1_body  = extract_between(ocr, "The return of the huarango\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–5",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "The importance of the huarango tree",
            "formContent": [
                {"kind": "static", "text": "its roots can extend as far as 80 metres into the soil"},
                {"kind": "question", "number": 1},
                {"kind": "question", "number": 2},
                {"kind": "question", "number": 3},
                {"kind": "question", "number": 4},
                {"kind": "question", "number": 5},
            ],
            "questions": [
                {
                    "number": 1,
                    "prompt": "can access _______ deep below the surface",
                    "answer": ["water"], "wordLimit": 1,
                    "explanation": "The roots stretch down 50-80 metres, sucking up water for the tree.",
                    "evidence": {"sectionId": "p1", "ref": "1",
                                 "quote": "as well as sucking up water for the tree, they bring it into the higher subsoil"},
                },
                {
                    "number": 2,
                    "prompt": "was a crucial part of local inhabitants' _______ a long time ago",
                    "answer": ["diet"], "wordLimit": 1,
                    "explanation": "The huarango was key to the ancient people's diet.",
                    "evidence": {"sectionId": "p1", "ref": "2",
                                 "quote": "the huarango was key to the ancient people's diet"},
                },
                {
                    "number": 3,
                    "prompt": "helped people to survive periods of _______",
                    "answer": ["drought"], "wordLimit": 1,
                    "explanation": "The huarango allowed local people to withstand years of drought when crops failed.",
                    "evidence": {"sectionId": "p1", "ref": "2",
                                 "quote": "it allowed local people to withstand years of drought when their other crops failed"},
                },
                {
                    "number": 4,
                    "prompt": "prevents _______ of the soil",
                    "answer": ["erosion"], "wordLimit": 1,
                    "explanation": "Cutting down native woodland leads to erosion, as there is nothing to keep the soil in place.",
                    "evidence": {"sectionId": "p1", "ref": "2",
                                 "quote": "Cutting down native woodland leads to erosion, as there is nothing to keep the soil in place"},
                },
                {
                    "number": 5,
                    "prompt": "prevents land from becoming a _______",
                    "answer": ["desert"], "wordLimit": 1,
                    "explanation": "When the huarangos go, the land turns into a desert.",
                    "evidence": {"sectionId": "p1", "ref": "2",
                                 "quote": "when the huarangos go, the land turns into a desert"},
                },
            ],
        },
        {
            "id": "g2",
            "type": "completion",
            "label": "Questions 6–8",
            "instructions": "Complete the table below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "formTitle": "Traditional uses of the huarango tree",
            "formContent": [
                {"kind": "subheader", "text": "Part of tree → Traditional use"},
                {"kind": "question", "number": 6},
                {"kind": "question", "number": 7},
                {"kind": "question", "number": 8},
            ],
            "questions": [
                {
                    "number": 6,
                    "prompt": "_______ (used for charcoal for cooking and heating)",
                    "answer": ["branches"], "wordLimit": 2,
                    "explanation": "Its branches were used for charcoal for cooking and heating.",
                    "evidence": {"sectionId": "p1", "ref": "3",
                                 "quote": "its branches were used for charcoal for cooking and heating"},
                },
                {
                    "number": 7,
                    "prompt": "Leaves and _______ (used for herbal remedies / medicine)",
                    "answer": ["bark"], "wordLimit": 2,
                    "explanation": "Its leaves and bark were used for herbal remedies.",
                    "evidence": {"sectionId": "p1", "ref": "3",
                                 "quote": "Its leaves and bark were used for herbal remedies"},
                },
                {
                    "number": 8,
                    "prompt": "_______ (used to build houses / construction)",
                    "answer": ["trunk"], "wordLimit": 2,
                    "explanation": "Its trunk was used to build houses.",
                    "evidence": {"sectionId": "p1", "ref": "3",
                                 "quote": "its trunk was used to build houses"},
                },
            ],
        },
        {
            "id": "g3",
            "type": "true_false_notgiven",
            "label": "Questions 9–13",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {
                    "number": 9,
                    "prompt": "Local families have told Whaley about some traditional uses of huarango products.",
                    "answer": "NOT GIVEN",
                    "explanation": "The passage describes Whaley working with local families on sustainable income but does not say they told him about traditional uses.",
                    "evidence": {"sectionId": "p1", "ref": "5",
                                 "quote": "he has been working with local families to attempt to create a sustainable income from the huarangos"},
                },
                {
                    "number": 10,
                    "prompt": "Farmer Alberto Benevides is now making a good profit from growing huarangos.",
                    "answer": "FALSE",
                    "explanation": "His farm is relatively small and doesn't yet provide him with enough to live on.",
                    "evidence": {"sectionId": "p1", "ref": "6",
                                 "quote": "His farm is relatively small and doesn't yet provide him with enough to live on"},
                },
                {
                    "number": 11,
                    "prompt": "Whaley needs the co-operation of farmers to help preserve the area's wildlife.",
                    "answer": "TRUE",
                    "explanation": "He is persuading farmers to let him plant forest corridors on their land to allow movement of mammals, birds and pollen.",
                    "evidence": {"sectionId": "p1", "ref": "7",
                                 "quote": "he's persuading farmers to let him plant forest corridors on their land"},
                },
                {
                    "number": 12,
                    "prompt": "For Whaley's project to succeed, it needs to be extended over a very large area.",
                    "answer": "FALSE",
                    "explanation": "Whaley says it is not like a rainforest that needs a huge expanse — life has always been confined to corridors and islands there.",
                    "evidence": {"sectionId": "p1", "ref": "8",
                                 "quote": "It's not like a rainforest that needs to have this huge expanse"},
                },
                {
                    "number": 13,
                    "prompt": "Whaley has plans to go to Africa to set up a similar project.",
                    "answer": "NOT GIVEN",
                    "explanation": "Whaley mentions Africa as a place where his model could be applied, but there is no mention of him planning to go there.",
                    "evidence": {"sectionId": "p1", "ref": "8",
                                 "quote": "including Africa, where there is drought"},
                },
            ],
        },
    ]

    # ── Passage 2: Silbo Gomero ───────────────────────────────────────────────
    p2_body  = extract_between(ocr, "Silbo Gomero - the whistle ‘language’ of the Canary Islands\n", "PART 2 — QUESTIONS")
    p2_paras = parse_plain_paras(p2_body)

    p2_groups = [
        {
            "id": "g4",
            "type": "true_false_notgiven",
            "label": "Questions 14–19",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {
                    "number": 14,
                    "prompt": "La Gomera is the most mountainous of all the Canary Islands.",
                    "answer": "NOT GIVEN",
                    "explanation": "The passage describes La Gomera as mountainous but makes no comparison with other Canary Islands.",
                    "evidence": {"sectionId": "p2", "ref": "1",
                                 "quote": "This small volcanic island is mountainous, with steep rocky slopes and deep, wooded ravines"},
                },
                {
                    "number": 15,
                    "prompt": "Silbo is only appropriate for short and simple messages.",
                    "answer": "FALSE",
                    "explanation": "Carreiras says silbadores are able to pass a surprising amount of information and that any Spanish sentence could be whistled.",
                    "evidence": {"sectionId": "p2", "ref": "5",
                                 "quote": "silbadores are able to pass a surprising amount of information via their whistles. 'In daily life they use whistles to communicate short commands, but any Spanish sentence could be whistled'"},
                },
                {
                    "number": 16,
                    "prompt": "In the brain-activity study, silbadores and non-whistlers produced different results.",
                    "answer": "TRUE",
                    "explanation": "The left temporal lobe was engaged for silbadores but multiple brain areas were activated in non-whistlers.",
                    "evidence": {"sectionId": "p2", "ref": "6",
                                 "quote": "When the experiments were repeated with non-whistlers, however, activation was observed in all areas of the brain"},
                },
                {
                    "number": 17,
                    "prompt": "The Spanish introduced Silbo to the islands in the 15th century.",
                    "answer": "FALSE",
                    "explanation": "Indigenous Canary Islanders already had a whistled language when Spain conquered the islands in the 15th century.",
                    "evidence": {"sectionId": "p2", "ref": "7",
                                 "quote": "indigenous Canary Islanders...already had a whistled language when Spain conquered the volcanic islands in the 15th century"},
                },
                {
                    "number": 18,
                    "prompt": "There is precise data available regarding all of the whistle languages in existence today.",
                    "answer": "FALSE",
                    "explanation": "There are thought to be as many as 70 whistled languages still in use, though only 12 have been described and studied scientifically.",
                    "evidence": {"sectionId": "p2", "ref": "7",
                                 "quote": "There are thought to be as many as 70 whistled languages still in use, though only 12 have been described and studied scientifically"},
                },
                {
                    "number": 19,
                    "prompt": "The children of Gomera now learn Silbo.",
                    "answer": "TRUE",
                    "explanation": "Since 1999, Silbo Gomero has been taught in all of the island's elementary schools.",
                    "evidence": {"sectionId": "p2", "ref": "8",
                                 "quote": "Since 1999, Silbo Gomero has been taught in all of the island's elementary schools"},
                },
            ],
        },
        {
            "id": "g5",
            "type": "completion",
            "label": "Questions 20–26",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "Silbo Gomero",
            "formContent": [
                {"kind": "subheader", "text": "How Silbo is produced"},
                {"kind": "question", "number": 20},
                {"kind": "question", "number": 21},
                {"kind": "question", "number": 22},
                {"kind": "subheader", "text": "How Silbo is used"},
                {"kind": "static", "text": "has long been used by shepherds and people living in secluded locations"},
                {"kind": "question", "number": 23},
                {"kind": "question", "number": 24},
                {"kind": "subheader", "text": "The future of Silbo"},
                {"kind": "question", "number": 25},
                {"kind": "question", "number": 26},
            ],
            "questions": [
                {
                    "number": 20,
                    "prompt": "high- and low-frequency tones represent different _______ in Spanish",
                    "answer": ["words"], "wordLimit": 1,
                    "explanation": "Silbo is a substitute for Spanish, with individual words recoded into whistles with high- and low-frequency tones.",
                    "evidence": {"sectionId": "p2", "ref": "3",
                                 "quote": "Silbo is a substitute for Spanish, with individual words recoded into whistles which have high- and low-frequency tones"},
                },
                {
                    "number": 21,
                    "prompt": "pitch of whistle is controlled using silbador's _______",
                    "answer": ["finger"], "wordLimit": 1,
                    "explanation": "A whistler puts a finger in his or her mouth to increase the whistle's pitch.",
                    "evidence": {"sectionId": "p2", "ref": "3",
                                 "quote": "puts a finger in his or her mouth to increase the whistle's pitch"},
                },
                {
                    "number": 22,
                    "prompt": "_______ is changed with a cupped hand",
                    "answer": ["direction"], "wordLimit": 1,
                    "explanation": "The other hand can be cupped to adjust the direction of the sound.",
                    "evidence": {"sectionId": "p2", "ref": "3",
                                 "quote": "the other hand can be cupped to adjust the direction of the sound"},
                },
                {
                    "number": 23,
                    "prompt": "in everyday use for the transmission of brief _______",
                    "answer": ["commands"], "wordLimit": 1,
                    "explanation": "In daily life they use whistles to communicate short commands.",
                    "evidence": {"sectionId": "p2", "ref": "5",
                                 "quote": "In daily life they use whistles to communicate short commands"},
                },
                {
                    "number": 24,
                    "prompt": "can relay essential information quickly, e.g. to inform people about _______",
                    "answer": ["fires"], "wordLimit": 1,
                    "explanation": "Silbo has proved particularly useful when fires have occurred on the island.",
                    "evidence": {"sectionId": "p2", "ref": "5",
                                 "quote": "Silbo has proved particularly useful when fires have occurred on the island"},
                },
                {
                    "number": 25,
                    "prompt": "future under threat because of new _______",
                    "answer": ["technology"], "wordLimit": 1,
                    "explanation": "With modern communication technology now widely available, whistled languages are threatened with extinction.",
                    "evidence": {"sectionId": "p2", "ref": "8",
                                 "quote": "with modern communication technology now widely available, researchers say whistled languages like Silbo are threatened with extinction"},
                },
                {
                    "number": 26,
                    "prompt": "Canaries' authorities hoping to receive a UNESCO _______ to help preserve it",
                    "answer": ["award"], "wordLimit": 1,
                    "explanation": "Local authorities are trying to get an award from UNESCO to declare Silbo Gomero something that should be preserved.",
                    "evidence": {"sectionId": "p2", "ref": "8",
                                 "quote": "trying to get an award from the organisation to declare [Silbo Gomero] as something that should be preserved for humanity"},
                },
            ],
        },
    ]

    # ── Passage 3: Environmental practices of big businesses ─────────────────
    p3_body  = extract_between(ocr, "Environmental practices of big businesses\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g6",
            "type": "completion",
            "label": "Questions 27–31",
            "instructions": "Complete the summary using the list of words, A–I, below. Write the correct letter, A–I, in boxes on your answer sheet.",
            "summaryTitle": "Big businesses",
            "summaryText": "Many big businesses today are prepared to harm people and the environment in order to make money, and they appear to have no {27}. Lack of {28} by governments and lack of public {29} lead to environmental problems such as {30} or the destruction of {31}.",
            "wordBank": [
                {"key": "A", "text": "funding"},
                {"key": "B", "text": "trees"},
                {"key": "C", "text": "rare species"},
                {"key": "D", "text": "moral standards"},
                {"key": "E", "text": "regulation"},
                {"key": "F", "text": "involvement"},
                {"key": "G", "text": "flooding"},
                {"key": "H", "text": "overfishing"},
                {"key": "I", "text": "worker support"},
            ],
            "questions": [
                {
                    "number": 27,
                    "prompt": "",
                    "answer": "D",
                    "explanation": "Businesses may maximise money by damaging the environment — they appear to have no moral standards.",
                    "evidence": {"sectionId": "p3", "ref": "1",
                                 "quote": "a business may maximize the amount of money it makes, at least in the short term, by damaging the environment and hurting people"},
                },
                {
                    "number": 28,
                    "prompt": "",
                    "answer": "E",
                    "explanation": "Government regulation is needed — when it is ineffective, dirty businesses can out-compete clean ones.",
                    "evidence": {"sectionId": "p3", "ref": "1",
                                 "quote": "if government regulation is ineffective and if the public doesn't care"},
                },
                {
                    "number": 29,
                    "prompt": "",
                    "answer": "F",
                    "explanation": "The public's involvement (through suing, buying sustainably, pressuring governments) drives environmental improvement.",
                    "evidence": {"sectionId": "p3", "ref": "4",
                                 "quote": "it is the public, either directly or through its politicians, that has the power to make such destructive policies unprofitable"},
                },
                {
                    "number": 30,
                    "prompt": "",
                    "answer": "H",
                    "explanation": "Unmanaged fisheries without quotas lead to overfishing.",
                    "evidence": {"sectionId": "p3", "ref": "1",
                                 "quote": "fishermen in an unmanaged fishery without quotas"},
                },
                {
                    "number": 31,
                    "prompt": "",
                    "answer": "B",
                    "explanation": "International logging companies destroy tropical rainforest trees.",
                    "evidence": {"sectionId": "p3", "ref": "1",
                                 "quote": "international logging companies with short-term leases on tropical rainforest land"},
                },
            ],
        },
        {
            "id": "g7",
            "type": "multiple_choice",
            "label": "Questions 32–34",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {
                    "number": 32,
                    "prompt": "The main idea of the third paragraph is that environmental damage",
                    "options": [
                        {"key": "A", "text": "requires political action if it is to be stopped."},
                        {"key": "B", "text": "is the result of ignorance on the part of the public."},
                        {"key": "C", "text": "could be prevented by the action of ordinary people."},
                        {"key": "D", "text": "can only be stopped by educating business leaders."},
                    ],
                    "answer": "C",
                    "explanation": "Paragraph 3 argues that the public has ultimate responsibility — they have the power to make destructive policies unprofitable.",
                    "evidence": {"sectionId": "p3", "ref": "3",
                                 "quote": "it is the public, either directly or through its politicians, that has the power to make such destructive policies unprofitable and illegal"},
                },
                {
                    "number": 33,
                    "prompt": "In the fourth paragraph, the writer describes ways in which the public can",
                    "options": [
                        {"key": "A", "text": "reduce their own individual impact on the environment."},
                        {"key": "B", "text": "learn more about the impact of business on the environment."},
                        {"key": "C", "text": "raise awareness of the effects of specific environmental disasters."},
                        {"key": "D", "text": "influence the environmental policies of businesses and governments."},
                    ],
                    "answer": "D",
                    "explanation": "Paragraph 4 lists ways the public can sue businesses, prefer sustainable products, and press governments to enforce laws.",
                    "evidence": {"sectionId": "p3", "ref": "4",
                                 "quote": "pressing their governments to pass and enforce laws and regulations requiring good environmental practices"},
                },
                {
                    "number": 34,
                    "prompt": "What pressure was exerted by big business in the case of the disease BSE?",
                    "options": [
                        {"key": "A", "text": "Meat packers stopped supplying hamburgers to fast-food chains."},
                        {"key": "B", "text": "A fast-food company forced their meat suppliers to follow the law."},
                        {"key": "C", "text": "Meat packers persuaded the government to reduce their expenses."},
                        {"key": "D", "text": "A fast-food company encouraged the government to introduce legislation."},
                    ],
                    "answer": "B",
                    "explanation": "A major fast-food company made the same demands as the FDA, and the meat industry complied within weeks.",
                    "evidence": {"sectionId": "p3", "ref": "5",
                                 "quote": "when a major fast-food company then made the same demands after customer purchases of its hamburgers plummeted, the meat industry complied within weeks"},
                },
            ],
        },
        {
            "id": "g8",
            "type": "yes_no_notgiven",
            "label": "Questions 35–39",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {
                    "number": 35,
                    "prompt": "The public should be prepared to fund good environmental practices.",
                    "answer": "YES",
                    "explanation": "The writer says the public must accept the necessity for higher prices to cover the added costs of sound environmental practices.",
                    "evidence": {"sectionId": "p3", "ref": "6",
                                 "quote": "the public must accept the necessity for higher prices for products to cover the added costs, if any, of sound environmental practices"},
                },
                {
                    "number": 36,
                    "prompt": "There is a contrast between the moral principles of different businesses.",
                    "answer": "NOT GIVEN",
                    "explanation": "The passage discusses moral principles in business generally but does not compare different businesses' moral standards.",
                    "evidence": {"sectionId": "p3", "ref": "6",
                                 "quote": "the belief that businesses should act in accordance with moral principles"},
                },
                {
                    "number": 37,
                    "prompt": "It is important to make a clear distinction between acceptable and unacceptable behaviour.",
                    "answer": "NO",
                    "explanation": "The writer explicitly says his conclusion is not a moralistic one about who is right or wrong.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "My conclusion is not a moralistic one about who is right or wrong, admirable or selfish"},
                },
                {
                    "number": 38,
                    "prompt": "The public have successfully influenced businesses in the past.",
                    "answer": "YES",
                    "explanation": "In the past, businesses have changed when the public came to expect and require different behaviour.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "In the past, businesses have changed when the public came to expect and require different behavior"},
                },
                {
                    "number": 39,
                    "prompt": "In the future, businesses will show more concern for the environment.",
                    "answer": "NOT GIVEN",
                    "explanation": "The writer predicts changes in public attitudes will be essential, but does not claim businesses will definitely show more concern.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "changes in public attitudes will be essential for changes in businesses' environmental practices"},
                },
            ],
        },
        {
            "id": "g9",
            "type": "multiple_choice",
            "label": "Question 40",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {
                    "number": 40,
                    "prompt": "What would be the best subheading for this passage?",
                    "options": [
                        {"key": "A", "text": "Will the world survive the threat caused by big businesses?"},
                        {"key": "B", "text": "How can big businesses be encouraged to be less driven by profit?"},
                        {"key": "C", "text": "What environmental dangers are caused by the greed of businesses?"},
                        {"key": "D", "text": "Are big businesses to blame for the damage they cause the environment?"},
                    ],
                    "answer": "D",
                    "explanation": "The passage argues that ultimate responsibility lies with the public, not businesses — questioning who is really to blame.",
                    "evidence": {"sectionId": "p3", "ref": "7",
                                 "quote": "the conclusion that the public has the ultimate responsibility for the behavior of even the biggest businesses"},
                },
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "The return of the huarango", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Silbo Gomero – the whistle 'language' of the Canary Islands", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Environmental practices of big businesses", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(4, sections, "c15t4r")


# ─────────────────────────────────────────────────────────────────────────────
# main
# ─────────────────────────────────────────────────────────────────────────────

def main():
    arg = sys.argv[1] if len(sys.argv) > 1 else "all"
    builders = {1: build_test1, 2: build_test2, 3: build_test3, 4: build_test4}
    targets = list(range(1, 5)) if arg == "all" else [int(arg)]
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    for n in targets:
        sql = builders[n]()
        out = OUT_DIR / f"cambridge15-test{n}-reading.sql"
        out.write_text(sql, encoding="utf-8")
        print(f"Wrote {out}")


if __name__ == "__main__":
    main()
