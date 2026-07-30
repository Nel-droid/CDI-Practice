DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 11' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 11',
  'Test 1',
  'academic',
  2004,
  $c11t1l$
{
  "audioPath": "Cambridge 11 Test 1.mp3",
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
              "text": "Example the Main Hall - seats ……….200………."
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
              "kind": "static",
              "text": "Additional charge for use of the kitchen: £25"
            },
            {
              "kind": "subheader",
              "text": "Before the event"
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
              "text": "During the event"
            },
            {
              "kind": "subheader",
              "text": "The building is no smoking"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Don’t touch the system that controls the volume"
            },
            {
              "kind": "static",
              "text": "For microphones, contact the caretaker"
            },
            {
              "kind": "subheader",
              "text": "After the event"
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
            },
            {
              "kind": "subheader",
              "text": "Chairs and tables must be piled up"
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Room and cost the _______ Room - seats 100",
              "answer": [
                "Charlton"
              ],
              "wordLimit": 1,
              "explanation": "The Charlton Room - C-H-A-R-L-T-O-N. That’s got seating for up to one hundred."
            },
            {
              "number": 2,
              "prompt": "Cost of Main Hall for Saturday evening: £ _______",
              "answer": [
                "115"
              ],
              "wordLimit": 1,
              "explanation": "So from six pm to midnight that’d be £115 - that’s the weekend price, it’s £75 on weekdays."
            },
            {
              "number": 3,
              "prompt": "+ £250 deposit ( _______ payment is required)",
              "answer": [
                "cash"
              ],
              "wordLimit": 1,
              "explanation": "But we do insist that this is paid in cash, we don’t take cards for that."
            },
            {
              "number": 4,
              "prompt": "Cost includes use of tables and chairs and also _______",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "And what about parking?"
            },
            {
              "number": 5,
              "prompt": "Will need a _______ licence",
              "answer": [
                "music"
              ],
              "wordLimit": 1,
              "explanation": "For example, you’ll have to see about getting a licence if you’re planning to have any music during the meal."
            },
            {
              "number": 6,
              "prompt": "Need to contact caretaker (Mr Evans) in advance to arrange _______",
              "answer": [
                "entry"
              ],
              "wordLimit": 1,
              "explanation": "And about a week or ten days before your event you’ll need to contact the caretaker, that’s Mr Evans, to make the arrangements for entry - he’ll sort that out with you."
            },
            {
              "number": 7,
              "prompt": "The bank should use the _______ door at the back",
              "answer": [
                "stage"
              ],
              "wordLimit": 1,
              "explanation": "Well, they’ll have a lot of equipment, so rather than using the front door they should park their van round the back and use the stage door there."
            },
            {
              "number": 8,
              "prompt": "Need to know the _______ for the cleaning cupboard",
              "answer": [
                "code"
              ],
              "wordLimit": 1,
              "explanation": "So there’s a locked cupboard and you’ll be informed of the code you need to open that."
            },
            {
              "number": 9,
              "prompt": "The _______ must be washed and rubbish placed in black bags",
              "answer": [
                "floor"
              ],
              "wordLimit": 1,
              "explanation": "/ floors Right. So what do we need to do after everyone’s gone? Sweep the floors I suppose?"
            },
            {
              "number": 10,
              "prompt": "All _______ Must be taken down",
              "answer": [
                "decoration"
              ],
              "wordLimit": 1,
              "explanation": "/ decorations Of course. We’ll make sure everything’s left tidy. Oh, and I forgot to ask, I presume we can have decorations in the room?"
            }
          ],
          "formTitle": "HIRING A PUBLIC ROOM",
          "id": "g1"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Part 2",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 11–14",
          "instructions": "Complete the notes below. Write ONE WORD for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Advice about visiting the farm"
            },
            {
              "kind": "static",
              "text": "Visitors should take care not to harm any"
            },
            {
              "kind": "question",
              "number": 11
            },
            {
              "kind": "static",
              "text": "not touch any",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 12
            },
            {
              "kind": "static",
              "text": "wear",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 13
            },
            {
              "kind": "static",
              "text": "not bring",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 14
            },
            {
              "kind": "static",
              "text": "into the farm, with certain exceptions.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "_______",
              "answer": [
                "animal"
              ],
              "wordLimit": 1,
              "explanation": "/ animals As it’s a working farm, please don’t frighten or injure the animals."
            },
            {
              "number": 12,
              "prompt": "_______",
              "answer": [
                "tool"
              ],
              "wordLimit": 1,
              "explanation": "/ tools And do stay at a safe distance from the tools: some of them have sharp points which can be pretty dangerous, so please don’t touch them."
            },
            {
              "number": 13,
              "prompt": "_______",
              "answer": [
                "shoes"
              ],
              "wordLimit": 1,
              "explanation": "The ground is very uneven, and you might slip if you’re wearing sandals so I’m glad to see you’re all wearing shoes - we always advise people to do that."
            },
            {
              "number": 14,
              "prompt": "_______",
              "answer": [
                "dog"
              ],
              "wordLimit": 1,
              "explanation": "/ dogs I don’t think any of you have brought dogs with you, but in case you have, I’m afraid they’ll have to stay in the car park unless they’re guide dogs"
            }
          ],
          "formTitle": "Fiddy Working Heritage Farm",
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
              "prompt": "Scarecrow",
              "answer": "F",
              "explanation": "The scarecrow you can see in the car park in the corner, beside the main path, is a traditional figure for keeping the birds away from crops, but our scarecrow is a permanent sculpture."
            },
            {
              "number": 16,
              "prompt": "Maze",
              "answer": "G",
              "explanation": "If you look ahead of you, you’ll see a maze. It’s opposite the New Barn, beside the side path that branches off to the right just over there."
            },
            {
              "number": 17,
              "prompt": "Café",
              "answer": "D",
              "explanation": "If you want to go to the café, go towards the bridge and turn right just before it. Walk along the side path and the café’s on the first bend you come to."
            },
            {
              "number": 18,
              "prompt": "Black Barn",
              "answer": "H",
              "explanation": "If you take the side path to the right, here, just by the New Barn, you’ll come to the Black Barn just where the path first bends."
            },
            {
              "number": 19,
              "prompt": "Covered picnic area",
              "answer": "C",
              "explanation": "Or if you’d prefer a covered picnic area, there’s one near the farmyard: just after you cross the bridge, there’s a covered picnic spot on the right."
            },
            {
              "number": 20,
              "prompt": "Fiddy House",
              "answer": "A",
              "explanation": "And the last thing to mention is Fiddy House itself. From here you can cross the bridge then walk along the footpath through the field to the left of the farmyard. That goes to the house, and it’ll give you a lovely view of it."
            }
          ],
          "mapImage": "Cambridge 11 Test 1 map.png",
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
          "label": "Questions 21–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "The students in Akira Miyake’s study were all majoring in",
              "options": [
                {
                  "key": "A",
                  "text": "physics."
                },
                {
                  "key": "B",
                  "text": "psychology or physics."
                },
                {
                  "key": "C",
                  "text": "science, technology, engineering or mathematics."
                }
              ],
              "answer": "C",
              "explanation": "They weren’t actually majoring in physics - they were majoring in what’s known as the STEM disciplines. That’s science, technology, engineering and …"
            },
            {
              "number": 22,
              "prompt": "The aim of Miyake’s study was to investigate",
              "options": [
                {
                  "key": "A",
                  "text": "what kind of women choose to study physics."
                },
                {
                  "key": "B",
                  "text": "a way of improving women’s performance in physics."
                },
                {
                  "key": "C",
                  "text": "whether fewer women than men study physics at college."
                }
              ],
              "answer": "B",
              "explanation": "Yeah. But what the researchers wanted to find out was basically what they could do about the relatively low level of the women’s results."
            },
            {
              "number": 23,
              "prompt": "The female physics students were wrong to believe that",
              "options": [
                {
                  "key": "A",
                  "text": "the teachers marked them in an unfair way."
                },
                {
                  "key": "B",
                  "text": "the male students expected them to do badly."
                },
                {
                  "key": "C",
                  "text": "their test results were lower than the male students’."
                }
              ],
              "answer": "B",
              "explanation": "But actually they were wrong … No one was making any assumption about the female students at all."
            },
            {
              "number": 24,
              "prompt": "Miyake’s team asked the students to write about",
              "options": [
                {
                  "key": "A",
                  "text": "what they enjoyed about studying physics."
                },
                {
                  "key": "B",
                  "text": "the successful experiences of other people."
                },
                {
                  "key": "C",
                  "text": "something that was important to them personally."
                }
              ],
              "answer": "C",
              "explanation": "Values-affirmation - they had to write an essay focusing on things that were significant to them, not particularly to do with the subject they were studying, but more general things like music or people who mattered to them."
            },
            {
              "number": 25,
              "prompt": "What was the aim of the writing exercise done by the subjects?",
              "options": [
                {
                  "key": "A",
                  "text": "to reduce stress"
                },
                {
                  "key": "B",
                  "text": "to strengthen verbal ability"
                },
                {
                  "key": "C",
                  "text": "to encourage logical thinking"
                }
              ],
              "answer": "A",
              "explanation": "And putting these thoughts into words can relax them and help them overcome the psychological factors that lead to poor performance."
            },
            {
              "number": 26,
              "prompt": "What surprised the researchers about the study?",
              "options": [
                {
                  "key": "A",
                  "text": "how few students managed to get A grades"
                },
                {
                  "key": "B",
                  "text": "the positive impact it had on physics results for women"
                },
                {
                  "key": "C",
                  "text": "the difference between male and female performance"
                }
              ],
              "answer": "B",
              "explanation": "But what the researchers in the study hadn’t expected was that this one activity raised the women’s physics grades from the C to the B range."
            },
            {
              "number": 27,
              "prompt": "Greg and Lisa think Miyake’s results could have been affected by",
              "options": [
                {
                  "key": "A",
                  "text": "the length of the writing task."
                },
                {
                  "key": "B",
                  "text": "the number of students who took part."
                },
                {
                  "key": "C",
                  "text": "the information the students were given."
                }
              ],
              "answer": "C",
              "explanation": "And had they been told why they were doing the writing? That might have affected the results."
            },
            {
              "number": 28,
              "prompt": "Greg and Lisa decide that in their own project, they will compare the effects of",
              "options": [
                {
                  "key": "A",
                  "text": "two different writing tasks."
                },
                {
                  "key": "B",
                  "text": "a writing task with an oral task."
                },
                {
                  "key": "C",
                  "text": "two different oral tasks."
                }
              ],
              "answer": "A",
              "explanation": "Or even, half do the same writing task as in the original research and half do a factual writing task."
            },
            {
              "number": 29,
              "prompt": "The main finding of Smolinsky’s research was that class teamwork activities",
              "options": [
                {
                  "key": "A",
                  "text": "were most effective when done by all-women groups."
                },
                {
                  "key": "B",
                  "text": "had no effect on the performance of men or women."
                },
                {
                  "key": "C",
                  "text": "improved the results of men more than of women."
                }
              ],
              "answer": "B",
              "explanation": "That’s what I expected, but actually the men and the women got the same results whether they were working in teams or on their own."
            },
            {
              "number": 30,
              "prompt": "What will Lisa and Greg do next?",
              "options": [
                {
                  "key": "A",
                  "text": "talk to a professor"
                },
                {
                  "key": "B",
                  "text": "observe a science class"
                },
                {
                  "key": "C",
                  "text": "look at the science timetable"
                }
              ],
              "answer": "A",
              "explanation": "We could have a look at the timetable for the science classes … or perhaps we should just make an appointment to see one of the science professors. That’d be better."
            }
          ],
          "id": "g21"
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
              "kind": "static",
              "text": "Boris Worm, 2005 identified hotspots for large ocean predators, e.g. sharks found the ocean hotspots:"
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
              "kind": "static",
              "text": "Census of Marine Life found new ocean species living:"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "- near volcanoes on the ocean floor"
            },
            {
              "kind": "static",
              "text": "Global Marine Species Assessment want to list endangered ocean species, considering:"
            },
            {
              "kind": "subheader",
              "text": "- population size"
            },
            {
              "kind": "subheader",
              "text": "- geographical distribution"
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
              "text": "Recommendations to retain ocean biodiversity increase the number of ocean reserves establish"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "corridors (e.g. for turtles) reduce fishing quotas catch fish only for the purpose of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Biodiversity hotspots areas containing many different species important for locating targets for _______ at first only identified on land",
              "answer": [
                "conservation"
              ],
              "wordLimit": 1,
              "explanation": "These hotspots are significant because they allow us to locate key areas for focusing efforts at conservation."
            },
            {
              "number": 32,
              "prompt": "- were not always rich in _______",
              "answer": [
                "food"
              ],
              "wordLimit": 1,
              "explanation": "/ foods The main thing he’d expected to find was that they had very high concentrations of food, but to his surprise that was only true for four of the hotspots - the remaining hotspots was quite badly off in that regard"
            },
            {
              "number": 33,
              "prompt": "- had higher temperatures at the _______",
              "answer": [
                "surface"
              ],
              "wordLimit": 1,
              "explanation": "the water at the surface of the ocean had relatively high temperatures, even when it was cool at greater depths"
            },
            {
              "number": 34,
              "prompt": "- had sufficient _______ in the water",
              "answer": [
                "oxygen"
              ],
              "wordLimit": 1,
              "explanation": "/ O2 because he also found that the water needed to have enough oxygen in it"
            },
            {
              "number": 35,
              "prompt": "Lisa Ballance, 2007 looked for hotspots for marine _______ found these were all located where ocean currents meet",
              "answer": [
                "mammals"
              ],
              "wordLimit": 1,
              "explanation": "what she was interested in was marine mammals, things like seals"
            },
            {
              "number": 36,
              "prompt": "- under the _______",
              "answer": [
                "ice"
              ],
              "wordLimit": 1,
              "explanation": "One thing they found there which stunned other researchers was that there were large numbers of species which live below the ice"
            },
            {
              "number": 37,
              "prompt": "- rate of _______",
              "answer": [
                "decline"
              ],
              "wordLimit": 1,
              "explanation": "/ declining / decrease thirdly they calculate the rate at which the decline of the species is happening"
            },
            {
              "number": 38,
              "prompt": "Aim: to assess 20,000 species and make a distribution _______ for each one",
              "answer": [
                "map"
              ],
              "wordLimit": 1,
              "explanation": "For each one they assess, they use the data they collect on that species to produce a map showing its distribution"
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "migration"
              ],
              "wordLimit": 1,
              "explanation": "In addition, to preserve species such as leatherback turtles, which live out in the high seas but have their nesting sites on the American coast, we need to create corridors for migration, so they can get from one area to another safely"
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "consumption"
              ],
              "wordLimit": 1,
              "explanation": "If these commercial fishing boats used equipment which was more selective, so that only the fish wanted for consumption were caught, this problem could be overcome."
            }
          ],
          "formTitle": "Ocean Biodiversity",
          "id": "g31"
        }
      ]
    }
  ]
}
$c11t1l$,
  true
);
