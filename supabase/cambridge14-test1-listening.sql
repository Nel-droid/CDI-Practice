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
