DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 13' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 13',
  'Test 1',
  'academic',
  2004,
  $c13t1l$
{
  "audioPath": "Cambridge 13 Test 1.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Cookery Class Focus Other Information"
            },
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "The Food …Studio… how to"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "and cook with seasonal products small classes also offers",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "classes clients who return get a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "discount",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Bond’s Cookery"
            },
            {
              "kind": "static",
              "text": "School food that is"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "includes recipes to strengthen your",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "they have a free",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "subheader",
              "text": "Every"
            },
            {
              "kind": "subheader",
              "text": "Thursday"
            },
            {
              "kind": "static",
              "text": "The"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "mainly",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "food located near the",
              "noBullet": true
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
              "prompt": "_______",
              "answer": [
                "choose"
              ],
              "wordLimit": 1,
              "explanation": "They focus on seasonal products, and as well as teaching you how to cook them, they also show you how to choose them."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "private"
              ],
              "wordLimit": 1,
              "explanation": "And could I get a private lesson there?"
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "20"
              ],
              "wordLimit": 1,
              "explanation": "% / 20 percent And this company has a special deal for clients where they offer a discount of 20 percent if you return for a further class."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "healthy"
              ],
              "wordLimit": 1,
              "explanation": "They concentrate on teaching you to prepare healthy food, and they have quite a lot of specialist staff."
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "bones"
              ],
              "wordLimit": 1,
              "explanation": "It’s more to do with recipes that look at specific needs, like including ingredients that will help build up your bones and make them stronger, that sort of thing."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "lecture"
              ],
              "wordLimit": 1,
              "explanation": "And if you want to know more about them, every Thursday evening they have a lecture at the school."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "Arretsa"
              ],
              "wordLimit": 1,
              "explanation": "That’s got a rather strange name, it’s called The Arretsa Centre"
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "vegetarian"
              ],
              "wordLimit": 1,
              "explanation": "They do a bit of meat and fish cookery but they mostly specialise in vegetarian dishes."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "market"
              ],
              "wordLimit": 1,
              "explanation": "In fact, I think I might have seen that school today. Is it just by the market?"
            },
            {
              "number": 10,
              "prompt": "Centre a special course in skills with a _______ is sometimes available",
              "answer": [
                "knife"
              ],
              "wordLimit": 1,
              "explanation": "And they also offer a special two-hour course in how to use a knife."
            }
          ],
          "formTitle": "COOKERY CLASSES",
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
          "label": "Questions 11–13",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "Why are changes needed to traffic systems in Granford?",
              "options": [
                {
                  "key": "A",
                  "text": "The number of traffic accidents has risen."
                },
                {
                  "key": "B",
                  "text": "The amount of traffic on the roads has increased."
                },
                {
                  "key": "C",
                  "text": "The types of vehicles on the roads have changed."
                }
              ],
              "answer": "B",
              "explanation": "But it’s the overall rise in the volume of traffic of all kinds that’s concerning us."
            },
            {
              "number": 12,
              "prompt": "In a survey, local residents particularly complained about",
              "options": [
                {
                  "key": "A",
                  "text": "dangerous driving by parents."
                },
                {
                  "key": "B",
                  "text": "pollution from trucks and lorries."
                },
                {
                  "key": "C",
                  "text": "inconvenience from parked cars."
                }
              ],
              "answer": "C",
              "explanation": "People were very concerned about the lack of visibility on some roads due to cars parked along the sides of the roads."
            },
            {
              "number": 13,
              "prompt": "According to the speaker, one problem with the new regulations will be",
              "options": [
                {
                  "key": "A",
                  "text": "raising money to pay for them."
                },
                {
                  "key": "B",
                  "text": "finding a way to make people follow them."
                },
                {
                  "key": "C",
                  "text": "getting the support of the police."
                }
              ],
              "answer": "B",
              "explanation": "But, of course, it’s no good introducing new regulations if we don’t have a way of making sure that everyone obeys them"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 14–20",
          "instructions": "Label the map below. Write the correct letter, A–I, next to Questions 14–20.",
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
              "number": 14,
              "prompt": "New traffic lights",
              "answer": "E",
              "explanation": "we already have a set of traffic lights in the High Street at the junction with Station Road, but we’re planning to have another set at the other end, at the School Road junction"
            },
            {
              "number": 15,
              "prompt": "Pedestrian crossing",
              "answer": "D",
              "explanation": "we decided to locate it on the High Street, crossing the road in front of the supermarket."
            },
            {
              "number": 16,
              "prompt": "Parking allowed",
              "answer": "B",
              "explanation": "At present, parking isn’t allowed on the High Street outside the library, but we’re going to change that, and allow parking there"
            },
            {
              "number": 17,
              "prompt": "New ‘No Parking’ sign",
              "answer": "G",
              "explanation": "There’ll be a new ‘No Parking’ sign on School Road, just by the entrance to the school"
            },
            {
              "number": 18,
              "prompt": "New disabled parking spaces",
              "answer": "C",
              "explanation": "we’ve got two new disabled parking spaces on the side road up towards the bank."
            },
            {
              "number": 19,
              "prompt": "Widened pavement",
              "answer": "H",
              "explanation": "We also plan to widen the pavement on School Road. We think we can manage to get an extra half-metre on the bend just before you get to the school, on the same side of the road."
            },
            {
              "number": 20,
              "prompt": "Lorry loading/unloading restrictions",
              "answer": "I",
              "explanation": "we’ve introduced new restrictions on loading and unloading for the supermarket, so lorries will only be allowed to stop there before 8 am. That’s the supermarket on School Road"
            }
          ],
          "mapImage": "Cambridge 13 Test 1 map.png",
          "id": "g14"
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
              "prompt": "Why is Jack interested in investigating seed germination?",
              "options": [
                {
                  "key": "A",
                  "text": "He may do a module on a related topic later on."
                },
                {
                  "key": "B",
                  "text": "He wants to have a career in plant science."
                },
                {
                  "key": "C",
                  "text": "He is thinking of choosing this topic for his dissertation."
                }
              ],
              "answer": "A",
              "explanation": "No, there’s an optional module on seed structure and function in the third year that I might do, so I thought it might be useful for that."
            },
            {
              "number": 22,
              "prompt": "Jack and Emma agree the main advantage of their present experiment is that it can be",
              "options": [
                {
                  "key": "A",
                  "text": "described very easily."
                },
                {
                  "key": "B",
                  "text": "carried out inside the laboratory."
                },
                {
                  "key": "C",
                  "text": "completed in the time available."
                }
              ],
              "answer": "C",
              "explanation": "OK. We’d need to allow time for the seeds to come up."
            },
            {
              "number": 23,
              "prompt": "What do they decide to check with their tutor?",
              "options": [
                {
                  "key": "A",
                  "text": "whether their aim is appropriate"
                },
                {
                  "key": "B",
                  "text": "whether anyone else has chosen this topic"
                },
                {
                  "key": "C",
                  "text": "whether the assignment contributes to their final grade"
                }
              ],
              "answer": "B",
              "explanation": "But we need to be sure we’re the only ones doing it."
            },
            {
              "number": 24,
              "prompt": "They agree that Graves’ book on seed germination is disappointing because",
              "options": [
                {
                  "key": "A",
                  "text": "it fails to cover recent advances in seed science."
                },
                {
                  "key": "B",
                  "text": "the content is irrelevant for them."
                },
                {
                  "key": "C",
                  "text": "its focus is very theoretical."
                }
              ],
              "answer": "C",
              "explanation": "I found it quite hard to follow - lots about the theory, which I hadn’t expected"
            },
            {
              "number": 25,
              "prompt": "What does Jack say about the article on seed germination by Lee Hall?",
              "options": [
                {
                  "key": "A",
                  "text": "The diagrams of plant development are useful."
                },
                {
                  "key": "B",
                  "text": "The analysis of seed germination statistics is thorough."
                },
                {
                  "key": "C",
                  "text": "The findings on seed germination after fires are surprising."
                }
              ],
              "answer": "B",
              "explanation": "His analysis of figures comparing the times of the fires and the proportion of seeds that germinated was done in a lot of detail - very impressive"
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 26–30",
          "instructions": "Complete the flow-chart below. Choose FIVE answers from the box, A–H.",
          "summaryTitle": "",
          "summaryText": "Stage in the experiment\nSelect seeds of different {26} and sizes.\n↓\nMeasure and record the {27} and size of each one.\n↓\nDecide on the {28} to be used.\n↓\nUse a different {29} for each seed and label it.\n↓\nAfter about 3 weeks, record the plant’s {30} .\n↓\nInvestigate the findings.",
          "wordBank": [
            {
              "key": "A",
              "text": "container"
            },
            {
              "key": "B",
              "text": "soil"
            },
            {
              "key": "C",
              "text": "weight"
            },
            {
              "key": "D",
              "text": "condition"
            },
            {
              "key": "E",
              "text": "height"
            },
            {
              "key": "F",
              "text": "colour"
            },
            {
              "key": "G",
              "text": "types"
            },
            {
              "key": "H",
              "text": "depths"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "",
              "answer": "G",
              "explanation": "So, how many sorts do we need? About four different ones?"
            },
            {
              "number": 27,
              "prompt": "",
              "answer": "C",
              "explanation": "Then, for each seed we need to find out how much it weighs"
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "H",
              "explanation": "And we also need to decide how deep we’re going to plant the seeds"
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "A",
              "explanation": "Do you think we can plant several seeds together in the same plant pot?"
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "E",
              "explanation": "Then we see if our plants have come up, and write down how tall they’ve grown."
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
              "kind": "static",
              "text": "Recent urban developments represent massive environmental changes. It was previously thought that only a few animals were suitable for city life, e.g. the"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "- because of its general adaptability the pigeon - because walls of city buildings are similar to",
              "noBullet": true
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
              "text": "Recent research"
            },
            {
              "kind": "static",
              "text": "Emilie Snell-Rood studied small urbanised mammal specimens from museums in"
            },
            {
              "kind": "static",
              "text": "Minnesota."
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
              "text": "Jonathan Atwell studies how animals respond to urban environments."
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
              "text": "Long-term possibilities"
            },
            {
              "kind": "static",
              "text": "Species of animals may develop which are unique to cities. However, some changes may not be"
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
                "crow"
              ],
              "wordLimit": 1,
              "explanation": "One species which is well known as being highly adaptable is the crow, and there’ve been various studies about how they manage to learn new skills"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "cliffs"
              ],
              "wordLimit": 1,
              "explanation": "the pigeon, because they’re able to perch on ledges on the walls of city buildings, just like they once perched on cliffs by the sea."
            },
            {
              "number": 33,
              "prompt": "In fact, many urban animals are adapting with unusual _______",
              "answer": [
                "speed"
              ],
              "wordLimit": 1,
              "explanation": "And one thing that researchers are finding especially interesting is the speed with which they’re doing this - we’re not talking about gradual evolution here - these animals are changing fast."
            },
            {
              "number": 34,
              "prompt": "- She found the size of their _______ had increased.",
              "answer": [
                "brain"
              ],
              "wordLimit": 1,
              "explanation": "/ brains And she found that during that time, these small mammals had experienced a jump in brain size when compared to rural mammals."
            },
            {
              "number": 35,
              "prompt": "- She suggests this may be due to the need to locate new sources of _______ and to deal with new dangers.",
              "answer": [
                "food"
              ],
              "wordLimit": 1,
              "explanation": "And Snell-Rood thinks that this change might reflect the cognitive demands of adjusting to city life - having to look in different places to find food, for example, and coping with a whole new set of dangers."
            },
            {
              "number": 36,
              "prompt": "Catarina Miranda focused on the _______ of urban and rural blackbirds.",
              "answer": [
                "behaviour"
              ],
              "wordLimit": 1,
              "explanation": "/ behaviours / behavior / behaviors there’s another biologist called Catarina Miranda who’s done some experiments with blackbirds living in urban and rural areas. And she’s been looking not at their anatomy but at their behaviour."
            },
            {
              "number": 37,
              "prompt": "- She found urban birds were often braver, but were afraid of situations that were _______",
              "answer": [
                "new"
              ],
              "wordLimit": 1,
              "explanation": "But there’s one type of situation that does seem to frighten the urban blackbirds, and that’s anything new - anything they haven’t experienced before."
            },
            {
              "number": 38,
              "prompt": "- He found that some animals respond to _______ by producing lower levels of hormones.",
              "answer": [
                "stress"
              ],
              "wordLimit": 1,
              "explanation": "He’s found that when they’re under stress, their endocrine systems react by reducing the amount of hormones such as corticosterone into their blood."
            },
            {
              "number": 39,
              "prompt": "Sarah Partan’s team found urban squirrels use their _______ to help them communicate.",
              "answer": [
                "tail"
              ],
              "wordLimit": 1,
              "explanation": "/ tails they’ve been looking at how squirrels communicate in an urban environment, and they’ve found that a routine part of their communication is carried out by waving their tails."
            },
            {
              "number": 40,
              "prompt": "_______ .",
              "answer": [
                "permanent"
              ],
              "wordLimit": 1,
              "explanation": "One possibility is that we may see completely new species developing in cities. But on the other hand, it’s possible that not all of these adaptations will be permanent"
            }
          ],
          "formTitle": "Effects of urban environments on animals",
          "id": "g31"
        }
      ]
    }
  ]
}
$c13t1l$,
  true
);
