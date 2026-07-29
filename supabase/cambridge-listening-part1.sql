-- Cambridge Listening — Part 1 of 6: books 10 & 11 (8 tests).
-- Paste this whole file into the Supabase SQL editor and Run.

-- Clears every previous listening test (incl. the old 'CDI Practice' one).
-- Only in Part 1.
DELETE FROM public.tests WHERE skill = 'listening';

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 10' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 10',
  'Test 1',
  'academic',
  2004,
  $c10t1l$
{
  "audioPath": "Cambridge 10 Test 1.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the notes below. Write ONE WORD for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "Name: Andrea ………Brown………."
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Postcode: BH5 2OP"
            },
            {
              "kind": "subheader",
              "text": "Phone: (mobile) 077 8664 3091"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "subheader",
              "text": "Possible self-drive tours"
            },
            {
              "kind": "static",
              "text": "Trip One:"
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
              "text": "Trip Two:"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "At Santa Monica: not interested in shopping"
            },
            {
              "kind": "question",
              "number": 6
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Address: 24 _______ Road",
              "answer": [
                "Ardleigh"
              ],
              "wordLimit": 1,
              "explanation": "24, Ardleigh Road."
            },
            {
              "number": 2,
              "prompt": "Heard about company from: _______",
              "answer": [
                "newspaper"
              ],
              "wordLimit": 1,
              "explanation": "No, I read about you in the newspaper."
            },
            {
              "number": 3,
              "prompt": "Los Angeles: customer wants to visit some _______ parks with her children",
              "answer": [
                "theme"
              ],
              "wordLimit": 1,
              "explanation": "The first one begins in Los Angeles and there’s plenty of time to visit some of the theme parks there."
            },
            {
              "number": 4,
              "prompt": "Yosemite Park: customer wants to stay in a lodge, not a _______",
              "answer": [
                "tent"
              ],
              "wordLimit": 1,
              "explanation": "I don’t like the idea of staying in a tent. It’d be too hot."
            },
            {
              "number": 5,
              "prompt": "Customer wants to see the _______ on the way to Cambria",
              "answer": [
                "castle"
              ],
              "wordLimit": 1,
              "explanation": "Someone told me there’s a really nice castle near Cambria. Will we go near that?"
            },
            {
              "number": 6,
              "prompt": "At San Diego, wants to spend time on the _______",
              "answer": [
                "beach"
              ],
              "wordLimit": 1,
              "explanation": "/ beaches That’s good for beaches isn’t it?"
            }
          ],
          "formTitle": "SELF-DRIVE TOURS IN THE USA",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formTitle": "Self-drive tours",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Trip One"
            },
            {
              "kind": "static",
              "text": "Number of days: 12"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Price per person: £525"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "Trip Two"
            },
            {
              "kind": "static",
              "text": "Number of days: 9"
            },
            {
              "kind": "static",
              "text": "Total distance: 980 km"
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
              "number": 7,
              "prompt": "Total distance: _______ km",
              "answer": [
                "2020"
              ],
              "wordLimit": 1,
              "explanation": "The first one I told you about is a self-drive tour through California which lasts twelve days and covers 2,020 kilometres."
            },
            {
              "number": 8,
              "prompt": "Includes: accommodation, car and one _______ (no meals)",
              "answer": [
                "flight"
              ],
              "wordLimit": 1,
              "explanation": "That includes accommodation, car rental and a flight but no meals."
            },
            {
              "number": 9,
              "prompt": "Price per person: £_______",
              "answer": [
                "429"
              ],
              "wordLimit": 1,
              "explanation": "Yes, it’s almost a hundred pounds cheaper. It’s £429 per person, which is a good deal."
            },
            {
              "number": 10,
              "prompt": "The hotels offer _______ in the price",
              "answer": [
                "dinner"
              ],
              "wordLimit": 1,
              "explanation": "They aren’t included. But these hotels offer dinner in the price."
            }
          ],
          "id": "g7"
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
          "instructions": "Choose TWO letters, A–E. Which TWO facilities at the leisure club have recently been improved?",
          "options": [
            {
              "key": "A",
              "text": "the gym"
            },
            {
              "key": "B",
              "text": "the tracks"
            },
            {
              "key": "C",
              "text": "the indoor pool"
            },
            {
              "key": "D",
              "text": "the outdoor pool"
            },
            {
              "key": "E",
              "text": "the sports training for children"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO facilities at the leisure club have recently been improved?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "Our greatest asset is probably our swimming pool which at 25 metres isn’t Olympic-sized, but now we’ve expanded it to eight lanes, it’s much wider. Our recently refurbished fitness suite has all the latest exercise equipment including ten new running machines, and a wide range of weight-training machines."
            },
            {
              "number": 12,
              "prompt": "Which TWO facilities at the leisure club have recently been improved?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "Our greatest asset is probably our swimming pool which at 25 metres isn’t Olympic-sized, but now we’ve expanded it to eight lanes, it’s much wider. Our recently refurbished fitness suite has all the latest exercise equipment including ten new running machines, and a wide range of weight-training machines."
            }
          ],
          "id": "g11"
        },
        {
          "type": "completion",
          "label": "Questions 13–20",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Personal Assessment"
            },
            {
              "kind": "question",
              "number": 13
            },
            {
              "kind": "question",
              "number": 14
            },
            {
              "kind": "question",
              "number": 15
            },
            {
              "kind": "subheader",
              "text": "Types of membership"
            },
            {
              "kind": "question",
              "number": 16
            },
            {
              "kind": "question",
              "number": 17
            },
            {
              "kind": "question",
              "number": 18
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "question",
              "number": 20
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "New members should describe any _______ .",
              "answer": [
                "health"
              ],
              "wordLimit": 1,
              "explanation": "problems You are asked to fill in a questionnaire giving details of any health problems."
            },
            {
              "number": 14,
              "prompt": "The _______ will be explained to you before you use the equipment.",
              "answer": [
                "safety"
              ],
              "wordLimit": 1,
              "explanation": "rules The trainer will then take you through the safety rules for using the equipment in the fitness suite."
            },
            {
              "number": 15,
              "prompt": "You will be given a six-week _______ .",
              "answer": [
                "plan"
              ],
              "wordLimit": 1,
              "explanation": "At the end of the personal assessment, the trainer will draw up a plan, outlining what you should try to achieve within a six-week period."
            },
            {
              "number": 16,
              "prompt": "There is a compulsory £90 _______ fee for members.",
              "answer": [
                "joining"
              ],
              "wordLimit": 1,
              "explanation": "All members must pay a joining fee of £90 in addition to the rates for the monthly membership fees."
            },
            {
              "number": 17,
              "prompt": "Gold members are given _______ to all the LP clubs.",
              "answer": [
                "free"
              ],
              "wordLimit": 1,
              "explanation": "entry Gold membership entitles you to free entry at all LP Clubs."
            },
            {
              "number": 18,
              "prompt": "Premier members are given priority during _______ hours.",
              "answer": [
                "peak"
              ],
              "wordLimit": 1,
              "explanation": "Premier membership is for professional people whose work commitments make it difficult for them to use the club during the day and so LP gives booking preferences to Premier members at peak times."
            },
            {
              "number": 19,
              "prompt": "Premier members can bring some _______ every month.",
              "answer": [
                "guests"
              ],
              "wordLimit": 1,
              "explanation": "Premier membership is for individuals only, but you will be sent passes for guests every month."
            },
            {
              "number": 20,
              "prompt": "Members should always take their _______ with them.",
              "answer": [
                "photo"
              ],
              "wordLimit": 1,
              "explanation": "card / photo cards / photocard / photocards We provide robes and hairdryers in the changing rooms, but it’s very important to remember your photo card because you won’t be able to get in without it."
            }
          ],
          "formTitle": "Joining the leisure club",
          "id": "g13"
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
              "prompt": "Students entering the design competition have to",
              "options": [
                {
                  "key": "A",
                  "text": "produce an energy-efficient design."
                },
                {
                  "key": "B",
                  "text": "adapt an existing energy-saving appliance."
                },
                {
                  "key": "C",
                  "text": "develop a new use for current technology."
                }
              ],
              "answer": "C",
              "explanation": "Well, it’s an international design competition and we have to come up with a new design for a typical domestic kitchen appliance."
            },
            {
              "number": 22,
              "prompt": "John chose a dishwasher because he wanted to make dishwashers",
              "options": [
                {
                  "key": "A",
                  "text": "more appealing."
                },
                {
                  "key": "B",
                  "text": "more common."
                },
                {
                  "key": "C",
                  "text": "more economical."
                }
              ],
              "answer": "A",
              "explanation": "I think some people will be prepared to pay a little extra for something that looks different."
            },
            {
              "number": 23,
              "prompt": "The stone in John’s ‘Rockpool’ design is used",
              "options": [
                {
                  "key": "A",
                  "text": "for decoration."
                },
                {
                  "key": "B",
                  "text": "to switch it on."
                },
                {
                  "key": "C",
                  "text": "to stop water escaping."
                }
              ],
              "answer": "B",
              "explanation": "Instead of pushing a button, you turn the stone."
            },
            {
              "number": 24,
              "prompt": "In the holding chamber, the carbon dioxide",
              "options": [
                {
                  "key": "A",
                  "text": "changes back to a gas."
                },
                {
                  "key": "B",
                  "text": "dries the dishes."
                },
                {
                  "key": "C",
                  "text": "is allowed to cool."
                }
              ],
              "answer": "A",
              "explanation": "That’s where the liquid is depressurised and so it reverts to a gas."
            },
            {
              "number": 25,
              "prompt": "At the end of the cleaning process, the carbon dioxide",
              "options": [
                {
                  "key": "A",
                  "text": "is released into the air."
                },
                {
                  "key": "B",
                  "text": "is disposed of with the waste."
                },
                {
                  "key": "C",
                  "text": "is collected ready to be re-used."
                }
              ],
              "answer": "C",
              "explanation": "The carbon dioxide is sent back to the cylinder and can be used again and again."
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 26–30",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "question",
              "number": 27
            },
            {
              "kind": "question",
              "number": 28
            },
            {
              "kind": "question",
              "number": 29
            },
            {
              "kind": "question",
              "number": 30
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "John needs help preparing for his _______ .",
              "answer": [
                "presentation"
              ],
              "wordLimit": 1,
              "explanation": "Well, my design has made it to the final stage of the competition and, in a few months’ time. I have to give a presentation, and that’s the part I was hoping you could help me with."
            },
            {
              "number": 27,
              "prompt": "The professor advises John to make a _______ of his design.",
              "answer": [
                "model"
              ],
              "wordLimit": 1,
              "explanation": "I see. Well, if you want to stand a good chance of winning you really need a model of the machine."
            },
            {
              "number": 28,
              "prompt": "John’s main problem is getting good quality _______ .",
              "answer": [
                "material"
              ],
              "wordLimit": 1,
              "explanation": "/ materials Yes. I want it to look professional but everything that’s top quality is also very expensive."
            },
            {
              "number": 29,
              "prompt": "The professor suggests John apply for a _______ .",
              "answer": [
                "grant"
              ],
              "wordLimit": 1,
              "explanation": "So why don’t you talk to the university about a grant? I can help you fill out the application forms if you like."
            },
            {
              "number": 30,
              "prompt": "The professor will check the _______ information in John’s written report.",
              "answer": [
                "technical"
              ],
              "wordLimit": 1,
              "explanation": "You’d better show me this paper you’ve written as well. For a global competition such as this you need to make sure the technical details you’ve given are accurate and thorough."
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
              "text": "General facts"
            },
            {
              "kind": "static",
              "text": "It is a white bear belonging to the black bear family."
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
              "kind": "question",
              "number": 33
            },
            {
              "kind": "subheader",
              "text": "Habitat"
            },
            {
              "kind": "static",
              "text": "The bear’s relationship with the forest is complex."
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "The bears’ feeding habits provide nutrients for forest vegetation."
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "Threats"
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
              "kind": "subheader",
              "text": "Going forward"
            },
            {
              "kind": "static",
              "text": "Interested parties are working together."
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
              "prompt": "Its colour comes from an uncommon _______ .",
              "answer": [
                "gene"
              ],
              "wordLimit": 1,
              "explanation": "One in ten black bears is actually born with a white coat, which is the result of a special gene that surfaces in a few."
            },
            {
              "number": 32,
              "prompt": "Local people believe that it has unusual _______ .",
              "answer": [
                "power"
              ],
              "wordLimit": 1,
              "explanation": "/ powers And according to the legends of these communities, its snowy fur brings with it a special power."
            },
            {
              "number": 33,
              "prompt": "They protect the bear from _______ .",
              "answer": [
                "strangers"
              ],
              "wordLimit": 1,
              "explanation": "It is their way of protecting it when strangers visit the area."
            },
            {
              "number": 34,
              "prompt": "Tree roots stop _______ along salmon streams.",
              "answer": [
                "erosion"
              ],
              "wordLimit": 1,
              "explanation": "For example, the old-growth trees have extremely long roots that help prevent erosion of the soil along the banks of the many fish streams"
            },
            {
              "number": 35,
              "prompt": "It is currently found on a small number of _______ .",
              "answer": [
                "islands"
              ],
              "wordLimit": 1,
              "explanation": "Today, the spirit bear lives off the coast of the province of British Columbia on a few islands."
            },
            {
              "number": 36,
              "prompt": "Habitat is being lost due to deforestation and construction of _______ by logging companies.",
              "answer": [
                "roads"
              ],
              "wordLimit": 1,
              "explanation": "In addition, they have built roads which have fractured the areas where the bear usually feeds, and many hibernation sites have also been lost."
            },
            {
              "number": 37,
              "prompt": "Unrestricted _______ is affecting the salmon supply.",
              "answer": [
                "fishing"
              ],
              "wordLimit": 1,
              "explanation": "To make matters worse, the number of salmon in those streams is declining because there is no legal limit on fishing at the moment."
            },
            {
              "number": 38,
              "prompt": "The bears’ existence is also threatened by their low rate of _______ .",
              "answer": [
                "reproduction"
              ],
              "wordLimit": 1,
              "explanation": "all these influences have a negative impact on the spirit bear’s very existence, which is made all the more fragile by the fact that reproduction among these bears has always been disappointingly low."
            },
            {
              "number": 39,
              "prompt": "Logging companies must improve their _______ of logging.",
              "answer": [
                "method"
              ],
              "wordLimit": 1,
              "explanation": "/ methods The government is now requiring logging companies to adopt a better logging method, which is a positive step."
            },
            {
              "number": 40,
              "prompt": "Maintenance and _______ . of the spirit bears’ territory is needed.",
              "answer": [
                "expansion"
              ],
              "wordLimit": 1,
              "explanation": "While it is important to maintain the spirit bear’s habitat, there also needs to be more emphasis on its expansion."
            }
          ],
          "formTitle": "THE SPIRIT BEAR",
          "id": "g31"
        }
      ]
    }
  ]
}
$c10t1l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 10' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 10',
  'Test 2',
  'academic',
  2004,
  $c10t2l$
{
  "audioPath": "Cambridge 10 Test 2.mp3",
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
              "text": "Travelled to town today: by ……….bus………."
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
              "text": "Area: Bradfield"
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
              "text": "Suggestions for improvement: better"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "have more footpaths more frequent",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Things that would encourage cycling to work: having"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "parking places for bicycles being able to use a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "at work the opportunity to have cycling",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "on busy roads",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Name: Luisa _______",
              "answer": [
                "Hardie"
              ],
              "wordLimit": 1,
              "explanation": "Hardie."
            },
            {
              "number": 2,
              "prompt": "Address: _______ White Stone Rd",
              "answer": [
                "19"
              ],
              "wordLimit": 1,
              "explanation": "It’s 19, White Stone Road."
            },
            {
              "number": 3,
              "prompt": "Postcode: _______",
              "answer": [
                "GT"
              ],
              "wordLimit": 1,
              "explanation": "8 2LC / GT82LC It’s actually G-T-8, 2-L-C."
            },
            {
              "number": 4,
              "prompt": "Occupation: _______",
              "answer": [
                "hairdresser"
              ],
              "wordLimit": 1,
              "explanation": "I’ve actually just finished my training. I’m a hairdresser."
            },
            {
              "number": 5,
              "prompt": "Reason for visit to town: to go to the _______",
              "answer": [
                "dentist"
              ],
              "wordLimit": 1,
              "explanation": "/ dentist’s Actually it’s not for shopping today, which would be my normal reason, but to see the dentist."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "lighting"
              ],
              "wordLimit": 1,
              "explanation": "Well, something I’ve thought about for some time is that when I do walk and I’m doing a later shift, I think the lighting should be better."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "trains"
              ],
              "wordLimit": 1,
              "explanation": "And, I don’t think there are enough trains. That’s why I don’t use them - you have to wait so long."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "safe"
              ],
              "wordLimit": 1,
              "explanation": "Yep. Well, I have thought about it and where I work there are no safe places to leave your bikes."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "shower"
              ],
              "wordLimit": 1,
              "explanation": "And also, I’d have to cycle uphill and on a hot day I’d arrive at work pretty sweaty so I think I’d need a shower somewhere at work."
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "training"
              ],
              "wordLimit": 1,
              "explanation": "And I suppose the last thing is that I wouldn’t be all that confident about cycling on such busy roads. I think I’d like to see you offering training for that, you know."
            }
          ],
          "formTitle": "Transport Survey",
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
              "prompt": "The idea for the two new developments in the city came from",
              "options": [
                {
                  "key": "A",
                  "text": "local people."
                },
                {
                  "key": "B",
                  "text": "the City Council."
                },
                {
                  "key": "C",
                  "text": "the SWRDC."
                }
              ],
              "answer": "A",
              "explanation": "As many of you may know, the idea for these initiatives came from you, the public, in the extensive consultation exercise which the City Council conducted last year."
            },
            {
              "number": 12,
              "prompt": "What is unusual about Brackenside pool?",
              "options": [
                {
                  "key": "A",
                  "text": "its architectural style"
                },
                {
                  "key": "B",
                  "text": "its heating system"
                },
                {
                  "key": "C",
                  "text": "its method of water treatment"
                }
              ],
              "answer": "C",
              "explanation": "which fits is so well with many of the other buildings in the area, with up-to- the-minute features such as a recycling system - the only one of its kind in the world - which enables seawater to be used in the pool."
            },
            {
              "number": 13,
              "prompt": "Local newspapers have raised worries about",
              "options": [
                {
                  "key": "A",
                  "text": "the late opening date."
                },
                {
                  "key": "B",
                  "text": "the cost of the project."
                },
                {
                  "key": "C",
                  "text": "the size of the facilities."
                }
              ],
              "answer": "C",
              "explanation": "Now, there has been quite a bit of discussion in the local press about whether there would be enough room for the number of visitors we’re hoping to attract, but the design is deceptive and there have been rigorous checks about capacity."
            },
            {
              "number": 14,
              "prompt": "What decision has not yet been made about the pool?",
              "options": [
                {
                  "key": "A",
                  "text": "whose statue will be at the door"
                },
                {
                  "key": "B",
                  "text": "the exact opening times"
                },
                {
                  "key": "C",
                  "text": "who will open it"
                }
              ],
              "answer": "A",
              "explanation": "There’ll also be a competition for the public to decide on the sculpture we plan to have at the entrance: you will decide which famous historical figure from the city we should have."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which feature is related to each of the following areas of the world represented in the playground? Choose the correct letter, A–I, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "ancient forts"
            },
            {
              "key": "B",
              "text": "waterways"
            },
            {
              "key": "C",
              "text": "ice and snow"
            },
            {
              "key": "D",
              "text": "jewels"
            },
            {
              "key": "E",
              "text": "local animals"
            },
            {
              "key": "F",
              "text": "mountains"
            },
            {
              "key": "G",
              "text": "music and film"
            },
            {
              "key": "H",
              "text": "space travel"
            },
            {
              "key": "I",
              "text": "volcanoes"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Asia",
              "answer": "E",
              "explanation": "For example, there is a section on Asia, and this is represented by rides and equipment in the shape of snakes, orang-utans, tigers and so on - fauna native to the forests of the region"
            },
            {
              "number": 16,
              "prompt": "Antarctica",
              "answer": "F",
              "explanation": "Moving south to the Antarctic - we couldn’t run to an ice rink I’m afraid but opted instead for climbing blocks in the shape of mountains - I thought they could have had slides for the glaciers but the designers did want to avoid being too literal!"
            },
            {
              "number": 17,
              "prompt": "South America",
              "answer": "D",
              "explanation": "Then on to South America - and here the theme is El Dorado - games replicating the search for mines full of precious stones."
            },
            {
              "number": 18,
              "prompt": "North America",
              "answer": "H",
              "explanation": "And then moving up to North America, here there was considerable debate - I know the contribution of cinema and jazz was considered but the designers finally opted for rockets and the international Space Station"
            },
            {
              "number": 19,
              "prompt": "Europe",
              "answer": "A",
              "explanation": "Eastwards to Europe then, and perhaps the most traditional choice of all the areas: medieval castles and other fortifications."
            },
            {
              "number": 20,
              "prompt": "Africa",
              "answer": "B",
              "explanation": "Then last, but not least, moving south to Africa and a whole set of wonderful mosaics and trails to represent the great rivers of this fascinating and varied continent."
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
          "type": "choose_two",
          "paired": true,
          "label": "Questions 21–22",
          "instructions": "Choose TWO letters, A–E. Which TWO hobbies was Thor Heyerdahl very interested in as a youth?",
          "options": [
            {
              "key": "A",
              "text": "camping"
            },
            {
              "key": "B",
              "text": "climbing"
            },
            {
              "key": "C",
              "text": "collecting"
            },
            {
              "key": "D",
              "text": "hunting"
            },
            {
              "key": "E",
              "text": "reading"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO hobbies was Thor Heyerdahl very interested in as a youth?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Sure. Why don’t you begin with describing the type of boy he was, especially his passion for collecting things. No, it was climbing that he spent his time on as a young man."
            },
            {
              "number": 22,
              "prompt": "Which TWO hobbies was Thor Heyerdahl very interested in as a youth?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Sure. Why don’t you begin with describing the type of boy he was, especially his passion for collecting things. No, it was climbing that he spent his time on as a young man."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which do the speakers say are the TWO reasons why Heyerdahl went to live on an island?",
          "options": [
            {
              "key": "A",
              "text": "to examine ancient carvings"
            },
            {
              "key": "B",
              "text": "to experience an isolated place"
            },
            {
              "key": "C",
              "text": "to formulate a new theory"
            },
            {
              "key": "D",
              "text": "to learn survival skills"
            },
            {
              "key": "E",
              "text": "to study the impact of an extreme environment"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which do the speakers say are the TWO reasons why Heyerdahl went to live on an island?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Oh, right … After university he married a classmate and together, they decided to experience living on a small island to find out how harsh weather conditions shaped people’s lifestyles."
            },
            {
              "number": 24,
              "prompt": "Which do the speakers say are the TWO reasons why Heyerdahl went to live on an island?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Oh, right … After university he married a classmate and together, they decided to experience living on a small island to find out how harsh weather conditions shaped people’s lifestyles."
            }
          ],
          "id": "g23"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 25–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 25,
              "prompt": "According to Victor and Olivia, academics thought that Polynesian migration from the east was impossible due to",
              "options": [
                {
                  "key": "A",
                  "text": "the fact that Eastern countries were far away."
                },
                {
                  "key": "B",
                  "text": "the lack of materials for boat building."
                },
                {
                  "key": "C",
                  "text": "the direction of the winds and currents."
                }
              ],
              "answer": "A",
              "explanation": "Yes, they thought that travel from the east was impossible, because of the huge, empty stretch of ocean that lies between the islands and the nearest inhabited land."
            },
            {
              "number": 26,
              "prompt": "Which do the speakers agree was the main reason for Heyerdahl’s raft journey?",
              "options": [
                {
                  "key": "A",
                  "text": "to overcome a research setback"
                },
                {
                  "key": "B",
                  "text": "to demonstrate a personal quality"
                },
                {
                  "key": "C",
                  "text": "to test a new theory"
                }
              ],
              "answer": "C",
              "explanation": "Well, I think it was more a matter of simply trying out his idea, to see if migration from the east was possible."
            },
            {
              "number": 27,
              "prompt": "What was most important to Heyerdahl about his raft journey?",
              "options": [
                {
                  "key": "A",
                  "text": "the fact that he was the first person to do it"
                },
                {
                  "key": "B",
                  "text": "the speed of crossing the Pacific"
                },
                {
                  "key": "C",
                  "text": "the use of authentic construction methods"
                }
              ],
              "answer": "C",
              "explanation": "The most important factor seems to have been that he use only ancient techniques and local materials to build his raft."
            },
            {
              "number": 28,
              "prompt": "Why did Heyerdahl go to Easter Island?",
              "options": [
                {
                  "key": "A",
                  "text": "to build a stone statue"
                },
                {
                  "key": "B",
                  "text": "to sail a reed boat"
                },
                {
                  "key": "C",
                  "text": "to learn the local language"
                }
              ],
              "answer": "A",
              "explanation": "But what he wanted to do was talk to the local people about their old stone carvings and then make one himself to learn more about the process."
            },
            {
              "number": 29,
              "prompt": "In Olivia’s opinion, Heyerdahl’s greatest influence was on",
              "options": [
                {
                  "key": "A",
                  "text": "theories about Polynesian origins."
                },
                {
                  "key": "B",
                  "text": "the development of archaeological methodology."
                },
                {
                  "key": "C",
                  "text": "establishing archaeology as an academic subject."
                }
              ],
              "answer": "B",
              "explanation": "To my mind, he was first person to establish what modern academics call practical archaeology. I mean, that they try to recreate something from the past today"
            },
            {
              "number": 30,
              "prompt": "Which criticism do the speakers make of William Oliver’s textbook?",
              "options": [
                {
                  "key": "A",
                  "text": "Its style is out of date."
                },
                {
                  "key": "B",
                  "text": "Its content is over-simplified."
                },
                {
                  "key": "C",
                  "text": "Its methodology is flawed."
                }
              ],
              "answer": "A",
              "explanation": "I thought the research methods he used were very sound, although I must say I found the overall tone somewhat old-fashioned. I think they need to do a new, revised edition."
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
              "text": "Business markets greater"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "among companies increase in power of large",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "Companies rising",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "in certain countries",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "External influences on businesses more discussion with"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "before making business decisions environmental concerns which may lead to more",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Business structures more teams will be formed to work on a particular"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "businesses may need to offer hours that are",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": ", or the chance to work remotely",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Management styles increasing need for managers to provide good"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "changes influenced by",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "taking senior roles",
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
              "prompt": "_______",
              "answer": [
                "competition"
              ],
              "wordLimit": 1,
              "explanation": "One area I want to mention is business markets, and I’m sure a really significant development will be a major increase in competition, with companies from all round the world trying to sell similar products"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "global"
              ],
              "wordLimit": 1,
              "explanation": "At the same time, mergers and takeovers mean that governments are actually losing power to major global corporations."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "demand"
              ],
              "wordLimit": 1,
              "explanation": "A third point I want to make about markets is that in the rapidly expanding economies, such as India, China, Brazil and Russia, demand is growing very fast."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "customers"
              ],
              "wordLimit": 1,
              "explanation": "In particular, companies are consulting customers more and more before making their business decisions."
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "regulation"
              ],
              "wordLimit": 1,
              "explanation": "Another influence is that concerns about the environment will force manufacturers to extend product lifecycles, to reduce the amount of pollution and waste. And in some cases, regulation will need to be strengthened."
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "project"
              ],
              "wordLimit": 1,
              "explanation": "I think we’re going to see a greater emphasis within companies on teams created with a specific project in mind."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "flexible"
              ],
              "wordLimit": 1,
              "explanation": "Typical examples that will attract and retain staff are traditional ones like flexible hours and - something that has been made possible by advances in technology - remote working, with people based at their home, abroad, or almost anywhere they choose."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "leadership"
              ],
              "wordLimit": 1,
              "explanation": "Above all they’ll need great skills in leadership, so that their organisation can initiate and respond to change in a fast-moving world, where they face lots of competing requirements and potential conflicts."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "women"
              ],
              "wordLimit": 1,
              "explanation": "The predominant style of management will almost certainly become more consultative and collaborative, caused above all, by more women moving into senior management positions."
            },
            {
              "number": 40,
              "prompt": "Changes in the economy service sector continues to be important increasing value of intellectual property more and more _______ workers",
              "answer": [
                "self-employed"
              ],
              "wordLimit": 1,
              "explanation": "Instead, more and more people are becoming self-employed, to gain the freedom and control over their lives that they’re unlikely to get from being employed."
            }
          ],
          "formTitle": "THE FUTURE OF MANAGEMENT",
          "id": "g31"
        }
      ]
    }
  ]
}
$c10t2l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 10' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 10',
  'Test 3',
  'academic',
  2004,
  $c10t3l$
{
  "audioPath": "Cambridge 10 Test 3.mp3",
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
              "text": "Enrolment Form"
            },
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "Parent or guardian: Carol ……….Smith………."
            },
            {
              "kind": "subheader",
              "text": "Personal Details"
            },
            {
              "kind": "subheader",
              "text": "Child’s name: Kate"
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
              "text": "Phone: 3345 9865"
            },
            {
              "kind": "subheader",
              "text": "Childcare Information"
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
              "kind": "question",
              "number": 9
            },
            {
              "kind": "subheader",
              "text": "Fees"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Age: _______",
              "answer": [
                "4"
              ],
              "wordLimit": 1,
              "explanation": "I’ll put four down because that’s how old she’ll be when she starts."
            },
            {
              "number": 2,
              "prompt": "Address: _______ Road, Woodside, 4032",
              "answer": [
                "46"
              ],
              "wordLimit": 1,
              "explanation": "Wombat It’s 46 Wombat Road, that’s W-O-M-B-A-T. Woodside 4032."
            },
            {
              "number": 3,
              "prompt": "Days enrolled for: Monday and _______",
              "answer": [
                "Thursday"
              ],
              "wordLimit": 1,
              "explanation": "Oh dear. I suppose Thursday would be all right because she has swimming on Friday."
            },
            {
              "number": 4,
              "prompt": "Start time: _______ am",
              "answer": [
                "8.30",
                "8"
              ],
              "wordLimit": 1,
              "explanation": ":30 I need to get to work in the city by 9:00 so I’ll drop her off at 8:30."
            },
            {
              "number": 5,
              "prompt": "Childcare group: the _______ group",
              "answer": [
                "red"
              ],
              "wordLimit": 1,
              "explanation": "Well, I’ll put her in the red group and we can always change her to the green one if there are any problems."
            },
            {
              "number": 6,
              "prompt": "Which meal/s are required each day? _______",
              "answer": [
                "lunch"
              ],
              "wordLimit": 1,
              "explanation": "Yes, she’ll only need lunch."
            },
            {
              "number": 7,
              "prompt": "Medical conditions: needs _______",
              "answer": [
                "glasses"
              ],
              "wordLimit": 1,
              "explanation": "No. But she does need to wear glasses."
            },
            {
              "number": 8,
              "prompt": "Emergency contact: Jenny _______ Phone: 3346 7523",
              "answer": [
                "BALL"
              ],
              "wordLimit": 1,
              "explanation": "OK. That’d better be my sister … Jenny Ball"
            },
            {
              "number": 9,
              "prompt": "Relationship to child: _______",
              "answer": [
                "aunt"
              ],
              "wordLimit": 1,
              "explanation": "Great. So she is the child’s aunt?"
            },
            {
              "number": 10,
              "prompt": "Will pay each _______",
              "answer": [
                "month"
              ],
              "wordLimit": 1,
              "explanation": "You can choose to pay at the end of each term or we do offer a slightly discounted rate if you pay every month."
            }
          ],
          "formTitle": "Early Learning Childcare Centre",
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
          "instructions": "Choose TWO letters, A–E. Which TWO things does Alice say about the Dolphin Conservation Trust?",
          "options": [
            {
              "key": "A",
              "text": "Children make up most of the membership."
            },
            {
              "key": "B",
              "text": "It’s the country’s largest conservation organisation."
            },
            {
              "key": "C",
              "text": "It helps finance campaigns for changes in fishing practices."
            },
            {
              "key": "D",
              "text": "It employs several dolphin experts full-time."
            },
            {
              "key": "E",
              "text": "Volunteers help in various ways."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO things does Alice say about the Dolphin Conservation Trust?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "The charity uses its money to support campaigns - for example, for changes in fishing policy and so forth. Of course, many people give their services on a voluntary basis and we now have volunteers working in observation, office work and other things."
            },
            {
              "number": 12,
              "prompt": "Which TWO things does Alice say about the Dolphin Conservation Trust?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "The charity uses its money to support campaigns - for example, for changes in fishing policy and so forth. Of course, many people give their services on a voluntary basis and we now have volunteers working in observation, office work and other things."
            }
          ],
          "id": "g11"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 13–15",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 13,
              "prompt": "Why is Alice so pleased the Trust has won the Charity Commission award?",
              "options": [
                {
                  "key": "A",
                  "text": "It has brought in extra money."
                },
                {
                  "key": "B",
                  "text": "It made the work of the trust better known."
                },
                {
                  "key": "C",
                  "text": "It has attracted more members."
                }
              ],
              "answer": "B",
              "explanation": "Although it’s not meant an enormous amount of money for us, it has made our activities even more widely publicised and understood."
            },
            {
              "number": 14,
              "prompt": "Alice says oil exploration causes problems to dolphins because of",
              "options": [
                {
                  "key": "A",
                  "text": "noise."
                },
                {
                  "key": "B",
                  "text": "oil leaks."
                },
                {
                  "key": "C",
                  "text": "movement of ships."
                }
              ],
              "answer": "A",
              "explanation": "We’re campaigning against this because, although there’ll be little pollution from oil, exploration creates a lot of underwater noise."
            },
            {
              "number": 15,
              "prompt": "Alice became interested in dolphins when",
              "options": [
                {
                  "key": "A",
                  "text": "she saw one swimming near her home."
                },
                {
                  "key": "B",
                  "text": "she heard a speaker at her school."
                },
                {
                  "key": "C",
                  "text": "she read a book about them."
                }
              ],
              "answer": "C",
              "explanation": "Then I came across this story about a family of dolphins who had to leave their home in the Moray Firth because of the oil companies and about a child who campaigned to save them. I couldn’t put the book down - I was hooked."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "Which dolphin does Alice make each of the following comments about? Choose the correct letter, A–D, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Moondancer"
            },
            {
              "key": "B",
              "text": "Echo"
            },
            {
              "key": "C",
              "text": "Kiwi"
            },
            {
              "key": "D",
              "text": "Samson"
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "It has not been seen this year.",
              "answer": "B",
              "explanation": "Unfortunately, Echo is being rather elusive this year and hasn’t yet been sighted by our observers but we remain optimistic that he’ll be out there soon"
            },
            {
              "number": 17,
              "prompt": "It is photographed more than the others.",
              "answer": "C",
              "explanation": "All the others have been out in force - Samson and Moondancer are often photographed together but it is Kiwi who’s our real ‘character’ as she seems to love coming up close for the cameras and we’ve captured her on film hundreds of times."
            },
            {
              "number": 18,
              "prompt": "It is always very energetic.",
              "answer": "D",
              "explanation": "They all have their own personalities - Moondancer is very elegant and curves out and into the water very smoothly, whereas Samson has a lot of energy - he’s always leaping out of the water with great vigour."
            },
            {
              "number": 19,
              "prompt": "It is the newest one in the scheme.",
              "answer": "D",
              "explanation": "You’d probably expect him to be the youngest - he’s not quite - that’s Kiwi - but Samson’s the latest of our dolphins to be chosen for the scheme."
            },
            {
              "number": 20,
              "prompt": "It has an unusual shape.",
              "answer": "A",
              "explanation": "Echo and Moondancer are noisy too, but Moondancer’s easy to find because she has a particularly large fin on her back, which makes her easy to identify."
            }
          ],
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
          "label": "Questions 21–25",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "What helped Rob to prepare to play the character of a doctor?",
              "options": [
                {
                  "key": "A",
                  "text": "the stories his grandfather told him"
                },
                {
                  "key": "B",
                  "text": "the times when he watched his grandfather working"
                },
                {
                  "key": "C",
                  "text": "the way he imagined his grandfather at work"
                }
              ],
              "answer": "C",
              "explanation": "I’d … I’d visualise what he must have been like in the past, when he was sitting in his consulting room listening to his patients."
            },
            {
              "number": 22,
              "prompt": "In the play’s first scene, the boredom of village life was suggested by",
              "options": [
                {
                  "key": "A",
                  "text": "repetition of words and phrases."
                },
                {
                  "key": "B",
                  "text": "scenery painted in dull colours."
                },
                {
                  "key": "C",
                  "text": "long pauses within conversations."
                }
              ],
              "answer": "A",
              "explanation": "And then people kept saying the same thing over and over, like ‘Cold, isn’t it?’"
            },
            {
              "number": 23,
              "prompt": "What has Rob learned about himself through working in a group?",
              "options": [
                {
                  "key": "A",
                  "text": "He likes to have clear guidelines."
                },
                {
                  "key": "B",
                  "text": "He copes well with stress."
                },
                {
                  "key": "C",
                  "text": "He thinks he is a good leader."
                }
              ],
              "answer": "A",
              "explanation": "Sophia did. That was OK - she helped us work out exactly what to do, for the production. And that made me feel better, I suppose."
            },
            {
              "number": 24,
              "prompt": "To support the production, research material was used which described",
              "options": [
                {
                  "key": "A",
                  "text": "political developments."
                },
                {
                  "key": "B",
                  "text": "changing social attitudes."
                },
                {
                  "key": "C",
                  "text": "economic transformations."
                }
              ],
              "answer": "B",
              "explanation": "Well, she found these articles from the 1950s about how relationships between children and their parents, or between the public and people like bank managers or the police were shifting."
            },
            {
              "number": 25,
              "prompt": "What problem did the students overcome in the final rehearsal?",
              "options": [
                {
                  "key": "A",
                  "text": "one person forgetting their words"
                },
                {
                  "key": "B",
                  "text": "an equipment failure"
                },
                {
                  "key": "C",
                  "text": "the injury of one character"
                }
              ],
              "answer": "B",
              "explanation": "Yes, and he had this really long speech, with the stage all dark except for one spotlight - and then that stuck somehow so it was shining on the wrong side of the stage … but anyway we got that fixed, thank goodness."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 26–30",
          "instructions": "What action is needed for the following stages in doing the ‘year abroad’ option? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "be on time"
            },
            {
              "key": "B",
              "text": "get a letter of recommendation"
            },
            {
              "key": "C",
              "text": "plan for the final year"
            },
            {
              "key": "D",
              "text": "make sure the institution’s focus is relevant"
            },
            {
              "key": "E",
              "text": "show ability in Theatre Studies"
            },
            {
              "key": "F",
              "text": "make travel arrangements and bookings"
            },
            {
              "key": "G",
              "text": "ask for help"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "in the second year of the course",
              "answer": "E",
              "explanation": "Yes, so next year when you are in the second year of the course, you need to work really hard in all your theatre studies modules. Only students with good marks get places - you have to prove that you know your subject really well."
            },
            {
              "number": 27,
              "prompt": "when first choosing where to go",
              "answer": "D",
              "explanation": "Well, I decided I wanted a programme that would fit in with what I wanted to do after I graduate, so I looked for a university with emphasis on acting rather than directing for example. It depends on you."
            },
            {
              "number": 28,
              "prompt": "when sending in your choices",
              "answer": "A",
              "explanation": "I had a friend who missed the deadline and didn’t get her first choice, so you do need to get a move on at that stage."
            },
            {
              "number": 29,
              "prompt": "when writing your personal statement",
              "answer": "G",
              "explanation": "Right. I’ll get some of the final year students to give me some tips … maybe see if I can read what they wrote."
            },
            {
              "number": 30,
              "prompt": "when doing the year abroad",
              "answer": "C",
              "explanation": "And while you’re abroad don’t make the mistake I made. I got so involved I forgot all about making arrangements for when I came back here for the final year. Make sure you stay in touch so they know your choices for the optional modules."
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
              "text": "Self-regulatory focus theory"
            },
            {
              "kind": "static",
              "text": "People’s focus is to approach pleasure or avoid pain"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Prevention goals emphasise avoiding punishment"
            },
            {
              "kind": "subheader",
              "text": "Factors that affect people’s focus"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "The"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "Factor we are more likely to focus on promotion goals when with a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "we are more likely to focus on prevention goals with our boss",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "How people’s focus affects them"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Prevention Focus: People think about their ‘ought’ self and their obligations"
            },
            {
              "kind": "subheader",
              "text": "Leaders"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "Transformational Leaders: pay special attention to the"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "of their followers passionately communicate a clear",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "inspire promotion focus in followers",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "subheader",
              "text": "Conclusion"
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "Prevention Focus is good for work such as a surgeon"
            },
            {
              "kind": "static",
              "text": "Leaders’ actions affect which focus people use"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Promotion goals focus on _______",
              "answer": [
                "achievement"
              ],
              "wordLimit": 1,
              "explanation": "/ achievements Promotion goals in different life situations emphasise achievement."
            },
            {
              "number": 32,
              "prompt": "The Chronic Factor comes from one’s _______",
              "answer": [
                "personality"
              ],
              "wordLimit": 1,
              "explanation": "/ character This factor is connected to a person’s personality and says that each person has a basic tendency to either focus more on promotion goals or focus more on prevention goals as part of his or her personality."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "Situational"
              ],
              "wordLimit": 1,
              "explanation": "Second, there is a situational factor which means that the context we are in can make us more likely to focus on one set of goals or the other."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "friend"
              ],
              "wordLimit": 1,
              "explanation": "For example, we are more likely to be thinking about pleasure and to have promotion goals when we are spending time with a friend."
            },
            {
              "number": 35,
              "prompt": "Promotion Focus: People think about an ideal version of themselves, their _______ and their gains.",
              "answer": [
                "aspirations"
              ],
              "wordLimit": 1,
              "explanation": "/ ambitions For example, when focusing on promotion goals, people consider their ideal self, their aspirations and gains."
            },
            {
              "number": 36,
              "prompt": "Leadership behaviour and _______ affects people’s focus",
              "answer": [
                "style"
              ],
              "wordLimit": 1,
              "explanation": "Now that I have talked about the two focuses and how they affect people, I want to look at the idea that the way leaders behave, or their style of leading, can affect the focus that followers adopt in a specific situation."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "development"
              ],
              "wordLimit": 1,
              "explanation": "Transformational leaders, when interacting with their followers, focus on their development."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "vision"
              ],
              "wordLimit": 1,
              "explanation": "Their speech is passionate and conveys a definitive vision."
            },
            {
              "number": 39,
              "prompt": "Transactional Leaders: create _______ to make expectations clear emphasise the results of a mistake inspire prevention focus in followers",
              "answer": [
                "structures"
              ],
              "wordLimit": 1,
              "explanation": "In contrast, transactional leaders focus on developing clear structures that tell their followers exactly what is expected of them."
            },
            {
              "number": 40,
              "prompt": "Promotion Focus is good for jobs requiring _______",
              "answer": [
                "innovation"
              ],
              "wordLimit": 1,
              "explanation": "/ innovations For a designer who works in a field where a lot of innovation is needed, a promotion focus is probably better."
            }
          ],
          "formTitle": "‘Self-regulatory focus theory’ and leadership",
          "id": "g31"
        }
      ]
    }
  ]
}
$c10t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 10' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 10',
  'Test 4',
  'academic',
  2004,
  $c10t4l$
{
  "audioPath": "Cambridge 10 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "Customer heard about Thorndyke’s from a ……..friend………"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "Address: Flat 4,"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "Park Flats (Behind the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": ")",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Phone number: 875934"
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
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Name: Edith _______",
              "answer": [
                "Pargetter"
              ],
              "wordLimit": 1,
              "explanation": "It’s Edith Pargetter."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "East"
              ],
              "wordLimit": 1,
              "explanation": "No, actually it’s East Park, Flat 4."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "library"
              ],
              "wordLimit": 1,
              "explanation": "Yes, it’s at the back of the library."
            },
            {
              "number": 4,
              "prompt": "Best time to contact customer: during the _______",
              "answer": [
                "morning"
              ],
              "wordLimit": 1,
              "explanation": "/ mornings So would the best time to ring you be in the morning?"
            },
            {
              "number": 5,
              "prompt": "Where to park: opposite entrance next to the _______",
              "answer": [
                "postbox"
              ],
              "wordLimit": 1,
              "explanation": "Well, I always tell people in larger vehicles to park by the postbox on the other side of the road from the entrance."
            },
            {
              "number": 6,
              "prompt": "Needs full quote showing all the jobs and the _______",
              "answer": [
                "prices"
              ],
              "wordLimit": 1,
              "explanation": "Oh, yes, I’ll list all the jobs separately with individual prices."
            }
          ],
          "formTitle": "THORNDYKE’S BUILDERS",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Kitchen"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "subheader",
              "text": "Fix tomorrow"
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
              "number": 7,
              "prompt": "Replace the _______ in the door",
              "answer": [
                "glass"
              ],
              "wordLimit": 1,
              "explanation": "Firstly and most urgently is in the kitchen. With all the weather damage, the glass in the door has cracked and I’d need that fixing …"
            },
            {
              "number": 8,
              "prompt": "Paint wall above the _______",
              "answer": [
                "cooker"
              ],
              "wordLimit": 1,
              "explanation": "Just the area over the cooker. It’s very greasy …"
            },
            {
              "number": 9,
              "prompt": "Strip paint and plaster approximately one _______ in advance",
              "answer": [
                "week"
              ],
              "wordLimit": 1,
              "explanation": "Well, if you want a proper job done what I’d need to do is strip the old paint and plaster it about a week before I paint it."
            },
            {
              "number": 10,
              "prompt": "Garden One _______ needs replacing (end of garden)",
              "answer": [
                "fence"
              ],
              "wordLimit": 1,
              "explanation": "Well, I’d like you to replace a fence."
            }
          ],
          "formTitle": "Area Work to be done Notes",
          "id": "g7"
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
              "prompt": "Why did a port originally develop at Manham?",
              "options": [
                {
                  "key": "A",
                  "text": "It was safe from enemy attack."
                },
                {
                  "key": "B",
                  "text": "It was convenient for river transport."
                },
                {
                  "key": "C",
                  "text": "It had a good position on the sea coast."
                }
              ],
              "answer": "B",
              "explanation": "The port of Manham is located in beautiful and peaceful countryside, on a bend in the great River Avon, and developed here because it’s the highest navigable point of the Avon - boats can go no higher up this river - and proved a handy place to load and unload cargo to and from the sea, which is over 23 miles away."
            },
            {
              "number": 12,
              "prompt": "What caused Manham’s sudden expansion during the Industrial Revolution?",
              "options": [
                {
                  "key": "A",
                  "text": "the improvement in mining techniques"
                },
                {
                  "key": "B",
                  "text": "the increase in demand for metals"
                },
                {
                  "key": "C",
                  "text": "the discovery of tin in the area"
                }
              ],
              "answer": "B",
              "explanation": "A small port was already established here when, about 900 years ago, tin was discovered nearby, though it wasn’t until the Industrial Revolution, when a tremendous need for metals of all kinds developed, that Manham expanded to become one of the busiest ports in the country."
            },
            {
              "number": 13,
              "prompt": "Why did rocks have to be sent away from Manham to be processed?",
              "options": [
                {
                  "key": "A",
                  "text": "shortage of fuel"
                },
                {
                  "key": "B",
                  "text": "poor transport systems"
                },
                {
                  "key": "C",
                  "text": "lack of skills among local people"
                }
              ],
              "answer": "A",
              "explanation": "But, as demand grew, the smelting process required huge factory furnaces or fires to melt the metal from the rock and there was not enough coal in the local area, so the rocks containing minerals had to be shipped long distances."
            },
            {
              "number": 14,
              "prompt": "What happened when the port declined in the twentieth century?",
              "options": [
                {
                  "key": "A",
                  "text": "The workers went away."
                },
                {
                  "key": "B",
                  "text": "Traditional skills were lost."
                },
                {
                  "key": "C",
                  "text": "Buildings were used for new purposes."
                }
              ],
              "answer": "A",
              "explanation": "Sadly, in the twentieth century, the great port of Manham declined, and thousands of workers were forced to emigrate out of the area."
            },
            {
              "number": 15,
              "prompt": "What did the Manham Trust hope to do?",
              "options": [
                {
                  "key": "A",
                  "text": "discover the location of the original port"
                },
                {
                  "key": "B",
                  "text": "provide jobs for the unemployed"
                },
                {
                  "key": "C",
                  "text": "rebuild the port complex"
                }
              ],
              "answer": "C",
              "explanation": "It then brought in paid professionals to match installations with maps of the original port complex and to set about reconstructing it."
            }
          ],
          "id": "g11"
        },
        {
          "type": "completion",
          "label": "Questions 16–20",
          "instructions": "Complete the table below. Write NO MORE THAN TWO WORDS for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Place Features and activities Advice copper mine specially adapted miners’"
            },
            {
              "kind": "question",
              "number": 16
            },
            {
              "kind": "static",
              "text": "take visitors into the mountain the mine is",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 17
            },
            {
              "kind": "static",
              "text": "and enclosed - unsuitable for children and animals village school classrooms and a special exhibition of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 18
            },
            {
              "kind": "static",
              "text": "a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "static",
              "text": "is recommended",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "_______",
              "answer": [
                "trains"
              ],
              "wordLimit": 2,
              "explanation": "Travel on converted mining trains and journey into the depths of the mountain along seams once worked by hundreds of miners."
            },
            {
              "number": 17,
              "prompt": "_______",
              "answer": [
                "dark"
              ],
              "wordLimit": 2,
              "explanation": "But please be warned that, like all mines, ours is very dark and closed in and we do say that children under five and also dogs should NOT be taken into the mine."
            },
            {
              "number": 18,
              "prompt": "_______",
              "answer": [
                "games"
              ],
              "wordLimit": 2,
              "explanation": "While looking round the classrooms, take a special look at our display of games, which is one of the largest in the world."
            },
            {
              "number": 19,
              "prompt": "_______",
              "answer": [
                "guided"
              ],
              "wordLimit": 2,
              "explanation": "tour And it’s recommended that you time your visit to coincide with a guided tour."
            },
            {
              "number": 20,
              "prompt": "‘The George’ (old sailing ship) the ship’s wheel (was lost but has now been restored) children shouldn’t use the _______",
              "answer": [
                "ladder"
              ],
              "wordLimit": 2,
              "explanation": "/ ladders Please take care going down the ladders if you wish to visit the lower deck - we don’t recommend you allow young children to use them."
            }
          ],
          "formTitle": "Tourist attractions in Manham",
          "id": "g16"
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
          "instructions": "Choose TWO letters, A–E. Which TWO skills did Laura improve as a result of her work placement?",
          "options": [
            {
              "key": "A",
              "text": "communication"
            },
            {
              "key": "B",
              "text": "design"
            },
            {
              "key": "C",
              "text": "IT"
            },
            {
              "key": "D",
              "text": "marketing"
            },
            {
              "key": "E",
              "text": "organisation"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO skills did Laura improve as a result of her work placement?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "Do you think you got any better at managing your time and prioritizing things? You always used to say you had trouble with that … Oh, definitely. There was so much pressure to meet the project deadline. And I also got better at explaining things and asserting my opinions, because I had to have weekly consultations with the marketing manager and give him a progress report."
            },
            {
              "number": 22,
              "prompt": "Which TWO skills did Laura improve as a result of her work placement?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "Do you think you got any better at managing your time and prioritizing things? You always used to say you had trouble with that … Oh, definitely. There was so much pressure to meet the project deadline. And I also got better at explaining things and asserting my opinions, because I had to have weekly consultations with the marketing manager and give him a progress report."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO immediate benefits did the company get from Laura’s work placement?",
          "options": [
            {
              "key": "A",
              "text": "updates for its software"
            },
            {
              "key": "B",
              "text": "cost savings"
            },
            {
              "key": "C",
              "text": "an improved image"
            },
            {
              "key": "D",
              "text": "new clients"
            },
            {
              "key": "E",
              "text": "a growth in sales"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO immediate benefits did the company get from Laura’s work placement?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Oh, yes. I worked it out - it would have been 250 per cent more. The new brochure looks really professional; it enhances the image of the company straight away."
            },
            {
              "number": 24,
              "prompt": "Which TWO immediate benefits did the company get from Laura’s work placement?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Oh, yes. I worked it out - it would have been 250 per cent more. The new brochure looks really professional; it enhances the image of the company straight away."
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What source of information should Tim use at each of the following stages of the work placement? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "company manager"
            },
            {
              "key": "B",
              "text": "company’s personnel department"
            },
            {
              "key": "C",
              "text": "personal tutor"
            },
            {
              "key": "D",
              "text": "psychology department"
            },
            {
              "key": "E",
              "text": "mentor"
            },
            {
              "key": "F",
              "text": "university careers officer"
            },
            {
              "key": "G",
              "text": "internet"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "obtaining booklet",
              "answer": "D",
              "explanation": "Actually, they’ve got copies in the psychology department - I’ve seen them there. I’ll just go to the office and pick one up."
            },
            {
              "number": 26,
              "prompt": "discussing options",
              "answer": "F",
              "explanation": "One of the career officers would be better, they’ve got more knowledge about the jobs market than your personal tutor would have."
            },
            {
              "number": 27,
              "prompt": "getting updates",
              "answer": "G",
              "explanation": "They told me at the careers office that it’s best to be proactive, and get updates yourself by checking the website for new placement alerts."
            },
            {
              "number": 28,
              "prompt": "responding to invitation for interview",
              "answer": "B",
              "explanation": "Not really … But it is the company who notifies you if they want you to go for an interview. You get a letter of invitation or an email from personnel departments."
            },
            {
              "number": 29,
              "prompt": "informing about outcome of interview",
              "answer": "E",
              "explanation": "Right … So, once you’ve had an interview you should let your mentor know what the outcome is? I mean whether you’re offered a job, and whether you’ve decided to accept it?"
            },
            {
              "number": 30,
              "prompt": "requesting a reference",
              "answer": "C",
              "explanation": "And that’s something you should ask your own tutor to provide."
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
          "type": "multiple_choice",
          "label": "Questions 31–33",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 31,
              "prompt": "The speaker says that one problem with nanotechnology is that",
              "options": [
                {
                  "key": "A",
                  "text": "it could threaten our way of life."
                },
                {
                  "key": "B",
                  "text": "it could be used to spy on people."
                },
                {
                  "key": "C",
                  "text": "it is misunderstood by the public."
                }
              ],
              "answer": "C",
              "explanation": "And with nanotechnology, society often gets the wrong idea about its capabilities."
            },
            {
              "number": 32,
              "prompt": "According to the speaker, some scientists believe that nono-particles",
              "options": [
                {
                  "key": "A",
                  "text": "should be restricted to secure environments."
                },
                {
                  "key": "B",
                  "text": "should be used with more caution."
                },
                {
                  "key": "C",
                  "text": "should only be developed for essential products."
                }
              ],
              "answer": "B",
              "explanation": "Some scientists recommend that nano-particles be treated as new chemicals with separate safety tests and clear labelling."
            },
            {
              "number": 33,
              "prompt": "In the speaker’s opinion, research into nanotechnology",
              "options": [
                {
                  "key": "A",
                  "text": "has yet to win popular support."
                },
                {
                  "key": "B",
                  "text": "could be seen as unethical."
                },
                {
                  "key": "C",
                  "text": "ought to be continued."
                }
              ],
              "answer": "C",
              "explanation": "But as far as I’m concerned there’s a need to plough ahead with the discoveries and applications of nanotechnology."
            }
          ],
          "id": "g31"
        },
        {
          "type": "completion",
          "label": "Questions 34–40",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Transport"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "Planes would be much lighter in weight."
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "Technology"
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
              "text": "The Environment"
            },
            {
              "kind": "static",
              "text": "Nano-robots could rebuild the ozone layer."
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
              "text": "Health and Medicine"
            },
            {
              "kind": "static",
              "text": "New methods of food production could eradicate famine."
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "Life expectancy could be increased."
            }
          ],
          "questions": [
            {
              "number": 34,
              "prompt": "Nanotechnology could allow the development of stronger _______",
              "answer": [
                "metal"
              ],
              "wordLimit": 1,
              "explanation": "/ metals Thanks to nanotechnology, there could be a major breakthrough in the field of transportation with the production of more durable metals"
            },
            {
              "number": 35,
              "prompt": "_______ travel will be made available to the masses.",
              "answer": [
                "space"
              ],
              "wordLimit": 1,
              "explanation": "Those same improved capabilities will dramatically reduce the cost of travelling into space making it more accessible to ordinary people and opening up to totally new holiday destination."
            },
            {
              "number": 36,
              "prompt": "Computers will be even smaller, faster, and will have a greater _______",
              "answer": [
                "memory"
              ],
              "wordLimit": 1,
              "explanation": "We need nanotechnology in order to create a new generation of computers that will work even faster and will have a million times more memory but will be about the size of a sugar cube"
            },
            {
              "number": 37,
              "prompt": "_______ Energy will become more affordable.",
              "answer": [
                "solar"
              ],
              "wordLimit": 1,
              "explanation": "The cost of solar cells will be drastically reduced so harnessing this energy will be far more economical than at present."
            },
            {
              "number": 38,
              "prompt": "Pollutants such as _______ could be removed from water",
              "answer": [
                "oil"
              ],
              "wordLimit": 1,
              "explanation": "On a more local scale, this new technology could help with the clean-up of environmental disasters as nanotechnology will allow us to remove oil and other contaminants from the water far more effectively."
            },
            {
              "number": 39,
              "prompt": "There will be no _______ from manufacturing.",
              "answer": [
                "waste"
              ],
              "wordLimit": 1,
              "explanation": "In terms of production, this means that you only use what you need and so there wouldn’t be any waste."
            },
            {
              "number": 40,
              "prompt": "Analysis of medical _______ will be speeded up.",
              "answer": [
                "tests"
              ],
              "wordLimit": 1,
              "explanation": "How we detect disease will change as tiny biosensors are developed to analyse tests in minutes rather than days."
            }
          ],
          "formTitle": "Uses of Nanotechnology",
          "id": "g34"
        }
      ]
    }
  ]
}
$c10t4l$,
  true
);

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

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 11' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 11',
  'Test 2',
  'academic',
  2004,
  $c11t2l$
{
  "audioPath": "Cambridge 11 Test 2.mp3",
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
              "kind": "subheader",
              "text": "Name: Roger ………..Brown…………"
            },
            {
              "kind": "subheader",
              "text": "Age: 18"
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
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "Hobbies: does a lot of"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": ", and is interested in the",
              "noBullet": true
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
              "prompt": "Currently staying in a _______ during the week",
              "answer": [
                "hostel"
              ],
              "wordLimit": 1,
              "explanation": "At the moment I’m looking for a flat to rent here, so I’m in a hostel from Monday to Friday."
            },
            {
              "number": 2,
              "prompt": "Postal address: 17, _______ Street, Stamford, Lincs",
              "answer": [
                "Buckleigh"
              ],
              "wordLimit": 1,
              "explanation": "That’s 17, Buckleigh Street - B-U-C-K-L-E-I-G-H Street, Stamford, Lincolnshire, though you don’t really need the country."
            },
            {
              "number": 3,
              "prompt": "Postcode: _______",
              "answer": [
                "PE"
              ],
              "wordLimit": 1,
              "explanation": "9 7QT PE9 7QT"
            },
            {
              "number": 4,
              "prompt": "Occupation: student and part-time job as a _______",
              "answer": [
                "waiter"
              ],
              "wordLimit": 1,
              "explanation": "I’ve just finished a short-term contract as a courier, and now I’m working as a waiter in one of the big hotels."
            },
            {
              "number": 5,
              "prompt": "Studying _______ (major subject) and history (minor subject)",
              "answer": [
                "politics"
              ],
              "wordLimit": 1,
              "explanation": "My ambition is to go into parliament eventually, so my major subject is politics."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "cycling"
              ],
              "wordLimit": 1,
              "explanation": "I spend quite a lot of time cycling"
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "cinema"
              ],
              "wordLimit": 1,
              "explanation": "For relaxation I’m also keen on the cinema"
            },
            {
              "number": 8,
              "prompt": "On Youth Council, wants to work with young people who are _______",
              "answer": [
                "disabled"
              ],
              "wordLimit": 1,
              "explanation": "Well, my sister is blind, so I’m particularly interested in working with disabled young people, to try and improve the quality of their lives."
            },
            {
              "number": 9,
              "prompt": "Will come to talk to the Elections Officer next Monday at _______ pm",
              "answer": [
                "4"
              ],
              "wordLimit": 1,
              "explanation": ":30 / 4.30 / half past four Well, would 4.30 be OK? My last class finishes at 4, so I’d have plenty of time to get to your office."
            },
            {
              "number": 10,
              "prompt": "Mobile number: _______",
              "answer": [
                "07788"
              ],
              "wordLimit": 1,
              "explanation": "136711 Yes, my mobile number’s 07788 136711."
            }
          ],
          "formTitle": "Enquiry about joining Youth Council",
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
          "instructions": "Choose TWO letters, A–E. Which TWO changes have been made so far during the refurbishment of the theatre?",
          "options": [
            {
              "key": "A",
              "text": "Some rooms now have a different use."
            },
            {
              "key": "B",
              "text": "A different type of seating has been installed."
            },
            {
              "key": "C",
              "text": "An elevator has been installed."
            },
            {
              "key": "D",
              "text": "The outside of the building has been repaired."
            },
            {
              "key": "E",
              "text": "Extra seats have been added."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO changes have been made so far during the refurbishment of the theatre?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "We’ve replaced them with larger seats, with more legroom. This means fewer seats in total, but we’ve taken the opportunity to install seats that can easily be moved We’ve also turned a few storerooms over to other purposes like using them for meetings."
            },
            {
              "number": 12,
              "prompt": "Which TWO changes have been made so far during the refurbishment of the theatre?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "We’ve replaced them with larger seats, with more legroom. This means fewer seats in total, but we’ve taken the opportunity to install seats that can easily be moved We’ve also turned a few storerooms over to other purposes like using them for meetings."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO facilities does the theatre currently offer to the public?",
          "options": [
            {
              "key": "A",
              "text": "rooms for hire"
            },
            {
              "key": "B",
              "text": "backstage tours"
            },
            {
              "key": "C",
              "text": "hire of costumes"
            },
            {
              "key": "D",
              "text": "a bookshop"
            },
            {
              "key": "E",
              "text": "a café"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO facilities does the theatre currently offer to the public?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "One way is by organising backstage tours so people can be shown round the building and learn how a theatre operates. These are proving very popular. We have a bookshop, which specialises in books about drama and that attracts plenty of customers."
            },
            {
              "number": 14,
              "prompt": "Which TWO facilities does the theatre currently offer to the public?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "One way is by organising backstage tours so people can be shown round the building and learn how a theatre operates. These are proving very popular. We have a bookshop, which specialises in books about drama and that attracts plenty of customers."
            }
          ],
          "id": "g13"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 15–16",
          "instructions": "Choose TWO letters, A–E. Which TWO workshops does the theatre currently offer? === PAGE 4 ===",
          "options": [
            {
              "key": "A",
              "text": "sound"
            },
            {
              "key": "B",
              "text": "acting"
            },
            {
              "key": "C",
              "text": "making puppets"
            },
            {
              "key": "D",
              "text": "make-up"
            },
            {
              "key": "E",
              "text": "lighting"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Which TWO workshops does the theatre currently offer? === PAGE 4 ===",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "our lighting workshop has already started with great success. A surprise success is the workshop on making puppets - we happen to have someone working here who does it as a hobby, and she offered to run a workshop. It was so popular we’re now running them every month!"
            },
            {
              "number": 16,
              "prompt": "Which TWO workshops does the theatre currently offer? === PAGE 4 ===",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "our lighting workshop has already started with great success. A surprise success is the workshop on making puppets - we happen to have someone working here who does it as a hobby, and she offered to run a workshop. It was so popular we’re now running them every month!"
            }
          ],
          "id": "g15"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "Label the plan below. Write the correct letter, A–G, next to Questions 17–20.",
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
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "box office",
              "answer": "G",
              "explanation": "although it’s part of this building, it’s next door with a separate entrance from the road."
            },
            {
              "number": 18,
              "prompt": "theatre manager’s office",
              "answer": "D",
              "explanation": "For the theatre manager’s office, you go across the foyer and through the double doors, turn right, and it’s the room at the end of the corridor, with the door on the left."
            },
            {
              "number": 19,
              "prompt": "lighting box",
              "answer": "B",
              "explanation": "The lighting box is where the computerised stage lighting is operated and it’s at the back of the building. When you’re through the double doors turn left, turn right at the water cooler, and right again at the end. It’s the second room along that corridor."
            },
            {
              "number": 20,
              "prompt": "artistic director’s offices",
              "answer": "F",
              "explanation": "The artistic director’s office is through the double doors, turn right and it’s the first room you come to on the right-hand side"
            }
          ],
          "mapImage": "Cambridge 11 Test 2 map.png",
          "id": "g17"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 21–26",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "What do the students agree should be included in their aims?",
              "options": [
                {
                  "key": "A",
                  "text": "factors affecting where organisms live"
                },
                {
                  "key": "B",
                  "text": "the need to preserve endangered species"
                },
                {
                  "key": "C",
                  "text": "techniques for classifying different organisms"
                }
              ],
              "answer": "A",
              "explanation": "But we need something about what causes different organisms to choose particular habitats."
            },
            {
              "number": 22,
              "prompt": "What equipment did they forget to take on the Field Trip?",
              "options": [
                {
                  "key": "A",
                  "text": "string"
                },
                {
                  "key": "B",
                  "text": "a compass"
                },
                {
                  "key": "C",
                  "text": "a ruler"
                }
              ],
              "answer": "A",
              "explanation": "But not the piece of string to hold up in the air! Didn’t Mr Blake make a fuss about us leaving that behind."
            },
            {
              "number": 23,
              "prompt": "In Helen’s procedure section, Colin suggests a change in",
              "options": [
                {
                  "key": "A",
                  "text": "the order in which information is given."
                },
                {
                  "key": "B",
                  "text": "the way the information is divided up."
                },
                {
                  "key": "C",
                  "text": "the amount of information provided."
                }
              ],
              "answer": "C",
              "explanation": "Yeah. It was clear, but I don’t think we need all these details of what time we left and what time we got back and how we divided up the different research tasks."
            },
            {
              "number": 24,
              "prompt": "What do they say about the method they used to measure wave speed?",
              "options": [
                {
                  "key": "A",
                  "text": "It provided accurate results."
                },
                {
                  "key": "B",
                  "text": "It was simple to carry out."
                },
                {
                  "key": "C",
                  "text": "It required special equipment."
                }
              ],
              "answer": "B",
              "explanation": "So let’s begin with how we measured wave speed. I was surprised how straightforward that was."
            },
            {
              "number": 25,
              "prompt": "What mistake did Helen make when first drawing the map?",
              "options": [
                {
                  "key": "A",
                  "text": "She chose the wrong scale."
                },
                {
                  "key": "B",
                  "text": "She stood in the wrong place."
                },
                {
                  "key": "C",
                  "text": "She did it at the wrong time."
                }
              ],
              "answer": "B",
              "explanation": "the place I started it from was down on the beach, then I realised I should have gone up higher to get better visibility"
            },
            {
              "number": 26,
              "prompt": "What do they decide to do next with their map?",
              "options": [
                {
                  "key": "A",
                  "text": "scan it onto a computer"
                },
                {
                  "key": "B",
                  "text": "check it using photographs"
                },
                {
                  "key": "C",
                  "text": "add information from the internet"
                }
              ],
              "answer": "B",
              "explanation": "I’ll make my amendments using those, then I can scan it into our report."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 27–28",
          "instructions": "Choose TWO letters, A–E. Which TWO problems affecting organisms in the splash zone are mentioned?",
          "options": [
            {
              "key": "A",
              "text": "lack of water"
            },
            {
              "key": "B",
              "text": "strong winds"
            },
            {
              "key": "C",
              "text": "lack of food"
            },
            {
              "key": "D",
              "text": "high temperatures"
            },
            {
              "key": "E",
              "text": "large waves"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Which TWO problems affecting organisms in the splash zone are mentioned?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "But the shells prevent them from drying out because they’re in the open air for most of the time. And since they’ve exposed, they need to be able to find some sort of shelter, or cover themselves up, so they don’t get too hot."
            },
            {
              "number": 28,
              "prompt": "Which TWO problems affecting organisms in the splash zone are mentioned?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "But the shells prevent them from drying out because they’re in the open air for most of the time. And since they’ve exposed, they need to be able to find some sort of shelter, or cover themselves up, so they don’t get too hot."
            }
          ],
          "id": "g27"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 29–30",
          "instructions": "Choose TWO letters, A–E. Which TWO reasons for possible error will they include in their report?",
          "options": [
            {
              "key": "A",
              "text": "inaccurate records of the habitat of organisms"
            },
            {
              "key": "B",
              "text": "influence on behaviour of organisms by observer"
            },
            {
              "key": "C",
              "text": "incorrect identification of some organisms"
            },
            {
              "key": "D",
              "text": "making generalisations from a small sample"
            },
            {
              "key": "E",
              "text": "missing some organisms when counting"
            }
          ],
          "questions": [
            {
              "number": 29,
              "prompt": "Which TWO reasons for possible error will they include in their report?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "we might have missed some organisms - if they were hiding under a rock, for example I’m not sure we identified all the species correctly thought."
            },
            {
              "number": 30,
              "prompt": "Which TWO reasons for possible error will they include in their report?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "we might have missed some organisms - if they were hiding under a rock, for example I’m not sure we identified all the species correctly thought."
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
              "kind": "subheader",
              "text": "THE TAYLOR CONCERT HALL"
            },
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
              "text": "Location and concept of the Concert Hall"
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
              "kind": "static",
              "text": "The design is based on the concept of a mystery"
            },
            {
              "kind": "subheader",
              "text": "Building design"
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
              "kind": "static",
              "text": "In the auditorium: the floor is built on huge pads made of"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "the walls are made of local wood and are",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "in shape ceiling panels and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "on walls allow adjustment of acoustics",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Evaluation"
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "The designer of a public building may need to consider the building’s function physical and _______ context symbolic meaning",
              "answer": [
                "social"
              ],
              "wordLimit": 1,
              "explanation": "this includes its physical location obviously, but it also includes the social meaning of the building how it relates to the people it’s built for"
            },
            {
              "number": 32,
              "prompt": "On the site of a disused _______",
              "answer": [
                "factory"
              ],
              "wordLimit": 1,
              "explanation": "The location chosen was a site in a run-down district that has been ignored in previous redevelopment plans. It was occupied by a factory that had been empty for some years."
            },
            {
              "number": 33,
              "prompt": "Beside a _______",
              "answer": [
                "canal"
              ],
              "wordLimit": 1,
              "explanation": "The side itself was bordered to the north by a canal"
            },
            {
              "number": 34,
              "prompt": "It’s approached by a _______ for pedestrians",
              "answer": [
                "bridge"
              ],
              "wordLimit": 1,
              "explanation": "As people approach the entrance, they therefore have to cross over a bridge."
            },
            {
              "number": 35,
              "prompt": "The building is the shape of a _______",
              "answer": [
                "box"
              ],
              "wordLimit": 1,
              "explanation": "the initial impression he wanted to create from the shape of the building as a whole was that of a box."
            },
            {
              "number": 36,
              "prompt": "One exterior wall acts as a large _______",
              "answer": [
                "screen"
              ],
              "wordLimit": 1,
              "explanation": "And this flat wall also has another purpose. At night-time, projectors are switched on and it functions as a huge screen, onto which images are projected."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "rubber"
              ],
              "wordLimit": 1,
              "explanation": "The floor’s supported by ten massive pads. These are constructed from rubber"
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "curved"
              ],
              "wordLimit": 1,
              "explanation": "they are not straight, they are curved."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "curtains"
              ],
              "wordLimit": 1,
              "explanation": "the walls also have curtains which can be opened or closed to change the acoustics."
            },
            {
              "number": 40,
              "prompt": "Some critics say the _______ style of the building is inappropriate",
              "answer": [
                "international"
              ],
              "wordLimit": 1,
              "explanation": "However, the evaluation of some critics has been less enthusiastic. In spite of Harrison’s efforts to use local materials, they criticise the style of the design as being international rather than local"
            }
          ],
          "formTitle": "DESIGNING A PUBLIC BUILDING:",
          "id": "g31"
        }
      ]
    }
  ]
}
$c11t2l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 11' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 11',
  'Test 3',
  'academic',
  2004,
  $c11t3l$
{
  "audioPath": "Cambridge 11 Test 3.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 1–6",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 1,
              "prompt": "The ‘Family Welcome’ event in the art gallery begins at",
              "options": [
                {
                  "key": "A",
                  "text": "10 am."
                },
                {
                  "key": "B",
                  "text": "10.30 am."
                },
                {
                  "key": "C",
                  "text": "2 pm."
                }
              ],
              "answer": "B",
              "explanation": "The gallery opens at 10, and the ‘Family Welcome’ event runs from 10.30 until 2 o’clock."
            },
            {
              "number": 2,
              "prompt": "The film that is now shown in the ‘Family Welcome’ event is about",
              "options": [
                {
                  "key": "A",
                  "text": "sculpture."
                },
                {
                  "key": "B",
                  "text": "painting."
                },
                {
                  "key": "C",
                  "text": "ceramics."
                }
              ],
              "answer": "C",
              "explanation": "they’re going to show a short film that the gallery has produced. It demonstrates how ceramics are made"
            },
            {
              "number": 3,
              "prompt": "When do most of the free concerts take place?",
              "options": [
                {
                  "key": "A",
                  "text": "in the morning"
                },
                {
                  "key": "B",
                  "text": "at lunchtime"
                },
                {
                  "key": "C",
                  "text": "in the evening"
                }
              ],
              "answer": "B",
              "explanation": "the majority at lunchtime"
            },
            {
              "number": 4,
              "prompt": "Where will the 4 pm concert of Latin American music take place?",
              "options": [
                {
                  "key": "A",
                  "text": "in a museum"
                },
                {
                  "key": "B",
                  "text": "in a theatre"
                },
                {
                  "key": "C",
                  "text": "in a library"
                }
              ],
              "answer": "A",
              "explanation": "then at 4 it’s in the City Museum"
            },
            {
              "number": 5,
              "prompt": "The boat race begins at",
              "options": [
                {
                  "key": "A",
                  "text": "Summer Pool."
                },
                {
                  "key": "B",
                  "text": "Charlesworth Bridge."
                },
                {
                  "key": "C",
                  "text": "Offord Marina."
                }
              ],
              "answer": "C",
              "explanation": "The race starts at Offord Marina, to the north of Burnham, and goes as far as Summer Pool"
            },
            {
              "number": 6,
              "prompt": "One of the boat race teams",
              "options": [
                {
                  "key": "A",
                  "text": "won a regional competition earlier this year."
                },
                {
                  "key": "B",
                  "text": "has represented the region in a national competition."
                },
                {
                  "key": "C",
                  "text": "has won several regional competitions."
                }
              ],
              "answer": "A",
              "explanation": "One of them came first in the West of England regional championship in May this year"
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the sentences below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Paxton is a good place for seeing rare",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "all year round. This is a particularly good time for seeing certain unusual",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "Visitors will be able to learn about",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "and then collect some. Part of the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "has been made suitable for swimming.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 7,
              "prompt": "is a good place for seeing rare _______ all year round",
              "answer": [
                "birds"
              ],
              "wordLimit": 1,
              "explanation": "It’s a good place for spotting unusual birds, isn’t it?"
            },
            {
              "number": 8,
              "prompt": "time for seeing certain unusual _______",
              "answer": [
                "flowers"
              ],
              "wordLimit": 1,
              "explanation": "And just at the moment you can see various flowers that are pretty unusual"
            },
            {
              "number": 9,
              "prompt": "will be able to learn about _______",
              "answer": [
                "mushrooms"
              ],
              "wordLimit": 1,
              "explanation": "And there’s going to be a talk and slide show about mushrooms - and you’ll be able to go out and pick some afterwards and study the different varieties."
            },
            {
              "number": 10,
              "prompt": "Part of the _______",
              "answer": [
                "river"
              ],
              "wordLimit": 1,
              "explanation": "Part of it has been fenced off to make it safe for children to swim in."
            }
          ],
          "formTitle": "Paxton Nature Reserve",
          "id": "g7"
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
              "prompt": "In Shona’s opinion, why do fewer people use buses in Barford these days?",
              "options": [
                {
                  "key": "A",
                  "text": "The buses are old and uncomfortable."
                },
                {
                  "key": "B",
                  "text": "Fares have gone up too much."
                },
                {
                  "key": "C",
                  "text": "There are not so many bus routes."
                }
              ],
              "answer": "C",
              "explanation": "but not now because the bus companies concentrate on just the routes that attract most passengers. So parts of the town are no longer served by buses."
            },
            {
              "number": 12,
              "prompt": "What change in the road network is known to have benefited the town most?",
              "options": [
                {
                  "key": "A",
                  "text": "the construction of a bypass"
                },
                {
                  "key": "B",
                  "text": "the development of cycle paths"
                },
                {
                  "key": "C",
                  "text": "the banning of cars from certain streets"
                }
              ],
              "answer": "B",
              "explanation": "The new cycle paths separating bikes from cars in most main roads, are being used far more than was expected reducing traffic and improving air quality."
            },
            {
              "number": 13,
              "prompt": "What is the problem affecting shopping in the town centre?",
              "options": [
                {
                  "key": "A",
                  "text": "lack of parking spaces"
                },
                {
                  "key": "B",
                  "text": "lack of major retailers"
                },
                {
                  "key": "C",
                  "text": "lack of restaurants and cafés"
                }
              ],
              "answer": "B",
              "explanation": "many people prefer to use supermarkets and department stores in nearby large towns, as there are so few well-known chain stores here."
            },
            {
              "number": 14,
              "prompt": "What does Shona say about medical facilities in Barford?",
              "options": [
                {
                  "key": "A",
                  "text": "There is no hospital."
                },
                {
                  "key": "B",
                  "text": "New medical practices are planned."
                },
                {
                  "key": "C",
                  "text": "The number of dentists is too low."
                }
              ],
              "answer": "A",
              "explanation": "Our hospital closed 15 years ago"
            },
            {
              "number": 15,
              "prompt": "The largest number of people are employed in",
              "options": [
                {
                  "key": "A",
                  "text": "manufacturing."
                },
                {
                  "key": "B",
                  "text": "services."
                },
                {
                  "key": "C",
                  "text": "education."
                }
              ],
              "answer": "C",
              "explanation": "The number of schools and colleges has increased making that the main employment sector."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "What is planned for each of the following facilities? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "It will move to a new location."
            },
            {
              "key": "B",
              "text": "It will have its opening hours extended."
            },
            {
              "key": "C",
              "text": "It will be refurbished."
            },
            {
              "key": "D",
              "text": "It will be used for a different purpose."
            },
            {
              "key": "E",
              "text": "It will have its opening hours reduced."
            },
            {
              "key": "F",
              "text": "It will have new management."
            },
            {
              "key": "G",
              "text": "It will be expanded."
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "railway station car park",
              "answer": "G",
              "explanation": "Instead, the company has bought some adjoining land, and this will be used to increase the number of parking spaces."
            },
            {
              "number": 17,
              "prompt": "cinema",
              "answer": "A",
              "explanation": "The Grand, the old cinema in the high street will close at the end of the year, and reopen on a different site."
            },
            {
              "number": 18,
              "prompt": "indoor market",
              "answer": "C",
              "explanation": "The good news is that it will close for sex weeks to be made safe and redecorated, and the improved building will open in July."
            },
            {
              "number": 19,
              "prompt": "library",
              "answer": "B",
              "explanation": "The council has managed to secure funding to keep the library open later into the evening, twice a week."
            },
            {
              "number": 20,
              "prompt": "nature reserve",
              "answer": "F",
              "explanation": "Instead it will become the responsibility of a national body that administers most nature reserves in the country."
            }
          ],
          "id": "g16"
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
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
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
              "prompt": "A _______ surrounded by trees",
              "answer": [
                "cave"
              ],
              "wordLimit": 1,
              "explanation": "the drawing of the cave - it’s got trees all around it"
            },
            {
              "number": 22,
              "prompt": "Add Malcolm and a _______ noticing him",
              "answer": [
                "tiger"
              ],
              "wordLimit": 1,
              "explanation": "Yes, let’s have Malcolm in the drawing. And what about putting in a tiger"
            },
            {
              "number": 23,
              "prompt": "People who are _______ outside the forest",
              "answer": [
                "dancing"
              ],
              "wordLimit": 1,
              "explanation": "Then there’s the drawing of the crowd of men and women dancing. They’re just outside the forest, and there’s a lot going on."
            },
            {
              "number": 24,
              "prompt": "Add Malcolm sitting on a tree trunk and _______",
              "answer": [
                "crying"
              ],
              "wordLimit": 1,
              "explanation": "I’d like him to be crying"
            },
            {
              "number": 25,
              "prompt": "Ice-skaters on _______ covered with ice",
              "answer": [
                "grass"
              ],
              "wordLimit": 1,
              "explanation": "Because they’re supposed to be skating on grass aren’t they?"
            },
            {
              "number": 26,
              "prompt": "Add a _______ for each person",
              "answer": [
                "scarf"
              ],
              "wordLimit": 1,
              "explanation": "Maybe you could give each of them a scarf as well."
            }
          ],
          "formTitle": "Subject of drawing Change to be made",
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "Who is going to write each of the following parts of the report? Choose the correct letter, A–D, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Helen only"
            },
            {
              "key": "B",
              "text": "Jeremy only"
            },
            {
              "key": "C",
              "text": "both Helen and Jeremy"
            },
            {
              "key": "D",
              "text": "neither Helen nor Jeremy"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "how they planned the project",
              "answer": "A",
              "explanation": "you’ve had most of the good ideas so far. How do you feel about drafting something"
            },
            {
              "number": 28,
              "prompt": "how they had ideas for their stories",
              "answer": "C",
              "explanation": "Well, I’ve started writing something about that, so why don’t you do the same and we can include the two things."
            },
            {
              "number": 29,
              "prompt": "an interpretation of their stories",
              "answer": "D",
              "explanation": "That’s going to come up later isn’t it? I think everyone in the class is going to read each other’s stories and come up with their own interpretations which we’re going to discuss."
            },
            {
              "number": 30,
              "prompt": "comments on the illustrations",
              "answer": "B",
              "explanation": "I’d be happier if you did it."
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
              "kind": "static",
              "text": "Ethnography: research which explores human cultures"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Examples of ethnographic research in business"
            },
            {
              "kind": "subheader",
              "text": "Kitchen equipment"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "subheader",
              "text": "Cell phones"
            },
            {
              "kind": "static",
              "text": "In Uganda, customers paid to use the cell phones of entrepreneurs."
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "subheader",
              "text": "Computer companies"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Hospitals"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "Airlines"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "Principles of ethnographic research in business"
            },
            {
              "kind": "static",
              "text": "The researcher does not start off with a hypothesis."
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
              "kind": "static",
              "text": "The interview is guided by the participant."
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "Researchers look for a meaningful pattern in the data."
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "It can be used in business: to investigate customer needs and _______ to help companies develop new designs",
              "answer": [
                "attitude"
              ],
              "wordLimit": 1,
              "explanation": "/ attitudes Well, businesses are finding that ethnography can offer them deeper insight into the possible needs of customers, either present or future, as well as providing valuable information about their attitudes towards existing products."
            },
            {
              "number": 32,
              "prompt": "Researchers found that cooks could not easily see the _______ in measuring cups.",
              "answer": [
                "numbers"
              ],
              "wordLimit": 1,
              "explanation": "although the measuring cups had numbers inside them, the cooks couldn’t see these easily."
            },
            {
              "number": 33,
              "prompt": "These customers wanted to check the _______ used.",
              "answer": [
                "time"
              ],
              "wordLimit": 1,
              "explanation": "/ minutes they were eager to know how much time they’d spent on the call so far."
            },
            {
              "number": 34,
              "prompt": "There was a need to develop _______ to improve communication between system administrators and colleagues.",
              "answer": [
                "software"
              ],
              "wordLimit": 1,
              "explanation": "they didn’t have a standard way of exchanging information from spreadsheets and so on. So the team came up with an idea for software that would help them to do this."
            },
            {
              "number": 35,
              "prompt": "Nurses needed to access information about _______ in different parts of the hospital.",
              "answer": [
                "patients"
              ],
              "wordLimit": 1,
              "explanation": "This led to the recognition that the nurses needed to access the computer records of their patients, no matter where they were"
            },
            {
              "number": 36,
              "prompt": "Respondents recorded information about their _______ while travelling.",
              "answer": [
                "emotions"
              ],
              "wordLimit": 1,
              "explanation": "/ feelings respondents used their smartphones to record information during airline trips, in a study aiming at tracking the emotions of passengers during a flight."
            },
            {
              "number": 37,
              "prompt": "Participants may be selected by criteria such as age, _______ or product used.",
              "answer": [
                "income"
              ],
              "wordLimit": 1,
              "explanation": "or the researchers may select them according to their income"
            },
            {
              "number": 38,
              "prompt": "The participants must feel _______ about taking part in the research.",
              "answer": [
                "comfortable"
              ],
              "wordLimit": 1,
              "explanation": "they have to be comfortable talking about themselves and being watched as they go about their activities."
            },
            {
              "number": 39,
              "prompt": "There is usually direct _______ of the participants.",
              "answer": [
                "observation"
              ],
              "wordLimit": 1,
              "explanation": "the research is usually based on first-hand observation of what they are doing at the time."
            },
            {
              "number": 40,
              "prompt": "A lot of time is needed for the _______ of the data.",
              "answer": [
                "analysis"
              ],
              "wordLimit": 1,
              "explanation": "Most researchers estimate that 70 to 80 per cent of their time is spent not on the collecting of data but on its analysis - looking at photos listening to recording and transcribing them and so on."
            }
          ],
          "formTitle": "ETHNOGRAPHY IN BUSINESS",
          "id": "g31"
        }
      ]
    }
  ]
}
$c11t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 11' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 11',
  'Test 4',
  'academic',
  2004,
  $c11t4l$
{
  "audioPath": "Cambridge 11 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formTitle": "Fingle Village Festival",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Jazz band"
            },
            {
              "kind": "static",
              "text": "Cost: tickets available for £15 (example)"
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
              "text": "Duck races"
            },
            {
              "kind": "static",
              "text": "Cost: £1 per duck"
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
              "text": "Flower show"
            },
            {
              "kind": "static",
              "text": "Cost: free"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Venue: the _______ school",
              "answer": [
                "secondary"
              ],
              "wordLimit": 1,
              "explanation": "Yes, that’s right, the secondary school."
            },
            {
              "number": 2,
              "prompt": "Notes: also appearing — Carolyn Hart (plays the _______)",
              "answer": [
                "flute"
              ],
              "wordLimit": 1,
              "explanation": "Yes the flute."
            },
            {
              "number": 3,
              "prompt": "Venue: start behind the _______",
              "answer": [
                "cinema"
              ],
              "wordLimit": 1,
              "explanation": "All the ducks will be launched into the river at the back of the cinema"
            },
            {
              "number": 4,
              "prompt": "Notes: prize is tickets for a _______ held at the end of the festival",
              "answer": [
                "concert"
              ],
              "wordLimit": 1,
              "explanation": "Yes, the first duck in each race to arrive at the finishing line wins its owner free tickets for the concert on the last night of the festival."
            },
            {
              "number": 5,
              "prompt": "Ducks can be bought in the _______",
              "answer": [
                "market"
              ],
              "wordLimit": 1,
              "explanation": "They’re on sale at a stall in the market"
            },
            {
              "number": 6,
              "prompt": "Venue: _______ Hall",
              "answer": [
                "Bythwaite"
              ],
              "wordLimit": 1,
              "explanation": "Well, admission is free, and the show is being held in Bythwaite Hall."
            },
            {
              "number": 7,
              "prompt": "Notes: prizes presented at 5 pm by a well-known _______",
              "answer": [
                "actor"
              ],
              "wordLimit": 1,
              "explanation": "The prizes are being given by a famous actor, Kevin Shapless"
            }
          ],
          "id": "g1"
        },
        {
          "type": "matching",
          "label": "Questions 8–10",
          "instructions": "Who is each play suitable for? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "mainly for children"
            },
            {
              "key": "B",
              "text": "mainly for adults"
            },
            {
              "key": "C",
              "text": "suitable for people of all ages"
            }
          ],
          "questions": [
            {
              "number": 8,
              "prompt": "The Mystery of Muldoon",
              "answer": "A",
              "explanation": "That’s aimed at five to ten-year-olds."
            },
            {
              "number": 9,
              "prompt": "Fire and Flood",
              "answer": "B",
              "explanation": "If you’d like something for yourself and your husband and leave your children with a babysitter, you might like to see ‘Fire and Flood’"
            },
            {
              "number": 10,
              "prompt": "Silly Sailor",
              "answer": "C",
              "explanation": "That’s a comedy, and it’s for young and old."
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
          "instructions": "What does the speaker say about each of the following collections? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "was given by one person"
            },
            {
              "key": "B",
              "text": "was recently publicised in the media"
            },
            {
              "key": "C",
              "text": "includes some items given by members of the public"
            },
            {
              "key": "D",
              "text": "includes some items given by the artists"
            },
            {
              "key": "E",
              "text": "includes the most popular exhibits in the museum"
            },
            {
              "key": "F",
              "text": "is the largest of its kind in the country"
            },
            {
              "key": "G",
              "text": "has had some of its contents relocated"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "20th- and 21st-century paintings",
              "answer": "E",
              "explanation": "This is the gallery that attracts the largest number of visitors"
            },
            {
              "number": 12,
              "prompt": "19th-century paintings",
              "answer": "D",
              "explanation": "several of the artists each donated one work"
            },
            {
              "number": 13,
              "prompt": "Sculptures",
              "answer": "G",
              "explanation": "a number of the sculptures have been moved to other parts of the museum."
            },
            {
              "number": 14,
              "prompt": "‘Around the world’ exhibition",
              "answer": "B",
              "explanation": "‘Around the world’ is a temporary exhibition - you’ve probably seen something about it on TV or in the newspapers"
            },
            {
              "number": 15,
              "prompt": "Coins",
              "answer": "C",
              "explanation": "And many of them were discovered by ordinary people digging their gardens and donated to the museum!"
            },
            {
              "number": 16,
              "prompt": "Porcelain and glass",
              "answer": "A",
              "explanation": "All our porcelain and glass we left to the museum by its founder"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "Label the plan below. Write the correct letter, A–H, next to Questions 17–20.",
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
              "number": 17,
              "prompt": "restaurant",
              "answer": "F",
              "explanation": "To reach it, when you get to the bottom of the stairs, go straight ahead to the far side of the sitting area, then turn right into the corridor. You’ll see the door on the restaurant facing you."
            },
            {
              "number": 18,
              "prompt": "café",
              "answer": "H",
              "explanation": "When you reach the bottom of the stairs, you’ll need to go straight ahead, turn right into the corridor, and the café is immediately on the right."
            },
            {
              "number": 19,
              "prompt": "baby-changing facilities",
              "answer": "C",
              "explanation": "there are baby-changing facilities downstairs: cross the sitting area, continue straight ahead along the corridor on the left and you and your body will find the facilities on the left-hand side."
            },
            {
              "number": 20,
              "prompt": "cloakroom",
              "answer": "B",
              "explanation": "The cloakroom where you should leave coats, umbrella and any large bags, is on the left hand side of the sitting area. It’s through the last door before you come to the corridor."
            }
          ],
          "mapImage": "Cambridge 11 Test 4 map.png",
          "id": "g17"
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
          "instructions": "Choose TWO letters, A–E. Which TWO characteristics were shared by the subjects of Joanna’s psychology study?",
          "options": [
            {
              "key": "A",
              "text": "They had all won prizes for their music."
            },
            {
              "key": "B",
              "text": "They had all made music recordings."
            },
            {
              "key": "C",
              "text": "They were all under 27 years old."
            },
            {
              "key": "D",
              "text": "They had all toured internationally."
            },
            {
              "key": "E",
              "text": "They all played a string instrument."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO characteristics were shared by the subjects of Joanna’s psychology study?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "they’d done quite extensive tours in different continents I wasn’t specifically look for artists who’d produced recordings, but this is something that’s just taken for granted these days, and they all had."
            },
            {
              "number": 22,
              "prompt": "Which TWO characteristics were shared by the subjects of Joanna’s psychology study?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "they’d done quite extensive tours in different continents I wasn’t specifically look for artists who’d produced recordings, but this is something that’s just taken for granted these days, and they all had."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO points does Joanna make about her use of telephone interviews?",
          "options": [
            {
              "key": "A",
              "text": "It meant rich data could be collected."
            },
            {
              "key": "B",
              "text": "It allowed the involvement of top performers."
            },
            {
              "key": "C",
              "text": "It led to a stressful atmosphere at times."
            },
            {
              "key": "D",
              "text": "It meant interview times had to be limited."
            },
            {
              "key": "E",
              "text": "It caused some technical problems."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO points does Joanna make about her use of telephone interviews?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "I realised if I was going to interview leading musicians it’s only be possible over the phone because they’re so busy And I don’t think using the phone meant I got less rich data rather the opposite in fact."
            },
            {
              "number": 24,
              "prompt": "Which TWO points does Joanna make about her use of telephone interviews?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "I realised if I was going to interview leading musicians it’s only be possible over the phone because they’re so busy And I don’t think using the phone meant I got less rich data rather the opposite in fact."
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO topics did Joanna originally intend to investigate in her research? === PAGE 6 ===",
          "options": [
            {
              "key": "A",
              "text": "regulations concerning concert dress"
            },
            {
              "key": "B",
              "text": "audience reactions to the dress of performers"
            },
            {
              "key": "C",
              "text": "changes in performer attitudes to concert dress"
            },
            {
              "key": "D",
              "text": "how choice of dress relates to performer roles"
            },
            {
              "key": "E",
              "text": "links between musical instrument and dress choice"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO topics did Joanna originally intend to investigate in her research? === PAGE 6 ===",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "When I started I was more interested in trying to investigate the impact of what was worn on those listening whether someone like a violinist might adopt a different style of clothing from, say, someone playing the flute or the trumpet"
            },
            {
              "number": 26,
              "prompt": "Which TWO topics did Joanna originally intend to investigate in her research? === PAGE 6 ===",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "When I started I was more interested in trying to investigate the impact of what was worn on those listening whether someone like a violinist might adopt a different style of clothing from, say, someone playing the flute or the trumpet"
            }
          ],
          "id": "g25"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 27–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 27,
              "prompt": "Joanna concentrated on women performers because",
              "options": [
                {
                  "key": "A",
                  "text": "women are more influenced by fashion."
                },
                {
                  "key": "B",
                  "text": "women’s dress has led to more controversy."
                },
                {
                  "key": "C",
                  "text": "women’s code of dress is less strict than men’s."
                }
              ],
              "answer": "C",
              "explanation": "in social terms the choices they have are more limited … they’d really upset audiences if they strayed away from quite narrow boundaries."
            },
            {
              "number": 28,
              "prompt": "Mike Frost’s article suggests that in popular music, women’s dress is affected by",
              "options": [
                {
                  "key": "A",
                  "text": "their wish to be taken seriously."
                },
                {
                  "key": "B",
                  "text": "their tendency to copy each other."
                },
                {
                  "key": "C",
                  "text": "their reaction to the masculine nature of the music."
                }
              ],
              "answer": "A",
              "explanation": "he suggests this is because otherwise they’d just be discounted as trivial."
            },
            {
              "number": 29,
              "prompt": "What did Joanna’s subjects say about the audience at a performance?",
              "options": [
                {
                  "key": "A",
                  "text": "The musicians’ choice of clothing is linked to respect for the audience."
                },
                {
                  "key": "B",
                  "text": "The clothing should not distract the audience from the music."
                },
                {
                  "key": "C",
                  "text": "The audience should make the effort to dress appropriately."
                }
              ],
              "answer": "A",
              "explanation": "They believed the audience had certain expectations and it was up to them as performers to fulfil these expectations to show a kind of esteem …"
            },
            {
              "number": 30,
              "prompt": "According to the speakers, musicians could learn from sports scientists about",
              "options": [
                {
                  "key": "A",
                  "text": "the importance of clothing for physical freedom."
                },
                {
                  "key": "B",
                  "text": "the part played by clothing in improving performance."
                },
                {
                  "key": "C",
                  "text": "the way clothing may protect against physical injury."
                }
              ],
              "answer": "C",
              "explanation": "I’d imagine some features of sports clothing could safeguard the players from the potentially dangerous effects of this sort of thing."
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
              "kind": "static",
              "text": "Rattan Lal:"
            },
            {
              "kind": "static",
              "text": "Claims that 13% of CO2 in the atmosphere could be absorbed by agricultural soils"
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
              "text": "It was suggested that carbon from soil was entering the atmosphere"
            },
            {
              "kind": "static",
              "text": "Soil and carbon: plants turn CO2 from the air into carbon-based substances such as"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "some CO2 moves from the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "of plants to microbes in the soil carbon was lost from the soil when agriculture was invented",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Regenerative agriculture: uses established practices to make sure soil remains fertile and"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "e.g. through year-round planting and increasing the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "of plants that are grown",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "California study: taking place on a big"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "farm uses compost made from waste from agriculture and",
              "noBullet": true
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
              "prompt": "Erosion is more likely in soil that is _______",
              "answer": [
                "dry"
              ],
              "wordLimit": 1,
              "explanation": "erosion can occur if soil is dry"
            },
            {
              "number": 32,
              "prompt": "Lai found soil in Africa that was very _______",
              "answer": [
                "hard"
              ],
              "wordLimit": 1,
              "explanation": "Lal was studying soils in Africa so devoid of organic matter that the ground had become extremely hard"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "sugar"
              ],
              "wordLimit": 1,
              "explanation": "/ sugars Plants absorb CO2 from the air and transform it into sugars and other carbon-based substance."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "roots"
              ],
              "wordLimit": 1,
              "explanation": "some transfer from the roots to fungi and soil microbes"
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "moist"
              ],
              "wordLimit": 1,
              "explanation": "/ damp / wet This aims to boost the fertility of soil and keep it moist through established practices."
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "variety"
              ],
              "wordLimit": 1,
              "explanation": "increasing the variety of plants being grown"
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "cattle"
              ],
              "wordLimit": 1,
              "explanation": "a first-of-its-kind study on a large cattle farm in the state"
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "gardens"
              ],
              "wordLimit": 1,
              "explanation": "/ gardening waste produced in gardens"
            },
            {
              "number": 39,
              "prompt": "Australia study: aims to increase soil carbon by using _______ that are always green",
              "answer": [
                "grasses"
              ],
              "wordLimit": 1,
              "explanation": "working to build up soil carbon by cultivating grasses that stay green all year round."
            },
            {
              "number": 40,
              "prompt": "Future developments may include: reducing the amount of fertilizer used in farming giving farmers _______ for carbon storage, as well as their produce",
              "answer": [
                "payment"
              ],
              "wordLimit": 1,
              "explanation": "/ payments / money farmers should receive payment not just for the corn or beef they produce but also for the carbon they can store in their soil."
            }
          ],
          "formTitle": "The use of soil to reduce carbon dioxide (CO2) in the atmosphere",
          "id": "g31"
        }
      ]
    }
  ]
}
$c11t4l$,
  true
);

