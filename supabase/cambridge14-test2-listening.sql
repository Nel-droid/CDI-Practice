DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 14' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 14',
  'Test 2',
  'academic',
  2004,
  $c14t2l$
{
  "audioPath": "Cambridge 14 Test 2.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "PATIENT DETAILS"
            },
            {
              "kind": "subheader",
              "text": "Personal information"
            },
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "Name Julie Anne ……Garcia….."
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "subheader",
              "text": "Details of the problem"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "Action already taken has taken painkillers and applied ice"
            },
            {
              "kind": "subheader",
              "text": "Other information"
            },
            {
              "kind": "static",
              "text": "Sports played belongs to a"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "club goes",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "Regularly",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Medical history injured her"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "last year no allergies no regular medication apart from",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Contact phone _______",
              "answer": [
                "219"
              ],
              "wordLimit": 1,
              "explanation": "442 9785 / 2194429785 It’s 219 442 9785."
            },
            {
              "number": 2,
              "prompt": "Date of birth _______ , 1992",
              "answer": [
                "10"
              ],
              "wordLimit": 1,
              "explanation": "October / 10th October October tenth, 1992."
            },
            {
              "number": 3,
              "prompt": "Occupation works as a _______",
              "answer": [
                "manager"
              ],
              "wordLimit": 1,
              "explanation": "I started off as a waitress there a few years ago and I’m a manager now."
            },
            {
              "number": 4,
              "prompt": "Insurance company _______ Life Insurance",
              "answer": [
                "Cawley"
              ],
              "wordLimit": 1,
              "explanation": "It’s Cawley Life Insurance, that’s C-A-W-L-E-Y."
            },
            {
              "number": 5,
              "prompt": "Type of problem pain in her left _______",
              "answer": [
                "knee"
              ],
              "wordLimit": 1,
              "explanation": "Well, I’ve been getting a pain in my knee, the left one."
            },
            {
              "number": 6,
              "prompt": "When it began _______ ago",
              "answer": [
                "3 weeks"
              ],
              "wordLimit": 1,
              "explanation": "it’s three weeks since I first noticed it."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "tennis"
              ],
              "wordLimit": 1,
              "explanation": "Yes, I play a lot of tennis."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "running"
              ],
              "wordLimit": 1,
              "explanation": "But normally I go running a few times a week, maybe three or four times."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "shoulder"
              ],
              "wordLimit": 1,
              "explanation": "I did have an accident last year when I slipped and hurt my shoulder, but that’s better now."
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "vitamins"
              ],
              "wordLimit": 1,
              "explanation": "Well, I take vitamins but that’s all."
            }
          ],
          "formTitle": "TOTAL HEALTH CLINIC",
          "id": "g1"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Part 2",
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 11–15",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "Before Queen Elizabeth I visited the castle in 1576,",
              "options": [
                {
                  "key": "A",
                  "text": "repairs were carried out to the quest rooms."
                },
                {
                  "key": "B",
                  "text": "a new building was constructed for her."
                },
                {
                  "key": "C",
                  "text": "a fire damaged part of the main hall."
                }
              ],
              "answer": "B",
              "explanation": "they’d make a new house for her out of wood next to the main hall."
            },
            {
              "number": 12,
              "prompt": "In 1982, the castle was sold to",
              "options": [
                {
                  "key": "A",
                  "text": "the government"
                },
                {
                  "key": "B",
                  "text": "the Fenys family."
                },
                {
                  "key": "C",
                  "text": "an entertainment company."
                }
              ],
              "answer": "C",
              "explanation": "It was eventually taken over by a company who owned a number of amusement parks"
            },
            {
              "number": 13,
              "prompt": "In some of the rooms, visitors can",
              "options": [
                {
                  "key": "A",
                  "text": "speak to experts on the history of the castle."
                },
                {
                  "key": "B",
                  "text": "interact with actors dressed as famous characters."
                },
                {
                  "key": "C",
                  "text": "see models of historical figures moving and talking."
                }
              ],
              "answer": "C",
              "explanation": "When you go inside, you’ll find that in the state rooms there are life-like moving wax models dressed in costumes of different periods in the past, which even carry on conversations together."
            },
            {
              "number": 14,
              "prompt": "In the castle park, visitors can",
              "options": [
                {
                  "key": "A",
                  "text": "see an 800-year-old tree."
                },
                {
                  "key": "B",
                  "text": "go to an art exhibition."
                },
                {
                  "key": "C",
                  "text": "visit a small zoo."
                }
              ],
              "answer": "B",
              "explanation": "Nowadays the old zoo buildings are used for public displays of painting and sculpture."
            },
            {
              "number": 15,
              "prompt": "At the end of the visit, the group will have",
              "options": [
                {
                  "key": "A",
                  "text": "afternoon tea in the conservatory."
                },
                {
                  "key": "B",
                  "text": "the chance to meet the castle’s owners."
                },
                {
                  "key": "C",
                  "text": "a photograph together on the Great Staircase."
                }
              ],
              "answer": "A",
              "explanation": "we’ll then take you to the same place, where afternoon tea will be served to you."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "Label the plan below. Write the correct letter, A–H, next to Questions 16–20.",
          "options": [
            {
              "key": "A",
              "text": "A"
            },
            {
              "key": "B",
              "text": "B"
            },
            {
              "key": "C",
              "text": "C"
            },
            {
              "key": "D",
              "text": "D"
            },
            {
              "key": "E",
              "text": "E"
            },
            {
              "key": "F",
              "text": "F"
            },
            {
              "key": "G",
              "text": "G"
            },
            {
              "key": "H",
              "text": "H"
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "Starting point for walking the walls",
              "answer": "H",
              "explanation": "The starting point’s quite near the main entrance - walk straight down the path until you get to the south gate, and it’s just there."
            },
            {
              "number": 17,
              "prompt": "Bow and arrow display",
              "answer": "D",
              "explanation": "The quickest way to get there is to take the first left after the main entrance and follow the path past the bridge, then you’ll see it in front of you at the end."
            },
            {
              "number": 18,
              "prompt": "Hunting birds display",
              "answer": "F",
              "explanation": "If you go from the main entrance in the direction of the south gate, but turn right before you get there instead of going through it, you’ll see it on your right past the first tower."
            },
            {
              "number": 19,
              "prompt": "Traditional dancing",
              "answer": "A",
              "explanation": "At 3 pm there’s a short performance of traditional dancing on the outdoor stage. That’s right at the other side of the castle from the entrance, and over the bridge."
            },
            {
              "number": 20,
              "prompt": "Shop",
              "answer": "E",
              "explanation": "It’s actually inside one of the towers, but the way in is from the outside. Just take the first left after the main entrance, go down the path and take the first right."
            }
          ],
          "mapImage": "Cambridge 14 Test 2 map.png",
          "id": "g16"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 21–24",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "How will Rosie and Martin introduce their presentation?",
              "options": [
                {
                  "key": "A",
                  "text": "with a drawing of woolly mammoths in their natural habit"
                },
                {
                  "key": "B",
                  "text": "with a timeline showing when woolly mammoths lived"
                },
                {
                  "key": "C",
                  "text": "with a video clip about woolly mammoths"
                }
              ],
              "answer": "B",
              "explanation": "it could be a timeline to show when they lived, with illustrations?"
            },
            {
              "number": 22,
              "prompt": "What was surprising about the mammoth tooth found by Russell Graham?",
              "options": [
                {
                  "key": "A",
                  "text": "It was still embedded in the mammoth’s jawbone."
                },
                {
                  "key": "B",
                  "text": "It was from an unknown species of mammoth."
                },
                {
                  "key": "C",
                  "text": "It was not as old as mammoth remains from elsewhere."
                }
              ],
              "answer": "C",
              "explanation": "Well the mammoth bones previously found on the North American mainland were much less recent than that."
            },
            {
              "number": 23,
              "prompt": "The students will use an animated diagram to demonstrate how the mammoths",
              "options": [
                {
                  "key": "A",
                  "text": "became isolated on the island."
                },
                {
                  "key": "B",
                  "text": "spread from the island to other areas."
                },
                {
                  "key": "C",
                  "text": "coexisted with other animals on the island."
                }
              ],
              "answer": "A",
              "explanation": "So those mammoths on the island couldn’t escape; they had to stay on the island."
            },
            {
              "number": 24,
              "prompt": "According to Martin, what is unusual about the date of the mammoths’ extinction on the island?",
              "options": [
                {
                  "key": "A",
                  "text": "how exact it is"
                },
                {
                  "key": "B",
                  "text": "how early it is"
                },
                {
                  "key": "C",
                  "text": "how it was established"
                }
              ],
              "answer": "A",
              "explanation": "They concluded that the extinction happened 5,600 years ago, which is a very precise time for a prehistoric extinction."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What action will the students take for each of the following sections of their presentation? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "make it more interactive"
            },
            {
              "key": "B",
              "text": "reduce visual input"
            },
            {
              "key": "C",
              "text": "add personal opinions"
            },
            {
              "key": "D",
              "text": "contact one of the researchers"
            },
            {
              "key": "E",
              "text": "make detailed notes"
            },
            {
              "key": "F",
              "text": "find information online"
            },
            {
              "key": "G",
              "text": "check timing"
            },
            {
              "key": "H",
              "text": "organise the content more clearly"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Introduction",
              "answer": "E",
              "explanation": "I think we need to write down all the ideas we want to include here"
            },
            {
              "number": 26,
              "prompt": "Discovery of the mammoth tooth",
              "answer": "D",
              "explanation": "I thought maybe we could get in touch with the researcher who led the team and ask him to tell us a bit more."
            },
            {
              "number": 27,
              "prompt": "Initial questions asked by the researchers",
              "answer": "A",
              "explanation": "We could ask the audience to suggest some questions about it and then see how many of them we can answer."
            },
            {
              "number": 28,
              "prompt": "Further research carried out on the island",
              "answer": "H",
              "explanation": "Yes, maybe it would be better if it followed a chronological pattern."
            },
            {
              "number": 29,
              "prompt": "Findings and possible explanations",
              "answer": "G",
              "explanation": "we need to practice it so we’re sure it won’t overrun."
            },
            {
              "number": 30,
              "prompt": "Relevance to the present day",
              "answer": "C",
              "explanation": "give your own viewpoint."
            }
          ],
          "id": "g25"
        }
      ]
    },
    {
      "id": "p4",
      "title": "Part 4",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 31–40",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Ancient cultures many cultures believed that floods and other disasters were involved in the creation of the world many cultures invented"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "and other ceremonies to make the weather gods friendly people needed to observe and interpret the sky to ensure their",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "around 650 BC, Babylonians started forecasting, using weather phenomena such as",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "by 300 BC, the Chinese had a calendar made up of a number of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "connected with the weather",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Ancient Greeks a more scientific approach"
            },
            {
              "kind": "static",
              "text": "Aristotle tried to explain the formation of various weather phenomena"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "Middle Ages"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "subheader",
              "text": "15th-19th centuries"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "Pascal showed relationship between atmospheric pressure and altitude from the 17th century, scientists could measure atmospheric pressure and temperature"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "_______",
              "answer": [
                "dances"
              ],
              "wordLimit": 1,
              "explanation": "Many ancient civilisations developed rites such as dances in order to make the weather gods look kindly on them."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "survival"
              ],
              "wordLimit": 1,
              "explanation": "in fact their survival depended on it."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "clouds"
              ],
              "wordLimit": 1,
              "explanation": "based on their observations of clouds and other phenomena."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "festivals"
              ],
              "wordLimit": 1,
              "explanation": "astronomers had developed a calendar which divided the year into 24 festivals"
            },
            {
              "number": 35,
              "prompt": "Aristotle also described haloes and _______",
              "answer": [
                "comets"
              ],
              "wordLimit": 1,
              "explanation": "that is, bright circles of light around the sun, the moon and bright stars - and comets."
            },
            {
              "number": 36,
              "prompt": "Aristotle’s work considered accurate many proverbs, e.g. about the significance of the colour of the _______ , passed on accurate information.",
              "answer": [
                "sky"
              ],
              "wordLimit": 1,
              "explanation": "Alongside this, though, in the Middle Ages weather observations were passed on in the form of proverbs, such as ‘Red sky at night, shepherd’s delight; red sky in the morning, shepherd’s warning’."
            },
            {
              "number": 37,
              "prompt": "15th century: scientists recognised value of _______ for the first time",
              "answer": [
                "instruments"
              ],
              "wordLimit": 1,
              "explanation": "For centuries, any attempt to forecast the weather could only be based on personal observation, but in the fifteenth century scientists began to see the need for instruments."
            },
            {
              "number": 38,
              "prompt": "Galileo invented the _______",
              "answer": [
                "thermometer"
              ],
              "wordLimit": 1,
              "explanation": "the Italian scientist and inventor Galileo developed the world’s first thermometer."
            },
            {
              "number": 39,
              "prompt": "18th century: Franklin identified the movement of _______",
              "answer": [
                "storms"
              ],
              "wordLimit": 1,
              "explanation": "It was Franklin who discovered that storms generally travel from west to east."
            },
            {
              "number": 40,
              "prompt": "19th century: data from different locations could be sent to the same place by _______",
              "answer": [
                "telegraph"
              ],
              "wordLimit": 1,
              "explanation": "People in different locations began to keep records, and in the mid- nineteenth century, the invention of the telegraph made it possible for these records to be collated."
            }
          ],
          "formTitle": "The history of weather forecasting",
          "id": "g31"
        }
      ]
    }
  ]
}
$c14t2l$,
  true
);
