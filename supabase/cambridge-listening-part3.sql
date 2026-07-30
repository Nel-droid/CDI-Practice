-- Cambridge Listening — Part 3 of 6: books 14 & 15 (8 tests).
-- Paste this whole file into the Supabase SQL editor and Run.

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 14' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 14',
  'Test 1',
  'academic',
  2004,
  $c14t1l$
{
  "audioPath": "Cambridge 14 Test 1.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the form below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Type of crime: theft"
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
              "kind": "subheader",
              "text": "Name Louise …Taylor…"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Date of birth 14 December 1977"
            },
            {
              "kind": "subheader",
              "text": "Occupation interior designer"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "subheader",
              "text": "Length of stay two months"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "subheader",
              "text": "Details of theft"
            },
            {
              "kind": "question",
              "number": 4
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
              "kind": "subheader",
              "text": "Possible time and place of theft"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "- one had a T-shirt with a picture of a tiger"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Nationality _______",
              "answer": [
                "Canadian"
              ],
              "wordLimit": 1,
              "explanation": "No, I’m actually Canadian."
            },
            {
              "number": 2,
              "prompt": "Reason for visit business (to buy antique _______ )",
              "answer": [
                "furniture"
              ],
              "wordLimit": 1,
              "explanation": "I’m an interior designer and I come over to buy old furniture"
            },
            {
              "number": 3,
              "prompt": "Current address _______ Apartments (No 15)",
              "answer": [
                "Park"
              ],
              "wordLimit": 1,
              "explanation": "Well at present I’ve got a place at Park Apartments, that’s on King Street."
            },
            {
              "number": 4,
              "prompt": "Items stolen - a wallet containing approximately £ _______",
              "answer": [
                "250",
                "250 sterling"
              ],
              "wordLimit": 1,
              "explanation": "But there was quite a bit of cash there … about £250 sterling, I should think."
            },
            {
              "number": 5,
              "prompt": "- a _______",
              "answer": [
                "phone"
              ],
              "wordLimit": 1,
              "explanation": "At first I thought, oh I must have left the wallet back in the apartment, but then I realised my phone had gone as well."
            },
            {
              "number": 6,
              "prompt": "Date of theft _______",
              "answer": [
                "10"
              ],
              "wordLimit": 1,
              "explanation": "September / 10th September So that was September the tenth."
            },
            {
              "number": 7,
              "prompt": "Location outside the _______ at about 4 pm",
              "answer": [
                "museum"
              ],
              "wordLimit": 1,
              "explanation": "Anyway, I met up with a friend, and we spent a couple of hours in the museum."
            },
            {
              "number": 8,
              "prompt": "Details of suspect - some boys asked for the _______ then ran off",
              "answer": [
                "time"
              ],
              "wordLimit": 1,
              "explanation": "they were asking us that time it was, then all of a sudden they ran off."
            },
            {
              "number": 9,
              "prompt": "- he was about 12, slim build with _______ hair",
              "answer": [
                "blond"
              ],
              "wordLimit": 1,
              "explanation": "/ blonde I do remember that - he was blond."
            },
            {
              "number": 10,
              "prompt": "Crime reference number allocated _______",
              "answer": [
                "87954"
              ],
              "wordLimit": 1,
              "explanation": "82361 / 8795482361 So this is ten digits: 87954 82361."
            }
          ],
          "formTitle": "CRIME REPORT FORM",
          "id": "g1"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Part 2",
      "groups": [
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 11–12",
          "instructions": "Choose TWO letters, A–E. Which TWO pieces of advice for the first week of an apprenticeship does the manager give?",
          "options": [
            {
              "key": "A",
              "text": "get to know colleagues"
            },
            {
              "key": "B",
              "text": "learn from any mistakes"
            },
            {
              "key": "C",
              "text": "ask lots of questions"
            },
            {
              "key": "D",
              "text": "react positively to feedback"
            },
            {
              "key": "E",
              "text": "enjoy new challenges"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO pieces of advice for the first week of an apprenticeship does the manager give?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "The important thing is to check with someone if you’re not sure what to do talk to as many people as possible"
            },
            {
              "number": 12,
              "prompt": "Which TWO pieces of advice for the first week of an apprenticeship does the manager give?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "The important thing is to check with someone if you’re not sure what to do talk to as many people as possible"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO things does the manager say mentors can help with?",
          "options": [
            {
              "key": "A",
              "text": "confidence-building"
            },
            {
              "key": "B",
              "text": "making career plans"
            },
            {
              "key": "C",
              "text": "completing difficult tasks"
            },
            {
              "key": "D",
              "text": "making a weekly timetable"
            },
            {
              "key": "E",
              "text": "reviewing progress"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO things does the manager say mentors can help with?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "what goals you’ve achieved so far, as well as helping you to identify any areas for improvement. You can also discuss your more long-term ambitions with them as well."
            },
            {
              "number": 14,
              "prompt": "Which TWO things does the manager say mentors can help with?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "what goals you’ve achieved so far, as well as helping you to identify any areas for improvement. You can also discuss your more long-term ambitions with them as well."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "What does the manager say about each of the following aspects of the company policy for apprentices? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "It is encouraged."
            },
            {
              "key": "B",
              "text": "There are some restrictions."
            },
            {
              "key": "C",
              "text": "It is against the rules."
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Using the internet",
              "answer": "B",
              "explanation": "don’t use it for personal use"
            },
            {
              "number": 16,
              "prompt": "Flexible working",
              "answer": "B",
              "explanation": "it will depend on which department you’re in and what your personal circumstances are."
            },
            {
              "number": 17,
              "prompt": "Booking holidays",
              "answer": "C",
              "explanation": "we ask that you don’t book any holidays until after your six-month apprenticeship has finished."
            },
            {
              "number": 18,
              "prompt": "Working overtime",
              "answer": "A",
              "explanation": "it can be a valuable experience - so we advise you to take it up if possible."
            },
            {
              "number": 19,
              "prompt": "Wearing trainers",
              "answer": "A",
              "explanation": "Comfortable shoes like trainers are preferable."
            },
            {
              "number": 20,
              "prompt": "Bringing food to work",
              "answer": "C",
              "explanation": "we’ve decided to introduce a no packed lunch policy."
            }
          ],
          "id": "g15"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 21–25",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "Carla and Rob were surprised to learn that coastal cities",
              "options": [
                {
                  "key": "A",
                  "text": "contain nearly half the world’s population."
                },
                {
                  "key": "B",
                  "text": "include most of the world’s largest cities."
                },
                {
                  "key": "C",
                  "text": "are growing twice as fast as other cities."
                }
              ],
              "answer": "B",
              "explanation": "But most of the biggest cities are actually built by the sea."
            },
            {
              "number": 22,
              "prompt": "According to Rob, building coastal cities near to rivers",
              "options": [
                {
                  "key": "A",
                  "text": "may bring pollution to the cities."
                },
                {
                  "key": "B",
                  "text": "may reduce the land available for agriculture."
                },
                {
                  "key": "C",
                  "text": "may mean the countryside is spoiled by industry."
                }
              ],
              "answer": "A",
              "explanation": "it means more and more pollutants are discharged into the rivers."
            },
            {
              "number": 23,
              "prompt": "What mistake was made when building water drainage channels in Miami in the 1950s?",
              "options": [
                {
                  "key": "A",
                  "text": "There were not enough for them."
                },
                {
                  "key": "B",
                  "text": "They were made of unsuitable materials."
                },
                {
                  "key": "C",
                  "text": "They did not allow for the effects of climate change."
                }
              ],
              "answer": "C",
              "explanation": "But what they didn’t take into account was global warming."
            },
            {
              "number": 24,
              "prompt": "What do Rob and Carla think that the authorities in Miami should do immediately?",
              "options": [
                {
                  "key": "A",
                  "text": "take measures to restore ecosystems"
                },
                {
                  "key": "B",
                  "text": "pay for a new flood prevention system"
                },
                {
                  "key": "C",
                  "text": "stop disposing of waste materials into the ocean"
                }
              ],
              "answer": "B",
              "explanation": "Really they just need to find the money for something to replace the drainage channels"
            },
            {
              "number": 25,
              "prompt": "What do they agree should be the priority for international action?",
              "options": [
                {
                  "key": "A",
                  "text": "greater coordination of activities"
                },
                {
                  "key": "B",
                  "text": "more sharing of information"
                },
                {
                  "key": "C",
                  "text": "agreement on shared policies"
                }
              ],
              "answer": "A",
              "explanation": "so they should be able to work together to some extent."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 26–30",
          "instructions": "What decision do the students make about each of the following parts of their presentation? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "use visuals"
            },
            {
              "key": "B",
              "text": "keep it short"
            },
            {
              "key": "C",
              "text": "involve other students"
            },
            {
              "key": "D",
              "text": "check the information is accurate"
            },
            {
              "key": "E",
              "text": "provide a handout"
            },
            {
              "key": "F",
              "text": "focus on one example"
            },
            {
              "key": "G",
              "text": "do online research"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "Historical background",
              "answer": "B",
              "explanation": "But we don’t want to spend too long on that"
            },
            {
              "number": 27,
              "prompt": "Geographical factors",
              "answer": "A",
              "explanation": "Or some slides everyone can see?"
            },
            {
              "number": 28,
              "prompt": "Past mistakes",
              "answer": "F",
              "explanation": "Yes, We could use that as the basis for that part of the talk."
            },
            {
              "number": 29,
              "prompt": "Future risks",
              "answer": "G",
              "explanation": "We’ll need to look at some websites."
            },
            {
              "number": 30,
              "prompt": "International implications",
              "answer": "C",
              "explanation": "Maybe we could ask people in the audience."
            }
          ],
          "id": "g26"
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
              "kind": "subheader",
              "text": "Introduction"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "What’s needed: renewable energy sources methods that won’t create pollution"
            },
            {
              "kind": "subheader",
              "text": "Wave energy"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "Electricity can be generated using offshore or onshore systems"
            },
            {
              "kind": "static",
              "text": "Onshore systems may use a reservoir"
            },
            {
              "kind": "static",
              "text": "Problems: waves can move in any"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "movement of sand, etc. on the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "of the ocean may be affected",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Tidal energy"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Planned tidal lagoon in Wales: will be created in a"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "at Swansea breakwater (dam) containing 16 turbines rising tide forces water through turbines, generating electricity stored water is released through",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": ", driving the turbines in the reverse direction",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Advantages: not dependent on weather no"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "is required to make it work likely to create a number of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "subheader",
              "text": "Ocean thermal energy conversion"
            },
            {
              "kind": "static",
              "text": "Uses a difference in temperature between the surface and lower levels"
            },
            {
              "kind": "static",
              "text": "Water brought to the surface in a pipe"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "More energy required because of growth in population and _______",
              "answer": [
                "industry"
              ],
              "wordLimit": 1,
              "explanation": "because of the world’s increasing population and expanding industry."
            },
            {
              "number": 32,
              "prompt": "Advantage: waves provide a _______ source of renewable energy",
              "answer": [
                "constant"
              ],
              "wordLimit": 1,
              "explanation": "This form of energy has plenty of potential, as the source is constant"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "direction"
              ],
              "wordLimit": 1,
              "explanation": "But the problem with ocean waves is that they’re erratic, with the wind making them travel in every direction."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "floor"
              ],
              "wordLimit": 1,
              "explanation": "Another drawback is that sand and other sediment on the ocean floor might be stopped from flowing normally"
            },
            {
              "number": 35,
              "prompt": "Tides are more _______ than waves",
              "answer": [
                "predictable"
              ],
              "wordLimit": 1,
              "explanation": "One major advantage of using the tide, rather than waves, as a source of energy is that it’s predictable"
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "bay"
              ],
              "wordLimit": 1,
              "explanation": "This will be an area of water within a bay at Swansea, sheltered by a U- shaped breakwater, or dam, built out from the coast."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "gates"
              ],
              "wordLimit": 1,
              "explanation": "Then, in order to release the stored water, gates in the breakwater are opened."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "fuel"
              ],
              "wordLimit": 1,
              "explanation": "the turbines are operated without the need for fuel"
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "jobs"
              ],
              "wordLimit": 1,
              "explanation": "that manufacturing the components would create than 2,000 jobs, a big boost to the local economy."
            },
            {
              "number": 40,
              "prompt": "Problem: may ham fish and birds, e.g. by affecting _______ and building up silt",
              "answer": [
                "migration"
              ],
              "wordLimit": 1,
              "explanation": "On the other hand, there are fears that lagoons might harm both fish and birds, for example by disturbing migration patterns"
            }
          ],
          "formTitle": "Marine renewable energy (ocean energy)",
          "id": "g31"
        }
      ]
    }
  ]
}
$c14t1l$,
  true
);

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

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 14' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 14',
  'Test 3',
  'academic',
  2004,
  $c14t3l$
{
  "audioPath": "Cambridge 14 Test 3.mp3",
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
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "Customer Services Manager: …………Angela……….."
            },
            {
              "kind": "static",
              "text": "Date available weekend beginning February 4th"
            },
            {
              "kind": "static",
              "text": "Conference facilities the"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "room for talks (projector and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "available) area for coffee and an",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "free",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "throughout a standard buffet lunch costs $",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "per head",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Accommodation"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "subheader",
              "text": "Other facilities"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "Location"
            },
            {
              "kind": "static",
              "text": "Wilby Street (quite near the"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": ") near to restaurants and many",
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
              "prompt": "_______",
              "answer": [
                "Tesla"
              ],
              "wordLimit": 1,
              "explanation": "Tesla - that’s spelled T-E-S-L-A."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "microphone"
              ],
              "wordLimit": 1,
              "explanation": "How about a microphone?"
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "exhibition"
              ],
              "wordLimit": 1,
              "explanation": "we’d like to have an exhibition of our products and services there as well"
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "wifi"
              ],
              "wordLimit": 1,
              "explanation": "And I presume there’s wifi?"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "45"
              ],
              "wordLimit": 1,
              "explanation": "That’s $45 per person."
            },
            {
              "number": 6,
              "prompt": "Rooms will cost $ _______ including breakfast.",
              "answer": [
                "135"
              ],
              "wordLimit": 1,
              "explanation": "Well, for conference attendees we have a 25% reduction, so we can offer you rooms at $135."
            },
            {
              "number": 7,
              "prompt": "The hotel also has a spa and rooftop _______",
              "answer": [
                "pool"
              ],
              "wordLimit": 1,
              "explanation": "So we’ve got a spa where you can get massages and facials and so on, and there’s a pool up on the roof for the use of guests."
            },
            {
              "number": 8,
              "prompt": "There’s a free shuttle service to the _______",
              "answer": [
                "airport"
              ],
              "wordLimit": 1,
              "explanation": "Yes, it’s about 12 kilometres from the airport"
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "sea"
              ],
              "wordLimit": 1,
              "explanation": "Well, it’s downtown on Wilby Street, that’s quite a small street, and it’s not very far from the sea."
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "clubs"
              ],
              "wordLimit": 1,
              "explanation": "they can go on to one of the clubs in the area - there are a great many to choose from."
            }
          ],
          "formTitle": "Flanders Conference Hotel",
          "id": "g1"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Part 2",
      "groups": [
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 11–12",
          "instructions": "Choose TWO letters, A–E. Which TWO activities that volunteers do are mentioned?",
          "options": [
            {
              "key": "A",
              "text": "decorating"
            },
            {
              "key": "B",
              "text": "cleaning"
            },
            {
              "key": "C",
              "text": "delivering meals"
            },
            {
              "key": "D",
              "text": "shopping"
            },
            {
              "key": "E",
              "text": "childcare"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO activities that volunteers do are mentioned?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "They might even do some painting or wallpapering Or even do some babysitting so that parents can go out for a while."
            },
            {
              "number": 12,
              "prompt": "Which TWO activities that volunteers do are mentioned?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "They might even do some painting or wallpapering Or even do some babysitting so that parents can go out for a while."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO ways that volunteers can benefit from volunteering are mentioned?",
          "options": [
            {
              "key": "A",
              "text": "learning how to be part of a team"
            },
            {
              "key": "B",
              "text": "having a sense of purpose"
            },
            {
              "key": "C",
              "text": "realising how lucky they are"
            },
            {
              "key": "D",
              "text": "improved ability at time management"
            },
            {
              "key": "E",
              "text": "boosting their employment prospects"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO ways that volunteers can benefit from volunteering are mentioned?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "volunteering may be a valuable element of their CV when they’re applying for jobs Significantly, most volunteers feel that what they’re doing gives them a purpose in their lives."
            },
            {
              "number": 14,
              "prompt": "Which TWO ways that volunteers can benefit from volunteering are mentioned?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "volunteering may be a valuable element of their CV when they’re applying for jobs Significantly, most volunteers feel that what they’re doing gives them a purpose in their lives."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "What has each of the following volunteers helped someone to do? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "overcome physical difficulties"
            },
            {
              "key": "B",
              "text": "rediscover skills not used for a long time"
            },
            {
              "key": "C",
              "text": "improve their communication skills"
            },
            {
              "key": "D",
              "text": "solve problems independently"
            },
            {
              "key": "E",
              "text": "escape isolation"
            },
            {
              "key": "F",
              "text": "remember past times"
            },
            {
              "key": "G",
              "text": "start a new hobby"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Habib",
              "answer": "F",
              "explanation": "The songs take the listeners back to their youth, and for a little while they can forget the difficulties that they face now."
            },
            {
              "number": 16,
              "prompt": "Consuela",
              "answer": "A",
              "explanation": "She has difficulty walking herself, but she doesn’t let that stop her."
            },
            {
              "number": 17,
              "prompt": "Minh",
              "answer": "E",
              "explanation": "But together they go out to the cinema, or to see friends the young man hadn’t been able to visit for a long time."
            },
            {
              "number": 18,
              "prompt": "Tanya",
              "answer": "G",
              "explanation": "Tanya showed her some soft toys she’d made, and the woman decided to try it herself."
            },
            {
              "number": 19,
              "prompt": "Alexei",
              "answer": "D",
              "explanation": "that they can do something themselves to improve their situation."
            },
            {
              "number": 20,
              "prompt": "Juba",
              "answer": "C",
              "explanation": "Juba’s worked very patiently with her, and now the girl is far better at expressing herself, and at understanding other people."
            }
          ],
          "id": "g15"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 21–26",
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "question",
              "number": 26
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "It consists of around _______ students.",
              "answer": [
                "50"
              ],
              "wordLimit": 1,
              "explanation": "Well the band has students in it from all years, so they’re aged 11 to 18, and there are about 50 of them altogether."
            },
            {
              "number": 22,
              "prompt": "It is due to play in a _______ band competition.",
              "answer": [
                "regional"
              ],
              "wordLimit": 1,
              "explanation": "They aren’t really good enough to enter national band competitions, but they’re in a regional one later in the term."
            },
            {
              "number": 23,
              "prompt": "It has been invited to play in the town’s _______",
              "answer": [
                "carnival"
              ],
              "wordLimit": 1,
              "explanation": "Well, now the town council’s organising a carnival in the summer, and the band has been asked to perform."
            },
            {
              "number": 24,
              "prompt": "They have listened to a talk by a _______",
              "answer": [
                "drummer"
              ],
              "wordLimit": 1,
              "explanation": "I played a recording I came across, of a drummer talking about how playing in a band had changed his life."
            },
            {
              "number": 25,
              "prompt": "Joe will discuss a _______ with the band.",
              "answer": [
                "film"
              ],
              "wordLimit": 1,
              "explanation": "I’m planning to show them that old film from the 1940s ‘Strike Up the Band’, and talk about it with the students."
            },
            {
              "number": 26,
              "prompt": "Joe hopes the band will attend a _______ next month.",
              "answer": [
                "parade"
              ],
              "wordLimit": 1,
              "explanation": "I’m hoping I can take some of the band to a parade that’s going to take place next month."
            }
          ],
          "formTitle": "Background on school marching band",
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "What problem does Joe mention in connection with each of the following band members? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "makes a lot of mistakes in rehearsals"
            },
            {
              "key": "B",
              "text": "keeps making unhelpful suggestions"
            },
            {
              "key": "C",
              "text": "has difficulty with rhythm"
            },
            {
              "key": "D",
              "text": "misses too many rehearsals"
            },
            {
              "key": "E",
              "text": "has a health problem"
            },
            {
              "key": "F",
              "text": "doesn’t mix with other students"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "flautist",
              "answer": "D",
              "explanation": "We rehearse twice a week after school, but she’s hardly ever there."
            },
            {
              "number": 28,
              "prompt": "trumpeter",
              "answer": "B",
              "explanation": "She’s always saying what she thinks other people should do, which makes my job pretty difficult."
            },
            {
              "number": 29,
              "prompt": "trombonist",
              "answer": "E",
              "explanation": "could be an excellent musician - except that he has breathing difficulties, and he doesn’t really have enough breath for the trombone."
            },
            {
              "number": 30,
              "prompt": "percussionist",
              "answer": "F",
              "explanation": "he never seems to interact with other people, and he always rushes off as soon as the rehearsal ends."
            }
          ],
          "id": "g27"
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
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Concert 1"
            },
            {
              "kind": "static",
              "text": "Australian composer: Liza Lim studied piano and"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "before turning to composition performers and festivals around the world have given her a lot of commissions compositions show a great deal of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "and are drawn from various cultural sources her music is very expressive and also",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "festival will include her",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "called The Oresteia",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "British composers: Ralph Vaughan Williams, Frederick Delius"
            },
            {
              "kind": "subheader",
              "text": "Concert 2"
            },
            {
              "kind": "static",
              "text": "British composers: Benjamin Britten, Judith Weir"
            },
            {
              "kind": "static",
              "text": "Australian composer: Ross Edwards festival will include The Tower of Remoteness, inspired by nature"
            },
            {
              "kind": "static",
              "text": "The Tower of Remoteness is performed by piano and"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "compositions include music for children celebrates Australia’s cultural",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "subheader",
              "text": "Concert 3"
            },
            {
              "kind": "static",
              "text": "Australian composer: Carl Vine played cornet then piano studied"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "before studying music worked in Sydney as a pianist and composer became well known as composer of music for",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "festival will include his music for the 1996",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "British composers: Edward Elgar, Thomas Adès"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "_______",
              "answer": [
                "violin"
              ],
              "wordLimit": 1,
              "explanation": "also the violin."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "energy"
              ],
              "wordLimit": 1,
              "explanation": "Liza Lim’s compositions are vibrant and full of energy"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "complex"
              ],
              "wordLimit": 1,
              "explanation": "er music is very expressive, so although it is complex, it has the power of connecting with audiences and performers alike."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "opera"
              ],
              "wordLimit": 1,
              "explanation": "This is an opera in seven parts, based on the trilogy of ancient Greek tragedies by Aeschylus."
            },
            {
              "number": 35,
              "prompt": "Lim described the sounds in The Oresteia as _______",
              "answer": [
                "disturbing"
              ],
              "wordLimit": 1,
              "explanation": "the sounds she creates are also disturbing"
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "clarinet"
              ],
              "wordLimit": 1,
              "explanation": "The Tower of Remoteness is scored for piano and clarinet."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "diversity"
              ],
              "wordLimit": 1,
              "explanation": "it can be regarded as a celebration of the diversity of cultures that Australia can be proud of."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "physics"
              ],
              "wordLimit": 1,
              "explanation": "However, he went to university to study physics, before changing to composition."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "dance"
              ],
              "wordLimit": 1,
              "explanation": "Before long he had become prominent in Australia as a composer for dance, and in fact has written 25 scores of that type."
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "Olympics"
              ],
              "wordLimit": 1,
              "explanation": "In our third concert, Vine will be represented by his music for the flag hand- over ceremony of the Olympics held in 1996."
            }
          ],
          "formTitle": "Concerts in university arts festival",
          "id": "g31"
        }
      ]
    }
  ]
}
$c14t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 14' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 14',
  'Test 4',
  'academic',
  2004,
  $c14t4l$
{
  "audioPath": "Cambridge 14 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "subheader",
              "text": "Andrew is the ……Events…… Manager"
            },
            {
              "kind": "subheader",
              "text": "Rooms"
            },
            {
              "kind": "static",
              "text": "Adelphi Room number of people who can sit down to eat:"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "has a gallery suitable for musicians can go out and see the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "in pots on the terrace terrace has a view of a group of",
              "noBullet": true
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
              "text": "View of the lake"
            },
            {
              "kind": "subheader",
              "text": "Options"
            },
            {
              "kind": "static",
              "text": "Master of Ceremonies: can give a"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "while people are eating will provide",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "if there are any problems",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______",
              "answer": [
                "85"
              ],
              "wordLimit": 1,
              "explanation": "That can seat eighty-five, or hold over a hundred if people are standing for a buffet."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "roses"
              ],
              "wordLimit": 1,
              "explanation": "This has a beautiful display of pots of roses at that time of the year."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "trees"
              ],
              "wordLimit": 1,
              "explanation": "From the terrace you can see the area of trees within the grounds of the hotel, or you can stroll through there to the river"
            },
            {
              "number": 4,
              "prompt": "Carlton Room number of people who can sit down to eat: 110 has a _______",
              "answer": [
                "stage"
              ],
              "wordLimit": 1,
              "explanation": "This is a bit bigger - it can hold up to a hundred and ten people - and it has the advantage of a stage"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "speech"
              ],
              "wordLimit": 1,
              "explanation": "I suppose they make a speech during the meal if we need one, do they?"
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "support"
              ],
              "wordLimit": 1,
              "explanation": "And they’re also your support"
            },
            {
              "number": 7,
              "prompt": "Accommodation: in the hotel rooms or _______",
              "answer": [
                "cabins"
              ],
              "wordLimit": 1,
              "explanation": "do you also have any other accommodation, like cabins, for example?"
            }
          ],
          "formTitle": "Enquiry about booking hotel room for event",
          "id": "g1"
        },
        {
          "type": "matching",
          "label": "Questions 8–10",
          "instructions": "What is said about using each of the following hotel facilities? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "included in cost of hiring room"
            },
            {
              "key": "B",
              "text": "available at extra charge"
            },
            {
              "key": "C",
              "text": "not available"
            }
          ],
          "questions": [
            {
              "number": 8,
              "prompt": "outdoor swimming pool",
              "answer": "C",
              "explanation": "it’ll be closed throughout September for refurbishment"
            },
            {
              "number": 9,
              "prompt": "gym",
              "answer": "A",
              "explanation": "The gym will be available, though, at no extra charge."
            },
            {
              "number": 10,
              "prompt": "tennis courts",
              "answer": "B",
              "explanation": "there is a small additional payment for those."
            }
          ],
          "id": "g8"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Part 2",
      "groups": [
        {
          "type": "matching",
          "label": "Questions 11–16",
          "instructions": "What information does the speaker give about each of the following excursions? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "all downhill"
            },
            {
              "key": "B",
              "text": "suitable for beginners"
            },
            {
              "key": "C",
              "text": "only in good weather"
            },
            {
              "key": "D",
              "text": "food included"
            },
            {
              "key": "E",
              "text": "no charge"
            },
            {
              "key": "F",
              "text": "swimming possible"
            },
            {
              "key": "G",
              "text": "fully booked today"
            },
            {
              "key": "H",
              "text": "transport not included"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "dolphin watching",
              "answer": "G",
              "explanation": "Unfortunately there aren’t any places left for this afternoon’s trip"
            },
            {
              "number": 12,
              "prompt": "forest walk",
              "answer": "D",
              "explanation": "you’ll be provided with a drink and sandwiches."
            },
            {
              "number": 13,
              "prompt": "cycle trip",
              "answer": "A",
              "explanation": "it’s a 700-metre drop in just 20 kilometres so this isn’t really for inexperienced cyclists as you’ll be going pretty fast."
            },
            {
              "number": 14,
              "prompt": "local craft tour",
              "answer": "E",
              "explanation": "And the best thing about this trip is that it’s completely free."
            },
            {
              "number": 15,
              "prompt": "observatory trip",
              "answer": "F",
              "explanation": "Afterwards we’ll head down to Sunset Beach, where you can have a dip in the ocean if you want before we head off back to the hotel."
            },
            {
              "number": 16,
              "prompt": "horse riding",
              "answer": "B",
              "explanation": "or even if you’ve never been on a horse before."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. Which TWO things does the speaker say about the attraction called Musical Favourites?",
          "options": [
            {
              "key": "A",
              "text": "You pay extra for drinks."
            },
            {
              "key": "B",
              "text": "You must book it in advance."
            },
            {
              "key": "C",
              "text": "You get a reduction if you buy two tickets."
            },
            {
              "key": "D",
              "text": "You can meet the performers."
            },
            {
              "key": "E",
              "text": "You can take part in the show."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Which TWO things does the speaker say about the attraction called Musical Favourites?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "At the end the cast members come down from the stage it’s no good leaving it until the last minute."
            },
            {
              "number": 18,
              "prompt": "Which TWO things does the speaker say about the attraction called Musical Favourites?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "At the end the cast members come down from the stage it’s no good leaving it until the last minute."
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO things does the speaker say about the Castle Feast?",
          "options": [
            {
              "key": "A",
              "text": "Visitors can dance after the meal."
            },
            {
              "key": "B",
              "text": "There is a choice of food."
            },
            {
              "key": "C",
              "text": "Visitors wear historical costume."
            },
            {
              "key": "D",
              "text": "Knives and forks are not used."
            },
            {
              "key": "E",
              "text": "The entertainment includes horse races."
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO things does the speaker say about the Castle Feast?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "using your hands instead of cutlery join in as well if you want."
            },
            {
              "number": 20,
              "prompt": "Which TWO things does the speaker say about the Castle Feast?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "using your hands instead of cutlery join in as well if you want."
            }
          ],
          "id": "g19"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 21–25",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "What does Trevor find interesting about the purpose of children’s literature?",
              "options": [
                {
                  "key": "A",
                  "text": "the fact that authors may not realise what values they’re teaching"
                },
                {
                  "key": "B",
                  "text": "the fact that literature can be entertaining and educational at the same time"
                },
                {
                  "key": "C",
                  "text": "the fact that adults expect children to imitate characters in literature"
                }
              ],
              "answer": "A",
              "explanation": "What’s fascinating is that the writer isn’t necessarily conscious of the message they’re conveying."
            },
            {
              "number": 22,
              "prompt": "Trevor says the module about the purpose of children’s literature made him",
              "options": [
                {
                  "key": "A",
                  "text": "analyse some of the stories that his niece reads."
                },
                {
                  "key": "B",
                  "text": "wonder how far popularity reflects good qualify."
                },
                {
                  "key": "C",
                  "text": "decide to start writing some children’s stories."
                }
              ],
              "answer": "C",
              "explanation": "Actually, it inspired me to have a go at it myself, just for my own interest."
            },
            {
              "number": 23,
              "prompt": "Stephanie is interested in the Pictures module because",
              "options": [
                {
                  "key": "A",
                  "text": "she intends to become an illustrator."
                },
                {
                  "key": "B",
                  "text": "she can remember beautiful illustrations from her childhood."
                },
                {
                  "key": "C",
                  "text": "she believes illustrations are more important than words."
                }
              ],
              "answer": "A",
              "explanation": "I’ve always enjoyed drawing, so that’s the field I want to go into when I finish the course."
            },
            {
              "number": 24,
              "prompt": "Trevor and Stephanie agree that comics",
              "options": [
                {
                  "key": "A",
                  "text": "are inferior to books."
                },
                {
                  "key": "B",
                  "text": "have the potential for being useful."
                },
                {
                  "key": "C",
                  "text": "discourage children from using their imagination."
                }
              ],
              "answer": "B",
              "explanation": "There are plenty of kids who wouldn’t even try to read a book, so I think comics can serve a really useful purpose."
            },
            {
              "number": 25,
              "prompt": "With regard to books aimed at only boys or only girls, Trevor was surprised",
              "options": [
                {
                  "key": "A",
                  "text": "how long the distinction had gone unquestioned."
                },
                {
                  "key": "B",
                  "text": "how few books were aimed at both girls and boys."
                },
                {
                  "key": "C",
                  "text": "how many children enjoyed books intended for the opposite sex."
                }
              ],
              "answer": "B",
              "explanation": "I was amazed how many books were targeted at just one sex or the other."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 26–30",
          "instructions": "What comment is made about each of these stories? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "translated into many other languages"
            },
            {
              "key": "B",
              "text": "hard to read"
            },
            {
              "key": "C",
              "text": "inspired a work in a different area of art"
            },
            {
              "key": "D",
              "text": "more popular than the author’s other works"
            },
            {
              "key": "E",
              "text": "original title refers to another book"
            },
            {
              "key": "F",
              "text": "started a new genre"
            },
            {
              "key": "G",
              "text": "unlikely topic"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "Perrault’s fairy tales",
              "answer": "F",
              "explanation": "because no stories of that type had been written before, there were the first."
            },
            {
              "number": 27,
              "prompt": "The Swiss Family Robinson",
              "answer": "E",
              "explanation": "because it’s about a Swiss family who are shipwrecked, like Robinson Crusoe in the novel of a century earlier."
            },
            {
              "number": 28,
              "prompt": "The Nutcracker and the Mouse King",
              "answer": "C",
              "explanation": "Wasn’t that the basis for Tchaikovsky’s ballet The Nutcracker?"
            },
            {
              "number": 29,
              "prompt": "The Lord of the Rings",
              "answer": "B",
              "explanation": "I struggled with Tolkien’s The Lord of the Rings - there long books, and I gave up after one."
            },
            {
              "number": 30,
              "prompt": "War Horse",
              "answer": "G",
              "explanation": "Hardly what you’d expect for a children’s story."
            }
          ],
          "id": "g26"
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
              "text": "ATLIT-YAM was a village on coast of eastern Mediterranean thrived until about 7,000 BC stones homes had a courtyard had a semicircle of large stones round a"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "cause of destruction unknown - now under the sea biggest settlement from the prehistoric period found on the seabed research carried out into structures,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "and human remains",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "TRADITIOINAL AUTONOMOUS UNDERWATER VEHICLES (AUVs) used in the oil industry, e.g. to make"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "problems: they were expensive and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": ".",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "LATEST AUVs much easier to use, relatively cheap, sophisticated"
            },
            {
              "kind": "static",
              "text": "Tests:"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Underwater internet:"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "Planned research in Gulf of Baratti: to find out more about wrecks of ancient Roman ships, including"
            },
            {
              "kind": "static",
              "text": "- one carrying"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "supplies; tablets may have been used for cleaning the",
              "noBullet": true
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
                "spring"
              ],
              "wordLimit": 1,
              "explanation": "seven half-tonne stones standing in a semicircle around a spring, that might have been used for ceremonial purposes."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "tools"
              ],
              "wordLimit": 1,
              "explanation": "Research on the buildings, tools and the human remains has revealed how the bustling village once functioned"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "maps"
              ],
              "wordLimit": 1,
              "explanation": "Autonomous underwater vehicles, or AUVs, are used in the oil industry, for instance, to create maps of the seabed before rigs and pipelines are installed."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "heavy"
              ],
              "wordLimit": 1,
              "explanation": "Until relatively recently they were very expensive, and so heavy that they had to be launched from a large vessel with a winch."
            },
            {
              "number": 35,
              "prompt": "Marzamemi, Sicily: found ancient Roman ships carrying architectural elements made of _______",
              "answer": [
                "marble"
              ],
              "wordLimit": 1,
              "explanation": "The site is the final resting place of an ancient Roman ship, which sank in the sixth century AD while ferrying prefabricated marble elements for the construction of an early church"
            },
            {
              "number": 36,
              "prompt": "_______ is used for short distance communication, acoustic waves for long distance plans for communication with researchers by satellite",
              "answer": [
                "light"
              ],
              "wordLimit": 1,
              "explanation": "For short distances, AUVs can share date using light, while acoustic waves are used to communicate over long distances."
            },
            {
              "number": 37,
              "prompt": "AUV can send data to another AUV that has better _______ , for example",
              "answer": [
                "camera"
              ],
              "wordLimit": 1,
              "explanation": "/ cameras with a nearby AUV that carries superior cameras, and arrange for that AUV to make a closer inspection of the object."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "medical"
              ],
              "wordLimit": 1,
              "explanation": "When it sank, it was carrying medical goods, in wooden or tin receptacles."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "eyes"
              ],
              "wordLimit": 1,
              "explanation": "Its cargo gives us insight into the treatments available all those years ago, including tablets that are thought to have been dissolved to form a cleansing liquid for the eyes."
            },
            {
              "number": 40,
              "prompt": "- others carrying containers of olive oil or _______",
              "answer": [
                "wine"
              ],
              "wordLimit": 1,
              "explanation": "Some were used for transporting cargoes of olive oil, and others held wine."
            }
          ],
          "formTitle": "The hunt for sunken settlements and ancient shipwrecks",
          "id": "g31"
        }
      ]
    }
  ]
}
$c14t4l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 15',
  'Test 1',
  'academic',
  2004,
  $c15t1l$
{
  "audioPath": "Cambridge 15 Test 1.mp3",
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
              "kind": "static",
              "text": "Address of agency: 497 Eastside, Docklands"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Phone number: 07866 510333"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "subheader",
              "text": "Typical jobs"
            },
            {
              "kind": "static",
              "text": "Clerical and admin roles, mainly in the finance industry"
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
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "Registration process"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "Advantages of using an agency"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "Will get access to vacancies which are not advertised"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Name of agent: Becky _______",
              "answer": [
                "Jamieson"
              ],
              "wordLimit": 1,
              "explanation": "Jamieson J-A-M-I-E-S-O-N."
            },
            {
              "number": 2,
              "prompt": "Best to call her in the _______",
              "answer": [
                "afternoon"
              ],
              "wordLimit": 1,
              "explanation": "I wouldn’t call her until the afternoon if I were you - she’s always really busy in the morning trying to fill last-minute vacancies."
            },
            {
              "number": 3,
              "prompt": "Must have good _______ skills",
              "answer": [
                "communication"
              ],
              "wordLimit": 1,
              "explanation": "it’s communication that really matters"
            },
            {
              "number": 4,
              "prompt": "Jobs are usually for at least one _______",
              "answer": [
                "week"
              ],
              "wordLimit": 1,
              "explanation": "But you’re more likely to be offered something for a week at first, which might get extended."
            },
            {
              "number": 5,
              "prompt": "Pay is usually £ _______ per hour",
              "answer": [
                "10"
              ],
              "wordLimit": 1,
              "explanation": "/ ten The hourly rate is about £10, 11 if you’re lucky."
            },
            {
              "number": 6,
              "prompt": "Wear a _______ to the interview",
              "answer": [
                "suit"
              ],
              "wordLimit": 1,
              "explanation": "I can probably borrow a suit from Mum."
            },
            {
              "number": 7,
              "prompt": "Must bring your _______ to the interview",
              "answer": [
                "passport"
              ],
              "wordLimit": 1,
              "explanation": "What about my passport?"
            },
            {
              "number": 8,
              "prompt": "They will ask questions about each applicant’s _______",
              "answer": [
                "personality"
              ],
              "wordLimit": 1,
              "explanation": "So there are questions about personality that they always ask candidates - fairly basic ones."
            },
            {
              "number": 9,
              "prompt": "The _______ you receive at interview will benefit you",
              "answer": [
                "feedback"
              ],
              "wordLimit": 1,
              "explanation": "the interview will be useful because they’ll give you feedback on your performance so you can improve next time."
            },
            {
              "number": 10,
              "prompt": "Less _______ is involved in applying for jobs",
              "answer": [
                "time"
              ],
              "wordLimit": 1,
              "explanation": "And I expect finding a temporary job this way takes a lot less time"
            }
          ],
          "formTitle": "Bankside Recruitment Agency",
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
          "label": "Questions 11–14",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "According to the speaker, the company",
              "options": [
                {
                  "key": "A",
                  "text": "has been in business for longer than most of its competitors."
                },
                {
                  "key": "B",
                  "text": "arranges holidays to more destinations than its competitors."
                },
                {
                  "key": "C",
                  "text": "has more customers than its competitors."
                }
              ],
              "answer": "A",
              "explanation": "What we do is build on our many years’ experience - more than almost any other rail holiday company"
            },
            {
              "number": 12,
              "prompt": "Where can customers meet the tour manager before travelling to the Isle of Man?",
              "options": [
                {
                  "key": "A",
                  "text": "Liverpool"
                },
                {
                  "key": "B",
                  "text": "Heysham"
                },
                {
                  "key": "C",
                  "text": "Luton"
                }
              ],
              "answer": "B",
              "explanation": "Our holiday starts in Heysham, where your tour manager will meet you"
            },
            {
              "number": 13,
              "prompt": "How many lunches are included in the price of the holiday?",
              "options": [
                {
                  "key": "A",
                  "text": "three"
                },
                {
                  "key": "B",
                  "text": "four"
                },
                {
                  "key": "C",
                  "text": "five"
                }
              ],
              "answer": "A",
              "explanation": "You have five nights in the hotel, and the price covers five breakfasts and dinners, and lunch on the three days when there are organised trips"
            },
            {
              "number": 14,
              "prompt": "Customers have to pay extra for",
              "options": [
                {
                  "key": "A",
                  "text": "guaranteeing themselves a larger room."
                },
                {
                  "key": "B",
                  "text": "booking at short notice."
                },
                {
                  "key": "C",
                  "text": "transferring to another date."
                }
              ],
              "answer": "C",
              "explanation": "If you make a booking then need to change the start date, for example because of illness, you’re welcome to change to an alternative date or a different tour, for a small administrative fee."
            }
          ],
          "id": "g11"
        },
        {
          "type": "completion",
          "label": "Questions 15–20",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Activity Notes"
            },
            {
              "kind": "subheader",
              "text": "Day 1 Arrive"
            },
            {
              "kind": "subheader",
              "text": "Introduction by manager"
            },
            {
              "kind": "question",
              "number": 15
            },
            {
              "kind": "question",
              "number": 16
            },
            {
              "kind": "subheader",
              "text": "Day 3 Trip to Snaefell"
            },
            {
              "kind": "static",
              "text": "Travel along promenade in a tram; train to"
            },
            {
              "kind": "question",
              "number": 17
            },
            {
              "kind": "subheader",
              "text": "Day 4 Free day"
            },
            {
              "kind": "question",
              "number": 18
            },
            {
              "kind": "subheader",
              "text": "Day 5"
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "subheader",
              "text": "Erin"
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": "Day 6 Leave Leave the island by ferry or plane"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Hotel dining room has view of the _______",
              "answer": [
                "river"
              ],
              "wordLimit": 1,
              "explanation": "The dining room looks out at the river"
            },
            {
              "number": 16,
              "prompt": "Day 2 Tynwald Exhibition and Peel Tynwald may have been founded in _______ not 979.",
              "answer": [
                "1422"
              ],
              "wordLimit": 1,
              "explanation": "However, the earliest surviving reference to it is from 1422, so perhaps it isn’t quite as old as it claims!"
            },
            {
              "number": 17,
              "prompt": "Laxey; train to the _______ of Snaefell",
              "answer": [
                "top"
              ],
              "wordLimit": 1,
              "explanation": "From there it’s an eight-kilometre ride in the Snaefell Mountain Railway to the top."
            },
            {
              "number": 18,
              "prompt": "Company provides a _______ for local transport and heritage sites.",
              "answer": [
                "pass"
              ],
              "wordLimit": 1,
              "explanation": "Day four is free for you to explore, using the pass which we’ll give you."
            },
            {
              "number": 19,
              "prompt": "Take the _______ railway train from Douglas to Port",
              "answer": [
                "steam"
              ],
              "wordLimit": 1,
              "explanation": "The last full day, day five, is for some people the highlight of the holiday, with a ride on the steam railway, from Douglas to Port Erin."
            },
            {
              "number": 20,
              "prompt": "Free time, then coach to Castletown - former _______ has old castle.",
              "answer": [
                "capital"
              ],
              "wordLimit": 1,
              "explanation": "From there you continue to Castletown, which used to be the capital of the Isle of Man, and its mediaeval castle."
            }
          ],
          "formTitle": "Timetable for Isle of Man holiday",
          "id": "g15"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "matching",
          "label": "Questions 21–26",
          "instructions": "What did findings of previous research claim about the personality traits a child is likely to have because of their position in the family? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "outgoing"
            },
            {
              "key": "B",
              "text": "selfish"
            },
            {
              "key": "C",
              "text": "independent"
            },
            {
              "key": "D",
              "text": "attention-seeking"
            },
            {
              "key": "E",
              "text": "introverted"
            },
            {
              "key": "F",
              "text": "co-operative"
            },
            {
              "key": "G",
              "text": "caring"
            },
            {
              "key": "H",
              "text": "competitive"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "the eldest child",
              "answer": "G",
              "explanation": "Right, but on a positive note, some studies claimed that they were thought to be good a nurturing - certainly in the past when people had large families they would have been expected to look after the younger ones."
            },
            {
              "number": 22,
              "prompt": "a middle child",
              "answer": "F",
              "explanation": "Generally eager to please and helpful"
            },
            {
              "number": 23,
              "prompt": "the youngest child",
              "answer": "A",
              "explanation": "I’m supposed to have been a sociable and confident child who made friends easily"
            },
            {
              "number": 24,
              "prompt": "a twin",
              "answer": "E",
              "explanation": "There was one on personality, which said that a twin is likely to be quite shy in social situations because they always have their twin around to depend on for support."
            },
            {
              "number": 25,
              "prompt": "an only child",
              "answer": "B",
              "explanation": "Only children have had a really bad press - a lot of studies have branded them as loners who think the world revolves around them because they’ve never had to fight for their parents’ attention."
            },
            {
              "number": 26,
              "prompt": "a child with much older siblings",
              "answer": "C",
              "explanation": "One category I hadn’t considered before was children with much older siblings - a couple of studies mentioned that these children grow up more quickly and are expected to do basic things for themselves - like getting dressed."
            }
          ],
          "id": "g21"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 27–28",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 27,
              "prompt": "What do the speakers say about the evidence relating to birth order and academic success?",
              "options": [
                {
                  "key": "A",
                  "text": "There is conflicting evidence about whether oldest children perform best in intelligence tests."
                },
                {
                  "key": "B",
                  "text": "There is little doubt that birth order has less influence on academic achievement than socio-economic status."
                },
                {
                  "key": "C",
                  "text": "Some studies have neglected to include important factors such as family size."
                }
              ],
              "answer": "C",
              "explanation": "Although what many of them didn’t take into consideration was family size."
            },
            {
              "number": 28,
              "prompt": "What does Ruth think is surprising about the difference in oldest children’s academic performance?",
              "options": [
                {
                  "key": "A",
                  "text": "It is mainly thanks to their roles as teachers for their younger siblings."
                },
                {
                  "key": "B",
                  "text": "The advantages they have only lead to a slightly higher level of achievement."
                },
                {
                  "key": "C",
                  "text": "The extra parental attention they receive at a young age makes little difference."
                }
              ],
              "answer": "A",
              "explanation": "It’s that they benefit from being teachers for their younger siblings, by verbalising processes."
            }
          ],
          "id": "g27"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 29–30",
          "instructions": "Choose TWO letters, A–E. Which TWO experiences of sibling rivalry do the speakers agree has been valuable for them?",
          "options": [
            {
              "key": "A",
              "text": "learning to share"
            },
            {
              "key": "B",
              "text": "learning to stand up for oneself"
            },
            {
              "key": "C",
              "text": "learning to be a good loser"
            },
            {
              "key": "D",
              "text": "learning to be tolerant"
            },
            {
              "key": "E",
              "text": "learning to say sorry"
            }
          ],
          "questions": [
            {
              "number": 29,
              "prompt": "Which TWO experiences of sibling rivalry do the speakers agree has been valuable for them?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "I know how to defend myself. we had to put up with each other and most of the time we co-existed amicably enough."
            },
            {
              "number": 30,
              "prompt": "Which TWO experiences of sibling rivalry do the speakers agree has been valuable for them?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "I know how to defend myself. we had to put up with each other and most of the time we co-existed amicably enough."
            }
          ],
          "id": "g29"
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
              "text": "Importance it provides"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "and food for a wide range of species its leaves provide",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "which is used to make a disinfectant",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Reasons for present decline in number"
            },
            {
              "kind": "subheader",
              "text": "A) Diseases (i) ‘Mundulla Yellows’"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "- trees were unable to take in necessary iron through their roots (ii) ‘Bell-miner Associated Die-back’"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "- they secrete a substance containing sugar"
            },
            {
              "kind": "static",
              "text": "- bell-miner birds are attracted by this and keep away other species"
            },
            {
              "kind": "subheader",
              "text": "B) Bushfires"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "- maintain the quality of the"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "low-frequency bushfires result in the growth of ‘",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "rainforest’, which is:",
              "noBullet": true
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
                "shelter"
              ],
              "wordLimit": 1,
              "explanation": "For example, it gives shelter to creatures like birds and bats, and these and other species also depend on it for food, particularly the nectar from its flowers."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "oil"
              ],
              "wordLimit": 1,
              "explanation": "we can kill germs with a disinfectant made from oil extracted from eucalyptus leaves."
            },
            {
              "number": 33,
              "prompt": "Cause - lime used for making _______ was absorbed",
              "answer": [
                "roads"
              ],
              "wordLimit": 1,
              "explanation": "which was being used in the construction of roads."
            },
            {
              "number": 34,
              "prompt": "Cause - _______ feed on eucalyptus leaves",
              "answer": [
                "insects"
              ],
              "wordLimit": 1,
              "explanation": "What happens is that insects settle on the leaves and eat their way round them, destroying them as they go, and at the same time they secrete a solution which has sugar in it."
            },
            {
              "number": 35,
              "prompt": "William Jackson’s theory: high-frequency bushfires have impact on vegetation, resulting in the growth of _______ mid-frequency bushfires result in the growth of eucalyptus forests, because they:",
              "answer": [
                "grass"
              ],
              "wordLimit": 1,
              "explanation": "/ grasses this encourages grass to grow afterwards"
            },
            {
              "number": 36,
              "prompt": "- make more _______ available to the trees",
              "answer": [
                "water"
              ],
              "wordLimit": 1,
              "explanation": "Well, one reason is that the fire stops the growth of other species which would consume water needed by eucalyptus trees."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "soil"
              ],
              "wordLimit": 1,
              "explanation": "by affecting the composition of the soil"
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "dry"
              ],
              "wordLimit": 1,
              "explanation": "Now scientists believe that this reduced frequency of bushfires to low levels had led to what’s known as ‘dry rainforest’, which seems an odd name as usually we associate tropical rainforest with wet conditions."
            },
            {
              "number": 39,
              "prompt": "- a _______ Ecosystem",
              "answer": [
                "simple"
              ],
              "wordLimit": 1,
              "explanation": "Well, unlike tropical rainforest which is a rich ecosystem, this type of ecosystem is usually a simple one."
            },
            {
              "number": 40,
              "prompt": "- an ideal environment for the _______ of the bell-miner",
              "answer": [
                "nest"
              ],
              "wordLimit": 1,
              "explanation": "/ nests which builds its nests in the undergrowth there"
            }
          ],
          "formTitle": "The Eucalyptus Tree in Australia",
          "id": "g31"
        }
      ]
    }
  ]
}
$c15t1l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 15',
  'Test 2',
  'academic',
  2004,
  $c15t2l$
{
  "audioPath": "Cambridge 15 Test 2.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–4",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Date Type of event Details"
            },
            {
              "kind": "static",
              "text": "17th a concert performers from Canada"
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
              "kind": "static",
              "text": "20th (evening) a"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "show show is called",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "18th a ballet company called _______",
              "answer": [
                "Eustatis"
              ],
              "wordLimit": 1,
              "explanation": "The next day, the 18th, there’s a performance by a ballet company called Eustatis."
            },
            {
              "number": 2,
              "prompt": "19th-20th (afternoon) a play type of play: a comedy called Jemima has had a good _______",
              "answer": [
                "review"
              ],
              "wordLimit": 1,
              "explanation": "I haven’t seen it myself, but the review in the local paper was very good."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "dance"
              ],
              "wordLimit": 1,
              "explanation": "And what about dance?"
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "Chat"
              ],
              "wordLimit": 1,
              "explanation": "The show is about how people communicate, or fail to communicate, with each other, so it’s got the rather strange name, Chat."
            }
          ],
          "formTitle": "Festival information",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 5–10",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Making"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "food (children only) Making",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "(adults only) Making toys from",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "using various tools",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Outdoor activities"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "healthy"
              ],
              "wordLimit": 1,
              "explanation": "It’s going to focus on how to make food part of a healthy lifestyle, and it’ll show that even sweet things like cakes can contain much less sugar than they usually do."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "posters"
              ],
              "wordLimit": 1,
              "explanation": "Another workshop is just for children, and that’s on creating posters to reflect the history of the town."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "wood"
              ],
              "wordLimit": 1,
              "explanation": "Because it involves carpentry - participants will be making toys out of wood, so there’ll be a lot of sharp chisels and other tools around."
            },
            {
              "number": 8,
              "prompt": "Swimming in the _______",
              "answer": [
                "lake"
              ],
              "wordLimit": 1,
              "explanation": "In a lake, for instance."
            },
            {
              "number": 9,
              "prompt": "Walking in the woods, led by an expert on _______",
              "answer": [
                "insects"
              ],
              "wordLimit": 1,
              "explanation": "The leader is an expert on insects."
            },
            {
              "number": 10,
              "prompt": "See the festival organiser’s _______ for more information",
              "answer": [
                "blog"
              ],
              "wordLimit": 1,
              "explanation": "If you’d like to read about how the preparations for the festival are going, the festival organizer is keeping a blog."
            }
          ],
          "formTitle": "Workshops",
          "id": "g5"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Part 2",
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 11–14",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "The park was originally established",
              "options": [
                {
                  "key": "A",
                  "text": "as an amenity provided by the city council."
                },
                {
                  "key": "B",
                  "text": "as land belonging to a private house."
                },
                {
                  "key": "C",
                  "text": "as a shared area set up by the local community."
                }
              ],
              "answer": "C",
              "explanation": "unlike many public parks that started in private ownership, as the garden of a large house, for instance, Minster was some waste land, which people living nearby started planting with flowers in 1892."
            },
            {
              "number": 12,
              "prompt": "Why is there a statue of Diane Gosforth in the park?",
              "options": [
                {
                  "key": "A",
                  "text": "She was a resident who helped to lead a campaign."
                },
                {
                  "key": "B",
                  "text": "She was a council member responsible for giving the public access."
                },
                {
                  "key": "C",
                  "text": "She was a senior worker at the park for many years."
                }
              ],
              "answer": "A",
              "explanation": "Diane Gosforth was one of those people, and she organised petitions and demonstrations"
            },
            {
              "number": 13,
              "prompt": "During the First World War, the park was mainly used for",
              "options": [
                {
                  "key": "A",
                  "text": "exercises by troops."
                },
                {
                  "key": "B",
                  "text": "growing vegetables."
                },
                {
                  "key": "C",
                  "text": "public meetings."
                }
              ],
              "answer": "B",
              "explanation": "Soon after this the First World War broke out, in 1914, and most of the park was dug up and planted with vegetables, which were sold locally."
            },
            {
              "number": 14,
              "prompt": "When did the physical transformation of the park begin?",
              "options": [
                {
                  "key": "A",
                  "text": "2013"
                },
                {
                  "key": "B",
                  "text": "2015"
                },
                {
                  "key": "C",
                  "text": "2016"
                }
              ],
              "answer": "C",
              "explanation": "The changes finally got going in 2016, and were finished on schedule last year."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Label the map below. Write the correct letter, A–I, next to Questions 15–20.",
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
            },
            {
              "key": "I",
              "text": "I"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "statue of Diane Gosforth",
              "answer": "E",
              "explanation": "but it’s now immediately to the north of the lily pond, almost in the centre of the park"
            },
            {
              "number": 16,
              "prompt": "wooden sculptures",
              "answer": "C",
              "explanation": "There’s a new area of wooden sculptures, which are on the river bank, where the path from the east gate makes a sharp bend."
            },
            {
              "number": 17,
              "prompt": "playground",
              "answer": "B",
              "explanation": "that’s between the river and the path that leads from the pond to the river."
            },
            {
              "number": 18,
              "prompt": "maze",
              "answer": "A",
              "explanation": "That’s near the west gate - you go north from there towards the river and then turn left to reach it."
            },
            {
              "number": 19,
              "prompt": "tennis courts",
              "answer": "G",
              "explanation": "They’re still in the south-west corner of the park, where there’s a right-angle bend in the path."
            },
            {
              "number": 20,
              "prompt": "fitness area",
              "answer": "D",
              "explanation": "This is right next to the lily pond on the same side as the west gate."
            }
          ],
          "mapImage": "Cambridge 15 Test 2 map.png",
          "id": "g15"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 21–22",
          "instructions": "Choose TWO letters, A–E. Which TWO groups of people is the display primarily intended for?",
          "options": [
            {
              "key": "A",
              "text": "student from the English department"
            },
            {
              "key": "B",
              "text": "residents of the local area"
            },
            {
              "key": "C",
              "text": "the university’s teaching staff"
            },
            {
              "key": "D",
              "text": "potential new students"
            },
            {
              "key": "E",
              "text": "students from other departments"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO groups of people is the display primarily intended for?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "It’ll be publicised in the city, to encourage people to come and find out something of what does on here. And it’s included in the information that’s sent to people who are considering applying to study here next year."
            },
            {
              "number": 22,
              "prompt": "Which TWO groups of people is the display primarily intended for?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "It’ll be publicised in the city, to encourage people to come and find out something of what does on here. And it’s included in the information that’s sent to people who are considering applying to study here next year."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. What are Cathy and Graham’s TWO reasons for choosing the novelist Charles Dickens?",
          "options": [
            {
              "key": "A",
              "text": "His speeches inspired others to try to improve society."
            },
            {
              "key": "B",
              "text": "He used his publications to draw attention to social problems."
            },
            {
              "key": "C",
              "text": "His novels are well-known now."
            },
            {
              "key": "D",
              "text": "He was consulted on a number of social issues."
            },
            {
              "key": "E",
              "text": "His reputation has changed in recent times."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "What are Cathy and Graham’s TWO reasons for choosing the novelist Charles Dickens?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Most people have heard of him, and have probably read some of his novels, or seen films based on them And his novels show the awful conditions that most people had to live in, don’t they: he wanted to shock people into doing something about it."
            },
            {
              "number": 24,
              "prompt": "What are Cathy and Graham’s TWO reasons for choosing the novelist Charles Dickens?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Most people have heard of him, and have probably read some of his novels, or seen films based on them And his novels show the awful conditions that most people had to live in, don’t they: he wanted to shock people into doing something about it."
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What topic do Cathy and Graham choose to illustrate with each novel? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "poverty"
            },
            {
              "key": "B",
              "text": "education"
            },
            {
              "key": "C",
              "text": "Dickens’s travels"
            },
            {
              "key": "D",
              "text": "entertainment"
            },
            {
              "key": "E",
              "text": "crime and the law"
            },
            {
              "key": "F",
              "text": "wealth"
            },
            {
              "key": "G",
              "text": "medicine"
            },
            {
              "key": "H",
              "text": "a woman’s life"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "The Pickwick Papers",
              "answer": "G",
              "explanation": "that there’s a character who keeps falling asleep, and that medical condition was named after the book - Pickwickian Syndrome."
            },
            {
              "number": 26,
              "prompt": "Oliver Twist",
              "answer": "B",
              "explanation": "We could use that to illustrate the fact that very few children went to school, particularly not poor children, so they learnt in other ways."
            },
            {
              "number": 27,
              "prompt": "Nicholas Nickleby",
              "answer": "D",
              "explanation": "But there’s also the company of touring actors that Nicholas joins. We could do something on theatres and other amusements of the time."
            },
            {
              "number": 28,
              "prompt": "Martin Chuzzlewit",
              "answer": "C",
              "explanation": "Yes, and Dickens himself had been there a year before, and drew on his experience there in the novel."
            },
            {
              "number": 29,
              "prompt": "Bleak House",
              "answer": "H",
              "explanation": "That’s true, but think about Esther, the heroine. As a child she lives with someone she doesn’t know is her aunt, who treats her very badly. Then she’s very happy living with her guardian, and he puts her in charge of the household. And at the end she gets married and her guardian gives her and her husband a house, where of course they’re very happy."
            },
            {
              "number": 30,
              "prompt": "Little Dorrit",
              "answer": "F",
              "explanation": "What about focusing on the part when Mr Dorrit inherits a fortune, and he starts pretending he’s always been rich?"
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
              "kind": "subheader",
              "text": "How the programme was organised"
            },
            {
              "kind": "static",
              "text": "It focused on a dry and arid region in Chicualacuala district, near the Limpopo River."
            },
            {
              "kind": "static",
              "text": "People depended on the forest to provide charcoal as a source of income."
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "Fenced areas created to keep animals away from crops."
            },
            {
              "kind": "subheader",
              "text": "The programme provided"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "- water pumps."
            },
            {
              "kind": "subheader",
              "text": "The farmers provided"
            },
            {
              "kind": "subheader",
              "text": "- labour"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "Further developments"
            },
            {
              "kind": "question",
              "number": 36
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
              "kind": "question",
              "number": 39
            },
            {
              "kind": "subheader",
              "text": "Evaluation and lessons learned"
            },
            {
              "kind": "static",
              "text": "Agricultural production increased, improving incomes and food security."
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "_______ was seen as the main priority to ensure the supply of water.",
              "answer": [
                "Irrigation"
              ],
              "wordLimit": 1,
              "explanation": "the programme focused primarily on making use of existing water resources from the Limpopo River by setting up systems of irrigation"
            },
            {
              "number": 32,
              "prompt": "Most of the work organised by farmers’ associations was done by _______",
              "answer": [
                "women"
              ],
              "wordLimit": 1,
              "explanation": "women formed the majority of the workforce."
            },
            {
              "number": 33,
              "prompt": "- _______ for the fences",
              "answer": [
                "wire"
              ],
              "wordLimit": 1,
              "explanation": "/ wires The community was responsible for creating these fences, but the programme provided the necessary wire for making them."
            },
            {
              "number": 34,
              "prompt": "- _______ for suitable crops",
              "answer": [
                "seed"
              ],
              "wordLimit": 1,
              "explanation": "/ seeds the programme provided the necessary seeds for this."
            },
            {
              "number": 35,
              "prompt": "- _______ for the fences on their land.",
              "answer": [
                "posts"
              ],
              "wordLimit": 1,
              "explanation": "they also provided and put up the posts that supported the fences around the fields."
            },
            {
              "number": 36,
              "prompt": "The marketing of produce was sometimes difficult due to lack of _______ .",
              "answer": [
                "transport"
              ],
              "wordLimit": 1,
              "explanation": "as the farmers did not have access to transport"
            },
            {
              "number": 37,
              "prompt": "Training was therefore provided in methods of food _______ .",
              "answer": [
                "preservation"
              ],
              "wordLimit": 1,
              "explanation": "the farmers needed to learn techniques for its preservation."
            },
            {
              "number": 38,
              "prompt": "Farmers made special places where _______ could be kept.",
              "answer": [
                "fish"
              ],
              "wordLimit": 1,
              "explanation": "/ fishes off areas and to fill these with water and use them for breeding fish"
            },
            {
              "number": 39,
              "prompt": "Local people later suggested keeping _______ .",
              "answer": [
                "bees"
              ],
              "wordLimit": 1,
              "explanation": "They decided to try setting up colonies of bees"
            },
            {
              "number": 40,
              "prompt": "Enough time must be allowed, particularly for the _______ phase of the programme.",
              "answer": [
                "design"
              ],
              "wordLimit": 1,
              "explanation": "However, it’s important to set realistic timelines for each phase of the programme, especially for its design"
            }
          ],
          "formTitle": "Agricultural programme in Mozambique",
          "id": "g31"
        }
      ]
    }
  ]
}
$c15t2l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 15',
  'Test 3',
  'academic',
  2004,
  $c15t3l$
{
  "audioPath": "Cambridge 15 Test 3.mp3",
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
              "text": "First Job"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "Responsibilities data entry go to"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "and take notes general admin management of",
              "noBullet": true
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
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "Second Job"
            },
            {
              "kind": "static",
              "text": "Warehouse assistant in South London"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "Requirements ability to work with numbers good computer skills very organised and"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "good communication skills used to working in a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "able to cope with items that are",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "Need experience of driving in London warehouse work"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Administrative assistant in a company that produces _______ (North London)",
              "answer": [
                "furniture"
              ],
              "wordLimit": 1,
              "explanation": "They’re called Home Solutions and they design and make furniture."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "meetings"
              ],
              "wordLimit": 1,
              "explanation": "Then they expect the person they appoint to attend meetings and take notes there …"
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "diary"
              ],
              "wordLimit": 1,
              "explanation": "That should be OK. And in my last job I also had to manage the diary."
            },
            {
              "number": 4,
              "prompt": "Requirements good computer skills including spreadsheets good interpersonal skills attention to _______",
              "answer": [
                "detail"
              ],
              "wordLimit": 1,
              "explanation": "/ details Then they mention that they want someone who is careful and takes care with details"
            },
            {
              "number": 5,
              "prompt": "Experience need a minimum of _______ of experience of teleconferencing",
              "answer": [
                "1 year"
              ],
              "wordLimit": 1,
              "explanation": "/ one year In fact they’re only asking for at least one year, so that’s great."
            },
            {
              "number": 6,
              "prompt": "Responsibilities stock management managing _______",
              "answer": [
                "deliveries"
              ],
              "wordLimit": 1,
              "explanation": "So as far as the responsibilities for this position go, they want someone who can manage the stock, obviously, and also deliveries."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "tidy"
              ],
              "wordLimit": 1,
              "explanation": "And tidy?"
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "team"
              ],
              "wordLimit": 1,
              "explanation": "And for the last warehouse job I had, one of the things I enjoyed most was being part of a team."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "heavy"
              ],
              "wordLimit": 1,
              "explanation": "So you’re OK moving heavy things?"
            },
            {
              "number": 10,
              "prompt": "_______ service",
              "answer": [
                "customer"
              ],
              "wordLimit": 1,
              "explanation": "And you’ve got experience of warehouse work … and the final thing they mention is customer service."
            }
          ],
          "formTitle": "Employment Agency: Possible Jobs",
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
          "label": "Questions 11–16",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "When did the Street Play Scheme first take place?",
              "options": [
                {
                  "key": "A",
                  "text": "two years ago"
                },
                {
                  "key": "B",
                  "text": "three years ago"
                },
                {
                  "key": "C",
                  "text": "six years ago"
                }
              ],
              "answer": "B",
              "explanation": "So the scheme’s been up and running for three years now."
            },
            {
              "number": 12,
              "prompt": "How often is Beechwood Road closed to traffic now?",
              "options": [
                {
                  "key": "A",
                  "text": "once a week"
                },
                {
                  "key": "B",
                  "text": "on Saturdays and Sundays"
                },
                {
                  "key": "C",
                  "text": "once a month"
                }
              ],
              "answer": "A",
              "explanation": "At the moment it’s just once a week."
            },
            {
              "number": 13,
              "prompt": "Who is responsible for closing the road?",
              "options": [
                {
                  "key": "A",
                  "text": "a council official"
                },
                {
                  "key": "B",
                  "text": "the police"
                },
                {
                  "key": "C",
                  "text": "local wardens"
                }
              ],
              "answer": "C",
              "explanation": "We have volunteer wardens, mostly parents but some elderly residents too, who block off our road at either end."
            },
            {
              "number": 14,
              "prompt": "Residents who want to use their cars",
              "options": [
                {
                  "key": "A",
                  "text": "have to park in another street."
                },
                {
                  "key": "B",
                  "text": "must drive very slowly"
                },
                {
                  "key": "C",
                  "text": "need permission from a warden."
                }
              ],
              "answer": "B",
              "explanation": "as long as they drive at under 20 kilometres per hour."
            },
            {
              "number": 15,
              "prompt": "Alice says that Street Play Schemes are most needed in",
              "options": [
                {
                  "key": "A",
                  "text": "wealthy areas"
                },
                {
                  "key": "B",
                  "text": "quiet suburban areas."
                },
                {
                  "key": "C",
                  "text": "areas with heavy traffic."
                }
              ],
              "answer": "C",
              "explanation": "Absolutely - we want to include all kids in the city - especially those who live on busy roads."
            },
            {
              "number": 16,
              "prompt": "What has been the reaction of residents who are not parents?",
              "options": [
                {
                  "key": "A",
                  "text": "Many of them were unhappy at first."
                },
                {
                  "key": "B",
                  "text": "They like seeing children play in the street."
                },
                {
                  "key": "C",
                  "text": "They are surprised by the lack of noise."
                }
              ],
              "answer": "B",
              "explanation": "On the whole everyone is very supportive and say they’re very happy to see children out on the street"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. Which TWO benefits for children does Alice think are the most important?",
          "options": [
            {
              "key": "A",
              "text": "increased physical activity"
            },
            {
              "key": "B",
              "text": "increased sense of independence"
            },
            {
              "key": "C",
              "text": "opportunity to learn new games"
            },
            {
              "key": "D",
              "text": "opportunity to be part of a community"
            },
            {
              "key": "E",
              "text": "opportunity to make new friends"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Which TWO benefits for children does Alice think are the most important?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "but for me the biggest advantage is that kids develop confidence in themselves to be outside without their parents. The other really fantastic thing is that children get to know the adults in the street - it’s like having a big extended family."
            },
            {
              "number": 18,
              "prompt": "Which TWO benefits for children does Alice think are the most important?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "but for me the biggest advantage is that kids develop confidence in themselves to be outside without their parents. The other really fantastic thing is that children get to know the adults in the street - it’s like having a big extended family."
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO results of the King Street experiment surprised Alice?",
          "options": [
            {
              "key": "A",
              "text": "more shoppers"
            },
            {
              "key": "B",
              "text": "improved safety"
            },
            {
              "key": "C",
              "text": "less air pollution"
            },
            {
              "key": "D",
              "text": "more relaxed atmosphere"
            },
            {
              "key": "E",
              "text": "less noise pollution"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO results of the King Street experiment surprised Alice?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "air quality was significantly better but what I hadn’t expected was how much quieter it would be Of course everyone said they felt safer but we were actually amazed that sales in the shops went up considerably that day"
            },
            {
              "number": 20,
              "prompt": "Which TWO results of the King Street experiment surprised Alice?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "air quality was significantly better but what I hadn’t expected was how much quieter it would be Of course everyone said they felt safer but we were actually amazed that sales in the shops went up considerably that day"
            }
          ],
          "id": "g19"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 21–26",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "what"
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": "the item is on the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": "of the item, including the headline any",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "static",
              "text": "accompanying the item the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": "of the item, e.g. what’s made prominent the writer’s main",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": "the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": "the writer may make about the reader",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "_______",
              "answer": [
                "page"
              ],
              "wordLimit": 1,
              "explanation": "For example, there’s the question of which page of the newspaper the item appears on."
            },
            {
              "number": 22,
              "prompt": "_______",
              "answer": [
                "size"
              ],
              "wordLimit": 1,
              "explanation": "Then there’s the size"
            },
            {
              "number": 23,
              "prompt": "_______",
              "answer": [
                "graphic"
              ],
              "wordLimit": 1,
              "explanation": "/ graphics What about graphics"
            },
            {
              "number": 24,
              "prompt": "_______",
              "answer": [
                "structure"
              ],
              "wordLimit": 1,
              "explanation": "what structure is it given?"
            },
            {
              "number": 25,
              "prompt": "_______",
              "answer": [
                "purpose"
              ],
              "wordLimit": 1,
              "explanation": "And that relates to a very important point: what’s the writer’s purpose"
            },
            {
              "number": 26,
              "prompt": "_______",
              "answer": [
                "assumption"
              ],
              "wordLimit": 1,
              "explanation": "/ assumptions And I suppose the writer may make assumptions about the reader."
            }
          ],
          "formTitle": "What Hazel should analyse about items in newspapers:",
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "What does Hazel decide to do about each of the following types of articles? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "She will definitely look for a suitable article."
            },
            {
              "key": "B",
              "text": "She may look for a suitable article."
            },
            {
              "key": "C",
              "text": "She definitely won’t look for an article."
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "national news item",
              "answer": "A",
              "explanation": "And on that basis a national news item would be worth analysing - I’m quite keen on politics, so I’ll try and find a suitable topic."
            },
            {
              "number": 28,
              "prompt": "editorial",
              "answer": "C",
              "explanation": "I was interested in how newspapers express their opinions explicitly, so I wanted to compare editorials in different papers, but when I started looking. I couldn’t find two on the same topic that I felt like analysing."
            },
            {
              "number": 29,
              "prompt": "human interest",
              "answer": "C",
              "explanation": "In that case, I won’t even bother to look."
            },
            {
              "number": 30,
              "prompt": "arts",
              "answer": "B",
              "explanation": "I usually find stories like that raise quite strong feelings in me! I’ll avoid that. Perhaps I’ll choose an arts topic"
            }
          ],
          "id": "g27"
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
              "kind": "question",
              "number": 31
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "Europe from 17th century:"
            },
            {
              "kind": "static",
              "text": "1600s: cleanliness and bathing started becoming usual"
            },
            {
              "kind": "static",
              "text": "1791: Leblanc invented a way of making soda ash from"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "early 1800s: Chevreul turned soapmaking into a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "from 1800s, there was no longer a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "on soap.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Prehistoric times: water was used to wash off _______",
              "answer": [
                "mud"
              ],
              "wordLimit": 1,
              "explanation": "at least that it rinsed mud off their hands."
            },
            {
              "number": 32,
              "prompt": "Ancient Babylon soap-like material found in _______ cylinders",
              "answer": [
                "clay"
              ],
              "wordLimit": 1,
              "explanation": "Archaeologists discovered cylinders made of clay"
            },
            {
              "number": 33,
              "prompt": "Ancient Greece: people cleaned themselves with sand and other substances used a strigil - scraper made of _______ washed clothes in streams",
              "answer": [
                "metal"
              ],
              "wordLimit": 1,
              "explanation": "scraped off the oil and dirt with a metal instrument known as a strigil."
            },
            {
              "number": 34,
              "prompt": "Ancient Germany and Gaul: used soap to colour their _______",
              "answer": [
                "hair"
              ],
              "wordLimit": 1,
              "explanation": "They used this mixture to tint their hair red."
            },
            {
              "number": 35,
              "prompt": "Ancient Rome: animal fat, ashes and clay mixed through action of rain, used for washing clothes from about 312 BC, water carried to Roman _______ by aqueducts",
              "answer": [
                "bath"
              ],
              "wordLimit": 1,
              "explanation": "/ baths The first of the famous Roman baths, supplied with water from their aqueducts"
            },
            {
              "number": 36,
              "prompt": "Europe in Middle Ages: decline in bathing contributed to occurrence of _______",
              "answer": [
                "disease"
              ],
              "wordLimit": 1,
              "explanation": "/ diseases This lack of personal cleanliness and related unsanitary living conditions were major factors in the outbreaks of disease in the Middle Ages, and especially the Black Death of the 14th century."
            },
            {
              "number": 37,
              "prompt": "_______ began to be added to soap",
              "answer": [
                "perfume"
              ],
              "wordLimit": 1,
              "explanation": "Vegetable and animal oils were used with ashes of plants, along with perfume, apparently for the first time."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "salt"
              ],
              "wordLimit": 1,
              "explanation": "patented a process for turning salt into soda ash"
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "science"
              ],
              "wordLimit": 1,
              "explanation": "His studies established the basis for both fat and soap chemistry, and soapmaking became a science."
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "tax"
              ],
              "wordLimit": 1,
              "explanation": "a development that was reinforced when the high tax was removed."
            }
          ],
          "formTitle": "Early history of keeping clean",
          "id": "g31"
        }
      ]
    }
  ]
}
$c15t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 15',
  'Test 4',
  'academic',
  2004,
  $c15t4l$
{
  "audioPath": "Cambridge 15 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the form below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Customer details"
            },
            {
              "kind": "subheader",
              "text": "Name: Sophie Bird"
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
              "kind": "subheader",
              "text": "Journey information"
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
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "When ticket was purchased: Yesterday"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "subheader",
              "text": "Satisfaction with journey"
            },
            {
              "kind": "subheader",
              "text": "Most satisfied with: the wifi"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Satisfaction with station facilities"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Occupation: _______",
              "answer": [
                "journalist"
              ],
              "wordLimit": 1,
              "explanation": "I’m a journalist."
            },
            {
              "number": 2,
              "prompt": "Reason for travel today: _______",
              "answer": [
                "shopping"
              ],
              "wordLimit": 1,
              "explanation": "I came here to do some shopping."
            },
            {
              "number": 3,
              "prompt": "Name of station returning to: _______",
              "answer": [
                "Staunfirth"
              ],
              "wordLimit": 1,
              "explanation": "Staunfirth, where I live."
            },
            {
              "number": 4,
              "prompt": "Type of ticket purchased: Standard _______ ticket",
              "answer": [
                "return"
              ],
              "wordLimit": 1,
              "explanation": "No, I just got a normal return ticket."
            },
            {
              "number": 5,
              "prompt": "Cost of ticket: £ _______",
              "answer": [
                "23.70"
              ],
              "wordLimit": 1,
              "explanation": "I paid £23.70."
            },
            {
              "number": 6,
              "prompt": "Where ticket was bought: _______",
              "answer": [
                "online"
              ],
              "wordLimit": 1,
              "explanation": "I got an e-ticket online."
            },
            {
              "number": 7,
              "prompt": "Least satisfied with: the _______ this morning.",
              "answer": [
                "delay"
              ],
              "wordLimit": 1,
              "explanation": "the trains run on time and are pretty reliable but today there was a delay"
            },
            {
              "number": 8,
              "prompt": "Most satisfied with: how much _______ was provided",
              "answer": [
                "information"
              ],
              "wordLimit": 1,
              "explanation": "I think the best thing is that they’ve improved the amount of information about train times etc. that’s given to passengers"
            },
            {
              "number": 9,
              "prompt": "Least satisfied with: lack of seats, particularly on the _______",
              "answer": [
                "platform"
              ],
              "wordLimit": 1,
              "explanation": "/ platforms But one thing is that there aren’t enough places to sit down, especially on the platforms."
            },
            {
              "number": 10,
              "prompt": "Neither satisfied nor dissatisfied with: the _______ available",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "What about the parking at the station?"
            }
          ],
          "formTitle": "Customer Satisfaction Survey",
          "id": "g1"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Part 2",
      "groups": [
        {
          "type": "matching",
          "label": "Questions 11–16",
          "instructions": "Label the map below. Write the correct letter, A–H, next to Questions 11–16.",
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
              "number": 11,
              "prompt": "café",
              "answer": "D",
              "explanation": "looking out over the lake and next to the old museum."
            },
            {
              "number": 12,
              "prompt": "toilets",
              "answer": "C",
              "explanation": "near the adventure playground, in the corner of your map."
            },
            {
              "number": 13,
              "prompt": "formal gardens",
              "answer": "G",
              "explanation": "but we’re now used the space near the south gate - between the park boundary and the path that goes past the lake towards the old museum."
            },
            {
              "number": 14,
              "prompt": "outdoor gym",
              "answer": "H",
              "explanation": "It’s by the glass houses, just to the right of the path from the south gate. You have to look for it as it’s a bit hidden in the trees."
            },
            {
              "number": 15,
              "prompt": "skateboard ramp",
              "answer": "A",
              "explanation": "It’s near the old museum, at the end of a little path that leads off from the main path between the lake and the museum."
            },
            {
              "number": 16,
              "prompt": "wild flowers",
              "answer": "E",
              "explanation": "It’s on a bend in the path that goes round the east side of the lake, just south of the adventure playground."
            }
          ],
          "mapImage": "Cambridge 15 Test 4 map.png",
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. What does the speakers say about the adventure playground?",
          "options": [
            {
              "key": "A",
              "text": "Children must be supervised."
            },
            {
              "key": "B",
              "text": "It costs more in winter."
            },
            {
              "key": "C",
              "text": "Some activities are only for younger children."
            },
            {
              "key": "D",
              "text": "No payment is required."
            },
            {
              "key": "E",
              "text": "It was recently expanded."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "What does the speakers say about the adventure playground?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "entrance is completely free. we do ask adults not to leave them on their own there."
            },
            {
              "number": 18,
              "prompt": "What does the speakers say about the adventure playground?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "entrance is completely free. we do ask adults not to leave them on their own there."
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. What does the speaker say about the glass houses?",
          "options": [
            {
              "key": "A",
              "text": "They are closed at weekends."
            },
            {
              "key": "B",
              "text": "Volunteers are needed to work there."
            },
            {
              "key": "C",
              "text": "They were badly damaged by fire."
            },
            {
              "key": "D",
              "text": "More money is needed to repair some of the glass."
            },
            {
              "key": "E",
              "text": "Visitors can see palm trees from tropical regions."
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "What does the speaker say about the glass houses?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "A huge amount of work has been done on them to repair the damage following the disastrous fire that recently destroyed their western side. At present the glass houses are open from 10am to 3pm Mondays to Thursdays, and it’s hoped to extend this to the weekend soon."
            },
            {
              "number": 20,
              "prompt": "What does the speaker say about the glass houses?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "A huge amount of work has been done on them to repair the damage following the disastrous fire that recently destroyed their western side. At present the glass houses are open from 10am to 3pm Mondays to Thursdays, and it’s hoped to extend this to the weekend soon."
            }
          ],
          "id": "g19"
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
              "prompt": "What did Annie discover from reading about icehouses?",
              "options": [
                {
                  "key": "A",
                  "text": "why they were first created"
                },
                {
                  "key": "B",
                  "text": "how the ice was kept frozen"
                },
                {
                  "key": "C",
                  "text": "where they were located"
                }
              ],
              "answer": "B",
              "explanation": "But I didn’t realise that insulating the blocks with straw or sawdust meant they didn’t melt for months."
            },
            {
              "number": 22,
              "prompt": "What point does Annie make about refrigeration in ancient Rome?",
              "options": [
                {
                  "key": "A",
                  "text": "It became a commercial business."
                },
                {
                  "key": "B",
                  "text": "It used snow from nearby."
                },
                {
                  "key": "C",
                  "text": "It took a long time to become popular."
                }
              ],
              "answer": "A",
              "explanation": "Both the ice and the snow were then sold."
            },
            {
              "number": 23,
              "prompt": "In connection with modern refrigerator, both Annie and Jack are worried about",
              "options": [
                {
                  "key": "A",
                  "text": "the complexity of the technology."
                },
                {
                  "key": "B",
                  "text": "the fact that some are disposed of irresponsibly."
                },
                {
                  "key": "C",
                  "text": "the large number that quickly break down."
                }
              ],
              "answer": "B",
              "explanation": "It’s hard to see how they can be stopped unfortunately."
            },
            {
              "number": 24,
              "prompt": "What do Jack and Annie agree regarding domestic fridges?",
              "options": [
                {
                  "key": "A",
                  "text": "They are generally good value for money."
                },
                {
                  "key": "B",
                  "text": "There are plenty of useful variations."
                },
                {
                  "key": "C",
                  "text": "They are more useful than other domestic appliances."
                }
              ],
              "answer": "A",
              "explanation": "So if you divide the cost by the number of years you can use a fridge, they’re not expensive, compared with some household appliances."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "Who is going to do research into each topic? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Annie"
            },
            {
              "key": "B",
              "text": "Jack"
            },
            {
              "key": "C",
              "text": "both Annie and Jack"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "the goods that are refrigerated",
              "answer": "A",
              "explanation": "the range of goods that are refrigerated nowadays?"
            },
            {
              "number": 26,
              "prompt": "the effects on health",
              "answer": "A",
              "explanation": "What about the effects of refrigeration on people’s health?"
            },
            {
              "number": 27,
              "prompt": "the impact on food producers",
              "answer": "B",
              "explanation": "Oh, all right then, I’ll do you a favour."
            },
            {
              "number": 28,
              "prompt": "the impact on cities",
              "answer": "B",
              "explanation": "I think we should also look at how refrigeration has helped whole cities"
            },
            {
              "number": 29,
              "prompt": "refrigerated transport",
              "answer": "A",
              "explanation": "Then there’s transport, and the difference that refrigerated trucks have made. I wouldn’t mind having a go at that."
            },
            {
              "number": 30,
              "prompt": "domestic fridges",
              "answer": "C",
              "explanation": "Shall we have a separate section on domestic fridges?"
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
              "kind": "subheader",
              "text": "19th century"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "subheader",
              "text": "MAIN AREAS OF CHANGE"
            },
            {
              "kind": "subheader",
              "text": "Manufacturing"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "Transport"
            },
            {
              "kind": "static",
              "text": "The railways took the place of canals."
            },
            {
              "kind": "static",
              "text": "Because of the new transport:"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "subheader",
              "text": "Retailing"
            },
            {
              "kind": "static",
              "text": "The first department stores were opened."
            },
            {
              "kind": "static",
              "text": "The displays of goods were more visible:"
            },
            {
              "kind": "question",
              "number": 38
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
              "prompt": "For the first time, people’s possessions were used to measure Britain’s _______",
              "answer": [
                "wealth"
              ],
              "wordLimit": 1,
              "explanation": "In fact, it was in the 19th century that the quantity and quality of people’s possessions was used as an indication of the wealth of the country."
            },
            {
              "number": 32,
              "prompt": "Developments in production of goods and in _______ greatly changed lives.",
              "answer": [
                "technology"
              ],
              "wordLimit": 1,
              "explanation": "when improvements in how goods were made as well as in technology triggered massive social changes that transformed life for just about everybody in several key areas."
            },
            {
              "number": 33,
              "prompt": "The Industrial Revolution would not have happened without the new types of _______ that were used then.",
              "answer": [
                "power"
              ],
              "wordLimit": 1,
              "explanation": "And it’s true that the Industrial Revolution couldn’t have taken place at all if it weren’t for these new sources of power."
            },
            {
              "number": 34,
              "prompt": "The leading industry was _______ (its products became widely available).",
              "answer": [
                "textile"
              ],
              "wordLimit": 1,
              "explanation": "/ textiles The most advanced industry for much of the 19th century was textiles."
            },
            {
              "number": 35,
              "prompt": "New _______ made factories necessary and so more people moved into towns.",
              "answer": [
                "machines"
              ],
              "wordLimit": 1,
              "explanation": "But enormous new machines were now being created that could produce the goods faster and on a larger scale, and these required a lot more space."
            },
            {
              "number": 36,
              "prompt": "- greater access to _______ Made people more aware of what they could buy in shops.",
              "answer": [
                "newspapers"
              ],
              "wordLimit": 1,
              "explanation": "they included newspapers"
            },
            {
              "number": 37,
              "prompt": "- when shopping, people were not limited to buying _______ goods.",
              "answer": [
                "local"
              ],
              "wordLimit": 1,
              "explanation": "goods could now be sold all over the country, instead of just in the local market."
            },
            {
              "number": 38,
              "prompt": "- inside stores because of better _______ .",
              "answer": [
                "lighting"
              ],
              "wordLimit": 1,
              "explanation": "improved lighting inside greatly increased the visibility of the goods for sale."
            },
            {
              "number": 39,
              "prompt": "- outside stores, because _______ were bigger.",
              "answer": [
                "windows"
              ],
              "wordLimit": 1,
              "explanation": "which made it possible for windows to be much larger than previously."
            },
            {
              "number": 40,
              "prompt": "_______ that was persuasive became much more common.",
              "answer": [
                "Advertising"
              ],
              "wordLimit": 1,
              "explanation": "now there was an explosion in advertising trying to persuade people to go shopping."
            }
          ],
          "formTitle": "How the Industrial Revolution affected life in Britain",
          "id": "g31"
        }
      ]
    }
  ]
}
$c15t4l$,
  true
);

