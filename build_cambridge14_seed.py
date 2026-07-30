"""
Build SQL seed files for Cambridge IELTS 14 reading tests.

Usage:
    python build_cambridge14_seed.py [1|2|3|4|all]

Outputs:
    supabase/cambridge14-test1-reading.sql
    supabase/cambridge14-test2-reading.sql
    supabase/cambridge14-test3-reading.sql
    supabase/cambridge14-test4-reading.sql
"""

import json
import pathlib
import re
import sys

OCR_BASE = pathlib.Path("ocr_output/cambridge_14")
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
    return (
        f"INSERT INTO public.tests "
        f"(skill, book, test_label, variant, duration_seconds, content, published)\n"
        f"VALUES (\n"
        f"  'reading',\n"
        f"  'Cambridge IELTS 14',\n"
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

    # ── Passage 1: The Importance of Children's Play ─────────────────────────
    p1_body  = extract_between(ocr, "THE IMPORTANCE OF CHILDREN’S PLAY\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–8",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "Children's play",
            "formContent": [
                {"kind": "subheader", "text": "Uses of children's play"},
                {"kind": "question", "number": 1, "sub": True},
                {"kind": "question", "number": 2, "sub": True},
                {"kind": "subheader", "text": "Recent changes affecting children's play"},
                {"kind": "question", "number": 3, "sub": True},
                {"kind": "static", "text": "opportunities for free play are limited due to:"},
                {"kind": "question", "number": 4, "sub": True},
                {"kind": "question", "number": 5, "sub": True},
                {"kind": "question", "number": 6, "sub": True},
                {"kind": "subheader", "text": "International policies on children's play"},
                {"kind": "question", "number": 7, "sub": True},
                {"kind": "question", "number": 8, "sub": True},
            ],
            "questions": [
                {"number": 1,
                 "prompt": "building a 'magical kingdom' may help develop _______",
                 "answer": ["creativity"], "wordLimit": 1,
                 "explanation": "The fantasy of building a magical kingdom helps children take their first steps towards creativity.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "helping her take her first steps towards her capacity for creativity"}},
                {"number": 2,
                 "prompt": "board games involve _______ and turn-taking",
                 "answer": ["rules"], "wordLimit": 1,
                 "explanation": "Board games teach children about the need to follow rules and take turns.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "she's learning about the need to follow rules and take turns with a partner"}},
                {"number": 3,
                 "prompt": "population of _______ have grown",
                 "answer": ["cities"], "wordLimit": 1,
                 "explanation": "Over half the world's population now live in cities, affecting opportunities for play.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "over half the people in the world now live in cities"}},
                {"number": 4,
                 "prompt": "fear of _______",
                 "answer": ["traffic"], "wordLimit": 1,
                 "explanation": "Outdoor play is curtailed by perceptions of risk to do with traffic.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "Outdoor play is curtailed by perceptions of risk to do with traffic"}},
                {"number": 5,
                 "prompt": "fear of _______",
                 "answer": ["crime"], "wordLimit": 1,
                 "explanation": "Parents' increased wish to protect children from being victims of crime limits play.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "parents' increased wish to protect their children from being the victims of crime"}},
                {"number": 6,
                 "prompt": "increased _______ in schools",
                 "answer": ["competition"], "wordLimit": 1,
                 "explanation": "Greater competition in academic learning and schools limits free play.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "greater competition in academic learning and schools"}},
                {"number": 7,
                 "prompt": "it is difficult to find _______ to support new policies",
                 "answer": ["evidence"], "wordLimit": 1,
                 "explanation": "International bodies often lack the evidence to base policies on.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "what they often lack is the evidence to base policies on"}},
                {"number": 8,
                 "prompt": "research needs to study the impact of play on the rest of the child's _______",
                 "answer": ["life"], "wordLimit": 1,
                 "explanation": "There is very little data on the long-term impact play has on a child's life.",
                 "evidence": {"sectionId": "p1", "ref": "7", "quote": "there is very little data on the impact it has on the child's later life"}},
            ],
        },
        {
            "id": "g2",
            "type": "true_false_notgiven",
            "label": "Questions 9–13",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 9,
                 "prompt": "Children with good self-control are known to be likely to do well at school later on.",
                 "answer": "TRUE",
                 "explanation": "The ability to self-regulate has been shown to be a key predictor of academic performance.",
                 "evidence": {"sectionId": "p1", "ref": "10", "quote": "the ability to self-regulate has been shown to be a key predictor of academic performance"}},
                {"number": 10,
                 "prompt": "The way a child plays may provide information about possible medical problems.",
                 "answer": "TRUE",
                 "explanation": "Observing children at play can give useful clues about well-being and help diagnose neurodevelopmental disorders.",
                 "evidence": {"sectionId": "p1", "ref": "11", "quote": "observing children at play can give us important clues about their well-being and can even be useful in the diagnosis of neurodevelopmental disorders like autism"}},
                {"number": 11,
                 "prompt": "Playing with dolls was found to benefit girls' writing more than boys' writing.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions girls playing with dolls improved story writing, but makes no gender comparison.",
                 "evidence": {"sectionId": "p1", "ref": "12", "quote": "Children wrote longer and better-structured stories when they first played with dolls"}},
                {"number": 12,
                 "prompt": "Children had problems thinking up ideas when they first created the story with Lego.",
                 "answer": "FALSE",
                 "explanation": "Not a single child said they didn't know what to write about during the whole Lego project.",
                 "evidence": {"sectionId": "p1", "ref": "12", "quote": "not a single child said this through the whole year of the project"}},
                {"number": 13,
                 "prompt": "People nowadays regard children's play as less significant than they did in the past.",
                 "answer": "TRUE",
                 "explanation": "Play is now regarded as trivial or even negative compared with 'work'.",
                 "evidence": {"sectionId": "p1", "ref": "13", "quote": "It's regarded as something trivial, or even as something negative that contrasts with 'work'"}},
            ],
        },
    ]

    # ── Passage 2: The Growth of Bike-Sharing Schemes ────────────────────────
    p2_body  = extract_between(ocr, "The growth of bike-sharing schemes around the world\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEFG")

    p2_groups = [
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 14–18",
            "instructions": "The Reading Passage has seven paragraphs, A–G. Which paragraph contains the following information? You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
                {"key": "G", "text": "G"},
            ],
            "questions": [
                {"number": 14,
                 "prompt": "a description of how people misused a bike-sharing scheme",
                 "answer": "D",
                 "explanation": "Paragraph D describes how the public stole or damaged the white bikes.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "the public either stole or vandalised them"}},
                {"number": 15,
                 "prompt": "an explanation of why a proposed bike-sharing scheme was turned down",
                 "answer": "C",
                 "explanation": "Paragraph C explains Copenhagen's scheme was rejected for financial reasons.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "the city council unanimously rejected the idea, preferring to use the money for other projects"}},
                {"number": 16,
                 "prompt": "a reference to a person being unable to profit from their work",
                 "answer": "G",
                 "explanation": "Paragraph G notes Schimmelpennink never received a fee for his consulting work.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "he never received a fee for his consulting work"}},
                {"number": 17,
                 "prompt": "an explanation of the potential savings a bike-sharing scheme would bring",
                 "answer": "C",
                 "explanation": "Paragraph C explains the financial savings the Copenhagen scheme would deliver.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "the bikes would pay for themselves within a month"}},
                {"number": 18,
                 "prompt": "a reference to the problems a bike-sharing scheme was intended to solve",
                 "answer": "A",
                 "explanation": "Paragraph A describes the scheme as an answer to air pollution and consumerism.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "an answer to the perceived threats of air pollution and consumerism"}},
            ],
        },
        {
            "id": "g4",
            "type": "choose_two",
            "label": "Questions 19–20",
            "instructions": "Choose TWO letters, A–E. Which TWO of the following statements are made in the text about the Amsterdam bike-sharing scheme of 1999?",
            "options": [
                {"key": "A", "text": "It was initially opposed by a government department."},
                {"key": "B", "text": "It failed when a partner in the scheme withdrew support."},
                {"key": "C", "text": "It aimed to be more successful than the Copenhagen scheme."},
                {"key": "D", "text": "It was made possible by a change in people's attitudes."},
                {"key": "E", "text": "It attracted interest from a range of bike designers."},
            ],
            "questions": [
                {"number": 19,
                 "prompt": "Which TWO statements are made about the Amsterdam bike-sharing scheme of 1999? (first answer)",
                 "answer": "B",
                 "explanation": "The 1999 Amsterdam scheme collapsed when Postbank withdrew support.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "Postbank withdrew at the last moment"}},
                {"number": 20,
                 "prompt": "Which TWO statements are made about the Amsterdam bike-sharing scheme of 1999? (second answer)",
                 "answer": "D",
                 "explanation": "The scheme was made possible because public attitudes had changed.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "attitudes had changed since the 1960s"}},
            ],
        },
        {
            "id": "g5",
            "type": "choose_two",
            "label": "Questions 21–22",
            "instructions": "Choose TWO letters, A–E. Which TWO of the following statements are made in the text about Amsterdam today?",
            "options": [
                {"key": "A", "text": "The majority of residents would like to prevent all cars from entering the city."},
                {"key": "B", "text": "There is little likelihood of the city having another bike-sharing scheme."},
                {"key": "C", "text": "More trips in the city are made by bike than by any other form of transport."},
                {"key": "D", "text": "A bike-sharing scheme would benefit residents who use public transport."},
                {"key": "E", "text": "The city has a reputation as a place that welcomes cyclists."},
            ],
            "questions": [
                {"number": 21,
                 "prompt": "Which TWO statements are made about Amsterdam today? (first answer)",
                 "answer": "D",
                 "explanation": "A bike-sharing scheme would complement the city's public transport.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "complement the city's well-developed public transport network"}},
                {"number": 22,
                 "prompt": "Which TWO statements are made about Amsterdam today? (second answer)",
                 "answer": "E",
                 "explanation": "Amsterdam is known as a cycling city and is bike-friendly.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "Amsterdam is already known as a cycling city"}},
            ],
        },
        {
            "id": "g6",
            "type": "completion",
            "label": "Questions 23–26",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "The first urban bike-sharing scheme",
            "summaryText": "The first bike-sharing scheme was the idea of the Dutch group Provo. The people who belonged to this group were {23}. They were concerned about damage to the environment and about {24}, and believed that the bike-sharing scheme would draw attention to these issues. As well as painting some bikes white, they handed out {25} that condemned the use of cars. However, the scheme was not a great success: almost as quickly as Provo left the bikes around the city, the {26} took them away.",
            "questions": [
                {"number": 23,
                 "prompt": "", "answer": ["activists"], "wordLimit": 1,
                 "explanation": "Provo was a group of Dutch activists.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "a group of Dutch activists"}},
                {"number": 24,
                 "prompt": "", "answer": ["consumerism"], "wordLimit": 1,
                 "explanation": "They were concerned about air pollution and consumerism.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "the perceived threats of air pollution and consumerism"}},
                {"number": 25,
                 "prompt": "", "answer": ["leaflets"], "wordLimit": 1,
                 "explanation": "Provo distributed leaflets describing the dangers of cars.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "They also distributed leaflets describing the dangers of cars"}},
                {"number": 26,
                 "prompt": "", "answer": ["police"], "wordLimit": 1,
                 "explanation": "The police took the bikes away almost as quickly as Provo left them.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "The police were not amused and kept removing the bikes"}},
            ],
        },
    ]

    # ── Passage 3: Motivational Factors and the Hospitality Industry ──────────
    p3_body  = extract_between(ocr, "Motivational factors and the hospitality industry\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g7",
            "type": "matching",
            "label": "Questions 27–31",
            "instructions": "Look at the following statements and the list of researchers below. Match each statement with the correct researcher, A–F. You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Pfeffer"},
                {"key": "B", "text": "Lucas"},
                {"key": "C", "text": "Maroudas et al."},
                {"key": "D", "text": "Ng and Sorensen"},
                {"key": "E", "text": "Enz and Siguaw"},
                {"key": "F", "text": "Deery"},
            ],
            "questions": [
                {"number": 27,
                 "prompt": "Hotel managers need to know what would encourage good staff to remain.",
                 "answer": "E",
                 "explanation": "Enz and Siguaw emphasised the importance of retaining quality staff.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "Enz and Siguaw (2000) identified practices that managers believed were most important for retaining employees"}},
                {"number": 28,
                 "prompt": "The actions of managers may make staff feel they shouldn't move to a different employer.",
                 "answer": "D",
                 "explanation": "Ng and Sorensen found supervisor support reduces employees' intention to leave.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "Ng and Sorensen (2008) found that when managers showed concern for the well-being of employees, the employees were less likely to want to leave"}},
                {"number": 29,
                 "prompt": "Little is done in the hospitality industry to help workers improve their skills.",
                 "answer": "B",
                 "explanation": "Lucas noted that skills training is neglected in the hospitality sector.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "Lucas (2004) argued that in the hospitality industry, in particular, there was a prevalence of low-skilled, poor-quality jobs"}},
                {"number": 30,
                 "prompt": "Staff are less likely to change jobs if cooperation is encouraged.",
                 "answer": "D",
                 "explanation": "Ng and Sorensen found teamwork lowers turnover intention.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "encouraging teamwork and positive relations led to lower turnover intentions"}},
                {"number": 31,
                 "prompt": "Dissatisfaction with pay is not the only reason why hospitality workers change jobs.",
                 "answer": "C",
                 "explanation": "Maroudas et al. showed that other motivational factors beyond pay affect turnover.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "Maroudas et al. (2008) identified two key factors that motivated employees to stay: interesting work and recognition"}},
            ],
        },
        {
            "id": "g8",
            "type": "yes_no_notgiven",
            "label": "Questions 32–35",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {"number": 32,
                 "prompt": "One reason for high staff turnover in the hospitality industry is poor morale.",
                 "answer": "YES",
                 "explanation": "The writer states that low morale among hotel staff contributes to high turnover.",
                 "evidence": {"sectionId": "p3", "ref": "1", "quote": "high staff turnover is a persistent problem in the industry"}},
                {"number": 33,
                 "prompt": "Research has shown that staff have a tendency to dislike their workplace.",
                 "answer": "NO",
                 "explanation": "Research does not show staff dislike their workplace; rather, they lack sufficient motivation to stay.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "employees may be satisfied with some aspects of their job while being dissatisfied with others"}},
                {"number": 34,
                 "prompt": "An improvement in working conditions and job security makes staff satisfied with their jobs.",
                 "answer": "NO",
                 "explanation": "Better conditions prevent dissatisfaction but don't necessarily create positive satisfaction.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "the absence of dissatisfaction is not the same as satisfaction"}},
                {"number": 35,
                 "prompt": "Staff should be allowed to choose when they take breaks during the working day.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage does not discuss scheduling of breaks.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "activities designed for fun at work"}},
            ],
        },
        {
            "id": "g9",
            "type": "completion",
            "label": "Questions 36–40",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "Fun at work",
            "summaryText": "Tews, Michel and Stafford carried out research on staff in an American chain of {36}. They discovered that activities designed for staff to have fun improved their {37}, and that management involvement led to lower staff {38}. They also found that the activities needed to fit with both the company's {39} and the {40} of the staff. A balance was required between a degree of freedom and maintaining work standards.",
            "questions": [
                {"number": 36,
                 "prompt": "", "answer": ["restaurants"], "wordLimit": 1,
                 "explanation": "The research was conducted in a chain of casual dining restaurants.",
                 "evidence": {"sectionId": "p3", "ref": "8", "quote": "a chain of casual-dining restaurants"}},
                {"number": 37,
                 "prompt": "", "answer": ["performance"], "wordLimit": 1,
                 "explanation": "Fun activities improved employee performance.",
                 "evidence": {"sectionId": "p3", "ref": "8", "quote": "fun activities improved performance"}},
                {"number": 38,
                 "prompt": "", "answer": ["turnover"], "wordLimit": 1,
                 "explanation": "Manager support for fun activities was linked to lower staff turnover.",
                 "evidence": {"sectionId": "p3", "ref": "8", "quote": "manager support for fun led to lower turnover"}},
                {"number": 39,
                 "prompt": "", "answer": ["goals"], "wordLimit": 1,
                 "explanation": "Fun activities must be consistent with the organisation's goals.",
                 "evidence": {"sectionId": "p3", "ref": "8", "quote": "the activities needed to be consistent with the goals of the organisation"}},
                {"number": 40,
                 "prompt": "", "answer": ["characteristics"], "wordLimit": 1,
                 "explanation": "The activities also need to fit the characteristics of employees.",
                 "evidence": {"sectionId": "p3", "ref": "8", "quote": "the characteristics of the employees"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "The Importance of Children's Play", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "The Growth of Bike-Sharing Schemes Around the World", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Motivational Factors and the Hospitality Industry", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(1, sections, "c14t1r")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 2 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test2() -> str:
    ocr = load_ocr(2)

    # ── Passage 1: Alexander Henderson ───────────────────────────────────────
    p1_body  = extract_between(ocr, "Alexander Henderson (1831-1913)\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "true_false_notgiven",
            "label": "Questions 1–8",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 1,
                 "prompt": "Henderson rarely visited the area around Press estate when he was younger.",
                 "answer": "FALSE",
                 "explanation": "Alexander spent much of his childhood in the area, playing on the beach and fishing nearby.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "Alexander spent much of his childhood in the area"}},
                {"number": 2,
                 "prompt": "Henderson pursued a business career because it was what his family wanted.",
                 "answer": "TRUE",
                 "explanation": "Although he never liked the prospect of a business career, he stayed with it to please his family.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "Although he never liked the prospect of a business career, he stayed with it to please his family"}},
                {"number": 3,
                 "prompt": "Henderson and Notman were surprised by the results of their 1865 experiment.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage describes their experiments but does not say whether the results surprised them.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "they cooperated on experiments with magnesium flares as a source of artificial light in 1865"}},
                {"number": 4,
                 "prompt": "There were many similarities between Henderson's early landscapes and those of Notman.",
                 "answer": "FALSE",
                 "explanation": "In spite of their friendship, their styles of photography were quite different.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "their styles of photography were quite different"}},
                {"number": 5,
                 "prompt": "The studio that Henderson opened in 1866 was close to his home.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage says he opened a studio in 1866 but gives no information about its location relative to his home.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "In 1866, he gave up his business to open a photographic studio"}},
                {"number": 6,
                 "prompt": "Henderson gave up portraiture so that he could focus on taking photographs of scenery.",
                 "answer": "TRUE",
                 "explanation": "From about 1870 he dropped portraiture to specialize in landscape photography.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "From about 1870 he dropped portraiture to specialize in landscape photography"}},
                {"number": 7,
                 "prompt": "When Henderson began work for the Intercolonial Railway, the Montreal to Halifax line had been finished.",
                 "answer": "FALSE",
                 "explanation": "The commission was to record the principal structures along the almost-completed line.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "the almost-completed line connecting Montreal to Halifax"}},
                {"number": 8,
                 "prompt": "Henderson's last work as a photographer was with the Canadian Pacific Railway.",
                 "answer": "TRUE",
                 "explanation": "He continued railway photographic work until 1897, when he retired completely.",
                 "evidence": {"sectionId": "p1", "ref": "7", "quote": "He continued in this post until 1897, when he retired completely from photography"}},
            ],
        },
        {
            "id": "g2",
            "type": "completion",
            "label": "Questions 9–13",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "Alexander Henderson",
            "formContent": [
                {"kind": "subheader", "text": "Early life"},
                {"kind": "question", "number": 9, "sub": True},
                {"kind": "static", "text": "trained as an accountant, emigrated to Canada in 1855"},
                {"kind": "subheader", "text": "Start of a photographic career"},
                {"kind": "static", "text": "opened up a photographic studio in 1866"},
                {"kind": "static", "text": "took photos of city life, but preferred landscape photography"},
                {"kind": "question", "number": 10, "sub": True},
                {"kind": "question", "number": 11, "sub": True},
                {"kind": "subheader", "text": "Travelling as a professional photographer"},
                {"kind": "static", "text": "travelled widely in Quebec and Ontario in 1870s and 1880s"},
                {"kind": "question", "number": 12, "sub": True},
                {"kind": "static", "text": "worked for Canadian railways between 1875 and 1897"},
                {"kind": "question", "number": 13, "sub": True},
            ],
            "questions": [
                {"number": 9,
                 "prompt": "was born in Scotland in 1831 — father was a _______",
                 "answer": ["merchant"], "wordLimit": 1,
                 "explanation": "Alexander Henderson was the son of a successful merchant.",
                 "evidence": {"sectionId": "p1", "ref": "1", "quote": "was the son of a successful merchant"}},
                {"number": 10,
                 "prompt": "people bought Henderson's photos because photography took up considerable time and _______ was heavy",
                 "answer": ["equipment"], "wordLimit": 1,
                 "explanation": "There was little competing amateur photography because of the time-consuming techniques and heavy equipment.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "the time-consuming techniques involved and the weight of equipment"}},
                {"number": 11,
                 "prompt": "the photographs Henderson sold were _______ or souvenirs",
                 "answer": ["gifts"], "wordLimit": 1,
                 "explanation": "People wanted to buy photographs as souvenirs of a trip or as gifts.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "People wanted to buy photographs as souvenirs of a trip or as gifts"}},
                {"number": 12,
                 "prompt": "took many trips along eastern rivers in a _______",
                 "answer": ["canoe"], "wordLimit": 1,
                 "explanation": "He was especially fond of the wilderness and often travelled by canoe on eastern rivers.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "often travelled by canoe on the Blanche, du Liévre, and other noted eastern rivers"}},
                {"number": 13,
                 "prompt": "worked for CPR in 1885 and photographed the _______ and the railway at Rogers Pass",
                 "answer": ["mountains"], "wordLimit": 1,
                 "explanation": "He went west along the CPR to Rogers Pass where he photographed the mountains.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "he took photographs of the mountains and the railway at Rogers Pass"}},
            ],
        },
    ]

    # ── Passage 2: Back to the Future of Skyscraper Design ───────────────────
    p2_body  = extract_between(ocr, "Back to the future of skyscraper design\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEFGHI")

    p2_groups = [
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 14–18",
            "instructions": "The Reading Passage has nine sections, A–I. Which section contains the following information? Write the correct letter, A–I.",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
                {"key": "G", "text": "G"}, {"key": "H", "text": "H"},
                {"key": "I", "text": "I"},
            ],
            "questions": [
                {"number": 14,
                 "prompt": "why some people avoided hospitals in the 19th century",
                 "answer": "E",
                 "explanation": "Section E explains that people feared the bad air in hospitals.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "people feared going to hospital because of the bad air"}},
                {"number": 15,
                 "prompt": "a suggestion that the popularity of tall buildings is linked to prestige",
                 "answer": "C",
                 "explanation": "Section C suggests skyscrapers became status symbols.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "became a symbol of prestige and success"}},
                {"number": 16,
                 "prompt": "a comparison between the circulation of air in a 19th-century building and modern standards",
                 "answer": "D",
                 "explanation": "Section D shows that old hospital wards exceeded modern ventilation rates.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "exceeding the current standards for operating theatres"}},
                {"number": 17,
                 "prompt": "how Short tested the circulation of air in a 19th-century building",
                 "answer": "D",
                 "explanation": "Section D describes Short's modelling of air circulation in a Victorian hospital.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "Short modelled the air-flow performance of the building"}},
                {"number": 18,
                 "prompt": "an implication that advertising led to the large increase in the use of air conditioning",
                 "answer": "B",
                 "explanation": "Section B implies the air-conditioning industry drove its own adoption through advertising.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "the air-conditioning industry promoted the idea that fresh air was dangerous"}},
            ],
        },
        {
            "id": "g4",
            "type": "completion",
            "label": "Questions 19–26",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "Ventilation in 19th-century hospital wards",
            "summaryText": "Professor Alan Short examined the work of John Shaw Billings, who influenced the architectural {19} of hospitals to ensure they had good ventilation. He calculated that {20} in the air coming from patients suffering from {21} would not have harmed other patients. He also found that the air in {22} hospitals could change as often as in a modern operating theatre. He suggests that energy use could be reduced by locating more patients in {23} areas. A major reason for improving ventilation in 19th-century hospitals was the demand from the {24} for protection against bad air, known as {25}. These were blamed for the spread of disease for hundreds of years, including epidemics of {26} in London and Paris in the middle of the 19th century.",
            "questions": [
                {"number": 19,
                 "prompt": "", "answer": ["design"], "wordLimit": 1,
                 "explanation": "Billings influenced the design of hospital wards for better ventilation.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "influenced the architectural design of hospital wards"}},
                {"number": 20,
                 "prompt": "", "answer": ["pathogens"], "wordLimit": 1,
                 "explanation": "Pathogens in the air from infected patients would have been diluted.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "pathogens would have been diluted"}},
                {"number": 21,
                 "prompt": "", "answer": ["tuberculosis"], "wordLimit": 1,
                 "explanation": "The calculation covered patients suffering from tuberculosis.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "patients suffering from tuberculosis"}},
                {"number": 22,
                 "prompt": "", "answer": ["wards"], "wordLimit": 1,
                 "explanation": "The Victorian hospital wards could change their air as often as a modern theatre.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "the air in the wards could change"}},
                {"number": 23,
                 "prompt": "", "answer": ["communal"], "wordLimit": 1,
                 "explanation": "Locating more patients in communal areas could reduce energy use.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "placing patients in communal areas"}},
                {"number": 24,
                 "prompt": "", "answer": ["public"], "wordLimit": 1,
                 "explanation": "Public demand for protection from miasmas drove ventilation improvements.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "the demand from the public for protection from bad air"}},
                {"number": 25,
                 "prompt": "", "answer": ["miasmas"], "wordLimit": 1,
                 "explanation": "The bad air was known as miasmas and was blamed for spreading disease.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "bad air, known as miasmas"}},
                {"number": 26,
                 "prompt": "", "answer": ["cholera"], "wordLimit": 1,
                 "explanation": "Epidemics of cholera in London and Paris were blamed on miasmas.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "epidemics of cholera in London and Paris"}},
            ],
        },
    ]

    # ── Passage 3: Why Companies Should Welcome Disorder ─────────────────────
    p3_body  = extract_between(ocr, "Why companies should welcome disorder\n", "PART 3 — QUESTIONS")
    p3_paras = parse_lettered_paras(p3_body, "ABCDEFGH")

    p3_groups = [
        {
            "id": "g5",
            "type": "matching",
            "label": "Questions 27–34",
            "instructions": "The Reading Passage has eight sections, A–H. Choose the correct heading for each section from the list of headings below.",
            "options": [
                {"key": "i",    "text": "Complaints about the impact of a certain approach"},
                {"key": "ii",   "text": "Fundamental beliefs that are in fact incorrect"},
                {"key": "iii",  "text": "Early recommendations concerning business activities"},
                {"key": "iv",   "text": "Organisations that put a new approach into practice"},
                {"key": "v",    "text": "Companies that have suffered from changing their approach"},
                {"key": "vi",   "text": "What people are increasingly expected to do"},
                {"key": "vii",  "text": "How to achieve outcomes that are currently impossible"},
                {"key": "viii", "text": "Neither approach guarantees continuous improvement"},
                {"key": "ix",   "text": "Evidence that a certain approach can have more disadvantages than advantages"},
            ],
            "questions": [
                {"number": 27, "prompt": "Section A", "answer": "vi",
                 "explanation": "Section A describes the expectation to organise every aspect of life and work.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "we ought to organize our company, our home life, our week, our day"}},
                {"number": 28, "prompt": "Section B", "answer": "i",
                 "explanation": "Section B describes complaints that excessive organisation drives out creativity.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "rhetoric has also crept into the thinking of business leaders"}},
                {"number": 29, "prompt": "Section C", "answer": "iii",
                 "explanation": "Section C refers to early management thinking about organising business.",
                 "evidence": {"sectionId": "p3", "ref": "C", "quote": "Frederick Winslow Taylor's principles of scientific management"}},
                {"number": 30, "prompt": "Section D", "answer": "ii",
                 "explanation": "Section D challenges the belief that efficiency always improves performance.",
                 "evidence": {"sectionId": "p3", "ref": "D", "quote": "the commonly held belief that a more organized approach to business is always beneficial"}},
                {"number": 31, "prompt": "Section E", "answer": "ix",
                 "explanation": "Section E gives evidence that order has more disadvantages than benefits.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "too much organisation can be harmful"}},
                {"number": 32, "prompt": "Section F", "answer": "vii",
                 "explanation": "Section F discusses how to achieve innovation that current organisations cannot.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "achieve the kind of breakthrough innovations that rigid organisations cannot"}},
                {"number": 33, "prompt": "Section G", "answer": "iv",
                 "explanation": "Section G names companies like Google that adopt flexible, disorder-friendly approaches.",
                 "evidence": {"sectionId": "p3", "ref": "G", "quote": "Google's '20 per cent time'"}},
                {"number": 34, "prompt": "Section H", "answer": "viii",
                 "explanation": "Section H concludes that neither order nor disorder alone guarantees success.",
                 "evidence": {"sectionId": "p3", "ref": "H", "quote": "neither complete order nor complete disorder is optimal"}},
            ],
        },
        {
            "id": "g6",
            "type": "completion",
            "label": "Questions 35–37",
            "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
            "formContent": [
                {"kind": "question", "number": 35},
                {"kind": "question", "number": 36},
                {"kind": "question", "number": 37},
            ],
            "questions": [
                {"number": 35,
                 "prompt": "Numerous training sessions are aimed at people who feel they are not _______ enough.",
                 "answer": ["productive"], "wordLimit": 1,
                 "explanation": "Workshops tell people they ought to structure their lives to become more productive.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "all as a means to becoming more productive"}},
                {"number": 36,
                 "prompt": "Being organised appeals to people who regard themselves as _______.",
                 "answer": ["perfectionists"], "wordLimit": 1,
                 "explanation": "This rhetoric delights self-proclaimed perfectionists.",
                 "evidence": {"sectionId": "p3", "ref": "B", "quote": "self-proclaimed perfectionists with the need to get everything right"}},
                {"number": 37,
                 "prompt": "Many people feel _______ with aspects of their work.",
                 "answer": ["dissatisfied"], "wordLimit": 1,
                 "explanation": "People feel dissatisfied with various aspects of their working lives.",
                 "evidence": {"sectionId": "p3", "ref": "E", "quote": "people feel dissatisfied with aspects of their work"}},
            ],
        },
        {
            "id": "g7",
            "type": "true_false_notgiven",
            "label": "Questions 38–40",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 38,
                 "prompt": "Both businesses and people aim at order without really considering its value.",
                 "answer": "TRUE",
                 "explanation": "The pursuit of organisation is pervasive but its value is rarely questioned.",
                 "evidence": {"sectionId": "p3", "ref": "A", "quote": "a multi-billion dollar industry helps to meet this need"}},
                {"number": 39,
                 "prompt": "Innovation is most successful if the people involved have distinct roles.",
                 "answer": "FALSE",
                 "explanation": "Innovation is more successful when people have flexible, overlapping roles.",
                 "evidence": {"sectionId": "p3", "ref": "F", "quote": "rigid job descriptions can limit creativity"}},
                {"number": 40,
                 "prompt": "Google was inspired to adopt flexibility by the success of General Electric.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions Google's flexible approach but does not link it to General Electric.",
                 "evidence": {"sectionId": "p3", "ref": "G", "quote": "Google's '20 per cent time'"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "Alexander Henderson (1831–1913)", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Back to the Future of Skyscraper Design", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "Why Companies Should Welcome Disorder", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(2, sections, "c14t2r")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 3 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test3() -> str:
    ocr = load_ocr(3)

    # ── Passage 1: The Concept of Intelligence ───────────────────────────────
    p1_body  = extract_between(ocr, "The concept of intelligence\n", "PART 1 — QUESTIONS")
    p1_paras = parse_lettered_paras(p1_body, "ABCDEFGHIJ")

    p1_groups = [
        {
            "id": "g1",
            "type": "matching",
            "label": "Questions 1–3",
            "instructions": "The Reading Passage has ten sections, A–J. Which section contains the following information?",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
                {"key": "G", "text": "G"}, {"key": "H", "text": "H"},
                {"key": "I", "text": "I"}, {"key": "J", "text": "J"},
            ],
            "questions": [
                {"number": 1,
                 "prompt": "information about how non-scientists' assumptions about intelligence influence their behaviour towards others",
                 "answer": "B",
                 "explanation": "Section B describes how implicit theories drive the way people perceive and evaluate others' intelligence.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "implicit theories of intelligence drive the way in which people perceive and evaluate their own intelligence and that of others"}},
                {"number": 2,
                 "prompt": "a reference to lack of clarity over the definition of intelligence",
                 "answer": "A",
                 "explanation": "Section A states that no one knows for certain what intelligence actually is.",
                 "evidence": {"sectionId": "p1", "ref": "A", "quote": "no one knows for certain what it actually is"}},
                {"number": 3,
                 "prompt": "the point that a researcher's implicit and explicit theories may be very different",
                 "answer": "D",
                 "explanation": "Section D discusses how implicit theories can diverge from explicit academic theories.",
                 "evidence": {"sectionId": "p1", "ref": "D", "quote": "implicit theories can be useful when an investigator suspects that existing explicit theories are wrong or misleading"}},
            ],
        },
        {
            "id": "g2",
            "type": "yes_no_notgiven",
            "label": "Questions 4–6",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {"number": 4,
                 "prompt": "Slow language development in children is likely to prove disappointing to their parents.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions parents' implicit theories about language development, but says nothing about disappointment.",
                 "evidence": {"sectionId": "p1", "ref": "B", "quote": "parents' implicit theories of their children's language development will determine at what ages they will be willing to make various corrections"}},
                {"number": 5,
                 "prompt": "People's expectations of what children should gain from education are universal.",
                 "answer": "NO",
                 "explanation": "How expectations differ is in part a function of culture, so they are not universal.",
                 "evidence": {"sectionId": "p1", "ref": "C", "quote": "people have expectations for intellectual performances that differ for children of different ages. How these expectations differ is in part a function of culture"}},
                {"number": 6,
                 "prompt": "Scholars may discuss theories without fully understanding each other.",
                 "answer": "YES",
                 "explanation": "Until scholars discuss their implicit theories, they are likely to miss the point of what others are saying.",
                 "evidence": {"sectionId": "p1", "ref": "D", "quote": "Until scholars are able to discuss their implicit theories and thus their assumptions, they are likely to miss the point of what others are saying"}},
            ],
        },
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 7–13",
            "instructions": "Look at the following statements and the list of theories below. Match each statement with the correct theory, A, B or C. You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Hamiltonian"},
                {"key": "B", "text": "Jeffersonian"},
                {"key": "C", "text": "Jacksonian"},
            ],
            "questions": [
                {"number": 7,
                 "prompt": "It is desirable for the same possibilities to be open to everyone.",
                 "answer": "B",
                 "explanation": "The Jeffersonian view holds that people should have equal opportunities.",
                 "evidence": {"sectionId": "p1", "ref": "G", "quote": "The Jeffersonian view is that people should have equal opportunities"}},
                {"number": 8,
                 "prompt": "No section of society should have preferential treatment at the expense of another.",
                 "answer": "C",
                 "explanation": "The Jacksonian view opposes institutions that favour one group over another.",
                 "evidence": {"sectionId": "p1", "ref": "H", "quote": "we do not need or want any institutions that might lead to favoring one group over another"}},
                {"number": 9,
                 "prompt": "People should only gain benefits on the basis of what they actually achieve.",
                 "answer": "B",
                 "explanation": "In the Jeffersonian view, people are rewarded for what they accomplish.",
                 "evidence": {"sectionId": "p1", "ref": "G", "quote": "People are rewarded for what they accomplish"}},
                {"number": 10,
                 "prompt": "Variation in intelligence begins at birth.",
                 "answer": "A",
                 "explanation": "The Hamiltonian view holds that people are born with different levels of intelligence.",
                 "evidence": {"sectionId": "p1", "ref": "F", "quote": "people are born with different levels of intelligence"}},
                {"number": 11,
                 "prompt": "The more intelligent people should be in positions of power.",
                 "answer": "A",
                 "explanation": "Hamiltonians believe those less intelligent need the guidance of the more intelligent.",
                 "evidence": {"sectionId": "p1", "ref": "F", "quote": "those who are less intelligent need the good offices of the more intelligent to keep them in line"}},
                {"number": 12,
                 "prompt": "Everyone can develop the same abilities.",
                 "answer": "C",
                 "explanation": "The Jacksonian view holds that everyone is equal and can develop equally.",
                 "evidence": {"sectionId": "p1", "ref": "H", "quote": "everyone is equal, with everyone capable of developing the same abilities"}},
                {"number": 13,
                 "prompt": "People of low intelligence are likely to lead uncontrolled lives.",
                 "answer": "A",
                 "explanation": "Hamiltonians believe the less intelligent need the guidance of the more intelligent.",
                 "evidence": {"sectionId": "p1", "ref": "F", "quote": "those who are less intelligent need the good offices of the more intelligent to keep them in line"}},
            ],
        },
    ]

    # ── Passage 2: Saving Bugs to Find New Drugs ─────────────────────────────
    p2_body  = extract_between(ocr, "Saving bugs to find new drugs\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEFGHI")

    p2_groups = [
        {
            "id": "g4",
            "type": "matching",
            "label": "Questions 14–20",
            "instructions": "The Reading Passage has nine paragraphs, A–I. Which paragraph contains the following information?",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
                {"key": "G", "text": "G"}, {"key": "H", "text": "H"},
                {"key": "I", "text": "I"},
            ],
            "questions": [
                {"number": 14,
                 "prompt": "mention of factors driving a renewed interest in natural medicinal compounds",
                 "answer": "C",
                 "explanation": "Paragraph C describes the factors behind renewed interest in animal-derived compounds.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "a renewed interest in the potential of animal-derived compounds"}},
                {"number": 15,
                 "prompt": "how recent technological advances have made insect research easier",
                 "answer": "H",
                 "explanation": "Paragraph H describes DNA extraction technology that makes producing compounds easier.",
                 "evidence": {"sectionId": "p2", "ref": "H", "quote": "it is now possible to snip out the stretches of the insect's DNA that carry the codes for the interesting compounds"}},
                {"number": 16,
                 "prompt": "examples of animals which use medicinal substances from nature",
                 "answer": "A",
                 "explanation": "Paragraph A gives examples of primates using toxins and plants medicinally.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "capuchin monkeys who rub themselves with toxin-oozing millipedes to deter mosquitoes"}},
                {"number": 17,
                 "prompt": "reasons why it is challenging to use insects in drug research",
                 "answer": "F",
                 "explanation": "Paragraph F explains the difficulties in obtaining usable quantities of insect compounds.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "the road from isolating and characterizing compounds with desirable qualities to developing a commercial product is very long and full of pitfalls"}},
                {"number": 18,
                 "prompt": "reference to how interest in drug research may benefit wildlife",
                 "answer": "I",
                 "explanation": "Paragraph I states that insect drug research motivates conservation of species.",
                 "evidence": {"sectionId": "p2", "ref": "I", "quote": "my main motivation for looking at insects in this way is conservation"}},
                {"number": 19,
                 "prompt": "a reason why nature-based medicines fell out of favour for a period",
                 "answer": "B",
                 "explanation": "Paragraph B explains that synthetic chemistry displaced natural compounds in the 20th century.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "the pharmaceutical industry had previously relied on natural compounds but moved away from this approach"}},
                {"number": 20,
                 "prompt": "an example of an insect-derived medicine in use at the moment",
                 "answer": "E",
                 "explanation": "Paragraph E gives examples of insect-derived compounds already in clinical use.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "a number of insect-derived compounds are already in clinical use"}},
            ],
        },
        {
            "id": "g5",
            "type": "choose_two",
            "label": "Questions 21–22",
            "instructions": "Choose TWO letters, A–E. Which TWO of the following make insects particularly interesting for drug research?",
            "options": [
                {"key": "A", "text": "the huge number of individual insects in the world"},
                {"key": "B", "text": "the variety of substances insects have developed to protect themselves"},
                {"key": "C", "text": "the potential to extract and make use of insects' genetic codes"},
                {"key": "D", "text": "the similarities between different species of insect"},
                {"key": "E", "text": "the manageable size of most insects"},
            ],
            "questions": [
                {"number": 21,
                 "prompt": "Which TWO qualities make insects interesting for drug research? (first answer)",
                 "answer": "B",
                 "explanation": "Insects have evolved a huge variety of chemical defences, making them valuable for research.",
                 "evidence": {"sectionId": "p2", "ref": "D", "quote": "insects have evolved an enormous variety of compounds to protect themselves"}},
                {"number": 22,
                 "prompt": "Which TWO qualities make insects interesting for drug research? (second answer)",
                 "answer": "C",
                 "explanation": "DNA technology now allows researchers to extract and use the genetic codes for useful compounds.",
                 "evidence": {"sectionId": "p2", "ref": "H", "quote": "it is now possible to snip out the stretches of the insect's DNA that carry the codes for the interesting compounds"}},
            ],
        },
        {
            "id": "g6",
            "type": "completion",
            "label": "Questions 23–26",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "Research at Aberystwyth University",
            "summaryText": "Ross Piper and fellow zoologists at Aberystwyth University are using their expertise in {23} when undertaking bioprospecting with insects. They are especially interested in the compounds that insects produce to overpower and preserve their {24}. They are also interested in compounds which insects use to protect themselves from pathogenic bacteria and fungi found in their {25}. Piper hopes that these substances will be useful in the development of drugs such as {26}.",
            "questions": [
                {"number": 23,
                 "prompt": "", "answer": ["ecology"], "wordLimit": 1,
                 "explanation": "Piper uses knowledge of ecology to guide bioprospecting.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "their expertise in ecology when undertaking bioprospecting with insects"}},
                {"number": 24,
                 "prompt": "", "answer": ["prey"], "wordLimit": 1,
                 "explanation": "Insects produce compounds to overpower and preserve their prey.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "compounds that insects produce to overpower and preserve their prey"}},
                {"number": 25,
                 "prompt": "", "answer": ["habitats"], "wordLimit": 1,
                 "explanation": "Insects encounter pathogens in their habitats and have evolved defences.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "pathogenic bacteria and fungi found in their habitats"}},
                {"number": 26,
                 "prompt": "", "answer": ["antibiotics"], "wordLimit": 1,
                 "explanation": "The substances could be useful in developing new antibiotics.",
                 "evidence": {"sectionId": "p2", "ref": "G", "quote": "useful in the development of drugs such as antibiotics"}},
            ],
        },
    ]

    # ── Passage 3: The Power of Play ─────────────────────────────────────────
    p3_body  = extract_between(ocr, "The power of play\n", "PART 3 _— QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g7",
            "type": "matching",
            "label": "Questions 27–31",
            "instructions": "Look at the following statements and the list of researchers below. Match each statement with the correct researcher, A–G. You may use any letter more than once.",
            "options": [
                {"key": "A", "text": "Elkind"},
                {"key": "B", "text": "Miller & Almon"},
                {"key": "C", "text": "Rubin et al."},
                {"key": "D", "text": "Stuart Brown"},
                {"key": "E", "text": "Pellegrini"},
                {"key": "F", "text": "Joan Goodman"},
                {"key": "G", "text": "Hirsch-Pasek et al."},
            ],
            "questions": [
                {"number": 27,
                 "prompt": "Play can be divided into a number of separate categories.",
                 "answer": "B",
                 "explanation": "Miller & Almon listed discrete descriptions of various types of play.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "Definitions range from discrete descriptions of various types of play such as physical, construction, language, or symbolic play (Miler & Almon 2009)"}},
                {"number": 28,
                 "prompt": "Adults' intended goals affect how they play with children.",
                 "answer": "G",
                 "explanation": "Hirsch-Pasek et al. studied guided play and adult goals.",
                 "evidence": {"sectionId": "p3", "ref": "9", "quote": "adults can facilitate children's learning while maintaining a playful approach (Fisher et al. 2011)"}},
                {"number": 29,
                 "prompt": "Combining work with play may be the best way for children to learn.",
                 "answer": "F",
                 "explanation": "Joan Goodman suggested hybrid forms of work and play provide optimal contexts for learning.",
                 "evidence": {"sectionId": "p3", "ref": "8", "quote": "Researcher Joan Goodman (1994) suggested that hybrid forms of work and play are not a detriment to learning"}},
                {"number": 30,
                 "prompt": "Certain elements of play are more significant than others.",
                 "answer": "E",
                 "explanation": "Pellegrini suggested process orientation and lack of obvious functional purpose may be most important.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "other researchers have suggested that process orientation and a lack of obvious functional purpose may be the most important aspects of play (e.g. Pellegrini 2009)"}},
                {"number": 31,
                 "prompt": "Activities can be classified on a scale of playfulness.",
                 "answer": "C",
                 "explanation": "Rubin et al. described play along a continuum from 0% to 100% playful.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "children's playful behaviors can range in degree from 0% to 100% playful"}},
            ],
        },
        {
            "id": "g8",
            "type": "yes_no_notgiven",
            "label": "Questions 32–36",
            "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
            "questions": [
                {"number": 32,
                 "prompt": "Children need toys in order to play.",
                 "answer": "NO",
                 "explanation": "The passage states children will play even when they have no real toys.",
                 "evidence": {"sectionId": "p3", "ref": "1", "quote": "children will do so in any circumstances, for instance when they have no real toys"}},
                {"number": 33,
                 "prompt": "It is a mistake to treat play and learning as separate types of activities.",
                 "answer": "YES",
                 "explanation": "Society has created a false dichotomy between play and learning.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "Our society has created a false dichotomy between play and learning"}},
                {"number": 34,
                 "prompt": "Play helps children to develop their artistic talents.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage discusses many benefits of play but does not mention artistic development.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "children learn to regulate their behavior, lay the foundations for later learning in science and mathematics"}},
                {"number": 35,
                 "prompt": "Researchers have agreed on a definition of play.",
                 "answer": "NO",
                 "explanation": "Full consensus on a formal definition of play continues to elude researchers.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "Full consensus on a formal definition of play continues to elude the researchers and theorists who study it"}},
                {"number": 36,
                 "prompt": "Work and play differ in terms of whether or not they have a target.",
                 "answer": "YES",
                 "explanation": "Unlike play, work is typically goal oriented (extrinsically motivated).",
                 "evidence": {"sectionId": "p3", "ref": "8", "quote": "Unlike play, work is typically not viewed as enjoyable and it is extrinsically motivated (i.e. it is goal oriented)"}},
            ],
        },
        {
            "id": "g9",
            "type": "completion",
            "label": "Questions 37–40",
            "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
            "summaryTitle": "Guided play",
            "summaryText": "In the simplest form of guided play, an adult contributes to the environment in which the child is playing. Alternatively, an adult can play with a child and develop the play, for instance by {37} the child to investigate different aspects of their game. Adults can help children to learn through play, and may make the activity rather structured, but it should still be based on the child's {38} to play. Play without the intervention of adults gives children real {39}; with adults, play can be {40} at particular goals. However, all forms of play should be an opportunity for children to have fun.",
            "questions": [
                {"number": 37,
                 "prompt": "", "answer": ["encouraging"], "wordLimit": 1,
                 "explanation": "Adults can develop play by encouraging children to explore different aspects of the game.",
                 "evidence": {"sectionId": "p3", "ref": "9", "quote": "encouraging the child to investigate different aspects of their game"}},
                {"number": 38,
                 "prompt": "", "answer": ["desire"], "wordLimit": 1,
                 "explanation": "Structured activity must still be based on the child's desire to play.",
                 "evidence": {"sectionId": "p3", "ref": "9", "quote": "based on the child's desire to play"}},
                {"number": 39,
                 "prompt": "", "answer": ["autonomy"], "wordLimit": 1,
                 "explanation": "Free play without adults gives children genuine autonomy.",
                 "evidence": {"sectionId": "p3", "ref": "9", "quote": "Play without the intervention of adults gives children real autonomy"}},
                {"number": 40,
                 "prompt": "", "answer": ["aimed"], "wordLimit": 1,
                 "explanation": "Adult-guided play can be aimed at particular goals.",
                 "evidence": {"sectionId": "p3", "ref": "9", "quote": "with adults, play can be aimed at particular goals"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "The Concept of Intelligence", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Saving Bugs to Find New Drugs", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "The Power of Play", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(3, sections, "c14t3r")


# ─────────────────────────────────────────────────────────────────────────────
# ── TEST 4 ───────────────────────────────────────────────────────────────────
# ─────────────────────────────────────────────────────────────────────────────

def build_test4() -> str:
    ocr = load_ocr(4)

    # ── Passage 1: The Secret of Staying Young ───────────────────────────────
    p1_body  = extract_between(ocr, "The secret of staying young\n", "PART 1 — QUESTIONS")
    p1_paras = parse_plain_paras(p1_body)

    p1_groups = [
        {
            "id": "g1",
            "type": "completion",
            "label": "Questions 1–8",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "Ysabel Giraldo's research",
            "formContent": [
                {"kind": "question", "number": 1},
                {"kind": "subheader", "text": "Behaviour:"},
                {"kind": "question", "number": 2, "sub": True},
                {"kind": "question", "number": 3, "sub": True},
                {"kind": "question", "number": 4, "sub": True},
                {"kind": "question", "number": 5, "sub": True},
                {"kind": "subheader", "text": "Brains:"},
                {"kind": "question", "number": 6, "sub": True},
                {"kind": "question", "number": 7, "sub": True},
                {"kind": "question", "number": 8, "sub": True},
            ],
            "questions": [
                {"number": 1,
                 "prompt": "Focused on a total of _______ different age groups of ants",
                 "answer": ["four"], "wordLimit": 1,
                 "explanation": "Giraldo focused on ants at four age ranges.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "Giraldo focused on ants at four age ranges"}},
                {"number": 2,
                 "prompt": "how well ants looked after their _______",
                 "answer": ["young"], "wordLimit": 1,
                 "explanation": "Giraldo watched how well the ants took care of the young of the colony.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "how well the ants took care of the young"}},
                {"number": 3,
                 "prompt": "their ability to locate _______ using a scent trail",
                 "answer": ["food"], "wordLimit": 1,
                 "explanation": "Ants followed scent trails to locate food.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "followed the telltale scent that the insects usually leave to mark a trail to food"}},
                {"number": 4,
                 "prompt": "the effect that _______ had on them",
                 "answer": ["light"], "wordLimit": 1,
                 "explanation": "Giraldo tested how the ants responded to light.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "She tested how ants responded to light"}},
                {"number": 5,
                 "prompt": "how _______ they attacked prey",
                 "answer": ["aggressively"], "wordLimit": 1,
                 "explanation": "Older ants attacked prey just as aggressively as younger ones.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "the older ants attacked the poor fruit fly just as aggressively as the young ones did"}},
                {"number": 6,
                 "prompt": "comparison between age and the _______ of dying cells in the brains of ants",
                 "answer": ["location"], "wordLimit": 1,
                 "explanation": "She saw no major difference with age, nor any difference in the location of dying cells.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "nor was there any difference in the location of the dying cells"}},
                {"number": 7,
                 "prompt": "density of _______ in the brain's 'mushroom bodies'",
                 "answer": ["neurons"], "wordLimit": 1,
                 "explanation": "She looked at the density of synaptic complexes (regions where neurons come together).",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "regions where neurons come together"}},
                {"number": 8,
                 "prompt": "level of two _______ in the brain associated with ageing",
                 "answer": ["chemicals"], "wordLimit": 1,
                 "explanation": "The levels of two chemicals in the brain were measured to assess ageing.",
                 "evidence": {"sectionId": "p1", "ref": "5", "quote": "two chemicals in the brain that are associated with ageing"}},
            ],
        },
        {
            "id": "g2",
            "type": "true_false_notgiven",
            "label": "Questions 9–13",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 9,
                 "prompt": "Pheidole dentata ants are the only known animals which remain active for almost their whole lives.",
                 "answer": "FALSE",
                 "explanation": "Naked mole rats can also live for almost 30 years and stay fit for nearly their entire lives.",
                 "evidence": {"sectionId": "p1", "ref": "2", "quote": "Naked mole rats can live for almost 30 years and stay fit for nearly their entire lives"}},
                {"number": 10,
                 "prompt": "Ysabel Giraldo was the first person to study Pheidole dentata ants using precise data about the insects' ages.",
                 "answer": "TRUE",
                 "explanation": "Unlike all previous studies, her work tracked the ants from the time the pupae became adults.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "Unlike all previous studies, which only estimated how old the ants were, her work tracked the ants from the time the pupae became adults"}},
                {"number": 11,
                 "prompt": "The ants in Giraldo's experiments behaved as she had predicted that they would.",
                 "answer": "FALSE",
                 "explanation": "The results were surprising — the ants showed no signs of decline.",
                 "evidence": {"sectionId": "p1", "ref": "4", "quote": "We get a picture that these ants really don't decline"}},
                {"number": 12,
                 "prompt": "The recent studies of bees used different methods of measuring age-related decline.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions bee studies but does not compare their methods.",
                 "evidence": {"sectionId": "p1", "ref": "6", "quote": "similar work on bumblebees"}},
                {"number": 13,
                 "prompt": "Pheidole dentata ants kept in laboratory conditions tend to live longer lives.",
                 "answer": "TRUE",
                 "explanation": "In the lab, P. dentata worker ants typically live for around 140 days, which reflects normal lab conditions.",
                 "evidence": {"sectionId": "p1", "ref": "3", "quote": "In the lab, P. dentata worker ants typically live for around 140 days"}},
            ],
        },
    ]

    # ── Passage 2: Why Zoos Are Good ─────────────────────────────────────────
    p2_body  = extract_between(ocr, "Why zoos are good\n", "PART 2 — QUESTIONS")
    p2_paras = parse_lettered_paras(p2_body, "ABCDEF")

    p2_groups = [
        {
            "id": "g3",
            "type": "matching",
            "label": "Questions 14–17",
            "instructions": "The Reading Passage has six paragraphs, A–F. Which paragraph contains the following information?",
            "options": [
                {"key": "A", "text": "A"}, {"key": "B", "text": "B"},
                {"key": "C", "text": "C"}, {"key": "D", "text": "D"},
                {"key": "E", "text": "E"}, {"key": "F", "text": "F"},
            ],
            "questions": [
                {"number": 14,
                 "prompt": "a reference to how quickly animal species can die out",
                 "answer": "B",
                 "explanation": "Paragraph B mentions the rate at which species are being lost.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "species are becoming extinct faster than new ones evolve"}},
                {"number": 15,
                 "prompt": "reasons why it is preferable to study animals in captivity rather than in the wild",
                 "answer": "E",
                 "explanation": "Paragraph E explains that zoo studies are more controlled and less stressful for the animals.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "studying animals in zoos is less stressful for the animals than studying them in the wild"}},
                {"number": 16,
                 "prompt": "mention of two ways of learning about animals other than visiting them in zoos",
                 "answer": "C",
                 "explanation": "Paragraph C mentions TV documentaries and books as alternatives to zoos.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "people can see and learn about animals by watching wildlife documentaries or by reading books"}},
                {"number": 17,
                 "prompt": "reasons why animals in zoos may be healthier than those in the wild",
                 "answer": "A",
                 "explanation": "Paragraph A explains that zoo animals receive regular food and veterinary care.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "animals receive regular food and medical care"}},
            ],
        },
        {
            "id": "g4",
            "type": "true_false_notgiven",
            "label": "Questions 18–22",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 18,
                 "prompt": "An animal is likely to live longer in a zoo than in the wild.",
                 "answer": "TRUE",
                 "explanation": "Zoo animals are protected from predators and disease and receive regular medical care.",
                 "evidence": {"sectionId": "p2", "ref": "A", "quote": "animals receive regular food and medical care, and are protected from predators"}},
                {"number": 19,
                 "prompt": "There are some species in zoos which can no longer be found in the wild.",
                 "answer": "TRUE",
                 "explanation": "Zoos can be a last refuge for species that have died out in the wild.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "For some species, the only hope for their survival is captive populations in zoos"}},
                {"number": 20,
                 "prompt": "Improvements in the quality of TV wildlife documentaries have resulted in increased numbers of zoo visitors.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions documentaries as alternatives to zoos but does not say they increase visitor numbers.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "people can see and learn about animals by watching wildlife documentaries"}},
                {"number": 21,
                 "prompt": "Zoos have always excelled at transmitting information about animals to the public.",
                 "answer": "FALSE",
                 "explanation": "Zoos have improved their educational role, but were not always good at it.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "modern zoos work hard to educate their visitors"}},
                {"number": 22,
                 "prompt": "Studying animals in zoos is less stressful for the animals than studying them in the wild.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage says zoo research is more controlled, but does not compare stress levels.",
                 "evidence": {"sectionId": "p2", "ref": "E", "quote": "research in zoos provides a degree of control that is impossible in the wild"}},
            ],
        },
        {
            "id": "g5",
            "type": "choose_two",
            "label": "Questions 23–24",
            "instructions": "Choose TWO letters, A–E. Which TWO of the following are stated about zoo staff in the text?",
            "options": [
                {"key": "A", "text": "Some take part in television documentaries about animals."},
                {"key": "B", "text": "Some travel to overseas locations to join teams in zoos."},
                {"key": "C", "text": "Some get experience with species in the wild before taking up zoo jobs."},
                {"key": "D", "text": "Some teach people who are involved with conservation projects."},
                {"key": "E", "text": "Some specialise in caring for species which are under threat."},
            ],
            "questions": [
                {"number": 23,
                 "prompt": "Which TWO things are stated about zoo staff? (first answer)",
                 "answer": "B",
                 "explanation": "Some zoo staff travel to overseas zoos to help care for animals.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "staff from zoos travel to overseas locations to join teams"}},
                {"number": 24,
                 "prompt": "Which TWO things are stated about zoo staff? (second answer)",
                 "answer": "D",
                 "explanation": "Zoo staff teach conservation workers and local people about protecting endangered species.",
                 "evidence": {"sectionId": "p2", "ref": "F", "quote": "train local people in wildlife protection and conservation methods"}},
            ],
        },
        {
            "id": "g6",
            "type": "choose_two",
            "label": "Questions 25–26",
            "instructions": "Choose TWO letters, A–E. Which TWO of these beliefs about zoos does the writer mention in the text?",
            "options": [
                {"key": "A", "text": "They can help children overcome their fears of wild animals."},
                {"key": "B", "text": "They can increase public awareness of environmental issues."},
                {"key": "C", "text": "They can provide employment for a range of professional people."},
                {"key": "D", "text": "They can generate income to support wildlife conservation projects."},
                {"key": "E", "text": "They can raise animals which can later be released into the wild."},
            ],
            "questions": [
                {"number": 25,
                 "prompt": "Which TWO beliefs about zoos does the writer mention? (first answer)",
                 "answer": "B",
                 "explanation": "Zoos help educate the public about environmental and conservation issues.",
                 "evidence": {"sectionId": "p2", "ref": "C", "quote": "help to raise awareness of environmental issues"}},
                {"number": 26,
                 "prompt": "Which TWO beliefs about zoos does the writer mention? (second answer)",
                 "answer": "E",
                 "explanation": "Zoo-bred animals are sometimes released back into the wild.",
                 "evidence": {"sectionId": "p2", "ref": "B", "quote": "animals bred in zoos are reintroduced into the wild"}},
            ],
        },
    ]

    # ── Passage 3: How Bad Is Ocean Garbage, Really? ─────────────────────────
    p3_body  = extract_between(ocr, "How Bad Is Ocean Garbage, Really?\n", "PART 3 — QUESTIONS")
    p3_paras = parse_plain_paras(p3_body)

    p3_groups = [
        {
            "id": "g7",
            "type": "true_false_notgiven",
            "label": "Questions 27–33",
            "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
            "questions": [
                {"number": 27,
                 "prompt": "Rochman and her colleagues were the first people to research the problem of marine debris.",
                 "answer": "FALSE",
                 "explanation": "Rochman reviewed existing research rather than being first to investigate it.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "Rochman and her colleagues examined 209 published studies on marine debris"}},
                {"number": 28,
                 "prompt": "The creatures most in danger from ocean trash are certain seabirds.",
                 "answer": "NOT GIVEN",
                 "explanation": "The passage mentions several species are at risk but does not single out seabirds as most endangered.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "marine animals, from plankton to whales, are affected by the debris"}},
                {"number": 29,
                 "prompt": "The studies Rochman has reviewed have already proved that populations of some birds will soon become extinct.",
                 "answer": "FALSE",
                 "explanation": "The studies warn of risks but have not yet proved that any species will soon become extinct.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "the long-term fate of populations remained unclear"}},
                {"number": 30,
                 "prompt": "Rochman analysed papers on the different kinds of danger caused by ocean trash.",
                 "answer": "TRUE",
                 "explanation": "She examined papers looking at physical, chemical, and other threats from marine debris.",
                 "evidence": {"sectionId": "p3", "ref": "2", "quote": "looking at different types of harm caused by marine debris"}},
                {"number": 31,
                 "prompt": "Most of the research analysed by Rochman and her colleagues was badly designed.",
                 "answer": "FALSE",
                 "explanation": "Most of the research was considered well-designed — only a minority had problems.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "only 11 percent of the studies they examined contained flawed data"}},
                {"number": 32,
                 "prompt": "One study examined by Rochman was expecting to find that mussels were harmed by eating plastic.",
                 "answer": "TRUE",
                 "explanation": "One study predicted that mussels would be harmed, but they were not.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "one study predicted that mussels would be harmed by eating plastic, but they weren't"}},
                {"number": 33,
                 "prompt": "Some mussels choose to eat plastic in preference to their natural diet.",
                 "answer": "FALSE",
                 "explanation": "Mussels consume plastic accidentally; they do not prefer it over their normal diet.",
                 "evidence": {"sectionId": "p3", "ref": "5", "quote": "mussels that consumed plastic did not appear to suffer"}},
            ],
        },
        {
            "id": "g8",
            "type": "completion",
            "label": "Questions 34–39",
            "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
            "formTitle": "Findings related to marine debris",
            "formContent": [
                {"kind": "subheader", "text": "Studies of marine debris found the biggest threats were"},
                {"kind": "static", "text": "plastic (not metal or wood)"},
                {"kind": "question", "number": 34, "sub": True},
                {"kind": "question", "number": 35, "sub": True},
                {"kind": "subheader", "text": "Drawbacks of the studies examined"},
                {"kind": "static", "text": "most of them focused on individual animals, not entire:"},
                {"kind": "question", "number": 36, "sub": True},
                {"kind": "question", "number": 37, "sub": True},
                {"kind": "static", "text": "there was insufficient information on:"},
                {"kind": "static", "text": "numbers of animals which could be affected"},
                {"kind": "question", "number": 38, "sub": True},
                {"kind": "static", "text": "the impact on the ecosystem"},
                {"kind": "question", "number": 39, "sub": True},
            ],
            "questions": [
                {"number": 34,
                 "prompt": "bits of debris that were _______ (harmful to animals)",
                 "answer": ["large"], "wordLimit": 1,
                 "explanation": "Large pieces of debris were found to be the biggest physical threat.",
                 "evidence": {"sectionId": "p3", "ref": "3", "quote": "the biggest threats came from large pieces of plastic"}},
                {"number": 35,
                 "prompt": "there was little research into _______ e.g. from synthetic fibres",
                 "answer": ["microplastic"], "wordLimit": 1,
                 "explanation": "There was little research into microplastic pollution from synthetic fibres.",
                 "evidence": {"sectionId": "p3", "ref": "6", "quote": "little research into microplastic"}},
                {"number": 36,
                 "prompt": "most focused on individual animals, not entire _______",
                 "answer": ["populations"], "wordLimit": 1,
                 "explanation": "The studies focused on individual animals rather than whole populations.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "studies focused on individual animals rather than on populations"}},
                {"number": 37,
                 "prompt": "the _______ of plastic used in the lab did not always reflect those in the ocean",
                 "answer": ["concentrations"], "wordLimit": 1,
                 "explanation": "Lab plastic concentrations often differed from real-world ocean concentrations.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "concentrations of plastic used in laboratory experiments did not reflect those in the actual ocean"}},
                {"number": 38,
                 "prompt": "the impact of a reduction in numbers on the _______ of that species",
                 "answer": ["predators"], "wordLimit": 1,
                 "explanation": "The studies did not assess the wider impact on species that prey on the affected animals.",
                 "evidence": {"sectionId": "p3", "ref": "4", "quote": "the impact on the species' predators"}},
                {"number": 39,
                 "prompt": "Rochman says more information is needed on the possible impact of future _______ (e.g. involving oil)",
                 "answer": ["disasters"], "wordLimit": 1,
                 "explanation": "Future disasters such as oil spills could dramatically worsen ocean garbage problems.",
                 "evidence": {"sectionId": "p3", "ref": "7", "quote": "the impact of future disasters, for example those involving oil"}},
            ],
        },
        {
            "id": "g9",
            "type": "multiple_choice",
            "label": "Question 40",
            "instructions": "Choose the correct letter, A, B, C or D. What would be the best title for this passage?",
            "questions": [
                {"number": 40,
                 "prompt": "What would be the best title for this passage?",
                 "options": [
                     {"key": "A", "text": "Assessing the threat of marine debris"},
                     {"key": "B", "text": "Marine debris: who is to blame?"},
                     {"key": "C", "text": "A new solution to the problem of marine debris"},
                     {"key": "D", "text": "Marine debris: the need for international action"},
                 ],
                 "answer": "A",
                 "explanation": "The passage is about Rochman's work assessing and reviewing research on the threat of marine debris.",
                 "evidence": {"sectionId": "p3", "ref": "1", "quote": "trying to answer a dismal question: Is everything terrible, or are things just very, very bad?"}},
            ],
        },
    ]

    sections = [
        {"id": "p1", "title": "The Secret of Staying Young", "passage": p1_paras, "groups": p1_groups},
        {"id": "p2", "title": "Why Zoos Are Good", "passage": p2_paras, "groups": p2_groups},
        {"id": "p3", "title": "How Bad Is Ocean Garbage, Really?", "passage": p3_paras, "groups": p3_groups},
    ]
    return build_sql(4, sections, "c14t4r")


# ─────────────────────────────────────────────────────────────────────────────
# Entry point
# ─────────────────────────────────────────────────────────────────────────────

BUILDERS = {1: build_test1, 2: build_test2, 3: build_test3, 4: build_test4}

def main():
    arg = sys.argv[1] if len(sys.argv) > 1 else "all"
    tests = list(BUILDERS.keys()) if arg == "all" else [int(arg)]
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    for t in tests:
        sql = BUILDERS[t]()
        out = OUT_DIR / f"cambridge14-test{t}-reading.sql"
        out.write_text(sql, encoding="utf-8")
        print(f"Wrote {out}")

if __name__ == "__main__":
    main()
