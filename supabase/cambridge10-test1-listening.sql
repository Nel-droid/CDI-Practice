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
