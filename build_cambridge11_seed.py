"""
Build SQL seed files for Cambridge IELTS 11 reading tests.

Reads passage bodies from OCR text files, combines with hardcoded question
metadata, and writes one SQL file per test into supabase/.

Usage:
    python build_cambridge11_seed.py [1|2|3|4|all]

Outputs:
    supabase/cambridge11-test1-reading.sql
    supabase/cambridge11-test2-reading.sql
    supabase/cambridge11-test3-reading.sql
    supabase/cambridge11-test4-reading.sql
"""

import json
import pathlib
import re
import sys

OCR_BASE = pathlib.Path("ocr_output/cambridge_11")
OUT_DIR  = pathlib.Path("supabase")

# ─────────────────────────────────────────────────────────────────────────────
# OCR parsing helpers
# ─────────────────────────────────────────────────────────────────────────────

def load_ocr(test_num: int) -> str:
    path = OCR_BASE / f"test{test_num}_reading" / "extracted_text.txt"
    return path.read_text(encoding="utf-8")


def extract_between(text: str, start_marker: str, end_marker: str) -> str:
    """Return text found between first occurrence of start_marker and end_marker."""
    s = text.find(start_marker)
    if s == -1:
        return ""
    s += len(start_marker)
    e = text.find(end_marker, s)
    if e == -1:
        return text[s:].strip()
    return text[s:e].strip()


def clean_para(t: str) -> str:
    """Normalise whitespace in a paragraph."""
    return re.sub(r"\s+", " ", t).strip()


def parse_plain_paras(body: str) -> list[dict]:
    """
    Split plain-prose passage into numbered paragraphs.

    pypdf produces word-wrapped output with single newlines between lines and
    no blank lines between paragraphs.  We detect paragraph boundaries by the
    fact that the LAST line of each paragraph is noticeably shorter than the
    typical (full-width) line, and ends with sentence-ending punctuation.
    """
    raw_lines = body.split("\n")
    # Strip page-header lines and blank lines
    lines = []
    for ln in raw_lines:
        ln = ln.strip()
        if not ln or re.match(r"^=== PAGE \d+ ===$", ln):
            continue
        lines.append(ln)

    if not lines:
        return []

    # Compute the "typical" (full-width) line length as the 75th percentile
    lengths = sorted(len(l) for l in lines)
    p75 = lengths[int(len(lengths) * 0.75)]
    # Use 90% of p75 so we catch even nearly-full-width paragraph-final lines.
    # Lines ending with ? or ! are always treated as paragraph-final regardless of length,
    # since rhetorical/exclamatory sentences virtually always close a paragraph in academic text.
    SHORT = max(p75 * 0.90, 40)
    PUNCT_SHORT = re.compile(r"[.)\]\"’]$")  # punctuation needing short-line test
    PUNCT_ALWAYS = re.compile(r"[?!]$")              # always paragraph-final

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

    # Flush any remaining lines (paragraph without sentence-ending punctuation)
    if current:
        text = clean_para(" ".join(current))
        if text:
            paras.append({"ref": str(n), "text": text})

    return paras


def parse_lettered_paras(body: str, letters: str) -> list[dict]:
    """
    Split passage into lettered paragraphs.
    Handles both:
      - bare letter marker: lone 'A', 'B', ...
      - number-then-letter (heading-box passages): '14\\nA', '15\\nB', ...
    Strips any numeric heading-box lines that precede the letter.
    """
    # Remove heading-box numbers: lines that are purely digits
    cleaned = re.sub(r"(?m)^\d+\s*$", "", body)
    paras = []
    for letter in letters:
        # Match a lone letter on its own line (possibly preceded by whitespace)
        pat = rf"(?m)^{letter}\s*$"
        m = re.search(pat, cleaned)
        if not m:
            continue
        start = m.end()
        # Find the next letter marker
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
        f"  'Cambridge IELTS 11',\n"
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

    # ── Passage 1: Crop-growing skyscrapers ──────────────────────────────────
    p1_body = extract_between(ocr, "Crop-growing skyscrapers\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–7",
            "instructions": "Complete the sentences below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "formTitle": "Indoor farming",
            "questions": [
                {"number": 1, "prompt": "Some food plants, including _______ are already grown indoors.",
                 "answer": ["tomatoes"], "wordLimit": 2,
                 "explanation": "Hothouse production of tomatoes and other produce has been in vogue for some time.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "the concept of indoor farming is not new, since hothouse production of tomatoes"}},
                {"number": 2, "prompt": "Vertical farms would be located in _______, meaning that there would be less need to take them long distances to customers.",
                 "answer": ["urban centres"], "wordLimit": 2,
                 "explanation": "Situated in the heart of urban centres, they would drastically reduce the amount of transportation.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "Situated in the heart of urban centres, they would drastically reduce the amount of transportation required to bring food to consumers"}},
                {"number": 3, "prompt": "Vertical farms could use methane from plants and animals to produce _______",
                 "answer": ["energy"], "wordLimit": 2,
                 "explanation": "It would return energy to the grid via methane generation from composting nonedible parts of plants.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "it would return energy to the grid via methane generation from composting nonedible parts of plants"}},
                {"number": 4, "prompt": "The consumption of _______ would be cut because agricultural vehicles would be unnecessary.",
                 "answer": ["fossil fuel"], "wordLimit": 2,
                 "explanation": "It would also dramatically reduce fossil fuel use, by cutting out the need for tractors, ploughs and shipping.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "dramatically reduce fossil fuel use, by cutting out the need for tractors, ploughs and shipping"}},
                {"number": 5, "prompt": "The fact that vertical farms would need _______ light is a disadvantage.",
                 "answer": ["artificial"], "wordLimit": 2,
                 "explanation": "A major drawback of vertical farming, however, is that the plants would require artificial light.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "A major drawback of vertical farming, however, is that the plants would require artificial light"}},
                {"number": 6, "prompt": "One form of vertical farming involves planting in _______ which are not fixed.",
                 "answer": ["stacked trays"], "wordLimit": 2,
                 "explanation": "One variation on vertical farming is to grow plants in stacked trays that move on rails.",
                 "evidence": {"sectionId": "p1", "ref": "7", "quote": "grow plants in stacked trays that move on rails"}},
                {"number": 7, "prompt": "The most probable development is that food will be grown on _______ in towns and cities.",
                 "answer": ["urban rooftops", "rooftops"], "wordLimit": 2,
                 "explanation": "Most experts believe it is far more likely that we will simply use the space available on urban rooftops.",
                 "evidence": {"sectionId": "p1", "ref": "8", "quote": "far more likely that we will simply use the space available on urban rooftops"}},
            ],
        },
        {
            "id": "g2",
            "type": "true_false_notgiven",
            "label": "Questions 8–13",
            "instructions": "Do the following statements agree with the information given in Reading Passage 1?",
            "questions": [
                {"number": 8, "prompt": "Methods for predicting the Earth's population have recently changed.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage gives population predictions but does not discuss changes to prediction methods.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "By the year 2050, nearly 80% of the Earth's population will live in urban centres"}},
                {"number": 9, "prompt": "Human beings are responsible for some of the destruction to food-producing land.",
                 "answer": "TRUE",
                 "explanation": "The passage states humans despoiled most of the land they worked.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "we despoiled most of the land we worked, often turning verdant, natural ecozones into semi-arid deserts"}},
                {"number": 10, "prompt": "The crops produced in vertical farms will depend on the season.",
                 "answer": "FALSE",
                 "explanation": "Crops would be produced all year round in artificially controlled conditions.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "crops would be produced all year round, as they would be kept in artificially controlled, optimum growing conditions"}},
                {"number": 11, "prompt": "Some damage to food crops is caused by climate change.",
                 "answer": "TRUE",
                 "explanation": "Massive floods, long droughts, hurricanes and severe monsoons destroy millions of tons of valuable crops due to a rapidly changing climate.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "Massive floods, long droughts, hurricanes and severe monsoons take their toll each year, destroying millions of tons of valuable crops"}},
                {"number": 12, "prompt": "Fertilisers will be needed for certain crops in vertical farms.",
                 "answer": "FALSE",
                 "explanation": "All food could be grown organically, eliminating the need for herbicides, pesticides and fertilisers.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "eliminating the need for herbicides, pesticides and fertilisers"}},
                {"number": 13, "prompt": "Vertical farming will make plants less likely to be affected by infectious diseases.",
                 "answer": "TRUE",
                 "explanation": "The system would greatly reduce the incidence of many infectious diseases acquired at the agricultural interface.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "The system would greatly reduce the incidence of many infectious diseases that are acquired at the agricultural interface"}},
            ],
        },
    ]

    # ── Passage 2: The Falkirk Wheel ─────────────────────────────────────────
    p2_body = extract_between(ocr, "The Falkirk Wheel\n", "PART 2 — QUESTIONS")
    p2_paras = parse_plain_paras(p2_body)

    p2_groups = [
        {
            "id": "g3",
            "type": "true_false_notgiven",
            "label": "Questions 14–19",
            "instructions": "Do the following statements agree with the information given in Reading Passage 2?",
            "questions": [
                {"number": 14, "prompt": "The Falkirk Wheel has linked the Forth & Clyde Canal with the Union Canal for the first time in their history.",
                 "answer": "FALSE",
                 "explanation": "The two canals had been historically joined by 11 locks; the link was broken in 1933.",
                 "evidence": {"sectionId": "p2", "ref": "2", "quote": "the two canals had been joined near the town of Falkirk by a sequence of 11 locks"}},
                {"number": 15, "prompt": "There was some opposition to the design of the Falkirk Wheel at first.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage does not mention any opposition to the design.",
                 "evidence": {"sectionId": "p2", "ref": "3", "quote": "Numerous ideas were submitted for the project"}},
                {"number": 16, "prompt": "The Falkirk Wheel was initially put together at the location where its components were manufactured.",
                 "answer": "TRUE",
                 "explanation": "The parts were constructed and assembled at Butterley Engineering's Steelworks in Derbyshire.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "all constructed and assembled, like one giant toy building set, at Butterley Engineering’s Steelworks in Derbyshire"}},
                {"number": 17, "prompt": "The Falkirk Wheel is the only boat lift in the world which has steel sections bolted together by hand.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage states sections were bolted by hand but does not claim it is the only such boat lift.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "each bolt was hand-tightened"}},
                {"number": 18, "prompt": "The weight of the gondolas varies according to the size of boat being carried.",
                 "answer": "FALSE",
                 "explanation": "The gondolas always weigh the same because floating objects displace their own weight in water.",
                 "evidence": {"sectionId": "p2", "ref": "5", "quote": "These gondolas always weigh the same, whether or not they are carrying boats"}},
                {"number": 19, "prompt": "The construction of the Falkirk Wheel site took into account the presence of a nearby ancient monument.",
                 "answer": "TRUE",
                 "explanation": "The Wheel could not be built to the full 35 m owing to the presence of the Antonine Wall.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "owing to the presence of the historically important Antonine Wall"}},
            ],
        },
        {
            "id": "g4",
            "type": "short_answer",
            "label": "Questions 20–26",
            "instructions": "Label the diagram below. Choose ONE WORD from the passage for each answer.",
            "diagramTitle": "How a boat is lifted on the Falkirk Wheel",
            "questions": [
                {"number": 20, "prompt": "A pair of _______ are lifted in order to shut out water from canal basin",
                 "answer": ["gates"], "wordLimit": 1,
                 "explanation": "Two hydraulic steel gates are raised to seal the gondola from the canal water.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "Two hydraulic steel gates are raised, so as to seal the gondola off from the water in the canal basin"}},
                {"number": 21, "prompt": "A _______ is taken out, enabling Wheel to rotate",
                 "answer": ["clamp"], "wordLimit": 1,
                 "explanation": "A hydraulic clamp is removed, allowing the Wheel to turn.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "A hydraulic clamp, which prevents the arms of the Wheel moving while the gondola is docked, is removed"}},
                {"number": 22, "prompt": "Hydraulic motors drive _______",
                 "answer": ["axle"], "wordLimit": 1,
                 "explanation": "An array of ten hydraulic motors rotates the central axle.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "an array of ten hydraulic motors then begins to rotate the central axle"}},
                {"number": 23, "prompt": "A range of different-sized _______ ensures boat keeps upright",
                 "answer": ["cogs"], "wordLimit": 1,
                 "explanation": "Two eight-metre-wide cogs orbit a fixed inner cog, keeping gondolas level.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "Two eight-metre-wide cogs orbit a fixed inner cog"}},
                {"number": 24, "prompt": "Boat reaches top Wheel, then moves directly onto _______",
                 "answer": ["aqueduct"], "wordLimit": 1,
                 "explanation": "When the gondola reaches the top, the boat passes straight onto the aqueduct.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "the boat passes straight onto the aqueduct situated 24 metres above the canal basin"}},
                {"number": 25, "prompt": "Boat travels through tunnel beneath Roman _______",
                 "answer": ["wall"], "wordLimit": 1,
                 "explanation": "Boats travel under the Antonine Wall via a tunnel.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "Boats travel under this wall via a tunnel"}},
                {"number": 26, "prompt": "_______ raise boat 11 m to level of Union Canal",
                 "answer": ["locks"], "wordLimit": 1,
                 "explanation": "The remaining 11 metres of lift is achieved by a pair of locks.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "The remaining 11 metres of lift needed to reach the Union Canal is achieved by means of a pair of locks"}},
            ],
        },
    ]

    # ── Passage 3: Reducing the Effects of Climate Change ────────────────────
    p3_body = extract_between(ocr, "Reducing the Effects of Climate Change\n", "PART 3 — QUESTIONS")
    p3_paras = parse_lettered_paras(p3_body, "ABCDEFGH")

    p3_groups = [
        {
            "id": "g5",
            "type": "matching",
            "label": "Questions 27–29",
            "instructions": "The Reading Passage has eight paragraphs, A–H. Which paragraph contains the following information?",
            "optionsLabel": "Paragraphs",
            "options": [{"key": l, "text": f"Paragraph {l}"} for l in "ABCDEFGH"],
            "questions": [
                {"number": 27, "prompt": "mention of a geo-engineering project based on an earlier natural phenomenon",
                 "answer": "D",
                 "explanation": "Paragraph D describes aerosol sprays modelled on the Mount Pinatubo volcanic explosion.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "The idea is modelled on historic volcanic explosions, such as that of Mount Pinatubo"}},
                {"number": 28, "prompt": "an example of a successful use of geo-engineering",
                 "answer": "B",
                 "explanation": "Paragraph B describes Moscow MayDay parades held under clear blue skies after cloud dispersal.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "For decades, MayDay parades in Moscow have taken place under clear blue skies, aircraft having deposited dry ice"}},
                {"number": 29, "prompt": "a common definition of geo-engineering",
                 "answer": "A",
                 "explanation": "Paragraph A defines geo-engineering as the intentional large-scale manipulation of the environment.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "geo-engineering — a term which generally refers to the intentional large-scale manipulation of the environment"}},
            ],
        },
        {
            "id": "g6",
            "type": "short_answer",
            "label": "Questions 30–36",
            "instructions": "Complete the table below. Choose ONE WORD from the passage for each answer.",
            "tableTitle": "GEO-ENGINEERING PROJECTS",
            "questions": [
                {"number": 30, "prompt": "put a large number of tiny spacecraft into orbit far above Earth – to create a _______ that would reduce the amount of light reaching Earth",
                 "answer": ["sunshade"], "wordLimit": 1,
                 "explanation": "Roger Angel's scheme would form a transparent, sunlight-refracting sunshade.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "form a transparent, sunlight-refracting sunshade in an orbit 1.5 million km above the Earth"}},
                {"number": 31, "prompt": "place _______ in the sea – to encourage algae to form",
                 "answer": ["iron"], "wordLimit": 1,
                 "explanation": "Depositing iron in the ocean stimulates the growth of algae.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "depositing iron in the ocean to stimulate the growth of algae"}},
                {"number": 32, "prompt": "place iron in the sea – to encourage _______ to form",
                 "answer": ["algae"], "wordLimit": 1,
                 "explanation": "Iron deposited in the ocean stimulates the growth of algae.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "depositing iron in the ocean to stimulate the growth of algae"}},
                {"number": 33, "prompt": "release aerosol sprays into the stratosphere – to create _______ that would reduce the amount of light reaching Earth",
                 "answer": ["clouds"], "wordLimit": 1,
                 "explanation": "Sulphur aerosols would cause sulphur dioxide to form clouds, leading to global dimming.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "sulphur dioxide would form clouds, which would, in turn, lead to a global dimming"}},
                {"number": 34, "prompt": "fix strong _______ to Greenland ice sheets – to prevent icebergs moving into the sea",
                 "answer": ["cables"], "wordLimit": 1,
                 "explanation": "Scientists have scrutinised preserving Greenland ice sheets with reinforced high-tension cables.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "preserve the ice sheets of Greenland with reinforced high-tension cables"}},
                {"number": 35, "prompt": "plant trees in Russian Arctic that would lose their leaves in winter – to allow the _______ to reflect radiation",
                 "answer": ["snow"], "wordLimit": 1,
                 "explanation": "Birches shed their leaves in winter, enabling radiation to be reflected by the snow.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "birches would shed their leaves in winter, thus enabling radiation to be reflected by the snow"}},
                {"number": 36, "prompt": "change the direction of _______ – to bring more cold water into ice-forming areas",
                 "answer": ["rivers"], "wordLimit": 1,
                 "explanation": "Re-routing Russian rivers would increase cold water flow to ice-forming areas.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "Re-routing Russian rivers to increase cold water flow to ice-forming areas"}},
            ],
        },
        {
            "id": "g7",
            "type": "matching",
            "label": "Questions 37–40",
            "instructions": "Look at the following statements and the list of scientists below. Match each statement with the correct scientist, A–D.",
            "optionsLabel": "List of Scientists",
            "options": [
                {"key": "A", "text": "Roger Angel"},
                {"key": "B", "text": "Phil Rasch"},
                {"key": "C", "text": "Dan Lunt"},
                {"key": "D", "text": "Martin Sommerkorn"},
            ],
            "questions": [
                {"number": 37, "prompt": "The effects of geo-engineering may not be long-lasting.",
                 "answer": "B",
                 "explanation": "Rasch says the planet would return to its pre-engineered condition very rapidly if geo-engineering ended.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "the planet would return to its pre-engineered condition very rapidly, and probably within ten to twenty years"}},
                {"number": 38, "prompt": "Geo-engineering is a topic worth exploring.",
                 "answer": "D",
                 "explanation": "Sommerkorn says we shouldn't exclude thinking thoroughly about geo-engineering and its possibilities.",
                 "evidence": {"sectionId": "p3", "ref": "H", "quote": "we shouldn’t exclude thinking thoroughly about this topic and its possibilities"}},
                {"number": 39, "prompt": "It may be necessary to limit the effectiveness of geo-engineering projects.",
                 "answer": "C",
                 "explanation": "Lunt says Angel's project would have to operate at half strength to avoid overshooting.",
                 "evidence": {"sectionId": "p3", "ref": "G", "quote": "Angel’s project would have to operate at half strength"}},
                {"number": 40, "prompt": "Research into non-fossil-based fuels cannot be replaced by geo-engineering.",
                 "answer": "A",
                 "explanation": "Angel says his plan is 'no substitute for developing renewable energy: the only permanent solution'.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "no substitute for developing renewable energy: the only permanent solution"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Reading Passage 1", "heading": "Crop-growing skyscrapers",
         "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Reading Passage 2", "heading": "The Falkirk Wheel",
         "subheading": "A unique engineering achievement",
         "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Reading Passage 3", "heading": "Reducing the Effects of Climate Change",
         "subheading": "Mark Rowe reports on the increasingly ambitious geo-engineering projects being explored by scientists",
         "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(1, sections, "json1")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 2 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test2() -> str:
    ocr = load_ocr(2)

    # ── Passage 1: Raising the Mary Rose ─────────────────────────────────────
    p1_body = extract_between(ocr, "Raising the Mary Rose\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "true_false_notgiven",
            "label": "Questions 1–4",
            "instructions": "Do the following statements agree with the information given in Reading Passage 1?",
            "questions": [
                {"number": 1, "prompt": "There is some doubt about what caused the Mary Rose to sink.",
                 "answer": "TRUE",
                 "explanation": "Accounts of what happened to the ship vary; witnesses give different explanations.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "Accounts of what happened to the ship vary: while witnesses agree that she was not hit by the French, some maintain that she was outdated, overladen"}},
                {"number": 2, "prompt": "The Mary Rose was the only ship to sink in the battle of 19 July 1545.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions the Mary Rose sank but does not say it was the only ship to sink.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "Among the English vessels was a warship by the name of Mary Rose"}},
                {"number": 3, "prompt": "Most of one side of the Mary Rose lay undamaged under the sea.",
                 "answer": "TRUE",
                 "explanation": "Nearly all of the starboard half survived intact because of the way the ship sank.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "nearly all of the starboard half survived intact"}},
                {"number": 4, "prompt": "Alexander McKee knew that the wreck would contain many valuable historical objects.",
                 "answer": "FALSE",
                 "explanation": "McKee's team found the wreck but were unaware it housed a treasure trove of preserved artefacts.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "were as yet unaware that it also housed a treasure trove of beautifully preserved artefacts"}},
            ],
        },
        {
            "id": "g2",
            "type": "matching",
            "label": "Questions 5–8",
            "instructions": "Look at the following statements and the list of dates below. Match each statement with the correct date, A–G.",
            "optionsLabel": "List of Dates",
            "options": [
                {"key": "A", "text": "1836"}, {"key": "B", "text": "1840"},
                {"key": "C", "text": "1965"}, {"key": "D", "text": "1967"},
                {"key": "E", "text": "1971"}, {"key": "F", "text": "1979"},
                {"key": "G", "text": "1982"},
            ],
            "questions": [
                {"number": 5, "prompt": "A search for the Mary Rose was launched.",
                 "answer": "C",
                 "explanation": "In 1965, Alexander McKee initiated a project called 'Solent Ships'.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "in 1965, military historian and amateur diver Alexander McKee, in conjunction with the British Sub-Aqua Club, initiated a project"}},
                {"number": 6, "prompt": "One person's exploration of the Mary Rose site stopped.",
                 "answer": "B",
                 "explanation": "Deane continued diving on the site intermittently until 1840.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "Deane continued diving on the site intermittently until 1840"}},
                {"number": 7, "prompt": "It was agreed that the hull of the Mary Rose should be raised.",
                 "answer": "G",
                 "explanation": "The operation was not given the go-ahead until January 1982.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "the operation was not given the go-ahead until January 1982, when all the necessary information was available"}},
                {"number": 8, "prompt": "The site of the Mary Rose was found by chance.",
                 "answer": "A",
                 "explanation": "On 16 June 1836, fishermen found their equipment caught on an underwater obstruction, which turned out to be the Mary Rose.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "on 16 June 1836, some fishermen in the Solent found that their equipment was caught on an underwater obstruction"}},
            ],
        },
        {
            "id": "g3",
            "type": "short_answer",
            "label": "Questions 9–13",
            "instructions": "Label the diagram below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "diagramTitle": "Raising the hull of the Mary Rose: Stages one and two",
            "questions": [
                {"number": 9, "prompt": "_______ attached to hull by wires",
                 "answer": ["frame", "lifting frame"], "wordLimit": 2,
                 "explanation": "The hull was attached to a lifting frame via a network of bolts and lifting wires.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "The hull was attached to a lifting frame via a network of bolts and lifting wires"}},
                {"number": 10, "prompt": "_______ to prevent hull being sucked into mud",
                 "answer": ["hydraulic jacks"], "wordLimit": 2,
                 "explanation": "12 hydraulic jacks overcame the problem of the hull being sucked back downwards into the mud.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "The problem of the hull being sucked back downwards into the mud was overcome by using 12 hydraulic jacks"}},
                {"number": 11, "prompt": "legs are placed into _______",
                 "answer": ["stabbing guides"], "wordLimit": 2,
                 "explanation": "Precise positioning was required to locate the legs into the stabbing guides of the lifting cradle.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "precise positioning to locate the legs into the stabbing guides of the lifting cradle"}},
                {"number": 12, "prompt": "hull is lowered into _______",
                 "answer": ["cradle", "lifting cradle"], "wordLimit": 2,
                 "explanation": "The hull was lifted completely clear of the seabed and transferred underwater into the lifting cradle.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "the hull was lifted completely clear of the seabed and transferred underwater into the lifting cradle"}},
                {"number": 13, "prompt": "_______ used as extra cushioning",
                 "answer": ["air bags"], "wordLimit": 2,
                 "explanation": "The lifting cradle was fitted with air bags to provide additional cushioning.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "fitted with air bags to provide additional cushioning for the hull’s delicate timber framework"}},
            ],
        },
    ]

    # ── Passage 2: What destroyed the civilisation of Easter Island? ──────────
    p2_body = extract_between(ocr, "What destroyed the civilisation of Easter Island?\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEFG")

    p2_groups = [
        {
            "id": "g4",
            "type": "matching",
            "label": "Questions 14–20",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Choose the correct heading for each paragraph from the list of headings below.",
            "optionsLabel": "List of Headings",
            "options": [
                {"key": "i",   "text": "Evidence of innovative environment management practices"},
                {"key": "ii",  "text": "An undisputed answer to a question about the moai"},
                {"key": "iii", "text": "The future of the moai statues"},
                {"key": "iv",  "text": "A theory which supports a local belief"},
                {"key": "v",   "text": "The future of Easter Island"},
                {"key": "vi",  "text": "Two opposing views about the Rapanui people"},
                {"key": "vii", "text": "Destruction outside the inhabitants' control"},
                {"key": "viii","text": "How the statues made a situation worse"},
                {"key": "ix",  "text": "Diminishing food resources"},
            ],
            "questions": [
                {"number": 14, "prompt": "Paragraph A",
                 "answer": "ii",
                 "explanation": "Paragraph A discusses the identity of the moai builders, which was in doubt but is now known.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "The identity of the moai builders was in doubt until well into the twentieth century"}},
                {"number": 15, "prompt": "Paragraph B",
                 "answer": "ix",
                 "explanation": "Paragraph B describes how deforestation led to loss of food sources as trees became scarce.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "As trees became scarce and they could no longer construct wooden canoes for fishing, they ate birds"}},
                {"number": 16, "prompt": "Paragraph C",
                 "answer": "viii",
                 "explanation": "Paragraph C explains how the moai accelerated the self-destruction of the island.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "The moai, he thinks, accelerated the self-destruction"}},
                {"number": 17, "prompt": "Paragraph D",
                 "answer": "i",
                 "explanation": "Paragraph D describes Hunt and Lipo's evidence that the Rapanui pioneered sustainable farming.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "the prehistoric Rapanui were pioneers of sustainable farming"}},
                {"number": 18, "prompt": "Paragraph E",
                 "answer": "iv",
                 "explanation": "Paragraph E supports local folklore that the moai were walked upright.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "Hunt and Lipo say, archaeological evidence backs up Rapanui folklore"}},
                {"number": 19, "prompt": "Paragraph F",
                 "answer": "vii",
                 "explanation": "Paragraph F describes how Polynesian rats, not the settlers, caused the loss of the island's trees.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "Hunt and Lipo are convinced that the settlers were not wholly responsible for the loss of the island’s trees"}},
                {"number": 20, "prompt": "Paragraph G",
                 "answer": "vi",
                 "explanation": "Paragraph G contrasts Hunt and Lipo's view of the Rapanui as stewards with Diamond's view of reckless destroyers.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "Rather than a case of abject failure, Rapu Nui is an unlikely story of success"}},
            ],
        },
        {
            "id": "g5",
            "type": "short_answer",
            "label": "Questions 21–24",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryText": "Diamond believes that the Polynesian settlers on Rapa Nui destroyed its forests, cutting down its trees for fuel and clearing land for {21}. Twentieth-century discoveries of pollen prove that Rapu Nui had once been covered in palm forests, which had turned into grassland by the time the Europeans arrived on the island. When the islanders were no longer able to build the {22} they needed to go fishing, they began using the island's {23} as a food source, according to Diamond. Diamond also claims that the moai were built to show the power of the island's chieftains, and that the methods of transporting the statues needed not only a great number of people, but also a great deal of {24}.",
            "summaryTitle": "Jared Diamond's View",
            "questions": [
                {"number": 21, "prompt": "", "answer": ["farming"], "wordLimit": 1,
                 "explanation": "Diamond says islanders cleared the forests for firewood and farming.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "When the islanders cleared the forests for firewood and farming"}},
                {"number": 22, "prompt": "", "answer": ["canoes"], "wordLimit": 1,
                 "explanation": "As trees became scarce they could no longer construct wooden canoes for fishing.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "they could no longer construct wooden canoes for fishing"}},
                {"number": 23, "prompt": "", "answer": ["birds"], "wordLimit": 1,
                 "explanation": "As they could no longer fish, they ate birds.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "they could no longer construct wooden canoes for fishing, they ate birds"}},
                {"number": 24, "prompt": "", "answer": ["wood"], "wordLimit": 1,
                 "explanation": "Diamond thinks they hauled the moai on wooden sledges, requiring a lot of wood.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "Diamond thinks they laid the moai on wooden sledges, hauled over log rails, but that required both a lot of wood and a lot of people"}},
            ],
        },
        {
            "id": "g6",
            "type": "choose_two",
            "label": "Questions 25–26",
            "instructions": "Choose TWO letters, A–E. On what points do Hunt and Lipo disagree with Diamond?",
            "paired": True,
            "options": [
                {"key": "A", "text": "the period when the moai were created"},
                {"key": "B", "text": "how the moai were transported"},
                {"key": "C", "text": "the impact of the moai on Rapanui society"},
                {"key": "D", "text": "how the moai were carved"},
                {"key": "E", "text": "the origins of the people who made the moai"},
            ],
            "questions": [
                {"number": 25, "answer": ["B", "C"],
                 "explanation": "Hunt and Lipo believe the moai were walked (not dragged on sledges) and helped keep peace (not accelerate self-destruction).",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "Hunt and Lipo contend that moai-building was an activity that helped keep the peace between islanders. They also believe that moving the moai required few people and no wood, because they were walked upright"}},
                {"number": 26, "answer": ["B", "C"],
                 "explanation": "Hunt and Lipo believe the moai were walked (not dragged on sledges) and helped keep peace (not accelerate self-destruction).",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "Hunt and Lipo contend that moai-building was an activity that helped keep the peace between islanders"}},
            ],
        },
    ]

    # ── Passage 3: Neuroaesthetics ────────────────────────────────────────────
    p3_body = extract_between(ocr, "Neuroaesthetics\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g7",
            "type": "multiple_choice",
            "label": "Questions 27–30",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {"number": 27, "prompt": "In the second paragraph, the writer refers to a shape-matching test in order to illustrate",
                 "options": [
                     {"key": "A", "text": "the subjective nature of art appreciation."},
                     {"key": "B", "text": "the reliance of modern art on abstract forms."},
                     {"key": "C", "text": "our tendency to be influenced by the opinions of others."},
                     {"key": "D", "text": "a common problem encountered when processing visual data."},
                 ],
                 "answer": "C",
                 "explanation": "People often choose a definitively wrong answer if they see others doing the same — illustrating herd mentality.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "people often choose a definitively wrong answer if they see others doing the same"}},
                {"number": 28, "prompt": "Angelina Hawley-Dolan's findings indicate that people",
                 "options": [
                     {"key": "A", "text": "mostly favour works of art which they know well."},
                     {"key": "B", "text": "hold fixed ideas about what makes a good work of art."},
                     {"key": "C", "text": "are often misled by their initial expectations of a work of art."},
                     {"key": "D", "text": "have the ability to perceive the intention behind works of art."},
                 ],
                 "answer": "D",
                 "explanation": "Volunteers preferred the work of renowned artists even when mislabelled — it seems the viewer can sense the artist's vision.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "It seems that the viewer can sense the artist’s vision in paintings, even if they can’t explain why"}},
                {"number": 29, "prompt": "Results of studies involving Robert Pepperell's pieces suggest that people",
                 "options": [
                     {"key": "A", "text": "can appreciate a painting without fully understanding it."},
                     {"key": "B", "text": "find it satisfying to work out what a painting represents."},
                     {"key": "C", "text": "vary widely in the time they spend looking at paintings."},
                     {"key": "D", "text": "generally prefer representational art to abstract art."},
                 ],
                 "answer": "B",
                 "explanation": "The harder it is to decipher meaning, the more rewarding is the moment of recognition.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "the harder it is to decipher the meaning, the more rewarding is the moment of recognition"}},
                {"number": 30, "prompt": "What do the experiments described in the fifth paragraph suggest about the paintings of Mondrian?",
                 "options": [
                     {"key": "A", "text": "They are more carefully put together than they appear."},
                     {"key": "B", "text": "They can be interpreted in a number of different ways."},
                     {"key": "C", "text": "They challenge our assumptions about shape and colour."},
                     {"key": "D", "text": "They are easier to appreciate than many other abstract works."},
                 ],
                 "answer": "A",
                 "explanation": "Mondrian's works are deceptively simple but eye-tracking studies confirm they are meticulously composed.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "Mondrian’s works are deceptively simple, but eye-tracking studies confirm that they are meticulously composed"}},
            ],
        },
        {
            "id": "g8",
            "type": "short_answer",
            "label": "Questions 31–33",
            "instructions": "Complete the summary using the list of words, A–H, below.",
            "summaryTitle": "Art and the Brain",
            "summaryText": "The discipline of neuroaesthetics aims to bring scientific objectivity to the study of art. Neurological studies of the brain, for example, demonstrate the impact which Impressionist paintings have on our {31}. Alex Forsythe of the University of Liverpool believes many artists give their works the precise degree of {32} which most appeals to the viewer's brain. She also observes that pleasing works of art often contain certain repeated {33} which occur frequently in the natural world.",
            "wordBank": [
                {"key": "A", "text": "interpretation"},
                {"key": "B", "text": "complexity"},
                {"key": "C", "text": "emotions"},
                {"key": "D", "text": "movements"},
                {"key": "E", "text": "skill"},
                {"key": "F", "text": "layout"},
                {"key": "G", "text": "concern"},
                {"key": "H", "text": "images"},
            ],
            "questions": [
                {"number": 31, "prompt": "", "answer": ["emotions"], "wordLimit": 1,
                 "explanation": "Impressionist paintings stimulate the brain's amygdala, which plays a crucial role in our feelings/emotions.",
                 "evidence": {"sectionId": "p3", "ref": "1", "quote": "The blurred imagery of Impressionist paintings seems to stimulate the brain’s amygdala, for instance. Since the amygdala plays a crucial role in our feelings"}},
                {"number": 32, "prompt": "", "answer": ["complexity"], "wordLimit": 1,
                 "explanation": "Forsythe's results suggest many artists use a key level of detail (complexity) to please the brain.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "many artists use a key level of detail to please the brain"}},
                {"number": 33, "prompt": "", "answer": ["images"], "wordLimit": 1,
                 "explanation": "Appealing pieces show signs of 'fractals' – repeated motifs/images recurring in different scales.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "appealing pieces both abstract and representational, show signs of ‘fractals’ – repeated motifs recurring in different scales"}},
            ],
        },
        {
            "id": "g9",
            "type": "yes_no_notgiven",
            "label": "Questions 34–39",
            "instructions": "Do the following statements agree with the views of the writer in Reading Passage 3?",
            "questions": [
                {"number": 34, "prompt": "Forsythe's findings contradicted previous beliefs on the function of 'fractals' in art.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage describes Forsythe's findings but does not say they contradicted previous beliefs.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "Alex Forsythe of the University of Liverpool analysed the visual intricacy of different pieces of art"}},
                {"number": 35, "prompt": "Certain ideas regarding the link between 'mirror neurons' and art appreciation require further verification.",
                 "answer": "YES",
                 "explanation": "The writer states 'The hypothesis will need to be thoroughly tested, however.'",
                 "evidence": {"sectionId": "p3", "ref": "8", "quote": "The hypothesis will need to be thoroughly tested, however"}},
                {"number": 36, "prompt": "People's taste in paintings depends entirely on the current artistic trends of the period.",
                 "answer": "NO",
                 "explanation": "Works best adapted to our visual system may linger even after trends of previous generations are forgotten.",
                 "evidence": {"sectionId": "p3", "ref": "8", "quote": "works that are best adapted to our visual system may be the most likely to linger once the trends of previous generations have been forgotten"}},
                {"number": 37, "prompt": "Scientists should seek to define the precise rules which govern people's reactions to works of art.",
                 "answer": "NO",
                 "explanation": "The writer says 'it would be foolish to reduce art appreciation to a set of scientific laws.'",
                 "evidence": {"sectionId": "p3", "ref": "9", "quote": "it would be foolish to reduce art appreciation to a set of scientific laws"}},
                {"number": 38, "prompt": "Art appreciation should always involve taking into consideration the cultural context in which an artist worked.",
                 "answer": "YES",
                 "explanation": "The writer says we shouldn't underestimate the importance of the style, history, and artistic environment of an artist's time.",
                 "evidence": {"sectionId": "p3", "ref": "9", "quote": "We shouldn’t underestimate the importance of the style of a particular artist, their place in history and the artistic environment of their time"}},
                {"number": 39, "prompt": "It is easier to find meaning in the field of science than in that of art.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage draws a parallel between art and science but does not say one is easier than the other.",
                 "evidence": {"sectionId": "p3", "ref": "10", "quote": "it’s not so different to science, where we are constantly looking for systems and decoding meaning"}},
            ],
        },
        {
            "id": "g10",
            "type": "multiple_choice",
            "label": "Question 40",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {"number": 40, "prompt": "What would be the most appropriate subtitle for the article?",
                 "options": [
                     {"key": "A", "text": "Some scientific insights into how the brain responds to abstract art"},
                     {"key": "B", "text": "Recent studies focusing on the neural activity of abstract artists"},
                     {"key": "C", "text": "A comparison of the neurological bases of abstract and representational art"},
                     {"key": "D", "text": "How brain research has altered public opinion about abstract art"},
                 ],
                 "answer": "A",
                 "explanation": "The passage describes neuroaesthetic studies revealing how the brain responds to art.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "Could the same approach also shed light on abstract twentieth-century pieces"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Reading Passage 1", "heading": "Raising the Mary Rose",
         "subheading": "How a sixteenth-century warship was recovered from the seabed",
         "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Reading Passage 2", "heading": "What destroyed the civilisation of Easter Island?",
         "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Reading Passage 3", "heading": "Neuroaesthetics",
         "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(2, sections, "json2")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 3 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test3() -> str:
    ocr = load_ocr(3)

    # ── Passage 1: The story of silk ─────────────────────────────────────────
    p1_body = extract_between(ocr, "The story of silk\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–9",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "THE STORY OF SILK",
            "formContent": [
                {"kind": "header",   "text": "Early silk production in China"},
                {"kind": "static",   "text": "Around 3000 BC, according to legend:"},
                {"kind": "question", "number": 1, "sub": True},
                {"kind": "question", "number": 2, "sub": True},
                {"kind": "question", "number": 3},
                {"kind": "question", "number": 4},
                {"kind": "question", "number": 5},
                {"kind": "static",   "text": "e.g. farmers' taxes consisted partly of silk", "sub": True},
                {"kind": "static",   "text": "Silk used for many purposes"},
                {"kind": "question", "number": 6, "sub": True},
                {"kind": "header",   "text": "Silk reaches rest of world"},
                {"kind": "question", "number": 7},
                {"kind": "question", "number": 8},
                {"kind": "static",   "text": "Silk production spreads across Middle East and Europe"},
                {"kind": "question", "number": 9},
            ],
            "questions": [
                {"number": 1, "prompt": "silkworm cocoon fell into emperor's wife's _______",
                 "answer": ["tea"], "wordLimit": 1,
                 "explanation": "A cocoon landed in hot tea and started to unravel into a fine thread.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "while she was sipping some tea, one of the cocoons that she had collected landed in the hot tea and started to unravel"}},
                {"number": 2, "prompt": "emperor's wife invented a _______ to pull out silk fibres",
                 "answer": ["reel"], "wordLimit": 1,
                 "explanation": "She devised a special reel to draw the fibres from the cocoon into a single thread.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "She also devised a special reel to draw the fibres from the cocoon into a single thread"}},
                {"number": 3, "prompt": "Only _______ were allowed to produce silk",
                 "answer": ["women"], "wordLimit": 1,
                 "explanation": "Silkworm farming was solely restricted to women.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "silkworm farming was solely restricted to women, and it was they who were responsible for the growing, harvesting and weaving"}},
                {"number": 4, "prompt": "Only _______ were allowed to wear silk",
                 "answer": ["royalty"], "wordLimit": 1,
                 "explanation": "Silk grew into a symbol of status; only royalty were entitled to have clothes made of silk.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "only royalty were entitled to have clothes made of silk"}},
                {"number": 5, "prompt": "Silk used as a form of _______",
                 "answer": ["currency"], "wordLimit": 1,
                 "explanation": "Silk was used as a unit of currency; government officials were paid in silk.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "silk was so prized that it was also used as a unit of currency"}},
                {"number": 6, "prompt": "e.g. evidence found of _______ made from silk around 168 AD",
                 "answer": ["paper"], "wordLimit": 1,
                 "explanation": "The earliest silk paper was found in the tomb of a noble who died around 168 AD.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "The earliest indication of silk paper being used was discovered in the tomb of a noble who is estimated to have died around 168 AD"}},
                {"number": 7, "prompt": "Merchants use Silk Road to take silk westward and bring back _______ and precious metals",
                 "answer": ["wool"], "wordLimit": 1,
                 "explanation": "The Silk Road brought gold, silver and wool to the East.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "taking silk westward and bringing gold, silver and wool to the East"}},
                {"number": 8, "prompt": "550 AD: _______ hide silkworm eggs in canes and take them to Constantinople",
                 "answer": ["monks"], "wordLimit": 1,
                 "explanation": "Monks smuggled silkworm eggs to Constantinople concealed in hollow bamboo walking canes.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "monks working for the Byzantine emperor Justinian smuggle silkworm eggs to Constantinople"}},
                {"number": 9, "prompt": "_______ and other manmade fibres cause decline in silk production",
                 "answer": ["nylon"], "wordLimit": 1,
                 "explanation": "In the twentieth century, new manmade fibres such as nylon started to be used in traditionally silk products.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "new manmade fibres, such as nylon, started to be used in what had traditionally been silk products"}},
            ],
        },
        {
            "id": "g2",
            "type": "true_false_notgiven",
            "label": "Questions 10–13",
            "instructions": "Do the following statements agree with the information in Reading Passage 1?",
            "questions": [
                {"number": 10, "prompt": "Gold was the most valuable material transported along the Silk Road.",
                 "answer": "FALSE",
                 "explanation": "The Silk Road was named after silk, which was considered to be worth more than gold.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "It was named the Silk Road after its most precious commodity, which was considered to be worth more than gold"}},
                {"number": 11, "prompt": "Most tradesmen only went along certain sections of the Silk Road.",
                 "answer": "TRUE",
                 "explanation": "Few merchants travelled the entire route; goods were handled mostly by a series of middlemen.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "Few merchants travelled the entire route; goods were handled mostly by a series of middlemen"}},
                {"number": 12, "prompt": "The Byzantines spread the practice of silk production across the West.",
                 "answer": "FALSE",
                 "explanation": "The Byzantines were as secretive as the Chinese; for centuries the weaving and trading of silk was a strict imperial monopoly.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "The Byzantines were as secretive as the Chinese, however, and for many centuries the weaving and trading of silk fabric was a strict imperial monopoly"}},
                {"number": 13, "prompt": "Silk yarn makes up the majority of silk currently exported from China.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage discusses China's position as the biggest producer but does not specify the proportion of silk yarn.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "China has gradually recaptured its position as the world’s biggest producer and exporter of raw silk and silk yarn"}},
            ],
        },
    ]

    # ── Passage 2: Great Migrations ──────────────────────────────────────────
    p2_body = extract_between(ocr, "Great Migrations\n", "PASSAGE 3")
    # Trim to just before the questions section
    q_marker = "PART 2 — QUESTIONS"
    qi = p2_body.find(q_marker)
    if qi != -1:
        p2_body = p2_body[:qi]
    p2_paras = parse_plain_paras(p2_body)

    p2_groups = [
        {
            "id": "g3",
            "type": "true_false_notgiven",
            "label": "Questions 14–18",
            "instructions": "Do the following statements agree with the information given in Reading Passage 2?",
            "questions": [
                {"number": 14, "prompt": "Local gulls and migrating arctic terns behave in the same way when offered food.",
                 "answer": "FALSE",
                 "explanation": "Local gulls dive voraciously for handouts, while the arctic tern flies on.",
                 "evidence": {"sectionId": "p2", "ref": "2", "quote": "While local gulls will dive voraciously for such handouts, the tern flies on"}},
                {"number": 15, "prompt": "Experts' definitions of migration tend to vary according to their area of study.",
                 "answer": "TRUE",
                 "explanation": "Biologists define migration differently, depending in part on what sorts of animals they study.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "biologists define it differently, depending in part on what sorts of animals they study"}},
                {"number": 16, "prompt": "Very few experts agree that the movement of aphids can be considered migration.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage says aphid movement can be considered migration but does not state how many experts agree.",
                 "evidence": {"sectionId": "p2", "ref": "5", "quote": "So can the movement of aphids when, having depleted the young leaves on one food plant"}},
                {"number": 17, "prompt": "Aphids' journeys are affected by changes in the light that they perceive.",
                 "answer": "TRUE",
                 "explanation": "Aphids become sensitive to blue light (from the sky) for takeoff and yellow light (from young leaves) to land.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "aphids will become sensitive to blue light (from the sky) when it’s time for takeoff on their big journey, and sensitive to yellow light (reflected from tender young leaves) when it’s appropriate to land"}},
                {"number": 18, "prompt": "Dingle's aim is to distinguish between the migratory behaviours of different species.",
                 "answer": "FALSE",
                 "explanation": "Dingle's definition focuses attention on what migration shares across species, not on distinguishing them.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "it focuses attention on what the phenomenon of wildebeest migration shares with the phenomenon of the aphids"}},
            ],
        },
        {
            "id": "g4",
            "type": "matching",
            "label": "Questions 19–22",
            "instructions": "Complete each sentence with the correct ending, A–G, below.",
            "optionsLabel": "Sentence Endings",
            "options": [
                {"key": "A", "text": "be discouraged by difficulties."},
                {"key": "B", "text": "travel on open land where they can look out for predators."},
                {"key": "C", "text": "eat more than they need for immediate purposes."},
                {"key": "D", "text": "be repeated daily."},
                {"key": "E", "text": "ignore distractions."},
                {"key": "F", "text": "be governed by the availability of water."},
                {"key": "G", "text": "follow a straight line."},
            ],
            "questions": [
                {"number": 19, "prompt": "According to Dingle, migratory routes are likely to _______",
                 "answer": "G",
                 "explanation": "Migrations tend to be linear, not zigzaggy.",
                 "evidence": {"sectionId": "p2", "ref": "1", "quote": "they tend to be linear, not zigzaggy"}},
                {"number": 20, "prompt": "To prepare for migration, animals are likely to _______",
                 "answer": "C",
                 "explanation": "Migrations involve special behaviours concerning preparation such as overfeeding.",
                 "evidence": {"sectionId": "p2", "ref": "1", "quote": "they involve special behaviours concerning preparation (such as overfeeding) and arrival"}},
                {"number": 21, "prompt": "During migration, animals are unlikely to _______",
                 "answer": "A",
                 "explanation": "Migrating animals are undeterred by challenges that would turn other animals aside.",
                 "evidence": {"sectionId": "p2", "ref": "1", "quote": "keeps them undistracted by temptations and undeterred by challenges that would turn other animals aside"}},
                {"number": 22, "prompt": "Arctic terns illustrate migrating animals' ability to _______",
                 "answer": "E",
                 "explanation": "The arctic tern takes no notice of food offered along the way — it ignores distractions.",
                 "evidence": {"sectionId": "p2", "ref": "2", "quote": "Right now it is totally focused on the journey; its undivided intent is arrival"}},
            ],
        },
        {
            "id": "g5",
            "type": "short_answer",
            "label": "Questions 23–26",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "The migration of pronghorns",
            "summaryText": "Pronghorns rely on their eyesight and {23} to avoid predators. One particular population's summer habitat is a national park, and their winter home is on the {24} where they go to avoid the danger presented by the snow at that time of year. However, their route between these two areas contains three {25}. One problem is the construction of new homes in a narrow {26} of land on the pronghorns' route.",
            "questions": [
                {"number": 23, "prompt": "", "answer": ["speed"], "wordLimit": 1,
                 "explanation": "Pronghorns are dependent on distance vision and speed to keep safe from predators.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "Pronghorn, dependent on distance vision and speed to keep safe from predators"}},
                {"number": 24, "prompt": "", "answer": ["plains"], "wordLimit": 1,
                 "explanation": "They follow a narrow route down onto the plains, where they wait out the frozen months.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "follows a narrow route from its summer range in the mountains, across a river, and down onto the plains"}},
                {"number": 25, "prompt": "", "answer": ["bottlenecks"], "wordLimit": 1,
                 "explanation": "These pronghorn are notable for the severity of the constriction at three bottlenecks.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "the severity of its constriction at three bottlenecks"}},
                {"number": 26, "prompt": "", "answer": ["corridor", "passageway"], "wordLimit": 1,
                 "explanation": "At one bottleneck, forested hills leave a corridor of open ground only about 150 metres wide.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "leaving a corridor of open ground only about 150 metres wide, filled with private homes"}},
            ],
        },
    ]

    # ── Passage 3: Adventures in mathematical reasoning ───────────────────────
    p3_body = extract_between(ocr, "Adventures in mathematical reasoning’\n",
                              "PART 3 — QUESTIONS")
    p3_paras = parse_lettered_paras(p3_body, "ABCDEFG")

    p3_groups = [
        {
            "id": "g6",
            "type": "matching",
            "label": "Questions 27–34",
            "instructions": "The Reading Passage has seven sections, A–G. Which section contains the following information? NB You may use any letter more than once.",
            "optionsLabel": "Sections",
            "options": [{"key": l, "text": f"Section {l}"} for l in "ABCDEFG"],
            "questions": [
                {"number": 27, "prompt": "a reference to books that assume a lack of mathematical knowledge",
                 "answer": "D",
                 "explanation": "Section D mentions books that go into mathematical procedures but assume the reader is adept in algebra.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "Other scientists have written books to explain their fields to non-scientists, but have necessarily had to omit the mathematics"}},
                {"number": 28, "prompt": "the way in which this is not a typical book about mathematics",
                 "answer": "B",
                 "explanation": "Section B contrasts this book with most books on mathematics written for the general public.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "this book differs from most books on mathematics written for the general public"}},
                {"number": 29, "prompt": "personal examples of being helped by mathematics",
                 "answer": "G",
                 "explanation": "Section G quotes a physician and lawyer describing how mathematics benefited their professional lives.",
                 "evidence": {"sectionId": "p3", "ref": "G", "quote": "A physician wrote, ‘The discipline of analytical thought processes [in mathematics] prepared me extremely well for medical school"}},
                {"number": 30, "prompt": "examples of people who each had abilities that seemed incompatible",
                 "answer": "C",
                 "explanation": "Section C cites a structural engineer who is also an artist, an electrical engineer who is an opera singer, etc.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "I cite a structural engineer who is an artist, an electrical engineer who is an opera singer"}},
                {"number": 31, "prompt": "mention of different focuses of books about mathematics",
                 "answer": "B",
                 "explanation": "Section B describes books that present mathematicians' lives, applications, or procedures.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "Some present the lives of colorful mathematicians. Others describe important applications of mathematics"}},
                {"number": 32, "prompt": "a contrast between reading this book and reading other kinds of publication",
                 "answer": "E",
                 "explanation": "Section E notes that readers will turn pages much more slowly than when reading a novel or newspaper.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "You will turn these pages much more slowly than when reading a novel or a newspaper"}},
                {"number": 33, "prompt": "a claim that the whole of the book is accessible to everybody",
                 "answer": "A",
                 "explanation": "Section A states anyone can understand every step in the reasoning.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "Anyone can understand every step in the reasoning"}},
                {"number": 34, "prompt": "a reference to different categories of intended readers of this book",
                 "answer": "F",
                 "explanation": "Section F describes two types of readers: those turned off by a bad episode and mathematics aficionados.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "I kept in mind two types of readers: those who enjoyed mathematics until they were turned off by an unpleasant episode"}},
            ],
        },
        {
            "id": "g7",
            "type": "short_answer",
            "label": "Questions 35–40",
            "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
            "questions": [
                {"number": 35, "prompt": "Some areas of both music and mathematics are suitable for someone who is a _______",
                 "answer": ["beginner"], "wordLimit": 1,
                 "explanation": "Just as easy parts of music can be played by a beginner, some discoveries in advanced mathematics are accessible to beginners.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "there are some discoveries in advanced mathematics that do not depend on specialized knowledge"}},
                {"number": 36, "prompt": "It is sometimes possible to understand advanced mathematics using no more than a limited knowledge of _______",
                 "answer": ["arithmetic"], "wordLimit": 1,
                 "explanation": "Some discoveries in advanced mathematics may involve, at most, a little arithmetic.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "Instead they may involve, at most, a little arithmetic"}},
                {"number": 37, "prompt": "The writer intends to show that mathematics requires _______ thinking, as well as analytical skills.",
                 "answer": ["intuitive"], "wordLimit": 1,
                 "explanation": "The writer describes mathematics as having a logical, yet intuitive, style of thinking.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "to become familiar with its logical, yet intuitive, style of thinking"}},
                {"number": 38, "prompt": "Some books written by _______ have had to leave out the mathematics that is central to their theories.",
                 "answer": ["scientists"], "wordLimit": 1,
                 "explanation": "Other scientists have written books explaining their fields but necessarily had to omit the mathematics.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "Other scientists have written books to explain their fields to non-scientists, but have necessarily had to omit the mathematics"}},
                {"number": 39, "prompt": "The writer advises non-mathematical readers to perform _______ while reading",
                 "answer": ["experiments"], "wordLimit": 1,
                 "explanation": "It may help to have a pencil and paper ready to check claims and carry out experiments.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "It may help to have a pencil and paper ready to check claims and carry out experiments"}},
                {"number": 40, "prompt": "A lawyer found that studying _______ helped even more than other areas of mathematics in the study of law.",
                 "answer": ["theorems"], "wordLimit": 1,
                 "explanation": "A lawyer attributes success to having learned, through mathematics and in particular theorems, how to analyse complicated principles.",
                 "evidence": {"sectionId": "p3", "ref": "G", "quote": "having learned, through the study of mathematics, and, in particular, theorems, how to analyze complicated principles"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Reading Passage 1", "heading": "The story of silk",
         "subheading": "The history of the world's most luxurious fabric, from ancient China to the present day",
         "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Reading Passage 2", "heading": "Great Migrations",
         "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Reading Passage 3",
         "heading": "Preface to 'How the other half thinks: Adventures in mathematical reasoning'",
         "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(3, sections, "json3")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 4 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test4() -> str:
    ocr = load_ocr(4)

    # ── Passage 1: Research using twins ──────────────────────────────────────
    p1_body = extract_between(ocr, "Research using twins\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "true_false_notgiven",
            "label": "Questions 1–4",
            "instructions": "Do the following statements agree with the information given in Reading Passage 1?",
            "questions": [
                {"number": 1, "prompt": "There may be genetic causes for the differences in how young the skin of identical twins looks.",
                 "answer": "FALSE",
                 "explanation": "Any differences between identical twins must be due to environmental factors, not genetic ones.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "Any differences between them -one twin having younger looking skin, for example – must be due to environmental factors such as less time spent in the sun"}},
                {"number": 2, "prompt": "Twins are at greater risk of developing certain illnesses than non-twins.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage discusses twins as research subjects for disease but does not say they are at greater risk.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "If identical twins are more similar to each other with respect to an ailment than fraternal twins are, then vulnerability to the disease must be rooted at least in part in heredity"}},
                {"number": 3, "prompt": "Bouchard advertised in newspapers for twins who had been separated at birth.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage describes twins visiting Bouchard's lab but does not mention newspaper advertising.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "137 sets of twins eventually visited Thomas Bouchard’s lab in what became known as the Minnesota Study of Twins Reared Apart"}},
                {"number": 4, "prompt": "Epigenetic processes are different from both genetic and environmental processes.",
                 "answer": "TRUE",
                 "explanation": "Epigenetic processes are chemical reactions tied to neither nature nor nurture, representing a 'third component'.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "Epigenetic processes are chemical reactions tied to neither nature nor nurture but representing what researchers have called a ‘third component’"}},
            ],
        },
        {
            "id": "g2",
            "type": "matching",
            "label": "Questions 5–9",
            "instructions": "Look at the following statements and the list of researchers below. Match each statement with the correct researcher, A–C. NB You may use any letter more than once.",
            "optionsLabel": "List of Researchers",
            "options": [
                {"key": "A", "text": "Francis Galton"},
                {"key": "B", "text": "Thomas Bouchard"},
                {"key": "C", "text": "Danielle Reed"},
            ],
            "questions": [
                {"number": 5, "prompt": "invented a term used to distinguish two factors affecting human characteristics",
                 "answer": "A",
                 "explanation": "Francis Galton coined the phrase 'nature and nurture'.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "the English scientist Francis Galton first suggested the approach (and coined the phrase ‘nature and nurture’)"}},
                {"number": 6, "prompt": "expressed the view that the study of epigenetics will increase our knowledge",
                 "answer": "C",
                 "explanation": "Reed says the latest work in epigenetics promises to take our understanding even further.",
                 "evidence": {"sectionId": "p1", "ref": "8", "quote": "Reed adds, the latest work in epigenetics promises to take our understanding even further"}},
                {"number": 7, "prompt": "developed a mathematical method of measuring genetic influences",
                 "answer": "B",
                 "explanation": "Bouchard's approach used a statistical concept called heritability.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "The key to their approach was a statistical concept called heritability"}},
                {"number": 8, "prompt": "pioneered research into genetics using twins",
                 "answer": "A",
                 "explanation": "The idea of using twins to measure heredity dates back to 1875, when Francis Galton first suggested the approach.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "The idea of using twins to measure the influence of heredity dates back to 1875, when the English scientist Francis Galton first suggested the approach"}},
                {"number": 9, "prompt": "carried out research into twins who had lived apart",
                 "answer": "B",
                 "explanation": "Bouchard ran the Minnesota Study of Twins Reared Apart.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "137 sets of twins eventually visited Thomas Bouchard’s lab in what became known as the Minnesota Study of Twins Reared Apart"}},
            ],
        },
        {
            "id": "g3",
            "type": "short_answer",
            "label": "Questions 10–13",
            "instructions": "Complete the summary using the list of words, A–F, below.",
            "summaryTitle": "Epigenetic processes",
            "summaryText": "In epigenetic processes, {10} influence the activity of our genes, for example in creating our internal {11}. The study of epigenetic processes is uncovering a way in which our genes can be affected by our {12}. One example is that if a pregnant rat suffers stress, the new-born rat may later show problems in its {13}.",
            "wordBank": [
                {"key": "A", "text": "nurture"},
                {"key": "B", "text": "organs"},
                {"key": "C", "text": "code"},
                {"key": "D", "text": "chemicals"},
                {"key": "E", "text": "environment"},
                {"key": "F", "text": "behaviour"},
            ],
            "questions": [
                {"number": 10, "prompt": "", "answer": ["chemicals"], "wordLimit": 1,
                 "explanation": "Epigenetic processes are chemical reactions that influence how our genetic code is expressed.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "Epigenetic processes are chemical reactions tied to neither nature nor nurture"}},
                {"number": 11, "prompt": "", "answer": ["organs"], "wordLimit": 1,
                 "explanation": "Epigenetic processes influence how each gene is expressed to build bones, brains and all other parts (organs) of our bodies.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "how our genetic code is expressed: how each gene is strengthened or weakened, even turned on or off, to build our bones, brains and all the other parts of our bodies"}},
                {"number": 12, "prompt": "", "answer": ["environment"], "wordLimit": 1,
                 "explanation": "The environment directly impacts on genes through epigenetic processes.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "a mechanism by which the environment directly impacts on genes"}},
                {"number": 13, "prompt": "", "answer": ["behaviour"], "wordLimit": 1,
                 "explanation": "Stress in a pregnant rat can cause epigenetic changes that lead to behavioural problems in the offspring.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "when a rat experiences stress during pregnancy, it can cause epigenetic changes in a fetus that lead to behavioral problems as the rodent grows up"}},
            ],
        },
    ]

    # ── Passage 2: An Introduction to Film Sound ──────────────────────────────
    p2_body = extract_between(ocr, "An Introduction to Film Sound\n", "PASSAGE 3")
    qi = p2_body.find("PART 2 — QUESTIONS")
    if qi != -1:
        p2_body = p2_body[:qi]
    p2_paras = parse_plain_paras(p2_body)

    p2_groups = [
        {
            "id": "g4",
            "type": "multiple_choice",
            "label": "Questions 14–18",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {"number": 14, "prompt": "In the first paragraph, the writer makes a point that",
                 "options": [
                     {"key": "A", "text": "the director should plan the sound track at an early stage in filming."},
                     {"key": "B", "text": "it would be wrong to overlook the contribution of sound to the artistry of films."},
                     {"key": "C", "text": "the music industry can have a beneficial influence on sound in film."},
                     {"key": "D", "text": "it is important for those working on the sound in a film to have sole responsibility for it."},
                 ],
                 "answer": "B",
                 "explanation": "The writer says we cannot afford to underestimate the importance of film sound.",
                 "evidence": {"sectionId": "p2", "ref": "1", "quote": "we really cannot afford to underestimate the importance of film sound"}},
                {"number": 15, "prompt": "One reason that the writer refers to Humphrey Bogart is to exemplify",
                 "options": [
                     {"key": "A", "text": "the importance of the actor and the character appearing to have similar personalities."},
                     {"key": "B", "text": "the audience's wish that actors are visually appropriate for their roles."},
                     {"key": "C", "text": "the value of the actor having had similar feelings to the character."},
                     {"key": "D", "text": "the audience's preference for dialogue to be as authentic as possible."},
                 ],
                 "answer": "A",
                 "explanation": "Bogart exemplifies how film personality and life personality seem to merge.",
                 "evidence": {"sectionId": "p2", "ref": "2", "quote": "the actor Humphrey Bogart is the character Sam Spade; film personality and life personality seem to merge"}},
                {"number": 16, "prompt": "In the third paragraph, the writer suggests that",
                 "options": [
                     {"key": "A", "text": "audiences are likely to be critical of film dialogue that does not reflect their own experience."},
                     {"key": "B", "text": "film dialogue that appears to be dull may have a specific purpose."},
                     {"key": "C", "text": "filmmakers vary considerably in the skill with which they handle dialogue."},
                     {"key": "D", "text": "the most successful films are those with dialogue of a high quality."},
                 ],
                 "answer": "B",
                 "explanation": "In 2001, little dialogue was banal but served to portray the inadequacy of human responses.",
                 "evidence": {"sectionId": "p2", "ref": "3", "quote": "most of it was banal and of little intrinsic interest. In this way the film-maker was able to portray what Thomas Sobochack"}},
                {"number": 17, "prompt": "What does the writer suggest about Bringing Up Baby?",
                 "options": [
                     {"key": "A", "text": "The plot suffers from the filmmaker's wish to focus on humorous dialogue."},
                     {"key": "B", "text": "The dialogue helps to make it one of the best comedy films ever produced."},
                     {"key": "C", "text": "There is a mismatch between the speed of the dialogue and the speed of actions."},
                     {"key": "D", "text": "The nature of the dialogue emphasises key elements of the film."},
                 ],
                 "answer": "D",
                 "explanation": "Non-stop dialogue underscores the dizzy quality and absurdity of the film and its humour.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "This use of dialogue underscores not only the dizzy quality of the character played by Katherine Hepburn, but also the absurdity of the film itself"}},
                {"number": 18, "prompt": "The writer refers to the 'click' of a door to make the point that realistic sounds",
                 "options": [
                     {"key": "A", "text": "are often used to give the audience a false impression of events in the film."},
                     {"key": "B", "text": "may be interpreted in different ways by different members of the audience."},
                     {"key": "C", "text": "may be modified in order to manipulate the audience's response to the film."},
                     {"key": "D", "text": "tend to be more significant in films presenting realistic situations."},
                 ],
                 "answer": "C",
                 "explanation": "The sound mixer may call attention to the 'click' with an increase in volume to engage the audience in suspense.",
                 "evidence": {"sectionId": "p2", "ref": "5", "quote": "the sound mixer may call attention to the ‘click’ with an increase in volume; this helps to engage the audience in a moment of suspense"}},
            ],
        },
        {
            "id": "g5",
            "type": "true_false_notgiven",
            "label": "Questions 19–23",
            "instructions": "Do the following statements agree with the information given in Reading Passage 2?",
            "questions": [
                {"number": 19, "prompt": "Audiences are likely to be surprised if a film lacks background music.",
                 "answer": "TRUE",
                 "explanation": "Background music has become so ubiquitous as to be noticeable in its absence.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "We are probably all familiar with background music in films, which has become so ubiquitous as to be noticeable in its absence"}},
                {"number": 20, "prompt": "Background music may anticipate a development in a film.",
                 "answer": "TRUE",
                 "explanation": "Background music often foreshadows a change in mood.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "background music often foreshadows a change in mood"}},
                {"number": 21, "prompt": "Background music has more effect on some people than on others.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage does not compare the effect of music on different individuals.",
                 "evidence": {"sectionId": "p2", "ref": "7", "quote": "We are probably all familiar with background music in films"}},
                {"number": 22, "prompt": "Background music may help the audience to make certain connections within the film.",
                 "answer": "TRUE",
                 "explanation": "A musical theme may be repeated at various points in a film to remind the audience of salient motifs.",
                 "evidence": {"sectionId": "p2", "ref": "8", "quote": "Background music may aid viewer understanding by linking scenes"}},
                {"number": 23, "prompt": "Audiences tend to be aware of how the background music is affecting them.",
                 "answer": "FALSE",
                 "explanation": "The effects of sound are often largely subtle and noted by only our subconscious minds.",
                 "evidence": {"sectionId": "p2", "ref": "9", "quote": "The effects of sound are often largely subtle and often are noted by only our subconscious minds"}},
            ],
        },
        {
            "id": "g6",
            "type": "matching",
            "label": "Questions 24–26",
            "instructions": "Complete each sentence with the correct letter below.",
            "optionsLabel": "Sentence Endings",
            "options": [
                {"key": "A", "text": "when the audience listens to the dialogue."},
                {"key": "B", "text": "if the film reflects the audience's own concerns."},
                {"key": "C", "text": "if voice, sound and music are combined appropriately."},
                {"key": "D", "text": "when the director is aware of how the audience will respond."},
                {"key": "E", "text": "when the actor's appearance, voice and moves are consistent with each other."},
            ],
            "questions": [
                {"number": 24, "prompt": "The audience's response to different parts of a film can be controlled _______",
                 "answer": "C",
                 "explanation": "The three tracks must be mixed and balanced to produce the necessary emphases.",
                 "evidence": {"sectionId": "p2", "ref": "1", "quote": "These three tracks must be mixed and balanced so as to produce the necessary emphases which in turn create desired effects"}},
                {"number": 25, "prompt": "The feelings and motivations of characters become clear _______",
                 "answer": "A",
                 "explanation": "Dialogue serves to tell the story and expresses feelings and motivations of characters.",
                 "evidence": {"sectionId": "p2", "ref": "2", "quote": "dialogue serves to tell the story and expresses feelings and motivations of characters as well"}},
                {"number": 26, "prompt": "A character seems to be a real person rather than an actor _______",
                 "answer": "E",
                 "explanation": "When voice textures fit the performer's physiognomy and gestures, a whole and very realistic persona emerges.",
                 "evidence": {"sectionId": "p2", "ref": "3", "quote": "When voice textures fit the performer’s physiognomy and gestures, a whole and very realistic persona emerges"}},
            ],
        },
    ]

    # ── Passage 3: 'This Marvellous Invention' ───────────────────────────────
    p3_body = extract_between(ocr, "‘This Marvellous Invention’\n", "PART 3 — QUESTIONS")
    p3_paras = parse_lettered_paras(p3_body, "ABCDEF")

    p3_groups = [
        {
            "id": "g7",
            "type": "matching",
            "label": "Questions 27–32",
            "instructions": "The Reading Passage has six paragraphs, A–F. Choose the correct heading for paragraphs A–F from the list of headings below.",
            "optionsLabel": "List of Headings",
            "options": [
                {"key": "i",   "text": "Differences between languages highlight their impressiveness"},
                {"key": "ii",  "text": "The way in which a few sounds are organised to convey a huge range of meaning"},
                {"key": "iii", "text": "Why the sounds used in different languages are not identical"},
                {"key": "iv",  "text": "Apparently incompatible characteristics of language"},
                {"key": "v",   "text": "Even silence can be meaningful"},
                {"key": "vi",  "text": "Why language is the most important invention of all"},
                {"key": "vii", "text": "The universal ability to use language"},
            ],
            "questions": [
                {"number": 27, "prompt": "Paragraph A",
                 "answer": "vi",
                 "explanation": "Paragraph A argues language must take pride of place above all other inventions.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "Compared to language, all other inventions pale in significance"}},
                {"number": 28, "prompt": "Paragraph B",
                 "answer": "iv",
                 "explanation": "Paragraph B describes language as extraordinarily sophisticated yet based on ingenious simplicity — apparently incompatible characteristics.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "it is a tool of extraordinary sophistication, yet based on an idea of ingenious simplicity"}},
                {"number": 29, "prompt": "Paragraph C",
                 "answer": "ii",
                 "explanation": "Paragraph C explains how a few haphazard sounds are arranged to create infinite meaning.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "run them through the cogs and wheels of the language machine, let it arrange them in some very special orders"}},
                {"number": 30, "prompt": "Paragraph D",
                 "answer": "vii",
                 "explanation": "Paragraph D describes how the language machine allows just about everybody to use language.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "The language machine allows just about everybody from pre-modern foragers in the subtropical savannah, to post-modern philosophers"}},
                {"number": 31, "prompt": "Paragraph E",
                 "answer": "i",
                 "explanation": "Paragraph E highlights the wonder of languages through exotic features of foreign tongues.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "it is only the estrangement of foreign tongues, with their many exotic and outlandish features, that brings home the wonder of languages design"}},
                {"number": 32, "prompt": "Paragraph F",
                 "answer": "v",
                 "explanation": "Paragraph F explains how even the absence of a sound (silence) can convey meaning in Sumerian.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "even a non-sound, when carefully placed in a particular position, has been invested with a specific function"}},
            ],
        },
        {
            "id": "g8",
            "type": "short_answer",
            "label": "Questions 33–36",
            "instructions": "Complete the summary using the list of words, A–G, below.",
            "summaryTitle": "The importance of language",
            "summaryText": "The wheel is one invention that has had a major impact on {33} aspects of life, but no impact has been as {34} as that of language. Language is very {35}, yet composed of just a small number of sounds. Language appears to be {36} to use. However, its sophistication is often overlooked.",
            "wordBank": [
                {"key": "A", "text": "difficult"},
                {"key": "B", "text": "complex"},
                {"key": "C", "text": "original"},
                {"key": "D", "text": "admired"},
                {"key": "E", "text": "material"},
                {"key": "F", "text": "easy"},
                {"key": "G", "text": "fundamental"},
            ],
            "questions": [
                {"number": 33, "prompt": "", "answer": ["material"], "wordLimit": 1,
                 "explanation": "Other inventions like the wheel may have transformed our material existence.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "Other inventions -the wheel, agriculture, sliced bread – may have transformed our material existence"}},
                {"number": 34, "prompt": "", "answer": ["fundamental"], "wordLimit": 1,
                 "explanation": "Language is the most fundamental invention, since everything depends on it.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "Compared to language, all other inventions pale in significance, since everything we have ever achieved depends on language"}},
                {"number": 35, "prompt": "", "answer": ["complex"], "wordLimit": 1,
                 "explanation": "Language is a tool of extraordinary sophistication (complexity), yet based on a small number of sounds.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "it is a tool of extraordinary sophistication, yet based on an idea of ingenious simplicity"}},
                {"number": 36, "prompt": "", "answer": ["easy"], "wordLimit": 1,
                 "explanation": "The language machine operates apparently without the slightest exertion — it appears easy to use.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "all apparently without the slightest exertion"}},
            ],
        },
        {
            "id": "g9",
            "type": "yes_no_notgiven",
            "label": "Questions 37–40",
            "instructions": "Do the following statements agree with the views of the writer in Reading Passage 3?",
            "questions": [
                {"number": 37, "prompt": "Human beings might have achieved their present position without language.",
                 "answer": "NO",
                 "explanation": "Without language we could never have embarked on our ascent to unparalleled power over other animals.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "Without language, we could never have embarked on our ascent to unparalleled power over all other animals"}},
                {"number": 38, "prompt": "The Port-Royal grammarians did justice to the nature of language.",
                 "answer": "YES",
                 "explanation": "The writer says the Port-Royal grammarians distilled the essence of language and no one has celebrated more eloquently.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "no one since has celebrated more eloquently the magnitude of its achievement"}},
                {"number": 39, "prompt": "A complex idea can be explained more clearly in a sentence than in a single word.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage describes language expressing complex ideas in single words (Turkish example) but does not compare sentences to single words in terms of clarity.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "express in one word what English takes a whole sentence to say"}},
                {"number": 40, "prompt": "The Sumerians were responsible for starting the recording of events.",
                 "answer": "YES",
                 "explanation": "Sumerian is described as spoken by the people who invented writing and thus enabled the documentation of history.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "the people who invented writing and thus enabled the documentation of history"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Reading Passage 1", "heading": "Research using twins",
         "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Reading Passage 2", "heading": "An Introduction to Film Sound",
         "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Reading Passage 3", "heading": "'This Marvellous Invention'",
         "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(4, sections, "json4")


# ─────────────────────────────────────────────────────────────────────────────
# ── Entry point ───────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

BUILDERS = {1: build_test1, 2: build_test2, 3: build_test3, 4: build_test4}

def main():
    arg = sys.argv[1] if len(sys.argv) > 1 else "all"
    tests = list(BUILDERS.keys()) if arg == "all" else [int(arg)]

    OUT_DIR.mkdir(parents=True, exist_ok=True)

    for t in tests:
        print(f"Building Test {t}...", end=" ", flush=True)
        sql = BUILDERS[t]()
        out = OUT_DIR / f"cambridge11-test{t}-reading.sql"
        header = (
            f"-- Cambridge IELTS 11 Academic Reading Test {t}\n"
            f"-- Auto-generated by build_cambridge11_seed.py — do not edit passage text directly.\n"
            f"-- Passage bodies sourced from ocr_output/cambridge_11/test{t}_reading/extracted_text.txt\n\n"
            f"DELETE FROM public.tests\n"
            f"  WHERE skill = 'reading'\n"
            f"    AND book = 'Cambridge IELTS 11'\n"
            f"    AND test_label = 'Test {t}';\n\n"
        )
        out.write_text(header + sql, encoding="utf-8")
        # Quick sanity check
        import re as _re
        q_count = len(_re.findall(r'"number":', sql))
        print(f"OK ({q_count} questions) → {out}")

if __name__ == "__main__":
    main()
