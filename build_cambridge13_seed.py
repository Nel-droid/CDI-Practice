"""
Build SQL seed files for Cambridge IELTS 13 reading tests.

Usage:
    python build_cambridge13_seed.py [1|2|3|4|all]

Outputs:
    supabase/cambridge13-test1-reading.sql
    supabase/cambridge13-test2-reading.sql
    supabase/cambridge13-test3-reading.sql
    supabase/cambridge13-test4-reading.sql
"""

import json
import pathlib
import re
import sys

OCR_BASE = pathlib.Path("ocr_output/cambridge_13")
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
    PUNCT_SHORT  = re.compile(r"[.)\]\"'']$")
    PUNCT_ALWAYS = re.compile(r"[?!]$")

    paras = []
    current: list[str] = []
    n = 1
    for i, line in enumerate(lines):
        current.append(line)
        is_last    = (i == len(lines) - 1)
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
    # Fix common OCR double-letter errors (e.g. "Cc" → "C")
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
    return (
        f"INSERT INTO public.tests "
        f"(skill, book, test_label, variant, duration_seconds, content, published)\n"
        f"VALUES (\n"
        f"  'reading',\n"
        f"  'Cambridge IELTS 13',\n"
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

    # ── Passage 1: Tourism New Zealand ───────────────────────────────────────
    p1_body  = extract_between(ocr, "Case Study: Tourism New Zealand website\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–7",
            "instructions": "Complete the table below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "Section of website",
            "formContent": [
                {"kind": "subheader", "text": "Database of tourism services"},
                {"kind": "static", "text": "easy for tourism-related businesses to get on the list"},
                {"kind": "question", "number": 1},
                {"kind": "question", "number": 2},
                {"kind": "subheader", "text": "Special features on local topics"},
                {"kind": "question", "number": 3},
                {"kind": "question", "number": 4},
                {"kind": "subheader", "text": "Information on driving routes"},
                {"kind": "question", "number": 5},
                {"kind": "subheader", "text": "Travel Planner"},
                {"kind": "question", "number": 6},
                {"kind": "subheader", "text": "'Your Words'"},
                {"kind": "question", "number": 7},
            ],
            "questions": [
                {"number": 1,
                 "prompt": "allowed businesses to _______ regularly",
                 "answer": ["update"], "wordLimit": 1,
                 "explanation": "Participating businesses were able to update the details they gave on a regular basis.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "because participating businesses were able to update the details they gave on a regular basis"}},
                {"number": 2,
                 "prompt": "provided a country-wide evaluation of businesses, including their impact on the _______",
                 "answer": ["environment"], "wordLimit": 1,
                 "explanation": "The scheme evaluated organisations including the effect of each business on the environment.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "the effect of each business on the environment was considered"}},
                {"number": 3,
                 "prompt": "e.g. an interview with a former sports _______",
                 "answer": ["captain"], "wordLimit": 1,
                 "explanation": "One popular feature was an interview with former All Blacks rugby captain Tana Umaga.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "an interview with former New Zealand All Blacks rugby captain Tana Umaga"}},
                {"number": 4,
                 "prompt": "an interactive tour of various locations used in _______",
                 "answer": ["films"], "wordLimit": 1,
                 "explanation": "An interactive journey through locations chosen for blockbuster films.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "an interactive journey through a number of the locations chosen for blockbuster films"}},
                {"number": 5,
                 "prompt": "varied depending on the _______",
                 "answer": ["season"], "wordLimit": 1,
                 "explanation": "Routes were highlighted according to the season.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "highlighting different routes according to the season"}},
                {"number": 6,
                 "prompt": "included a map showing selected places, details of public transport and local _______",
                 "answer": ["accommodation"], "wordLimit": 1,
                 "explanation": "The Travel Planner offered routes and transport options, plus links to accommodation.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "There were also links to accommodation in the area"}},
                {"number": 7,
                 "prompt": "travelers could submit a _______ of their New Zealand travels for possible inclusion on the website",
                 "answer": ["blog"], "wordLimit": 1,
                 "explanation": "The 'Your Words' section let anyone submit a blog of their travels.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "anyone could submit a blog of their New Zealand travels for possible inclusion on the website"}},
            ],
        },
        {
            "id": "g2",
            "type": "true_false_notgiven",
            "label": "Questions 8–13",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 8,
                 "prompt": "The website www.newzealand.com aimed to provide ready-made itineraries and packages for travel companies and individual tourists.",
                 "answer": "FALSE",
                 "explanation": "The website allowed users to CREATE their own itineraries, not provide ready-made ones.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "The website was set up to allow both individuals and travel organisations to create itineraries and travel packages to suit their own needs and interests"}},
                {"number": 9,
                 "prompt": "It was found that most visitors started searching on the website by geographical location.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage says visitors CAN search by location or activity type, but does not state what most visitors actually do first.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "visitors can search for activities not solely by geographical location, but also by the particular nature of the activity"}},
                {"number": 10,
                 "prompt": "According to research, 26% of visitor satisfaction is related to their accommodation.",
                 "answer": "FALSE",
                 "explanation": "The 26% covers both transport AND accommodation together, not accommodation alone.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "transport and accommodation account for the remaining 26%"}},
                {"number": 11,
                 "prompt": "Visitors to New Zealand like to become involved in the local culture.",
                 "answer": "TRUE",
                 "explanation": "Visitors enjoy cultural activities most when they are interactive, such as learning about traditional Maori life.",
                 "evidence": {"sectionId": "p1", "ref": "7", "quote": "visitors enjoy cultural activities most when they are interactive, such as visiting a marae (meeting ground) to learn about traditional Maori life"}},
                {"number": 12,
                 "prompt": "Visitors like staying in small hotels in New Zealand rather than in larger ones.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions small businesses but says nothing about preferences for small vs large hotels.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "even the smallest bed and breakfast address or specialist activity provider could gain a web presence"}},
                {"number": 13,
                 "prompt": "Many visitors feel it is unlikely that they will return to New Zealand after their visit.",
                 "answer": "TRUE",
                 "explanation": "The visit is often seen as a once-in-a-lifetime trip.",
                 "evidence": {"sectionId": "p1", "ref": "8", "quote": "what is often seen as a once-in-a-lifetime visit"}},
            ],
        },
    ]

    # ── Passage 2: Why Being Bored Is Stimulating ────────────────────────────
    p2_body  = extract_between(ocr, "Why being bored is stimulating — and useful, too\n", "PART 2 — QUESTIONS")
    p2_paras = parse_plain_paras(p2_body)

    p2_groups = [
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 14–19",
            "instructions": "The Reading Passage has six paragraphs, A–F. Choose the correct heading for each paragraph from the list of headings below.",
            "options": [
                {"key": "i",    "text": "The productive outcomes that may result from boredom"},
                {"key": "ii",   "text": "What teachers can do to prevent boredom"},
                {"key": "iii",  "text": "A new explanation and a new cure for boredom"},
                {"key": "iv",   "text": "Problems with a scientific approach to boredom"},
                {"key": "v",    "text": "A potential danger arising from boredom"},
                {"key": "vi",   "text": "Creating a system of classification for feelings of boredom"},
                {"key": "vii",  "text": "Age groups most affected by boredom"},
                {"key": "viii", "text": "Identifying those most affected by boredom"},
            ],
            "questions": [
                {"number": 14, "prompt": "Paragraph A", "answer": "iv",
                 "explanation": "Paragraph A discusses how defining boredom scientifically has proved difficult.",
                 "evidence": {"sectionId": "p2", "ref": "1", "quote": "defining boredom so that it can be studied in the lab has proved difficult"}},
                {"number": 15, "prompt": "Paragraph B", "answer": "vi",
                 "explanation": "Paragraph B describes Goetz's classification of five distinct types of boredom.",
                 "evidence": {"sectionId": "p2", "ref": "2", "quote": "Thomas Goetz and his team at the University of Konstanz in Germany have recently identified five distinct types: indifferent, calibrating, searching, reactant and apathetic"}},
                {"number": 16, "prompt": "Paragraph C", "answer": "i",
                 "explanation": "Paragraph C shows that boredom can lead to creative outcomes.",
                 "evidence": {"sectionId": "p2", "ref": "3", "quote": "Mann has found that being bored makes us more creative"}},
                {"number": 17, "prompt": "Paragraph D", "answer": "v",
                 "explanation": "Paragraph D warns that boredom can be toxic and damage wellbeing.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "even if boredom has evolved to help us survive, it can still be toxic if allowed to fester"}},
                {"number": 18, "prompt": "Paragraph E", "answer": "viii",
                 "explanation": "Paragraph E identifies personality traits that predict who suffers most from boredom.",
                 "evidence": {"sectionId": "p2", "ref": "5", "quote": "those who bore easily face poorer prospects in education, their career and even life in general"}},
                {"number": 19, "prompt": "Paragraph F", "answer": "iii",
                 "explanation": "Paragraph F proposes that over-connected lifestyles are a new source of boredom, and suggests seeking meaning as a cure.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "our over-connected lifestyles might even be a new source of boredom"}},
            ],
        },
        {
            "id": "g4",
            "type": "matching",
            "label": "Questions 20–23",
            "instructions": "Look at the following people and the list of ideas below. Match each person with the correct idea, A–E.",
            "options": [
                {"key": "A", "text": "The way we live today may encourage boredom."},
                {"key": "B", "text": "One sort of boredom is worse than all the others."},
                {"key": "C", "text": "Levels of boredom may fall in the future."},
                {"key": "D", "text": "Trying to cope with boredom can increase its negative effects."},
                {"key": "E", "text": "Boredom may encourage us to avoid an unpleasant experience."},
            ],
            "questions": [
                {"number": 20, "prompt": "Peter Toohey", "answer": "E",
                 "explanation": "Toohey compares boredom to disgust — an emotion that keeps us away from certain situations.",
                 "evidence": {"sectionId": "p2", "ref": "1", "quote": "boredom may protect them from \"infectious\" social situations"}},
                {"number": 21, "prompt": "Thomas Goetz", "answer": "B",
                 "explanation": "Goetz identified 'reactant' boredom as the most damaging type.",
                 "evidence": {"sectionId": "p2", "ref": "2", "quote": "the most damaging is 'reactant' boredom with its explosive combination of high arousal and negative emotion"}},
                {"number": 22, "prompt": "John Eastwood", "answer": "D",
                 "explanation": "Eastwood says efforts to improve the boredom situation can make things worse.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "your efforts to improve the situation can end up making you feel worse"}},
                {"number": 23, "prompt": "Francoise Wemelsfelder", "answer": "A",
                 "explanation": "Wemelsfelder speculates that over-connected modern lifestyles may be a new source of boredom.",
                 "evidence": {"sectionId": "p2", "ref": "6", "quote": "our over-connected lifestyles might even be a new source of boredom"}},
            ],
        },
        {
            "id": "g5",
            "type": "short_answer",
            "label": "Questions 24–26",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "Responses to boredom",
            "summaryText": "For John Eastwood, the central feature of boredom is that people cannot {24}, due to a failure in what he calls the 'attention system', and as a result they become frustrated and irritable. His team suggests that those for whom {25} is an important aim in life may have problems in coping with boredom, whereas those who have the characteristic of {26} can generally cope with it.",
            "questions": [
                {"number": 24, "prompt": "", "answer": ["focus"], "wordLimit": 1,
                 "explanation": "Eastwood says boredom causes an inability to focus on anything.",
                 "evidence": {"sectionId": "p2", "ref": "4", "quote": "This causes an inability to focus on anything"}},
                {"number": 25, "prompt": "", "answer": ["pleasure"], "wordLimit": 1,
                 "explanation": "People motivated by pleasure seem to suffer particularly badly from boredom.",
                 "evidence": {"sectionId": "p2", "ref": "5", "quote": "People who are motivated by pleasure seem to suffer particularly badly"}},
                {"number": 26, "prompt": "", "answer": ["curiosity"], "wordLimit": 1,
                 "explanation": "Curiosity is associated with a high boredom threshold.",
                 "evidence": {"sectionId": "p2", "ref": "5", "quote": "Other personality traits, such as curiosity, are associated with a high boredom threshold"}},
            ],
        },
    ]

    # ── Passage 3: Artificial Artist? ────────────────────────────────────────
    p3_body  = extract_between(ocr, "Can computers really create works of art?\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g6",
            "type": "multiple_choice",
            "label": "Questions 27–31",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {"number": 27,
                 "prompt": "What is the writer suggesting about computer-produced works in the first paragraph?",
                 "options": [
                     {"key": "A", "text": "People's acceptance of them can vary considerably."},
                     {"key": "B", "text": "A great deal of progress has already been attained in this field."},
                     {"key": "C", "text": "They have had more success in some artistic genres than in others."},
                     {"key": "D", "text": "The advances are not as significant as the public believes them to be."},
                 ],
                 "answer": "B",
                 "explanation": "The opening paragraph lists multiple computer art achievements across different art forms.",
                 "evidence": {"sectionId": "p3", "ref": "1", "quote": "The Painting Fool is one of a growing number of computer programs which, so their makers claim, possess creative talents"}},
                {"number": 28,
                 "prompt": "According to Geraint Wiggins, why are many people worried by computer art?",
                 "options": [
                     {"key": "A", "text": "It is aesthetically inferior to human art."},
                     {"key": "B", "text": "It may ultimately supersede human art."},
                     {"key": "C", "text": "It undermines a fundamental human quality."},
                     {"key": "D", "text": "It will lead to a deterioration in human ability."},
                 ],
                 "answer": "C",
                 "explanation": "Wiggins says people are worried it is taking something special away from what it means to be human.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "They are worried that it is taking something special away from what it means to be human"}},
                {"number": 29,
                 "prompt": "What is a key difference between Aaron and the Painting Fool?",
                 "options": [
                     {"key": "A", "text": "Its programmer's background."},
                     {"key": "B", "text": "Public response to its work."},
                     {"key": "C", "text": "The source of its subject matter."},
                     {"key": "D", "text": "The technical standard of its output."},
                 ],
                 "answer": "C",
                 "explanation": "The Painting Fool goes online for its own material, whereas Aaron relies on the programmer's ideas.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "the Painting Fool only needs minimal direction and can come up with its own concepts by going online for material"}},
                {"number": 30,
                 "prompt": "What point does Simon Colton make in the fourth paragraph?",
                 "options": [
                     {"key": "A", "text": "Software-produced art is often dismissed as childish and simplistic."},
                     {"key": "B", "text": "The same concepts of creativity should not be applied to all forms of art."},
                     {"key": "C", "text": "It is unreasonable to expect a machine to be as imaginative as a human being."},
                     {"key": "D", "text": "People tend to judge computer art and human art according to different criteria."},
                 ],
                 "answer": "D",
                 "explanation": "Colton argues that negative reactions arise from people's double standards towards software-produced and human-produced art.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "such reactions arise from people's double standards towards software-produced and human-produced art"}},
                {"number": 31,
                 "prompt": "The writer refers to the paintings of a chair as an example of computer art which",
                 "options": [
                     {"key": "A", "text": "achieves a particularly striking effect."},
                     {"key": "B", "text": "exhibits a certain level of genuine artistic skill."},
                     {"key": "C", "text": "closely resembles that of a well-known artist."},
                     {"key": "D", "text": "highlights the technical limitations of the software."},
                 ],
                 "answer": "A",
                 "explanation": "The black-and-white glitch gives the chair paintings an eerie, ghostlike quality — a striking effect.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "Some of the Painting Fool's paintings of a chair came out in black and white, thanks to a technical glitch. This gives the work an eerie, ghostlike quality"}},
            ],
        },
        {
            "id": "g7",
            "type": "matching",
            "label": "Questions 32–37",
            "instructions": "Complete each sentence with the correct ending, A–G below.",
            "options": [
                {"key": "A", "text": "generating work that was virtually indistinguishable from that of humans."},
                {"key": "B", "text": "knowing whether it was the work of humans or software."},
                {"key": "C", "text": "producing work entirely dependent on the imagination of its creator."},
                {"key": "D", "text": "comparing the artistic achievements of humans and computers."},
                {"key": "E", "text": "revealing the technical details of his program."},
                {"key": "F", "text": "persuading the public to appreciate computer art."},
                {"key": "G", "text": "discovering that it was the product of a computer program."},
            ],
            "questions": [
                {"number": 32,
                 "prompt": "Simon Colton says it is important to avoid",
                 "answer": "D",
                 "explanation": "Colton says it is not right to measure machine creativity directly against human creativity.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "Researchers like Colton don't believe it is right to measure machine creativity directly to that of humans"}},
                {"number": 33,
                 "prompt": "David Cope's EMI software surprised people by",
                 "answer": "A",
                 "explanation": "EMI even fooled classical music experts into thinking they were hearing genuine Bach.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "EMI even fooled classical music experts into thinking they were hearing genuine Bach"}},
                {"number": 34,
                 "prompt": "Geraint Wiggins criticised Cope for not",
                 "answer": "E",
                 "explanation": "Wiggins condemned Cope for his deliberately vague explanation of how the software worked.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "condemned him for his deliberately vague explanation of how the software worked"}},
                {"number": 35,
                 "prompt": "Douglas Hofstadter claimed that EMI was",
                 "answer": "C",
                 "explanation": "Hofstadter said EMI created replicas which still rely completely on the original artist's creative impulses.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "Douglas Hofstadter of Indiana University said EMI created replicas which still rely completely on the original artist's creative impulses"}},
                {"number": 36,
                 "prompt": "Audiences who had listened to EMI's music became angry after",
                 "answer": "G",
                 "explanation": "When audiences found out the truth they were often outraged with Cope.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "When audiences found out the truth they were often outraged with Cope"}},
                {"number": 37,
                 "prompt": "The participants in David Moffat's study had to assess music without",
                 "answer": "B",
                 "explanation": "Participants weren't told beforehand whether the tunes were composed by humans or computers.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "The participants weren't told beforehand whether the tunes were composed by humans or computers"}},
            ],
        },
        {
            "id": "g8",
            "type": "yes_no_notgiven",
            "label": "Questions 38–40",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {"number": 38,
                 "prompt": "Moffat's research may help explain people's reactions to EMI.",
                 "answer": "YES",
                 "explanation": "The writer says Moffat's study 'provides a clue' about why people loved the music but recoiled when they found out its origin.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "A study by computer scientist David Moffat of Glasgow Caledonian University provides a clue"}},
                {"number": 39,
                 "prompt": "The non-experts in Moffat's study all responded in a predictable way.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage describes the general trend but does not confirm all non-experts responded the same way.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "People who thought the composer was a computer tended to dislike the piece more than those who believed it was human"}},
                {"number": 40,
                 "prompt": "Justin Kruger's findings cast doubt on Paul Bloom's theory about people's prejudice towards computer art.",
                 "answer": "NO",
                 "explanation": "Kruger's finding (more effort = more enjoyment) actually supports Bloom's theory (pleasure comes from the creative process).",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "experiments by Justin Kruger of New York University have shown that people's enjoyment of an artwork increases if they think more time and effort was needed to create it"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Case Study: Tourism New Zealand Website", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Why Being Bored Is Stimulating — and Useful, Too", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Artificial Artist?", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(1, sections, "c13t1r")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 2 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test2() -> str:
    ocr = load_ocr(2)

    # ── Passage 1: Bringing Cinnamon to Europe ───────────────────────────────
    p1_body  = extract_between(ocr, "Bringing cinnamon to Europe\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–9",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "The Early History of Cinnamon",
            "formContent": [
                {"kind": "subheader", "text": "Biblical times:"},
                {"kind": "question", "number": 1},
                {"kind": "question", "number": 2},
                {"kind": "subheader", "text": "Ancient Rome:"},
                {"kind": "question", "number": 3},
                {"kind": "subheader", "text": "Middle Ages:"},
                {"kind": "static", "text": "added to food, especially meat"},
                {"kind": "question", "number": 4},
                {"kind": "question", "number": 5},
                {"kind": "subheader", "text": "Trade route:"},
                {"kind": "question", "number": 6},
                {"kind": "question", "number": 7},
                {"kind": "question", "number": 8},
                {"kind": "question", "number": 9},
            ],
            "questions": [
                {"number": 1,
                 "prompt": "added to _______",
                 "answer": ["oils"], "wordLimit": 1,
                 "explanation": "Cinnamon was mixed with oils for anointing people's bodies.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "an ingredient that was mixed with oils for anointing people's bodies"}},
                {"number": 2,
                 "prompt": "used to show _______ between people",
                 "answer": ["friendship"], "wordLimit": 1,
                 "explanation": "Cinnamon was a token indicating friendship among lovers and friends.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "a token indicating friendship among lovers and friends"}},
                {"number": 3,
                 "prompt": "used for its sweet smell at _______",
                 "answer": ["funerals"], "wordLimit": 1,
                 "explanation": "In ancient Rome, mourners at funerals burnt cinnamon to create a pleasant scent.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "mourners attending funerals burnt cinnamon to create a pleasant scent"}},
                {"number": 4,
                 "prompt": "was an indication of a person's _______",
                 "answer": ["wealth"], "wordLimit": 1,
                 "explanation": "A host offering spices was displaying the wealth at their disposal.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "a host would offer guests a plate with various spices piled upon it as a sign of the wealth at his or her disposal"}},
                {"number": 5,
                 "prompt": "known as a treatment for _______ and other health problems",
                 "answer": ["indigestion"], "wordLimit": 1,
                 "explanation": "Cinnamon was thought to cure ailments such as indigestion.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "was thought to cure various ailments, such as indigestion"}},
                {"number": 6,
                 "prompt": "grown in _______",
                 "answer": ["India"], "wordLimit": 1,
                 "explanation": "Arab merchants took cinnamon from India where it was grown.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "They took it from India, where it was grown"}},
                {"number": 7,
                 "prompt": "merchants used _______ to bring it to the Mediterranean",
                 "answer": ["camels"], "wordLimit": 1,
                 "explanation": "Arab merchants transported cinnamon on camels via an overland route.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "on camels via an overland route to the Mediterranean"}},
                {"number": 8,
                 "prompt": "arrived in the Mediterranean at _______",
                 "answer": ["Alexandria"], "wordLimit": 1,
                 "explanation": "The merchants' journey ended when they reached Alexandria.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "Their journey ended when they reached Alexandria"}},
                {"number": 9,
                 "prompt": "traders took it to _______ and sold it to destinations around Europe",
                 "answer": ["Venice"], "wordLimit": 1,
                 "explanation": "European traders brought the cinnamon back to Venice.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "European traders sailed there to purchase their supply of cinnamon, then brought it back to Venice"}},
            ],
        },
        {
            "id": "g2",
            "type": "true_false_notgiven",
            "label": "Questions 10–13",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 10,
                 "prompt": "The Portuguese had control over the cinnamon trade in Ceylon throughout the 16th century.",
                 "answer": "TRUE",
                 "explanation": "The Portuguese built a fort in 1518 and developed a monopoly that lasted until the Dutch broke it in 1649.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "In 1518, the Portuguese built a fort on Ceylon, which enabled them to protect the island, so helping them to develop a monopoly in the cinnamon trade"}},
                {"number": 11,
                 "prompt": "The Dutch took over the cinnamon trade from the Portuguese as soon as they arrived in Ceylon.",
                 "answer": "FALSE",
                 "explanation": "The Dutch arrived at the beginning of the 17th century but did not expel the Portuguese until 1658.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "When the Dutch arrived off the coast of southern Asia at the very beginning of the 17th century"}},
                {"number": 12,
                 "prompt": "The trees planted by the Dutch produced larger quantities of cinnamon than the wild trees.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage says the Dutch cultivated trees to supplement wild ones, but makes no comparison of quantities.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "the Dutch began cultivating their own cinnamon trees to supplement the diminishing number of wild trees available for use"}},
                {"number": 13,
                 "prompt": "The spice trade maintained its economic importance during the 19th century.",
                 "answer": "FALSE",
                 "explanation": "The spice trade was diminishing in economic potential and was superseded by coffee, tea, chocolate and sugar.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "the spice trade overall was diminishing in economic potential, and was eventually superseded by the rise of trade in coffee, tea, chocolate, and sugar"}},
            ],
        },
    ]

    # ── Passage 2: Oxytocin ──────────────────────────────────────────────────
    p2_body  = extract_between(ocr, "Oxytocin\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEF")

    p2_groups = [
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 14–17",
            "instructions": "The Reading Passage has six paragraphs, A–F. Which paragraph contains the following information? You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "A"},
                {"key": "B", "text": "B"},
                {"key": "C", "text": "C"},
                {"key": "D", "text": "D"},
                {"key": "E", "text": "E"},
                {"key": "F", "text": "F"},
            ],
            "questions": [
                {"number": 14,
                 "prompt": "reference to research showing the beneficial effects of oxytocin on people",
                 "answer": "B",
                 "explanation": "Paragraph B describes how oxytocin makes people more charitable, better at reading emotions, and more cooperative.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "after a sniff of the hormone, people become more charitable, better at reading emotions on others' faces and at communicating constructively in arguments"}},
                {"number": 15,
                 "prompt": "reasons why the effects of oxytocin are complex",
                 "answer": "F",
                 "explanation": "Paragraph F explains that oxytocin is ancient and affects primitive brain areas, creating many different effects.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "It's a very simple and ancient molecule that has been co-opted for many different functions"}},
                {"number": 16,
                 "prompt": "mention of a period in which oxytocin attracted little scientific attention",
                 "answer": "B",
                 "explanation": "Paragraph B notes that for eight years after the first study, the field was a 'lonesome' area.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "For eight years, it was quite a lonesome field"}},
                {"number": 17,
                 "prompt": "reference to people ignoring certain aspects of their research data",
                 "answer": "E",
                 "explanation": "Paragraph E notes that where once researchers took no notice of findings showing oxytocin had limited effects, they now pay attention.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "Where once researchers took no notice of such findings, now a more nuanced understanding of oxytocin's effects is propelling investigations down new lines"}},
            ],
        },
        {
            "id": "g4",
            "type": "matching",
            "label": "Questions 18–20",
            "instructions": "Look at the following research findings and the list of researchers below. Match each research finding with the correct researcher, A–F.",
            "options": [
                {"key": "A", "text": "Markus Heinrichs"},
                {"key": "B", "text": "Simone Shamay-Tsoory"},
                {"key": "C", "text": "Jennifer Bartz"},
                {"key": "D", "text": "Carolyn DeClerck"},
                {"key": "E", "text": "Carsten De Dreu"},
                {"key": "F", "text": "Sue Carter"},
            ],
            "questions": [
                {"number": 18,
                 "prompt": "People are more trusting when affected by oxytocin.",
                 "answer": "A",
                 "explanation": "Heinrichs found that participants who sniffed oxytocin invested more money with an anonymous person.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "participants who had sniffed oxytocin via a nasal spray beforehand invested more money than those who received a placebo instead"}},
                {"number": 19,
                 "prompt": "Oxytocin increases people's feelings of jealousy.",
                 "answer": "B",
                 "explanation": "Shamay-Tsoory found that volunteers who inhaled oxytocin felt more envy when others won a game.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "those who inhaled the hormone showed more pleasure when they beat other players, and felt more envy when others won"}},
                {"number": 20,
                 "prompt": "The effect of oxytocin varies from one type of person to another.",
                 "answer": "C",
                 "explanation": "Bartz found that oxytocin's effects depend sharply on a person's disposition.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "administering oxytocin also has sharply contrasting outcomes depending on a person's disposition"}},
            ],
        },
        {
            "id": "g5",
            "type": "short_answer",
            "label": "Questions 21–26",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "Oxytocin research",
            "summaryText": "The earliest findings about oxytocin and bonding came from research involving {21}. It was also discovered that humans produce oxytocin during {22}. An experiment in 2005, in which participants were given either oxytocin or a {23}, reinforced the belief that the hormone had a positive effect. However, later research suggests that this is not always the case. A study at the University of Haifa where participants took part in a {24} revealed the negative emotions which oxytocin can trigger. A study at the University of Antwerp showed people's lack of willingness to help {25} while under the influence of oxytocin. Meanwhile, research at the University of Amsterdam revealed that people who have been given oxytocin consider that {26} that are familiar to them in their own country to have more positive associations than those from other cultures.",
            "questions": [
                {"number": 21, "prompt": "", "answer": ["animals"], "wordLimit": 1,
                 "explanation": "Scientists first became aware of oxytocin through studies focusing on animals.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "It was through various studies focusing on animals that scientists first became aware of the influence of oxytocin"}},
                {"number": 22, "prompt": "", "answer": ["childbirth"], "wordLimit": 1,
                 "explanation": "Oxytocin is released by women in childbirth.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "It is also released by women in childbirth, strengthening the attachment between mother and baby"}},
                {"number": 23, "prompt": "", "answer": ["placebo"], "wordLimit": 1,
                 "explanation": "Control participants received a placebo rather than oxytocin.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "invested more money than those who received a placebo instead"}},
                {"number": 24, "prompt": "", "answer": ["game"], "wordLimit": 1,
                 "explanation": "Shamay-Tsoory had volunteers play a competitive game.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "when volunteers played a competitive game, those who inhaled the hormone showed more pleasure when they beat other players"}},
                {"number": 25, "prompt": "", "answer": ["strangers"], "wordLimit": 1,
                 "explanation": "DeClerck found people became less cooperative when dealing with complete strangers.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "people who had received a dose of oxytocin actually became less cooperative when dealing with complete strangers"}},
                {"number": 26, "prompt": "", "answer": ["names"], "wordLimit": 1,
                 "explanation": "De Dreu found Dutch men were quicker to associate positive words with Dutch names than foreign ones.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "Dutch men became quicker to associate positive words with Dutch names than with foreign ones"}},
            ],
        },
    ]

    # ── Passage 3: Making the Most of Trends ─────────────────────────────────
    p3_body  = extract_between(ocr, "MAKING THE MOST OF TRENDS\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g6",
            "type": "multiple_choice",
            "label": "Questions 27–31",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {"number": 27,
                 "prompt": "In the first paragraph, the writer says that most managers",
                 "options": [
                     {"key": "A", "text": "fail to spot the key consumer trends of the moment."},
                     {"key": "B", "text": "make the mistake of focusing only on the principal consumer trends."},
                     {"key": "C", "text": "misinterpret market research data relating to current consumer trends."},
                     {"key": "D", "text": "are unaware of the significant impact that trends have on consumers' lives."},
                 ],
                 "answer": "D",
                 "explanation": "Managers fail to recognise the profound ways trends influence consumers' aspirations, attitudes and behaviours.",
                 "evidence": {"sectionId": "p3", "ref": "1", "quote": "managers often fail to recognize the less obvious but profound ways these trends are influencing consumers' aspirations, attitudes, and behaviors"}},
                {"number": 28,
                 "prompt": "According to the third paragraph, Coach was anxious to",
                 "options": [
                     {"key": "A", "text": "follow what some of its competitors were doing."},
                     {"key": "B", "text": "maintain its prices throughout its range."},
                     {"key": "C", "text": "safeguard its reputation as a manufacturer of luxury goods."},
                     {"key": "D", "text": "modify the entire look of its brand to suit the economic climate."},
                 ],
                 "answer": "C",
                 "explanation": "Lowering prices would have risked cheapening the brand's image, so Coach found another way.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "that would have risked cheapening the brand's image"}},
                {"number": 29,
                 "prompt": "What point is made about Tesco's Greener Living programme?",
                 "options": [
                     {"key": "A", "text": "It did not require Tesco to modify its core business activities."},
                     {"key": "B", "text": "It succeeded in attracting a more eco-conscious clientele."},
                     {"key": "C", "text": "Its main aim was to raise consumers' awareness of environmental issues."},
                     {"key": "D", "text": "It was not the first time that Tesco had implemented such an initiative."},
                 ],
                 "answer": "A",
                 "explanation": "Tesco augmented its business with these innovations without abandoning its traditional retail offering.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "Tesco has not abandoned its traditional retail offering but augmented its business with these innovations"}},
                {"number": 30,
                 "prompt": "What does the writer suggest about Nike's strategy?",
                 "options": [
                     {"key": "A", "text": "It was an extremely risky strategy at the time."},
                     {"key": "B", "text": "It was a strategy that only a major company could afford to follow."},
                     {"key": "C", "text": "It was the type of strategy that would not have been possible in the past."},
                     {"key": "D", "text": "It was the kind of strategy which might appear to have few obvious benefits."},
                 ],
                 "answer": "D",
                 "explanation": "At first glance, spending resources to incorporate a seemingly irrelevant trend sounds hardly worthwhile.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "At first glance, spending resources to incorporate elements of a seemingly irrelevant trend into one's core offerings sounds like it's hardly worthwhile"}},
                {"number": 31,
                 "prompt": "What was original about the ME2?",
                 "options": [
                     {"key": "A", "text": "It contained technology that had been developed for the sports industry."},
                     {"key": "B", "text": "It appealed to young people who were keen to improve their physical fitness."},
                     {"key": "C", "text": "It took advantage of a current trend for video games with colourful 3D graphics."},
                     {"key": "D", "text": "It was a handheld game that addressed people's concerns about unhealthy lifestyles."},
                 ],
                 "answer": "D",
                 "explanation": "The ME2 catered to kids' desire to play video games while countering negatives such as lack of exercise and obesity.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "The ME2, introduced in mid-2008, catered to kids' huge desire to play video games while countering the negatives, such as associations with lack of exercise and obesity"}},
            ],
        },
        {
            "id": "g7",
            "type": "matching",
            "label": "Questions 32–37",
            "instructions": "Look at the following statements and the list of companies below. Match each statement with the correct company, A, B, C or D. You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Coach"},
                {"key": "B", "text": "Tesco"},
                {"key": "C", "text": "Nike"},
                {"key": "D", "text": "iToys"},
            ],
            "questions": [
                {"number": 32,
                 "prompt": "It turned the notion that its products could have harmful effects to its own advantage.",
                 "answer": "D",
                 "explanation": "iToys' ME2 counteracted the perceived negative impacts of digital gaming devices.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "By reaffirming the toy category's association with physical play, the ME2 counteracted some of the widely perceived negative impacts of digital gaming devices"}},
                {"number": 33,
                 "prompt": "It extended its offering by collaborating with another manufacturer.",
                 "answer": "C",
                 "explanation": "Nike teamed up with Apple to launch the Nike+ sports kit.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "In 2006, they teamed up with technology company Apple to launch Nike+"}},
                {"number": 34,
                 "prompt": "It implemented an incentive scheme to demonstrate its corporate social responsibility.",
                 "answer": "B",
                 "explanation": "Tesco's Greener Living programme awarded customers points for eco-friendly activities.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "Tesco customers can accumulate points for such activities as reusing bags, recycling cans and printer cartridges"}},
                {"number": 35,
                 "prompt": "It discovered that customers had a positive attitude towards dealing with difficult circumstances.",
                 "answer": "A",
                 "explanation": "Coach's research revealed customers were eager to lift themselves out of tough times.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "they initiated a consumer-research project which revealed that customers were eager to lift themselves and the country out of tough times"}},
                {"number": 36,
                 "prompt": "It responded to a growing lifestyle trend in an unrelated product sector.",
                 "answer": "C",
                 "explanation": "Nike integrated the digital revolution into athletic footwear — a seemingly irrelevant trend.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "consider Nike's move to integrate the digital revolution into its reputation for high-performance athletic footwear"}},
                {"number": 37,
                 "prompt": "It successfully avoided having to charge its customers less for its core products.",
                 "answer": "A",
                 "explanation": "Creating the Poppy sub-brand allowed Coach to avert an across-the-board price cut.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "Creating the sub-brand allowed Coach to avert an across-the-board price cut"}},
            ],
        },
        {
            "id": "g8",
            "type": "matching",
            "label": "Questions 38–40",
            "instructions": "Complete each sentence with the correct ending, A, B, C or D below.",
            "options": [
                {"key": "A", "text": "employ a combination of strategies to maintain your consumer base."},
                {"key": "B", "text": "identify the most appropriate innovation strategy to use."},
                {"key": "C", "text": "emphasise your brand's traditional values with the counteract-and-reaffirm strategy."},
                {"key": "D", "text": "use the combine-and-transcend strategy to integrate the two worlds."},
            ],
            "questions": [
                {"number": 38,
                 "prompt": "If there are any trend-related changes impacting on your category, you should",
                 "answer": "B",
                 "explanation": "The passage says to determine which of the three innovation strategies to pursue.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "you can determine which of our three innovation strategies to pursue"}},
                {"number": 39,
                 "prompt": "If a current trend highlights a negative aspect of your category, you should",
                 "answer": "C",
                 "explanation": "Counteract those changes by reaffirming the core values of your category.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "there is an opportunity to counteract those changes by reaffirming the core values of your category"}},
                {"number": 40,
                 "prompt": "If the consumers' new focus has an increasing lack of connection with your offering, you should",
                 "answer": "D",
                 "explanation": "Your innovations need to transcend the category to integrate the two worlds.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "your innovations need to transcend the category to integrate the two worlds"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Bringing Cinnamon to Europe", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Oxytocin", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Making the Most of Trends", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(2, sections, "c13t2r")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 3 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test3() -> str:
    ocr = load_ocr(3)

    # ── Passage 1: The Coconut Palm ──────────────────────────────────────────
    p1_body  = extract_between(ocr, "The coconut palm\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–8",
            "instructions": "Complete the table below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "THE COCONUT PALM",
            "formContent": [
                {"kind": "subheader", "text": "trunk – up to 30 metres"},
                {"kind": "question", "number": 1},
                {"kind": "subheader", "text": "leaves – up to 6 metres long"},
                {"kind": "static", "text": "to make brushes"},
                {"kind": "subheader", "text": "flowers – at the top of the trunk"},
                {"kind": "question", "number": 2},
                {"kind": "subheader", "text": "fruits – middle layer (coir fibres)"},
                {"kind": "question", "number": 3},
                {"kind": "subheader", "text": "fruits – inner layer (shell)"},
                {"kind": "question", "number": 4},
                {"kind": "question", "number": 5},
                {"kind": "subheader", "text": "coconut water"},
                {"kind": "static", "text": "a drink"},
                {"kind": "question", "number": 6},
                {"kind": "subheader", "text": "coconut flesh"},
                {"kind": "question", "number": 7},
                {"kind": "question", "number": 8},
            ],
            "questions": [
                {"number": 1,
                 "prompt": "timber for houses and the making of _______",
                 "answer": ["furniture"], "wordLimit": 1,
                 "explanation": "The trunk is used as a replacement for endangered hardwoods in the furniture construction industry.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "increasingly being used as a replacement for endangered hardwoods in the furniture construction industry"}},
                {"number": 2,
                 "prompt": "stems provide sap, used as a drink or a source of _______",
                 "answer": ["sugar"], "wordLimit": 1,
                 "explanation": "The sap can be reduced by boiling to produce a type of sugar used for cooking.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "the sap can also be reduced by boiling to produce a type of sugar used for cooking"}},
                {"number": 3,
                 "prompt": "used for _______",
                 "answer": ["ropes"], "wordLimit": 1,
                 "explanation": "The fibrous middle layer (coir) is particularly important in manufacturing ropes.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "particularly important in manufacturing ropes"}},
                {"number": 4,
                 "prompt": "a source of _______",
                 "answer": ["charcoal"], "wordLimit": 1,
                 "explanation": "An important product obtained from the shell is charcoal.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "An important product obtained from the shell is charcoal"}},
                {"number": 5,
                 "prompt": "(when halved) used as _______",
                 "answer": ["bowls"], "wordLimit": 1,
                 "explanation": "Broken in half, the shells are used as bowls in many parts of Asia.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "the shells are also used as bowls in many parts of Asia"}},
                {"number": 6,
                 "prompt": "a source of _______ for other plants",
                 "answer": ["hormones"], "wordLimit": 1,
                 "explanation": "Coconut water provides the hormones which encourage other plants to grow more rapidly.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "provides the hormones which encourage other plants to grow more rapidly and produce higher yields"}},
                {"number": 7,
                 "prompt": "oil and milk for cooking and _______",
                 "answer": ["cosmetics"], "wordLimit": 1,
                 "explanation": "Dried coconut flesh is made into coconut oil and milk, used in cooking as well as in cosmetics.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "Dried coconut flesh, 'copra', is made into coconut oil and coconut milk, which are widely used in cooking in different parts of the world, as well as in cosmetics"}},
                {"number": 8,
                 "prompt": "glycerine (an ingredient in _______)",
                 "answer": ["dynamite"], "wordLimit": 1,
                 "explanation": "A derivative of coconut fat, glycerine, is an ingredient in dynamite.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "Alfred Nobel introduced the world to his nitroglycerine-based invention: dynamite"}},
            ],
        },
        {
            "id": "g2",
            "type": "true_false_notgiven",
            "label": "Questions 9–13",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 9,
                 "prompt": "Coconut seeds need shade in order to germinate.",
                 "answer": "FALSE",
                 "explanation": "Coconut seeds germinate when exposed to the full glare of the tropical sun on desert island shores.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "exposed to the full glare of the tropical sun, coconut seeds are able to germinate and root"}},
                {"number": 10,
                 "prompt": "Coconuts were probably transported to Asia from America in the 16th century.",
                 "answer": "FALSE",
                 "explanation": "The movement was the other way: Arab traders and European sailors moved coconuts from South and Southeast Asia to Africa and then to America.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "Arab traders and European sailors are likely to have moved coconuts from South and Southeast Asia to Africa and then across the Atlantic to the east coast of America"}},
                {"number": 11,
                 "prompt": "Coconuts found on the west coast of America were a different type from those found on the east coast.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage discusses the origin debate but makes no comparison of the types of coconuts found on each coast.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "the origin of coconuts discovered along the west coast of America by 16th century sailors has been the subject of centuries of discussion"}},
                {"number": 12,
                 "prompt": "All the coconuts found in Asia are cultivated varieties.",
                 "answer": "TRUE",
                 "explanation": "In Asia there is evidence of millennia of human use, but no relatives growing in the wild, implying all are cultivated.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "In Asia, there is a large degree of coconut diversity and evidence of millennia of human use — but there are no relatives growing in the wild"}},
                {"number": 13,
                 "prompt": "Coconuts are cultivated in different ways in America and the Pacific.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage discusses origin theories but does not compare cultivation methods in different regions.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "In America, there are close coconut relatives, but no evidence that coconuts are indigenous"}},
            ],
        },
    ]

    # ── Passage 2: How Baby Talk Gives Infant Brains a Boost ─────────────────
    p2_body  = extract_between(ocr, "How baby talk gives infant brains a boost\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEF")

    p2_groups = [
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 14–17",
            "instructions": "Look at the following ideas and the list of researchers below. Match each idea with the correct researcher, A, B or C. You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Mark VanDam"},
                {"key": "B", "text": "Nairan Ramirez-Esparza"},
                {"key": "C", "text": "Patricia Kuhl"},
            ],
            "questions": [
                {"number": 14,
                 "prompt": "the importance of adults giving babies individual attention when talking to them",
                 "answer": "B",
                 "explanation": "Ramirez-Esparza found it really matters whether baby talk is used in a one-on-one context.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "we also found that it really matters whether you use baby talk in a one-on-one context"}},
                {"number": 15,
                 "prompt": "the connection between what babies hear and their own efforts to create speech",
                 "answer": "C",
                 "explanation": "Kuhl found brain activation showing the baby brain tries to talk back from the start.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "the baby brain is engaged in trying to talk back right from the start"}},
                {"number": 16,
                 "prompt": "the advantage for the baby of having two parents each speaking in a different way",
                 "answer": "A",
                 "explanation": "VanDam's bridge hypothesis: the child practises different kinds of speech with each parent.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "a kid gets to practice a certain kind of speech with mom and another kind of speech with dad, so the kid then has a wider repertoire of kinds of speech to practice"}},
                {"number": 17,
                 "prompt": "the connection between the amount of baby talk babies hear and how much vocalising they do themselves",
                 "answer": "B",
                 "explanation": "Ramirez-Esparza found that the more parents use baby talk, the more babies babble.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "The more parents use baby talk one-on-one, the more babies babble, and the more they babble, the more words they produce later in life"}},
            ],
        },
        {
            "id": "g4",
            "type": "short_answer",
            "label": "Questions 18–23",
            "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
            "summaryTitle": "Research into how parents talk to babies",
            "summaryText": "Researchers at Washington State University used {18} together with specialised computer programs, to analyse how parents interacted with their babies during a normal day. The study revealed that {19} tended not to modify their ordinary speech patterns when interacting with their babies. According to an idea known as the {20}, they may use a more adult type of speech to prepare infants for the language they will hear outside the family home. According to the researchers, hearing baby talk from one parent and 'normal' language from the other expands the baby's {21} of types of speech which they can practise. Meanwhile, another study carried out by scientists from the University of Washington and the University of Connecticut recorded speech and sound using special {22} that the babies were equipped with. When they studied the babies again at age two, they found that those who had heard a lot of baby talk in infancy had a much larger {23} than those who had not.",
            "questions": [
                {"number": 18, "prompt": "", "answer": ["recording devices"], "wordLimit": 2,
                 "explanation": "VanDam and colleagues equipped parents with recording devices and speech-recognition software.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "equipped parents with recording devices and speech-recognition software"}},
                {"number": 19, "prompt": "", "answer": ["fathers", "dads"], "wordLimit": 1,
                 "explanation": "Fathers did not raise their pitch or fundamental frequency when talking to their children.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "Dads didn't raise their pitch or fundamental frequency when they talked to kids"}},
                {"number": 20, "prompt": "", "answer": ["bridge hypothesis"], "wordLimit": 2,
                 "explanation": "The bridge hypothesis suggests fathers use less familial language to provide a bridge to public speech.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "Their role may be rooted in what is called the bridge hypothesis"}},
                {"number": 21, "prompt": "", "answer": ["repertoire"], "wordLimit": 1,
                 "explanation": "The child then has a wider repertoire of kinds of speech to practise.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "the kid then has a wider repertoire of kinds of speech to practice"}},
                {"number": 22, "prompt": "", "answer": ["vests", "audio-recording vests"], "wordLimit": 2,
                 "explanation": "Children were fitted with audio-recording vests that captured language and sound.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "fitting 26 children with audio-recording vests that captured language and sound during a typical eight-hour day"}},
                {"number": 23, "prompt": "", "answer": ["vocabulary"], "wordLimit": 1,
                 "explanation": "Frequent baby talk dramatically boosted vocabulary by age two.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "frequent baby talk had dramatically boosted vocabulary, regardless of socioeconomic status"}},
            ],
        },
        {
            "id": "g5",
            "type": "matching",
            "label": "Questions 24–26",
            "instructions": "The Reading Passage has six paragraphs, A–F. Which paragraph contains the following information?",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
            ],
            "questions": [
                {"number": 24,
                 "prompt": "a reference to a change which occurs in babies' brain activity before the end of their first year",
                 "answer": "F",
                 "explanation": "The older (11.5-month) infants' brains worked harder at motor activations of non-native sounds than native sounds — a change from the 7-month-olds.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "the brains of the older infants worked harder at the motor activations of non-native sounds compared to native sounds"}},
                {"number": 25,
                 "prompt": "an example of what some parents do for their baby's benefit before birth",
                 "answer": "A",
                 "explanation": "Some parents play classical music to their pregnant bellies.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "some hopeful parents to play classical music to their pregnant bellies"}},
                {"number": 26,
                 "prompt": "a mention of babies' preference for the sounds that other babies make",
                 "answer": "E",
                 "explanation": "The McGill study found infant sounds held babies' attention nearly 40% longer than adult sounds.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "the 'infant' sounds held babies' attention nearly 40 percent longer"}},
            ],
        },
    ]

    # ── Passage 3: Whatever Happened to the Harappan Civilisation? ────────────
    p3_body  = extract_between(ocr, "Whatever happened to the Harappan Civilisation?\n", "PART 3 — QUESTIONS")
    p3_paras = parse_lettered_paras(p3_body, "ABCDEFGH")

    p3_groups = [
        {
            "id": "g6",
            "type": "matching",
            "label": "Questions 27–31",
            "instructions": "The Reading Passage has eight paragraphs, A–H. Which paragraph contains the following information? You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
                {"key": "G", "text": "G"}, {"key": "H", "text": "H"},
            ],
            "questions": [
                {"number": 27,
                 "prompt": "proposed explanations for the decline of the Harappan Civilisation",
                 "answer": "C",
                 "explanation": "Paragraph C lists various theories: rivers changing course, overpopulation, resource exhaustion, invasion, and climate change.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "Some have claimed that major glacier-fed rivers changed their course, dramatically affecting the water supply and agriculture"}},
                {"number": 28,
                 "prompt": "reference to a present-day application of some archaeological research findings",
                 "answer": "H",
                 "explanation": "Petrie says archaeologists can help governments manage water supply, urban development, and cultural heritage today.",
                 "evidence": {"sectionId": "p3", "ref": "H", "quote": "we can learn from the past to engage with the public, and the relevant governmental and administrative bodies, to be more proactive in issues such as the management and administration of water supply"}},
                {"number": 29,
                 "prompt": "a difference between the Harappan Civilisation and another culture of the same period",
                 "answer": "A",
                 "explanation": "Unlike the Egyptians, who carved and painted representations of themselves, the Harappans left almost no depictions of themselves.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "their lack of self-imagery — at a time when the Egyptians were carving and painting representations of themselves all over their temples"}},
                {"number": 30,
                 "prompt": "a description of some features of Harappan urban design",
                 "answer": "B",
                 "explanation": "Paragraph B describes great baths, craft workshops, wide streets, narrow alleyways, wells and drainage systems.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "cities were built that had great baths, craft workshops, palaces and halls laid out in distinct sectors. Houses were arranged in blocks, with wide main streets and narrow alleyways"}},
                {"number": 31,
                 "prompt": "reference to the discovery of errors made by previous archaeologists",
                 "answer": "D",
                 "explanation": "Petrie and Singh found inaccuracies in the published geographic locations of ancient settlements.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "they found inaccuracies in the published geographic locations of ancient settlements ranging from several hundred metres to many kilometres"}},
            ],
        },
        {
            "id": "g7",
            "type": "short_answer",
            "label": "Questions 32–36",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "Looking at evidence of climate change",
            "summaryText": "Yama Dixit and David Hodell have found the first definitive evidence of climate change affecting the plains of north-western India thousands of years ago. By collecting the {32} of snails and analysing them, they discovered evidence of a change in water levels in a {33} in the region. This occurred when there was less {34} than evaporation, and suggests that there was an extended period of drought. Petrie and Singh's team are using archaeological records to look at {35} from five millennia ago, in order to know whether people had adapted their agricultural practices to changing climatic conditions. They are also examining objects including {36}, so as to find out about links between inhabitants of different parts of the region and whether these changed over time.",
            "questions": [
                {"number": 32, "prompt": "", "answer": ["shells"], "wordLimit": 1,
                 "explanation": "The researchers gathered shells of Melanoides tuberculate snails.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "The researchers gathered shells of Melanoides tuberculate snails from the sediments of an ancient lake"}},
                {"number": 33, "prompt": "", "answer": ["lake"], "wordLimit": 1,
                 "explanation": "The shells came from sediments of an ancient lake used to trace the region's climate history.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "gathered shells of Melanoides tuberculate snails from the sediments of an ancient lake"}},
                {"number": 34, "prompt": "", "answer": ["rainfall"], "wordLimit": 1,
                 "explanation": "The evaporation from the lake exceeded the rainfall — indicative of a drought.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "when the amount of evaporation from the lake exceeded the rainfall — indicative of a drought"}},
                {"number": 35, "prompt": "", "answer": ["grains"], "wordLimit": 1,
                 "explanation": "The team is analysing grains cultivated at the time to see if they were grown under extreme water stress.",
                 "evidence": {"sectionId": "p3", "ref": "G", "quote": "They are analysing grains cultivated at the time, and trying to work out whether they were grown under extreme conditions of water stress"}},
                {"number": 36, "prompt": "", "answer": ["pottery"], "wordLimit": 1,
                 "explanation": "They are looking at whether the types of pottery used were distinctive to specific regions.",
                 "evidence": {"sectionId": "p3", "ref": "G", "quote": "They are also looking at whether the types of pottery used, and other aspects of their material culture, were distinctive to specific regions"}},
            ],
        },
        {
            "id": "g8",
            "type": "matching",
            "label": "Questions 37–40",
            "instructions": "Look at the following statements and the list of researchers below. Match each statement with the correct researcher, A, B, C or D. You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Cameron Petrie"},
                {"key": "B", "text": "Ravindanath Singh"},
                {"key": "C", "text": "Yama Dixit"},
                {"key": "D", "text": "David Hodell"},
            ],
            "questions": [
                {"number": 37,
                 "prompt": "Finding further information about changes to environmental conditions in the region is vital.",
                 "answer": "B",
                 "explanation": "Singh says it is essential to obtain more climate data from areas close to the two great Harappan cities.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "it is essential that we obtain more climate data from areas close to the two great cities at Mohenjodaro and Harappa"}},
                {"number": 38,
                 "prompt": "Examining previous patterns of behaviour may have long-term benefits.",
                 "answer": "A",
                 "explanation": "Petrie believes archaeologists can learn from the past to help governments be more proactive.",
                 "evidence": {"sectionId": "p3", "ref": "H", "quote": "By investigating responses to environmental pressures and threats, we can learn from the past to engage with the public"}},
                {"number": 39,
                 "prompt": "The available evidence for the decline of the civilisation is limited.",
                 "answer": "A",
                 "explanation": "Petrie says there is relatively little archaeological evidence about the fall of the Harappan Civilisation.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "There is plenty of archaeological evidence to tell us about the rise of the Harappan Civilisation, but relatively little about its fall"}},
                {"number": 40,
                 "prompt": "The drought that affected the region lasted for approximately two centuries.",
                 "answer": "D",
                 "explanation": "Hodell estimates the weakening of the Indian summer monsoon lasted about 200 years.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "We estimate that the weakening of the Indian summer monsoon climate lasted about 200 years before recovering to the previous conditions"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "The Coconut Palm", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "How Baby Talk Gives Infant Brains a Boost", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Whatever Happened to the Harappan Civilisation?", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(3, sections, "c13t3r")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 4 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test4() -> str:
    ocr = load_ocr(4)

    # ── Passage 1: Cutty Sark ────────────────────────────────────────────────
    p1_body  = extract_between(ocr, "Cutty Sark: the fastest sailing ship of all time\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "true_false_notgiven",
            "label": "Questions 1–8",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 1,
                 "prompt": "Clippers were originally intended to be used as passenger ships.",
                 "answer": "FALSE",
                 "explanation": "Clippers were built to transport goods; some also took passengers, but that was not their original purpose.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "three-masted ships built to transport goods around the world, although some also took passengers"}},
                {"number": 2,
                 "prompt": "Cutty Sark was given the name of a character in a poem.",
                 "answer": "FALSE",
                 "explanation": "The name 'cutty sark' refers to the short nightdress the witch was wearing, not to a character.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "Cutty Sark's unusual name comes from the poem Tam O'Shanter by the Scottish poet Robert Burns. Tam, a farmer, is chased by a witch called Nannie, who is wearing a 'cutty sark' — an old Scottish name for a short nightdress"}},
                {"number": 3,
                 "prompt": "The contract between John Willis and Scott & Linton favoured Willis.",
                 "answer": "TRUE",
                 "explanation": "Willis ensured the contract put him in a very strong position, eventually forcing the firm out of business.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "ensured that the contract with them put him in a very strong position. In the end, the firm was forced out of business"}},
                {"number": 4,
                 "prompt": "John Willis wanted Cutty Sark to be the fastest tea clipper travelling between the UK and China.",
                 "answer": "TRUE",
                 "explanation": "Cutty Sark was designed to make the journey more quickly than any other ship.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "Cutty Sark was designed to make the journey more quickly than any other ship"}},
                {"number": 5,
                 "prompt": "Despite storm damage, Cutty Sark beat Thermopylae back to London.",
                 "answer": "FALSE",
                 "explanation": "Cutty Sark reached London a week after Thermopylae, not before.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "Cutty Sark reached London a week after Thermopylae"}},
                {"number": 6,
                 "prompt": "The opening of the Suez Canal meant that steam ships could travel between Britain and China faster than clippers.",
                 "answer": "TRUE",
                 "explanation": "Steam ships using the Suez Canal reduced the journey time between Britain and China by approximately two months.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "Steam ships reduced the journey time between Britain and China by approximately two months"}},
                {"number": 7,
                 "prompt": "Steam ships sometimes used the ocean route to travel between London and China.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage says clippers needed the ocean route and the canal was of no use to sailing ships, but does not say steam ships used the ocean route.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "the canal was of no use to sailing ships, which needed the much stronger winds of the oceans"}},
                {"number": 8,
                 "prompt": "Captain Woodget put Cutty Sark at risk of hitting an iceberg.",
                 "answer": "TRUE",
                 "explanation": "Woodget took the ship dangerously close to icebergs off the southern tip of South America.",
                 "evidence": {"sectionId": "p1", "ref": "7", "quote": "bringing her dangerously close to icebergs off the southern tip of South America"}},
            ],
        },
        {
            "id": "g2",
            "type": "completion",
            "label": "Questions 9–13",
            "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
            "questions": [
                {"number": 9,
                 "prompt": "After 1880, Cutty Sark carried _______ as its main cargo during its most successful time.",
                 "answer": ["wool"], "wordLimit": 1,
                 "explanation": "The most successful period involved transporting wool from Australia to Britain.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "the beginning of the most successful period in Cutty Sark's working life, transporting wool from Australia to Britain"}},
                {"number": 10,
                 "prompt": "As a captain and _______, Woodget was very skilled.",
                 "answer": ["navigator"], "wordLimit": 1,
                 "explanation": "Richard Woodget was an excellent navigator who got the best out of his ship and crew.",
                 "evidence": {"sectionId": "p1", "ref": "7", "quote": "The ship's next captain, Richard Woodget, was an excellent navigator"}},
                {"number": 11,
                 "prompt": "Ferreira went to Falmouth to repair damage that a _______ had caused.",
                 "answer": ["gale"], "wordLimit": 1,
                 "explanation": "She was badly damaged in a gale in 1922 and put into Falmouth harbour for repairs.",
                 "evidence": {"sectionId": "p1", "ref": "9", "quote": "Badly damaged in a gale in 1922, she was put into Falmouth harbor in southwest England, for repairs"}},
                {"number": 12,
                 "prompt": "Between 1923 and 1954, Cutty Sark was used for _______.",
                 "answer": ["training"], "wordLimit": 1,
                 "explanation": "Dowman used Cutty Sark as a training ship, and she continued in this role after his death.",
                 "evidence": {"sectionId": "p1", "ref": "10", "quote": "Dowman used Cutty Sark as a training ship, and she continued in this role after his death"}},
                {"number": 13,
                 "prompt": "Cutty Sark has twice been damaged by _______ in the 21st century.",
                 "answer": ["fire"], "wordLimit": 1,
                 "explanation": "The ship suffered from fire in 2007 and again, less seriously, in 2014.",
                 "evidence": {"sectionId": "p1", "ref": "10", "quote": "The ship suffered from fire in 2007, and again, less seriously, in 2014"}},
            ],
        },
    ]

    # ── Passage 2: Saving the Soil ───────────────────────────────────────────
    p2_body  = extract_between(ocr, "SAVING THE SOIL\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEFG")

    p2_groups = [
        {
            "id": "g3",
            "type": "short_answer",
            "label": "Questions 14–17",
            "instructions": "Complete the summary below. Write ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "Why soil degradation could be a disaster for humans",
            "summaryText": "Healthy soil contains a large variety of bacteria and other microorganisms, as well as plant remains and {14}. It provides us with food and also with antibiotics, and its function in storing {15} has a significant effect on the climate. In addition, it prevents damage to property and infrastructure because it holds {16}. If these microorganisms are lost, soil may lose its special properties. The main factor contributing to soil degradation is the {17} carried out by humans.",
            "questions": [
                {"number": 14, "prompt": "", "answer": ["minerals"], "wordLimit": 1,
                 "explanation": "A single gram of healthy soil contains bacteria and other microorganisms living amid decomposing plants and various minerals.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "living amid decomposing plants and various minerals"}},
                {"number": 15, "prompt": "", "answer": ["carbon"], "wordLimit": 1,
                 "explanation": "Microorganisms within soil lock in the carbon content of dead animals and plants.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "they lock in their carbon content, holding three times the amount of carbon as does the entire atmosphere"}},
                {"number": 16, "prompt": "", "answer": ["water"], "wordLimit": 1,
                 "explanation": "Soils store water, preventing flood damage.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "Soils also store water, preventing flood damage"}},
                {"number": 17, "prompt": "", "answer": ["agriculture"], "wordLimit": 1,
                 "explanation": "Agriculture is by far the biggest problem for soil degradation.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "Agriculture is by far the biggest problem"}},
            ],
        },
        {
            "id": "g4",
            "type": "matching",
            "label": "Questions 18–21",
            "instructions": "Complete each sentence with the correct ending, A–F below.",
            "options": [
                {"key": "A", "text": "may improve the number and quality of plants growing there."},
                {"key": "B", "text": "may contain data from up to nine countries."},
                {"key": "C", "text": "may not be put back into the soil."},
                {"key": "D", "text": "may help governments to be more aware of soil-related issues."},
                {"key": "E", "text": "may cause damage to different aspects of the environment."},
                {"key": "F", "text": "may be better for use at a global level."},
            ],
            "questions": [
                {"number": 18,
                 "prompt": "Nutrients contained in the unused parts of harvested crops",
                 "answer": "C",
                 "explanation": "Humans tend not to return unused parts of harvested crops directly to the soil.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "Humans tend not to return unused parts of harvested crops directly to the soil to enrich it"}},
                {"number": 19,
                 "prompt": "Synthetic fertilisers produced with the Haber-Bosch process",
                 "answer": "E",
                 "explanation": "Chemical fertilisers can release polluting nitrous oxide and turn soil acidic and salty.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "Chemical fertilisers can release polluting nitrous oxide into the atmosphere and excess is often washed away with the rain, releasing nitrogen into rivers"}},
                {"number": 20,
                 "prompt": "Addition of a mixture developed by Pius Floris to the soil",
                 "answer": "A",
                 "explanation": "When Floris's mix was applied to destroyed soils, a good crop of plants emerged.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "When they applied Floris's mix to the desert-like test plots, a good crop of plants emerged"}},
                {"number": 21,
                 "prompt": "The idea of zero net soil degradation",
                 "answer": "D",
                 "explanation": "Zero net land degradation is an easily understood target that can help shape expectations and encourage governmental action.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "it is an easily understood target that can help shape expectations and encourage action"}},
            ],
        },
        {
            "id": "g5",
            "type": "matching",
            "label": "Questions 22–26",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Which section contains the following information? You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
                {"key": "G", "text": "G"},
            ],
            "questions": [
                {"number": 22,
                 "prompt": "a reference to one person's motivation for a soil-improvement project",
                 "answer": "D",
                 "explanation": "Floris came to realise the best way to ensure his trees flourished was to take care of the soil.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "He came to realise that the best way to ensure his trees flourished was to take care of the soil"}},
                {"number": 23,
                 "prompt": "an explanation of how soil stayed healthy before the development of farming",
                 "answer": "C",
                 "explanation": "In the wild, nutrients removed by plants are returned when the plants die and decay.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "In the wild, when plants grow they remove nutrients from the soil, but then when the plants die and decay these nutrients are returned directly to the soil"}},
                {"number": 24,
                 "prompt": "examples of different ways of collecting information on soil degradation",
                 "answer": "F",
                 "explanation": "The Global Soil Map project collects data from field surveys, drone surveys, satellite imagery, and lab analyses.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "a database that can be fed measurements from field surveys, drone surveys, satellite imagery, lab analyses and so on"}},
                {"number": 25,
                 "prompt": "a suggestion for a way of keeping some types of soil safe in the near future",
                 "answer": "G",
                 "explanation": "Several researchers are pushing for the immediate creation of protected zones for endangered soils.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "Several researchers are agitating for the immediate creation of protected zones for endangered soils"}},
                {"number": 26,
                 "prompt": "a reason why it is difficult to provide an overview of soil degradation",
                 "answer": "F",
                 "explanation": "There is no agreed international system for classifying soil, making a global overview hard.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "there is no agreed international system for classifying soil"}},
            ],
        },
    ]

    # ── Passage 3: The Happiness Industry ───────────────────────────────────
    p3_body  = extract_between(ocr, "Book Review\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g6",
            "type": "multiple_choice",
            "label": "Questions 27–29",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
                {"number": 27,
                 "prompt": "What is the reviewer's attitude to advocates of positive psychology?",
                 "options": [
                     {"key": "A", "text": "They are wrong to reject the ideas of Bentham."},
                     {"key": "B", "text": "They are over-influenced by their study of Bentham's theories."},
                     {"key": "C", "text": "They have a fresh new approach to ideas on human happiness."},
                     {"key": "D", "text": "They are ignorant about the ideas they should be considering."},
                 ],
                 "answer": "D",
                 "explanation": "Advocates are described as 'oblivious to the vast philosophical literature' on happiness.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "Those who think in this way are oblivious to the vast philosophical literature in which the meaning and value of happiness have been explored and questioned"}},
                {"number": 28,
                 "prompt": "The reviewer refers to the Greek philosopher Aristotle in order to suggest that happiness",
                 "options": [
                     {"key": "A", "text": "may not be just pleasure and the absence of pain."},
                     {"key": "B", "text": "should not be the main goal of humans."},
                     {"key": "C", "text": "is not something that should be fought for."},
                     {"key": "D", "text": "is not just an abstract concept."},
                 ],
                 "answer": "A",
                 "explanation": "Aristotle identified happiness with self-realisation, contrasting with Bentham's view that it is simply pleasure and the absence of pain.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "The Greek philosopher Aristotle may have identified happiness with self-realisation in the 4th century BC, and thinkers throughout the ages may have struggled to reconcile the pursuit of happiness with other human values"}},
                {"number": 29,
                 "prompt": "According to Davies, Bentham's suggestion for linking the price of goods to happiness was significant because",
                 "options": [
                     {"key": "A", "text": "it was the first successful way of assessing happiness."},
                     {"key": "B", "text": "it established a connection between psychology and capitalism."},
                     {"key": "C", "text": "it was the first successful example of psychological research."},
                     {"key": "D", "text": "it involved consideration of the rights of consumers."},
                 ],
                 "answer": "B",
                 "explanation": "Davies writes that Bentham 'set the stage for the entangling of psychological research and capitalism that would shape the business practices of the twentieth century'.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "set the stage for the entangling of psychological research and capitalism that would shape the business practices of the twentieth century"}},
            ],
        },
        {
            "id": "g7",
            "type": "short_answer",
            "label": "Questions 30–34",
            "instructions": "Complete the summary using the list of words A–G below.",
            "summaryTitle": "Jeremy Bentham",
            "summaryText": "Jeremy Bentham was active in other areas besides philosophy. In the 1790s he suggested a type of technology to improve {30} for different Government departments. He developed a new way of printing banknotes to increase {31} and also designed a method for the {32} of food. He also drew up plans for a prison which allowed the {33} of prisoners at all times, and believed the same design could be used for other institutions as well. When researching happiness, he investigated possibilities for its {34}, and suggested some methods of doing this.",
            "wordBank": [
                {"key": "A", "text": "measurement"},
                {"key": "B", "text": "security"},
                {"key": "C", "text": "implementation"},
                {"key": "D", "text": "profits"},
                {"key": "E", "text": "observation"},
                {"key": "F", "text": "communication"},
                {"key": "G", "text": "preservation"},
            ],
            "questions": [
                {"number": 30, "prompt": "", "answer": ["communication", "F"], "wordLimit": 1,
                 "explanation": "Bentham suggested linking government departments through 'conversation tubes' — a communications technology.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "he wrote to the Home Office suggesting that the departments of government be linked together through a set of 'conversation tubes'"}},
                {"number": 31, "prompt": "", "answer": ["security", "B"], "wordLimit": 1,
                 "explanation": "Bentham designed a printing device that could produce unforgeable banknotes — increasing security.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "a design for a printing device that could produce unforgeable banknotes"}},
                {"number": 32, "prompt": "", "answer": ["preservation", "G"], "wordLimit": 1,
                 "explanation": "Bentham drew up plans for a 'frigidarium' to keep provisions fresh — a preservation method.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "He drew up plans for a 'frigidarium' to keep provisions such as meat, fish, fruit and vegetables fresh"}},
                {"number": 33, "prompt": "", "answer": ["observation", "E"], "wordLimit": 1,
                 "explanation": "The Panopticon prison design kept prisoners visible to guards at all times — enabling observation.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "prisoners would be kept in solitary confinement while being visible at all times to the guards"}},
                {"number": 34, "prompt": "", "answer": ["measurement", "A"], "wordLimit": 1,
                 "explanation": "Bentham suggested happiness had to be measured, and proposed two ways of doing so.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "If happiness is to be regarded as a science, it has to be measured, and Bentham suggested two ways in which this might be done"}},
            ],
        },
        {
            "id": "g8",
            "type": "yes_no_notgiven",
            "label": "Questions 35–40",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {"number": 35,
                 "prompt": "One strength of The Happiness Industry is its discussion of the relationship between psychology and economics.",
                 "answer": "YES",
                 "explanation": "Davies shows how economic problems are redefined as psychological maladies, and describes the book as rich, lucid and arresting.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "The Happiness Industry describes how the project of a science of happiness has become integral to capitalism. We learn much that is interesting about how economic problems are being redefined and treated as psychological maladies"}},
                {"number": 36,
                 "prompt": "It is more difficult to measure some emotions than others.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage discusses measuring happiness but makes no comparison of difficulty across different emotions.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "Bentham suggested two ways in which this might be done"}},
                {"number": 37,
                 "prompt": "Watson's ideas on behaviourism were supported by research on humans he carried out before 1915.",
                 "answer": "NO",
                 "explanation": "When he became president of the APA in 1915, Watson had never even studied a single human being; his research was confined to experiments on white rats.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "when he became president of the American Psychological Association in 1915, he 'had never even studied a single human being'"}},
                {"number": 38,
                 "prompt": "Watson's ideas have been most influential on governments outside America.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage gives a UK example but does not state Watson's ideas were most influential outside America.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "in Britain, a 'Behaviour Insights Team' has been established by the government"}},
                {"number": 39,
                 "prompt": "The need for happiness is linked to industrialisation.",
                 "answer": "YES",
                 "explanation": "Modern industrial societies appear to need the possibility of ever-increasing happiness to motivate them in their labours.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "Modern industrial societies appear to need the possibility of ever-increasing happiness to motivate them in their labours"}},
                {"number": 40,
                 "prompt": "A main aim of government should be to increase the happiness of the population.",
                 "answer": "NO",
                 "explanation": "The writer says that governments promoting happiness is always a threat to human freedom.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "the idea that governments should be responsible for promoting happiness is always a threat to human freedom"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Cutty Sark: The Fastest Sailing Ship of All Time", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Saving the Soil", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "The Happiness Industry", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(4, sections, "c13t4r")


# ─────────────────────────────────────────────────────────────────────────────
# ── MAIN ─────────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def main():
    arg = sys.argv[1] if len(sys.argv) > 1 else "all"
    tests = [1, 2, 3, 4] if arg == "all" else [int(arg)]

    builders = {1: build_test1, 2: build_test2, 3: build_test3, 4: build_test4}

    OUT_DIR.mkdir(exist_ok=True)
    for t in tests:
        print(f"Building Test {t}…")
        sql = builders[t]()
        # Fix any stray "instruction": → "instructions":
        sql = sql.replace('"instruction":', '"instructions":')
        out = OUT_DIR / f"cambridge13-test{t}-reading.sql"
        delete = (
            f"DELETE FROM public.tests\n"
            f"WHERE skill = 'reading' AND book = 'Cambridge IELTS 13' AND test_label = 'Test {t}';\n\n"
        )
        out.write_text(delete + sql, encoding="utf-8")
        print(f"  → {out}  ({out.stat().st_size:,} bytes)")

    print("\nDone.")


if __name__ == "__main__":
    main()
