-- Cambridge Listening — Part 6 of 6: books 20 & 21 (8 tests).
-- Paste this whole file into the Supabase SQL editor and Run.

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 20',
  'Test 1',
  'academic',
  2004,
  $c20t1l$
{
  "audioPath": "Cambridge 20 Test 1.mp3",
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
              "text": "Name of restaurant Location Reason for recommendation Other comments"
            },
            {
              "kind": "static",
              "text": "The Junction Greyson Street, near the station"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Quite expensive"
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
              "kind": "subheader",
              "text": "Staff are very friendly"
            },
            {
              "kind": "subheader",
              "text": "Need to pay £50 deposit"
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
              "text": "A famous chef"
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
              "prompt": "Good for people who are especially keen on _______",
              "answer": [
                "Fish"
              ],
              "wordLimit": 1,
              "explanation": "The food’s amazing. If you like fish, it’s probably the best restaurant in town for that. It’s always really fresh"
            },
            {
              "number": 2,
              "prompt": "The _______ is a good place for a drink",
              "answer": [
                "Roof"
              ],
              "wordLimit": 1,
              "explanation": "It’s got a great atmosphere and before dinner you can go up on the roof and have a drink"
            },
            {
              "number": 3,
              "prompt": "Paloma In Bow Street next to the cinema _______ food, good for sharing",
              "answer": [
                "Spanish"
              ],
              "wordLimit": 1,
              "explanation": "So is all the food they serve Spanish, then?"
            },
            {
              "number": 4,
              "prompt": "A limited selection of _______ food on the menu",
              "answer": [
                "Vegetarian"
              ],
              "wordLimit": 1,
              "explanation": "Not sure I say the selection of those would be quite limited"
            },
            {
              "number": 5,
              "prompt": "The _______",
              "answer": [
                "Audley"
              ],
              "wordLimit": 1,
              "explanation": "A-U-D-L-E-Y. You must have heard of it. There’s been a lot about it in the press"
            },
            {
              "number": 6,
              "prompt": "At the top of a _______",
              "answer": [
                "Hotel"
              ],
              "wordLimit": 1,
              "explanation": "MAN: It’s in that hotel near Baxter Bridge, on the top floor"
            },
            {
              "number": 7,
              "prompt": "All the _______ are very good",
              "answer": [
                "Reviews"
              ],
              "wordLimit": 1,
              "explanation": "Anyway, it’s had excellent reviews from all the newspapers"
            },
            {
              "number": 8,
              "prompt": "Only uses _______ ingredients",
              "answer": [
                "Local"
              ],
              "wordLimit": 1,
              "explanation": "Yes. Everything at the restaurant has to be sourced within a short distance and absolutely nothing flown in from abroad."
            },
            {
              "number": 9,
              "prompt": "Set lunch costs £ _______ per person",
              "answer": [
                "30"
              ],
              "wordLimit": 1,
              "explanation": "Well, you could go for the set lunch. That’s quite reasonable for a top-class restaurant. £30 a head"
            },
            {
              "number": 10,
              "prompt": "Portions probably of _______ size",
              "answer": [
                "Average"
              ],
              "wordLimit": 1,
              "explanation": "No, the reviews I’ve read didn’t mention that. I imagine they’d be average"
            }
          ],
          "formTitle": "Restaurant Recommendations",
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
              "prompt": "Heather says pottery differs from other art forms because",
              "options": [
                {
                  "key": "A",
                  "text": "It lasts longer in the ground."
                },
                {
                  "key": "B",
                  "text": "It is practised by more people."
                },
                {
                  "key": "C",
                  "text": "It can be repaired more easily."
                }
              ],
              "answer": "A",
              "explanation": "Things like baskets and pictures don’t survive in the earth in the same way that pots do"
            },
            {
              "number": 12,
              "prompt": "Archaeologists sometimes identify the use of ancient pottery from",
              "options": [
                {
                  "key": "A",
                  "text": "The clay it was made with."
                },
                {
                  "key": "B",
                  "text": "The marks that are on it."
                },
                {
                  "key": "C",
                  "text": "The basic shape of it."
                }
              ],
              "answer": "B",
              "explanation": "Archaeologists can tell whether the pots were for, say, storage or cooking by examining the impressions on the clay, the scratches from tools, and the clay itself can reveal where the pots came from"
            },
            {
              "number": 13,
              "prompt": "Some people join Heather’s pottery class because they want to",
              "options": [
                {
                  "key": "A",
                  "text": "Create an item that looks very old."
                },
                {
                  "key": "B",
                  "text": "Find something that they are good at."
                },
                {
                  "key": "C",
                  "text": "Make something that will outlive them."
                }
              ],
              "answer": "C",
              "explanation": "Like our ancestors, they hope that something they create will also last longer than they do, that their work, whether it is good or not, might say something about humanity many years after their death"
            },
            {
              "number": 14,
              "prompt": "What does Heather value most about being a potter?",
              "options": [
                {
                  "key": "A",
                  "text": "Its calming effect"
                },
                {
                  "key": "B",
                  "text": "Its messy nature"
                },
                {
                  "key": "C",
                  "text": "Its physical benefits"
                }
              ],
              "answer": "A",
              "explanation": "what I love most is the concentration you need to make a good pot. That focus takes you away from the stresses of everyday life"
            },
            {
              "number": 15,
              "prompt": "Most of the visitors to Edelman Pottery",
              "options": [
                {
                  "key": "A",
                  "text": "Bring friends to join courses."
                },
                {
                  "key": "B",
                  "text": "Have never made a pot before."
                },
                {
                  "key": "C",
                  "text": "Try to learn techniques too quickly."
                }
              ],
              "answer": "B",
              "explanation": "Like nearly everyone who comes here, I’m sure this is the first time you will have tried the art"
            },
            {
              "number": 16,
              "prompt": "Heather reminds her visitors that they should",
              "options": [
                {
                  "key": "A",
                  "text": "Put on their aprons."
                },
                {
                  "key": "B",
                  "text": "Change their clothes."
                },
                {
                  "key": "C",
                  "text": "Take off their jewellery."
                }
              ],
              "answer": "C",
              "explanation": "Can I just say a word about what you’re wearing? As we said in our email please remove any watches necklaces etc and put them somewhere safe"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. Which TWO things does Heather explain about kilns?",
          "options": [
            {
              "key": "A",
              "text": "What their function is"
            },
            {
              "key": "B",
              "text": "When they were invented"
            },
            {
              "key": "C",
              "text": "Ways of keeping them safe"
            },
            {
              "key": "D",
              "text": "Where to put one in your home"
            },
            {
              "key": "E",
              "text": "What some people use instead of one"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Which TWO things does Heather explain about kilns?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "To make pottery that will last, you need a potter’s wheel, a kiln, which is basically a very hot oven where you fire the pottery Some people fire pottery in a fire pit outside but bear in mind"
            },
            {
              "number": 18,
              "prompt": "Which TWO things does Heather explain about kilns?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "To make pottery that will last, you need a potter’s wheel, a kiln, which is basically a very hot oven where you fire the pottery Some people fire pottery in a fire pit outside but bear in mind"
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which points does Heather make about a potter’s tools?",
          "options": [
            {
              "key": "A",
              "text": "Some are hard to hold."
            },
            {
              "key": "B",
              "text": "Some are worth buying."
            },
            {
              "key": "C",
              "text": "Some are essential items."
            },
            {
              "key": "D",
              "text": "Some have memorable names."
            },
            {
              "key": "E",
              "text": "Some are available for use by participants."
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which points does Heather make about a potter’s tools?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "However, there are some basic tools that you will need to handle the clay on the wheel We can provide these and I wouldn’t recommend spending money on them yet"
            },
            {
              "number": 20,
              "prompt": "Which points does Heather make about a potter’s tools?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "However, there are some basic tools that you will need to handle the clay on the wheel We can provide these and I wouldn’t recommend spending money on them yet"
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
          "type": "choose_two",
          "paired": true,
          "label": "Questions 21–22",
          "instructions": "Choose TWO letters, A–E. Which TWO things do the students both believe are responsible for the increase in loneliness?",
          "options": [
            {
              "key": "A",
              "text": "Social media"
            },
            {
              "key": "B",
              "text": "Smaller nuclear families"
            },
            {
              "key": "C",
              "text": "Urban design"
            },
            {
              "key": "D",
              "text": "Longer lifespans"
            },
            {
              "key": "E",
              "text": "A mobile workforce"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO things do the students both believe are responsible for the increase in loneliness?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "I’d say loneliness has a lot to do with the way cities are designed. A more plausible explanation is that people are having to move around for work and often end up living miles away from their family and friends"
            },
            {
              "number": 22,
              "prompt": "Which TWO things do the students both believe are responsible for the increase in loneliness?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "I’d say loneliness has a lot to do with the way cities are designed. A more plausible explanation is that people are having to move around for work and often end up living miles away from their family and friends"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO health risks associated with loneliness do the students agree are based on solid evidence?",
          "options": [
            {
              "key": "A",
              "text": "A weakened immune system"
            },
            {
              "key": "B",
              "text": "Dementia"
            },
            {
              "key": "C",
              "text": "Cancer"
            },
            {
              "key": "D",
              "text": "Obesity"
            },
            {
              "key": "E",
              "text": "Cardiovascular disease"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO health risks associated with loneliness do the students agree are based on solid evidence?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "But there’s no doubt that loneliness contributes to a weakened immune system. Well, what about that one in Finland, which showed that loneliness increased the risk of cancer by about 10%? And those findings have been supported by other studies too"
            },
            {
              "number": 24,
              "prompt": "Which TWO health risks associated with loneliness do the students agree are based on solid evidence?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "But there’s no doubt that loneliness contributes to a weakened immune system. Well, what about that one in Finland, which showed that loneliness increased the risk of cancer by about 10%? And those findings have been supported by other studies too"
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO opinions do both the students express about the evolutionary theory of loneliness?",
          "options": [
            {
              "key": "A",
              "text": "It has little practical relevance."
            },
            {
              "key": "B",
              "text": "It needs further investigation."
            },
            {
              "key": "C",
              "text": "It is misleading."
            },
            {
              "key": "D",
              "text": "It should be more widely accepted."
            },
            {
              "key": "E",
              "text": "It is difficult to understand."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO opinions do both the students express about the evolutionary theory of loneliness?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "There are a few studies which support the theory, but not conclusively enough. More evidence is needed. And anyway, this theory’s not really useful when it comes to solving the problem of loneliness today."
            },
            {
              "number": 26,
              "prompt": "Which TWO opinions do both the students express about the evolutionary theory of loneliness?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "There are a few studies which support the theory, but not conclusively enough. More evidence is needed. And anyway, this theory’s not really useful when it comes to solving the problem of loneliness today."
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
              "prompt": "When comparing loneliness to depression, the students",
              "options": [
                {
                  "key": "A",
                  "text": "Doubt that there will ever be a medical cure for loneliness."
                },
                {
                  "key": "B",
                  "text": "Claim that the link between loneliness and mental health is overstated."
                },
                {
                  "key": "C",
                  "text": "Express frustration that loneliness is not taken more seriously."
                }
              ],
              "answer": "A",
              "explanation": "There’s no available diagnosis or effective treatment and that’s not likely to change"
            },
            {
              "number": 28,
              "prompt": "Why do the students decide to start their presentation with an example from their own experience?",
              "options": [
                {
                  "key": "A",
                  "text": "To explain how difficult loneliness can be"
                },
                {
                  "key": "B",
                  "text": "To highlight a situation that most students will recognise"
                },
                {
                  "key": "C",
                  "text": "To emphasise that feeling lonely is more common for men than women"
                }
              ],
              "answer": "B",
              "explanation": "Good idea. Everyone will be able to relate to that although a lot of students were probably too embarrassed to admit to it."
            },
            {
              "number": 29,
              "prompt": "The students agree that talking to strangers is a good strategy for dealing with loneliness because",
              "options": [
                {
                  "key": "A",
                  "text": "It creates a sense of belonging."
                },
                {
                  "key": "B",
                  "text": "It builds self-confidence."
                },
                {
                  "key": "C",
                  "text": "It makes people feel more positive."
                }
              ],
              "answer": "A",
              "explanation": "but it must make people feel more connected with their community."
            },
            {
              "number": 30,
              "prompt": "The students find it difficult to understand why solitude is considered to be",
              "options": [
                {
                  "key": "A",
                  "text": "Similar to loneliness."
                },
                {
                  "key": "B",
                  "text": "Necessary for mental health."
                },
                {
                  "key": "C",
                  "text": "An enjoyable experience."
                }
              ],
              "answer": "C",
              "explanation": "It’s strange the way some people can’t stand being by themselves while others love it"
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
              "kind": "subheader",
              "text": "Historical Background"
            },
            {
              "kind": "static",
              "text": "Nearly all major cities were built on a river."
            },
            {
              "kind": "static",
              "text": "Rivers were traditionally used for transport, fishing, and recreation."
            },
            {
              "kind": "static",
              "text": "Industrial development and rising populations later led to:"
            },
            {
              "kind": "static",
              "text": "-More sewage from houses being discharged into the river."
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
              "kind": "subheader",
              "text": "Recent Improvements"
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
              "text": "In Los Angeles, there are plans to:"
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
              "kind": "subheader",
              "text": "Transport Possibilities"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "Changes in shopping habits mean the number of deliveries that are made is increasing."
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
              "prompt": "-Pollution from _______ on the river bank.",
              "answer": [
                "Factories"
              ],
              "wordLimit": 1,
              "explanation": "However, as cities grew to over a million inhabitants, the impact on the rivers became more serious. In addition, other types of pollution increased, as factories were built beside the river and discharged their waste materials into the water"
            },
            {
              "number": 32,
              "prompt": "In 1957, the River Thames in London was declared biologically _______",
              "answer": [
                "Dead"
              ],
              "wordLimit": 1,
              "explanation": "As recently as 1957, scientists at London’s Natural History Museum declared that the River Thames was dead in biological terms, as the water was too filthy to support any kind of life"
            },
            {
              "number": 33,
              "prompt": "Seals and even a _______ have been seen in the River Thames.",
              "answer": [
                "Whale"
              ],
              "wordLimit": 1,
              "explanation": "These days you can see seals swimming in the water, and recently people had to try to rescue a whale, which had got lost and swum up the river from the sea by mistake"
            },
            {
              "number": 34,
              "prompt": "Riverside warehouses are converted to restaurants and _______",
              "answer": [
                "Apartments"
              ],
              "wordLimit": 1,
              "explanation": "Warehouses that were once used for storing goods are now being converted into expensive restaurants and also into apartments with river views"
            },
            {
              "number": 35,
              "prompt": "Build a riverside _______",
              "answer": [
                "Park"
              ],
              "wordLimit": 1,
              "explanation": "an architect has plans to revitalise the banks of the river and to make a park there which can provide facilities for sports as well as a natural environment for relaxing in"
            },
            {
              "number": 36,
              "prompt": "Display _______ projects.",
              "answer": [
                "Art"
              ],
              "wordLimit": 1,
              "explanation": "It’s been proposed that facilities could be provided for displaying projects related to various kinds of art that have been produced by local people, for example"
            },
            {
              "number": 37,
              "prompt": "In Paris, _______ are created on the sides of the river every summer.",
              "answer": [
                "Beaches"
              ],
              "wordLimit": 1,
              "explanation": "In the city of Paris, During the summer months of July and August, all the traffic is banned from the roads by the sides of the river, and the banks are transformed into beaches"
            },
            {
              "number": 38,
              "prompt": "Over 2 billion passengers already travel by _______ in cities around the world.",
              "answer": [
                "Ferry"
              ],
              "wordLimit": 1,
              "explanation": "Already, more than two billion passengers use the ferry to travel in cities around the world, like Istanbul, San Francisco and New York, and these numbers are set to rise further"
            },
            {
              "number": 39,
              "prompt": "Instead of road transport, goods can be transported by large freight barges and electric _______",
              "answer": [
                "Bikes"
              ],
              "wordLimit": 1,
              "explanation": "When the barge docks at the riverside the parcels could be taken the last few kilometres to their final destination on cargo bikes, electric ones of course"
            },
            {
              "number": 40,
              "prompt": ", or, in future, by _______",
              "answer": [
                "Drone"
              ],
              "wordLimit": 1,
              "explanation": "this is already happening in the Dutch city of Amsterdam, and in future the final stage could even be carried out by drone, although at present this isn’t allowed"
            }
          ],
          "formTitle": "Reclaiming Urban Rivers",
          "id": "g31"
        }
      ]
    }
  ]
}
$c20t1l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 20',
  'Test 2',
  'academic',
  2004,
  $c20t2l$
{
  "audioPath": "Cambridge 20 Test 2.mp3",
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
              "text": "This can give the carer:"
            },
            {
              "kind": "subheader",
              "text": "- time for other responsibilities"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Assessment of mother’s needs"
            },
            {
              "kind": "static",
              "text": "This may include discussion of:"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "What types of tasks are involved, e.g.:"
            },
            {
              "kind": "subheader",
              "text": "- help with dressing"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "subheader",
              "text": "- shopping"
            },
            {
              "kind": "subheader",
              "text": "- helping with meals"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "Any aspects of caring that are especially difficult, e.g.:"
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
              "kind": "static",
              "text": "Types of support that may be offered to carers"
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
              "text": "- help with housework"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "- a _______",
              "answer": [
                "Break"
              ],
              "wordLimit": 1,
              "explanation": "They realise that carers sometimes need time for all the other responsibilities they have, apart from the person they’re caring for, and also that they sometimes need a break"
            },
            {
              "number": 2,
              "prompt": "- how much _______ the caring involves",
              "answer": [
                "Time"
              ],
              "wordLimit": 1,
              "explanation": "they’d want to know the amount of time you spend looking after your mother every day."
            },
            {
              "number": 3,
              "prompt": "- helping her have a _______",
              "answer": [
                "Shower"
              ],
              "wordLimit": 1,
              "explanation": "I help her get into the shower in the morning"
            },
            {
              "number": 4,
              "prompt": "- dealing with _______",
              "answer": [
                "Money"
              ],
              "wordLimit": 1,
              "explanation": "They’ll probably ask you if you do the shopping for her and help her at mealtimes, and whether she can cope using money."
            },
            {
              "number": 5,
              "prompt": "- loss of _______",
              "answer": [
                "Memory"
              ],
              "wordLimit": 1,
              "explanation": "So, recently I’ve noticed she’s started to have quite bad problems with her memory. If I wasn’t there, I think she’d forget to eat, for example. And often she doesn’t seem quite sure what day it is"
            },
            {
              "number": 6,
              "prompt": "- _______ her",
              "answer": [
                "Lifting"
              ],
              "wordLimit": 1,
              "explanation": "And are there any physical difficulties you have caring for her? Lifting her, for example"
            },
            {
              "number": 7,
              "prompt": "- preventing a _______",
              "answer": [
                "Fall"
              ],
              "wordLimit": 1,
              "explanation": "They can give you advice about that and also about how to avoid the possibility of your mum having a fall"
            },
            {
              "number": 8,
              "prompt": "- transport costs, e.g. cost of a _______",
              "answer": [
                "Taxi"
              ],
              "wordLimit": 1,
              "explanation": "they might help you with transport costs, like if you have to get a taxi to take your mother for an appointment, for example"
            },
            {
              "number": 9,
              "prompt": "- car-related costs, e.g. fuel and _______",
              "answer": [
                "Insurance"
              ],
              "wordLimit": 1,
              "explanation": "And you can claim for the insurance too"
            },
            {
              "number": 10,
              "prompt": "- help to reduce _______",
              "answer": [
                "Stress"
              ],
              "wordLimit": 1,
              "explanation": "it seems to me you under quite a bit of stress"
            }
          ],
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
          "instructions": "What is the role of the volunteers in each of the following activities? Choose the correct letter, A–I, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "providing entertainment"
            },
            {
              "key": "B",
              "text": "providing publicity about a council service"
            },
            {
              "key": "C",
              "text": "contacting local businesses"
            },
            {
              "key": "D",
              "text": "giving advice to visitors"
            },
            {
              "key": "E",
              "text": "collecting feedback on events"
            },
            {
              "key": "F",
              "text": "selling tickets"
            },
            {
              "key": "G",
              "text": "introducing guest speakers at an event"
            },
            {
              "key": "H",
              "text": "encouraging cooperation between local organisations"
            },
            {
              "key": "I",
              "text": "helping people find their seats"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "walking around the town centre",
              "answer": "D",
              "explanation": "One is to walk around the town centre streets wearing our volunteer T-shirt. Tourists often ask how to get to a particular shop, and they might also be grateful for recommendations about what to visit"
            },
            {
              "number": 12,
              "prompt": "helping at concerts",
              "answer": "I",
              "explanation": "part of the volunteers’ role is to get everyone in the audience to the right place as smoothly as possible"
            },
            {
              "number": 13,
              "prompt": "getting involved with community groups",
              "answer": "H",
              "explanation": "Volunteers may get involved with community groups, such as sports clubs or gardeners’ associations. Here, the volunteers talk about how groups can help each other."
            },
            {
              "number": 14,
              "prompt": "helping with a magazine",
              "answer": "E",
              "explanation": "We depend on volunteers though to find out what people think of events they’ve attended and any suggestions they have for the future. The volunteers then send a summary to the editors"
            },
            {
              "number": 15,
              "prompt": "participating at lunches for retired people",
              "answer": "A",
              "explanation": "some volunteers put on a show. Usually around half an hour of songs and short plays, the club members really welcome the chance to chat to the volunteers at these events"
            },
            {
              "number": 16,
              "prompt": "helping with the website",
              "answer": "B",
              "explanation": "The town council has a website, of course, and volunteers are asked to help by making sure residents know about it"
            }
          ],
          "id": "g11"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 17–20",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 17,
              "prompt": "Which event requires the largest number of volunteers?",
              "options": [
                {
                  "key": "A",
                  "text": "the music festival"
                },
                {
                  "key": "B",
                  "text": "the science festival"
                },
                {
                  "key": "C",
                  "text": "the book festival"
                }
              ],
              "answer": "B",
              "explanation": "More are needed for the music festival because that lasts a whole week, and even more help is required for the science festival, even though it’s only two days long"
            },
            {
              "number": 18,
              "prompt": "What is the most important requirement for volunteers at the festivals?",
              "options": [
                {
                  "key": "A",
                  "text": "interpersonal skills"
                },
                {
                  "key": "B",
                  "text": "personal interest in the event"
                },
                {
                  "key": "C",
                  "text": "flexibility"
                }
              ],
              "answer": "A",
              "explanation": "What essential though is being able to get on well with other people and also to deal with someone who’s behaving badly, as occasionally happens"
            },
            {
              "number": 19,
              "prompt": "New volunteers will start working in the week beginning",
              "options": [
                {
                  "key": "A",
                  "text": "2 September"
                },
                {
                  "key": "B",
                  "text": "9 September"
                },
                {
                  "key": "C",
                  "text": "23 September"
                }
              ],
              "answer": "B",
              "explanation": "Our plan is to get you all working in September, after a week’s training starting on the 2nd, so we’ll be timetabling you for duties the following week from the 9th onward"
            },
            {
              "number": 20,
              "prompt": "What is the next annual event for volunteers?",
              "options": [
                {
                  "key": "A",
                  "text": "a boat trip"
                },
                {
                  "key": "B",
                  "text": "a barbecue"
                },
                {
                  "key": "C",
                  "text": "a party"
                }
              ],
              "answer": "A",
              "explanation": "Our forthcoming event is a trip along the canal from here to Dewhurst and back. It’s on Saturday, September the 28th"
            }
          ],
          "id": "g17"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "matching",
          "label": "Questions 21–25",
          "instructions": "What is Rosie and Colin’s opinion about each of the following aspects of human geography? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "The information given about this was too vague."
            },
            {
              "key": "B",
              "text": "This may not be relevant to their course."
            },
            {
              "key": "C",
              "text": "This will involve only a small number of statistics."
            },
            {
              "key": "D",
              "text": "It will be easy to find facts about this."
            },
            {
              "key": "E",
              "text": "The facts about this may not be reliable."
            },
            {
              "key": "F",
              "text": "No useful research has been done on this."
            },
            {
              "key": "G",
              "text": "The information provided about this was interesting."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Population",
              "answer": "D",
              "explanation": "Yeah, but quite straightforward to find on the internet"
            },
            {
              "number": 22,
              "prompt": "Health",
              "answer": "G",
              "explanation": "Yes, fascinating, wasn’t it"
            },
            {
              "number": 23,
              "prompt": "Economies",
              "answer": "B",
              "explanation": "I thought that had been taken off the syllabus for this year"
            },
            {
              "number": 24,
              "prompt": "Culture",
              "answer": "A",
              "explanation": "I didn’t get much out of that. It was all so general and the lecturer didn’t give any useful examples"
            },
            {
              "number": 25,
              "prompt": "Poverty",
              "answer": "E",
              "explanation": "The trouble is, Dr Lee was saying, that you have to be careful with some of the figures relating to poverty. They’re sometimes deliberately manipulated"
            }
          ],
          "id": "g21"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 26–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 26,
              "prompt": "Rosie says that in her own city the main problem is",
              "options": [
                {
                  "key": "A",
                  "text": "Crime"
                },
                {
                  "key": "B",
                  "text": "Housing"
                },
                {
                  "key": "C",
                  "text": "Unemployment"
                }
              ],
              "answer": "C",
              "explanation": "Yes, but where I come from, that’s linked to another more serious issue, which is that a lot of people don’t have jobs."
            },
            {
              "number": 27,
              "prompt": "What recent additions to the outskirts of their cities are both students happy about?",
              "options": [
                {
                  "key": "A",
                  "text": "Conference centres"
                },
                {
                  "key": "B",
                  "text": "Sports centres"
                },
                {
                  "key": "C",
                  "text": "Retail centres"
                }
              ],
              "answer": "A",
              "explanation": "But the outskirts are ideal for buildings that need a lot of space, like for conferences. They’ve opened a couple of big ones."
            },
            {
              "number": 28,
              "prompt": "The students agree that developing disused industrial sites may",
              "options": [
                {
                  "key": "A",
                  "text": "Have unexpected costs"
                },
                {
                  "key": "B",
                  "text": "Damage the urban environment"
                },
                {
                  "key": "C",
                  "text": "Destroy valuable historical buildings"
                }
              ],
              "answer": "A",
              "explanation": "Hmm, that can’t be cheap. And I bet it’s often not budgeted for"
            },
            {
              "number": 29,
              "prompt": "The students will mention Masdar City as an example of an attempt to achieve",
              "options": [
                {
                  "key": "A",
                  "text": "Daily collections for waste recycling"
                },
                {
                  "key": "B",
                  "text": "Sustainable energy use"
                },
                {
                  "key": "C",
                  "text": "Free transport for everyone"
                }
              ],
              "answer": "B",
              "explanation": "It was designed to be a green city, wasn’t it? That might be a good example of a city which set out to depend entirely on renewable energy"
            },
            {
              "number": 30,
              "prompt": "When discussing the ecotown of Greenhill Abbots, Colin is uncertain about",
              "options": [
                {
                  "key": "A",
                  "text": "What its objectives were"
                },
                {
                  "key": "B",
                  "text": "Why there was opposition to it"
                },
                {
                  "key": "C",
                  "text": "How much of it has actually been built"
                }
              ],
              "answer": "C",
              "explanation": "I’m not sure how far they’ve got with it"
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
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "The UK food industry is constantly developing products which are newor different."
            },
            {
              "kind": "static",
              "text": "Influencers on social media become ‘ambassadors’ for a brand."
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "Supermarkets track demand for ingredients on social media."
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "subheader",
              "text": "Marketing campaigns"
            },
            {
              "kind": "static",
              "text": "The avocado:"
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
              "text": "Oat milk:"
            },
            {
              "kind": "static",
              "text": "- A Swedish brand’s media campaign received publicity by upsetting competitors."
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
              "text": "Norwegian skrei:"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "subheader",
              "text": "- Ethical concerns"
            },
            {
              "kind": "static",
              "text": "Quinoa:"
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
              "prompt": "The growth in interest in food fashions started with _______ of food being shared on social media.",
              "answer": [
                "Photos"
              ],
              "wordLimit": 1,
              "explanation": "/ Photographs / Pictures Interest in food fashions has risen rapidly since the birth of the smartphone when people first began taking photos of their food and instantly sharing them with their friends"
            },
            {
              "number": 32,
              "prompt": "Sales of _______ food brands have grown rapidly this way.",
              "answer": [
                "Vegan"
              ],
              "wordLimit": 1,
              "explanation": "Companies which sell vegan produce were pioneers in being able to increase sales really quickly in this way"
            },
            {
              "number": 33,
              "prompt": "Famous _______ are influential.",
              "answer": [
                "Chefs"
              ],
              "wordLimit": 1,
              "explanation": "/ Cooks particularly interested in what well-known chefs are putting on their menus"
            },
            {
              "number": 34,
              "prompt": "- _______ were invited to visit growers in South Africa.",
              "answer": [
                "Journalists"
              ],
              "wordLimit": 1,
              "explanation": "/ Reporters They paid for a group of journalists to travel out to South Africa to meet avocado farmers"
            },
            {
              "number": 35,
              "prompt": "- Advertising focused on its _______ benefits.",
              "answer": [
                "Health"
              ],
              "wordLimit": 1,
              "explanation": "Advertisements were designed to promote the avocado as a superfood, rich in nutrients and therefore beneficial for health"
            },
            {
              "number": 36,
              "prompt": "- Promotion in the USA through _______ shops reduced the need for advertising.",
              "answer": [
                "Coffee"
              ],
              "wordLimit": 1,
              "explanation": "In the USA, the brand decided against a big retail launch in favour of getting the product into coffee chains, which removed the need for a big advertising budget"
            },
            {
              "number": 37,
              "prompt": "- It appealed to consumers who are concerned about the _______",
              "answer": [
                "Environment"
              ],
              "wordLimit": 1,
              "explanation": "Oat milk had an advantage over other alternative milk products, such as almond milk. Many consumers prefer it because it has less of an impact on the environment"
            },
            {
              "number": 38,
              "prompt": "- has helped strengthen the _______ of Norwegian seafood.",
              "answer": [
                "Reputation"
              ],
              "wordLimit": 1,
              "explanation": "The demand for Skre has been used by a food marketing agency to build the reputation of Norway’s fisheries in general"
            },
            {
              "number": 39,
              "prompt": "- Its success led to an increase in its _______ .",
              "answer": [
                "Price"
              ],
              "wordLimit": 1,
              "explanation": "/ Cost when demand peaked some years ago, the price soared, making it unaffordable for local people"
            },
            {
              "number": 40,
              "prompt": "- Overuse of resources resulted in poor quality _______ .",
              "answer": [
                "Soil"
              ],
              "wordLimit": 1,
              "explanation": "One issue has been that the fertility of the soil decreased dramatically"
            }
          ],
          "formTitle": "Developing Food Trends",
          "id": "g31"
        }
      ]
    }
  ]
}
$c20t2l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 20',
  'Test 3',
  'academic',
  2004,
  $c20t3l$
{
  "audioPath": "Cambridge 20 Test 3.mp3",
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
              "text": "Name of company Information about costs Additional notes"
            },
            {
              "kind": "subheader",
              "text": "Peak Rentals"
            },
            {
              "kind": "subheader",
              "text": "Prices range from $105 to $"
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
              "text": "Delivers in 1-2 days"
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
              "text": "Oliver"
            },
            {
              "kind": "subheader",
              "text": "Mid-range prices"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "Also offers a cleaning service"
            },
            {
              "kind": "subheader",
              "text": "Larch Furniture"
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
              "text": "Rentals"
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
              "prompt": "_______ per room per month.",
              "answer": [
                "239"
              ],
              "wordLimit": 1,
              "explanation": "It says the monthly price per room starts at $105 and goes up to $239"
            },
            {
              "number": 2,
              "prompt": "The furniture is very _______",
              "answer": [
                "modern"
              ],
              "wordLimit": 1,
              "explanation": "People have mentioned that the furniture from Peak Rentals is more modern than any of the other companies"
            },
            {
              "number": 3,
              "prompt": "Special offer: free _______ with every living room set",
              "answer": [
                "lamp"
              ],
              "wordLimit": 1,
              "explanation": "Oh, and the brochure says that there’s a special offer at the moment. If you rent living room furniture, I believe that’s a set of chairs and a TV table, you’ll also get a lamp at no extra cost"
            },
            {
              "number": 4,
              "prompt": "_______ and",
              "answer": [
                "Aaron"
              ],
              "wordLimit": 1,
              "explanation": "Then you could try Aaron and Oliver"
            },
            {
              "number": 5,
              "prompt": "12% monthly free for _______",
              "answer": [
                "damage"
              ],
              "wordLimit": 1,
              "explanation": "But if you chose them you need to be aware that they charge an extra 12% every month in case of damage"
            },
            {
              "number": 6,
              "prompt": "Offers cheapest prices for renting furniture and _______ items",
              "answer": [
                "electronic"
              ],
              "wordLimit": 1,
              "explanation": "There’s another company called Larch Furniture. It’s quite new, and it has the lowest prices in town. That’s for both furniture and also electronic equipment"
            },
            {
              "number": 7,
              "prompt": "Must have own _______",
              "answer": [
                "insurance"
              ],
              "wordLimit": 1,
              "explanation": "First of all you have to take out insurance on the furniture and you need to organize that yourself"
            },
            {
              "number": 8,
              "prompt": "Minimum contract length: six months _______",
              "answer": [
                "space"
              ],
              "wordLimit": 1,
              "explanation": "I just thought of another furniture rental company. It’s called Space Rentals, and it’s located very near to the house"
            },
            {
              "number": 9,
              "prompt": "See the _______ for the most up-to-date prices",
              "answer": [
                "app"
              ],
              "wordLimit": 1,
              "explanation": "I don’t have any information about their charges, so it’s best to use their app to find out what it would cost you to use them"
            },
            {
              "number": 10,
              "prompt": "_______ are allowed within 7 days of delivery",
              "answer": [
                "exchanges"
              ],
              "wordLimit": 1,
              "explanation": "One good thing about that company is that if you don’t like the furniture once it’s delivered, you can request exchanges, as long as you do that within a week of receiving it"
            }
          ],
          "formTitle": "Furniture Rental Companies",
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
              "prompt": "Who was responsible for starting the community project?",
              "options": [
                {
                  "key": "A",
                  "text": "The castle owners"
                },
                {
                  "key": "B",
                  "text": "A national charity"
                },
                {
                  "key": "C",
                  "text": "The local council"
                }
              ],
              "answer": "B",
              "explanation": "but I was asked to join the project by NHA, a charity which sets up projects like this up and down the country"
            },
            {
              "number": 12,
              "prompt": "How was the gold coin found?",
              "options": [
                {
                  "key": "A",
                  "text": "Heavy rain had removed some of the soil"
                },
                {
                  "key": "B",
                  "text": "The ground was dug up by wild rabbits"
                },
                {
                  "key": "C",
                  "text": "A person with a metal detector searched the area"
                }
              ],
              "answer": "A",
              "explanation": "a walker found it on the ground after a rainstorm washed away some of the earth and sand"
            },
            {
              "number": 13,
              "prompt": "What led the archaeologists to believe there was an ancient village on this site?",
              "options": [
                {
                  "key": "A",
                  "text": "The lucky discovery of old records"
                },
                {
                  "key": "B",
                  "text": "The bases of several structures visible in the grass"
                },
                {
                  "key": "C",
                  "text": "The unusual stones found near the castle"
                }
              ],
              "answer": "A",
              "explanation": "Just by chance, the team found some old maps and documents in our library, which showed 500-year-old drawings of ruined buildings on the grassy area between the outer stone walls of the castle and the river"
            },
            {
              "number": 14,
              "prompt": "What are the team still hoping to find?",
              "options": [
                {
                  "key": "A",
                  "text": "Everyday pottery"
                },
                {
                  "key": "B",
                  "text": "Animal bones"
                },
                {
                  "key": "C",
                  "text": "Pieces of jewellery"
                }
              ],
              "answer": "C",
              "explanation": "Normally you’d expect to find brooches and other jewellery, but we’re still waiting to uncover any such items"
            },
            {
              "number": 15,
              "prompt": "What was found on the other side of the river to the castle?",
              "options": [
                {
                  "key": "A",
                  "text": "The remains of a large palace"
                },
                {
                  "key": "B",
                  "text": "The outline of fields"
                },
                {
                  "key": "C",
                  "text": "A number of small huts"
                }
              ],
              "answer": "B",
              "explanation": "we’ve also found evidence of human activity on the other side of the river. No other houses or huts so far, but we can see the borders of an ancient field system"
            },
            {
              "number": 16,
              "prompt": "What do the team plan to do after work ends this summer?",
              "options": [
                {
                  "key": "A",
                  "text": "Prepare a display for a museum"
                },
                {
                  "key": "B",
                  "text": "Take part in a television programme"
                },
                {
                  "key": "C",
                  "text": "Start to organise school visits"
                }
              ],
              "answer": "C",
              "explanation": "In the meantime, we’re putting on a series of guided tours for school groups this autumn"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "Label the map below. Write the correct letter, A–G, next to Questions 17–20.",
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
              "prompt": "bridge foundations",
              "answer": "B",
              "explanation": "To reach the bridge, take the main path ahead of you, go straight on, and keep going till the path bends to the left. You’ll see a smaller track leading off to the right."
            },
            {
              "number": 18,
              "prompt": "rubbish pit",
              "answer": "A",
              "explanation": "You might be interested to see the rubbish pit. This is very near the castle walls in the north-west corner of the site"
            },
            {
              "number": 19,
              "prompt": "meeting hall",
              "answer": "G",
              "explanation": "It is the largest structure in the central area of the site next to the current excavation area"
            },
            {
              "number": 20,
              "prompt": "fish pond",
              "answer": "E",
              "explanation": "To get there from here, you turn right at the first information board you come to and follow the path into the trees. Before you come out of the trees, you’ll see it on your right"
            }
          ],
          "mapImage": "Cambridge 20 Test 3 map.png",
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
              "prompt": "Finn was pleased to discover that their topic",
              "options": [
                {
                  "key": "A",
                  "text": "was not familiar to their module leader."
                },
                {
                  "key": "B",
                  "text": "had not been chosen by other students."
                },
                {
                  "key": "C",
                  "text": "did not prove to be difficult to research."
                }
              ],
              "answer": "B",
              "explanation": "No one else on the course is doing the same as us"
            },
            {
              "number": 22,
              "prompt": "Maya says a mistaken belief about theatre programmes is that",
              "options": [
                {
                  "key": "A",
                  "text": "theatres pay companies to produce them."
                },
                {
                  "key": "B",
                  "text": "few theatre-goers buy them nowadays."
                },
                {
                  "key": "C",
                  "text": "they contain far more adverts than previously."
                }
              ],
              "answer": "A",
              "explanation": "Contrary to what many people think, theatres don’t hire people to do the programmes. In fact, companies buy the rights to publish programmes on the theatre’s behalf"
            },
            {
              "number": 23,
              "prompt": "Finn was surprised that, in early British theatre, programmes",
              "options": [
                {
                  "key": "A",
                  "text": "were difficult for audiences to obtain."
                },
                {
                  "key": "B",
                  "text": "were given out free of charge."
                },
                {
                  "key": "C",
                  "text": "were seen as a kind of contract."
                }
              ],
              "answer": "C",
              "explanation": "if the programme named a famous actor, that’s who the public expected to perform. And if that didn’t happen, people accused the theatre of breaking their agreement with the audience"
            },
            {
              "number": 24,
              "prompt": "Maya feels their project should include an explanation of why companies of actors",
              "options": [
                {
                  "key": "A",
                  "text": "promoted their own plays."
                },
                {
                  "key": "B",
                  "text": "performed plays outdoors."
                },
                {
                  "key": "C",
                  "text": "had to tour with their plays."
                }
              ],
              "answer": "A",
              "explanation": "I also think it’s important to mention that lots of ordinary people at that time were illiterate, so theatre programmes were of limited value in advertising plays. When a company of actors arrived in a town, they’d parade around the streets in their costumes, beating drums and announcing their upcoming performances."
            },
            {
              "number": 25,
              "prompt": "Finn and Maya both think that, compared to nineteenth-century programmes, those from the eighteenth century",
              "options": [
                {
                  "key": "A",
                  "text": "were more original."
                },
                {
                  "key": "B",
                  "text": "were more colourful."
                },
                {
                  "key": "C",
                  "text": "were more informative."
                }
              ],
              "answer": "C",
              "explanation": "But personally I think 18th century programmes were superior because they told the theatregoers so many things, including about the actors"
            },
            {
              "number": 26,
              "prompt": "Maya doesn’t fully understand why, in the twentieth century,",
              "options": [
                {
                  "key": "A",
                  "text": "very few theatre programmes were printed in the USA."
                },
                {
                  "key": "B",
                  "text": "British theatre programmes failed to develop for so long."
                },
                {
                  "key": "C",
                  "text": "theatre programmes in Britain copied fashions from the USA"
                }
              ],
              "answer": "B",
              "explanation": "What I don’t really get is that after the war they didn’t go back to being more than one sheet or change in any way for over 25 years"
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "What comment is made about the programme for each of the following shows? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Its origin is somewhat controversial"
            },
            {
              "key": "B",
              "text": "It is historically significant for a country"
            },
            {
              "key": "C",
              "text": "It was effective at attracting audiences"
            },
            {
              "key": "D",
              "text": "It is included in a recent project"
            },
            {
              "key": "E",
              "text": "It contains insights into the show"
            },
            {
              "key": "F",
              "text": "It resembles an artwork"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Ruy Blas",
              "answer": "F",
              "explanation": "But the programme looks very decorative"
            },
            {
              "number": 28,
              "prompt": "Man of La Mancha",
              "answer": "E",
              "explanation": "I thought this was a good programme to show, not because of the pictures, but because it contains articles written by members of the theatre company, so we can learn how the production was created and the thoughts and feelings of the cast"
            },
            {
              "number": 29,
              "prompt": "The Tragedy of Jane Shore",
              "answer": "B",
              "explanation": "I’ve got a copy of a programme that’s now in a museum. It’s for The Tragedy of Jane Shore and it’s said to be the earliest surviving document to have been printed on Australia’s first printing press"
            },
            {
              "number": 30,
              "prompt": "The Sailors’ Festival",
              "answer": "D",
              "explanation": "Another programme to talk about is for The Sailors Festival. It comes from the British Library’s digitised collection of programmes that was started a few years ago"
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
              "kind": "subheader",
              "text": "Definition"
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
              "kind": "subheader",
              "text": "Examples of Inclusive Design"
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
              "text": "To assist the elderly:"
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
              "kind": "subheader",
              "text": "Impact of Non-Inclusive Designs"
            },
            {
              "kind": "static",
              "text": "Access:"
            },
            {
              "kind": "static",
              "text": "- Loss of independence for disabled people."
            },
            {
              "kind": "static",
              "text": "Safety:"
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
              "text": "Comfort in the Workplace:"
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "- Designing products that can be accessed by a diverse range of people without the need for any _______",
              "answer": [
                "adaptation"
              ],
              "wordLimit": 1,
              "explanation": "It means making sure products are accessible, so that as many different types of people as possible can use them, without any type of adaptation having to be made to the original design"
            },
            {
              "number": 32,
              "prompt": "- Not the same as universal design: that is design for everyone, including catering for people with _______ problems.",
              "answer": [
                "cognitive"
              ],
              "wordLimit": 1,
              "explanation": "Universal design aims to make products that work for everyone and that includes considering the needs of people who have cognitive difficulties, which can present quite a challenge"
            },
            {
              "number": 33,
              "prompt": "- _______ which are adjustable, avoiding back or neck problems",
              "answer": [
                "desks"
              ],
              "wordLimit": 1,
              "explanation": "In workplaces it is common to see desks which can be adjusted to suit people of different heights or for wheelchair users"
            },
            {
              "number": 34,
              "prompt": "- _______ in public toilets which are easier to use",
              "answer": [
                "taps"
              ],
              "wordLimit": 1,
              "explanation": "Taps that you activate by sensor require no pressing or twisting movements. These are not only more hygienic, they’re also easier for people with dexterity or mobility issues"
            },
            {
              "number": 35,
              "prompt": "- Designers avoid using _______ in interfaces",
              "answer": [
                "blue"
              ],
              "wordLimit": 1,
              "explanation": "we also become worse at distinguishing between similar colours, in particular shades of blue, which is why software designers rarely create interfaces with this colour"
            },
            {
              "number": 36,
              "prompt": "- People can make commands using a mouse, keyboard, or their _______",
              "answer": [
                "voice"
              ],
              "wordLimit": 1,
              "explanation": "So voice access is now a routine way of making commands"
            },
            {
              "number": 37,
              "prompt": "- Seatbelts are especially problematic for _______ women.",
              "answer": [
                "pregnant"
              ],
              "wordLimit": 1,
              "explanation": "This has safety implications for all women, particularly those who are pregnant, as the seatbelts worn by the dummy are not adapted to accommodate them"
            },
            {
              "number": 38,
              "prompt": "- PPE jackets are often unsuitable because of the size of women’s _______",
              "answer": [
                "shoulders"
              ],
              "wordLimit": 1,
              "explanation": "the problem with this is that women can be tall and still have much smaller shoulders than the average man"
            },
            {
              "number": 39,
              "prompt": "- PPE for female _______ officers dealing with emergencies is the worst.",
              "answer": [
                "police"
              ],
              "wordLimit": 1,
              "explanation": "The report found that 95% of women said that their PPE often hampered their work and that this problem was worst in the emergency services, particularly the police"
            },
            {
              "number": 40,
              "prompt": "- The _______ in offices is often too low for women.",
              "answer": [
                "temperature"
              ],
              "wordLimit": 1,
              "explanation": "There is a standard setting for air conditioning to be at a temperature of 21 degrees designed to suit men and in most modern offices it is not possible to turn the air conditioning up or down. This means that many offices which mainly employ women are wasting energy by having the air conditioning set too high"
            }
          ],
          "formTitle": "Inclusive Design",
          "id": "g31"
        }
      ]
    }
  ]
}
$c20t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 20',
  'Test 4',
  'academic',
  2004,
  $c20t4l$
{
  "audioPath": "Cambridge 20 Test 4.mp3",
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
              "text": "Accommodation"
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
              "text": "Recommended Trips"
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
              "text": "Science Museum"
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
              "text": "Food"
            },
            {
              "kind": "static",
              "text": "Clacton Market:"
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
              "text": "Theatre Tickets"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "subheader",
              "text": "Free Activities"
            },
            {
              "kind": "static",
              "text": "Blakewell Gardens:"
            },
            {
              "kind": "subheader",
              "text": "- Roots Music Festival"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______ Hotel on George Street",
              "answer": [
                "Kings"
              ],
              "wordLimit": 1,
              "explanation": "/ King's I always recommend people stay at the King’s Hotel"
            },
            {
              "number": 2,
              "prompt": "Cost of family room per night: £ _______ (approx.)",
              "answer": [
                "125"
              ],
              "wordLimit": 1,
              "explanation": "If you book a family room, it’s about £125 per night"
            },
            {
              "number": 3,
              "prompt": "A _______ tour of the city centre (starts in Carlton Square)",
              "answer": [
                "walking"
              ],
              "wordLimit": 1,
              "explanation": "I think it’s better to do a walking tour. It gives you a much better feel for the city"
            },
            {
              "number": 4,
              "prompt": "A trip by _______ to the old fort",
              "answer": [
                "boat"
              ],
              "wordLimit": 1,
              "explanation": "One thing you could do is visit the old fort. You could get there by boat"
            },
            {
              "number": 5,
              "prompt": "Best day to visit: _______",
              "answer": [
                "Tuesday"
              ],
              "wordLimit": 1,
              "explanation": "They’re here from Saturday for four nights so Tuesday would be best I think"
            },
            {
              "number": 6,
              "prompt": "See the exhibition about _______ which opens soon",
              "answer": [
                "space"
              ],
              "wordLimit": 1,
              "explanation": "There’s another one starting soon on space, which looks really good too"
            },
            {
              "number": 7,
              "prompt": "- Good for _______ food",
              "answer": [
                "vegetarian"
              ],
              "wordLimit": 1,
              "explanation": "Well, I really like all the food stalls at Clacton Market. My cousin’s vegetarian. I know it’s one of the best places for that kind of food"
            },
            {
              "number": 8,
              "prompt": "- Need to have lunch before _______ p.m.",
              "answer": [
                "2.30",
                "2"
              ],
              "wordLimit": 1,
              "explanation": ":30 You need to get there quite early, though. At the weekend, most of the stores stop serving lunch at 2.30"
            },
            {
              "number": 9,
              "prompt": "Save up to _______ % on ticket prices at bargaintickets.com",
              "answer": [
                "75"
              ],
              "wordLimit": 1,
              "explanation": "On some seats there a 75% discount"
            },
            {
              "number": 10,
              "prompt": "- Climb Telegraph Hill to see a view of the _______",
              "answer": [
                "port"
              ],
              "wordLimit": 1,
              "explanation": "You’ll be able to look right down on the port"
            }
          ],
          "formTitle": "Advice on Family Visit",
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
          "instructions": "Choose TWO letters, A–E. Which TWO things does the speaker say about visiting the football stadium with children?",
          "options": [
            {
              "key": "A",
              "text": "Children can get their photo taken with a football player"
            },
            {
              "key": "B",
              "text": "There is a competition for children today"
            },
            {
              "key": "C",
              "text": "Parents must stay with their children at all times"
            },
            {
              "key": "D",
              "text": "Children will need sunhats and drinks"
            },
            {
              "key": "E",
              "text": "The café has a special offer on meals for children"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO things does the speaker say about visiting the football stadium with children?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Please don’t let your children wander off on their own, even for a minute children are invited to do a football drawing. We pick the best one at the end of the afternoon"
            },
            {
              "number": 12,
              "prompt": "Which TWO things does the speaker say about visiting the football stadium with children?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Please don’t let your children wander off on their own, even for a minute children are invited to do a football drawing. We pick the best one at the end of the afternoon"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO features of the stadium tour are new this year?",
          "options": [
            {
              "key": "A",
              "text": "VIP tour"
            },
            {
              "key": "B",
              "text": "360 cinema experience"
            },
            {
              "key": "C",
              "text": "audio guide"
            },
            {
              "key": "D",
              "text": "dressing room tour"
            },
            {
              "key": "E",
              "text": "tours in other languages"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO features of the stadium tour are new this year?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "I should say, if you’d prefer your visit to be self-guided, please collect headphones from the reception, and then you can listen to the pre- recorded information at your own speed. We’ve only just introduced this feature and would appreciate your feedback. If you plan to return another time, you might like to book one of our VIP tours. We’ve only just started offering these and they can be booked online"
            },
            {
              "number": 14,
              "prompt": "Which TWO features of the stadium tour are new this year?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "I should say, if you’d prefer your visit to be self-guided, please collect headphones from the reception, and then you can listen to the pre- recorded information at your own speed. We’ve only just introduced this feature and would appreciate your feedback. If you plan to return another time, you might like to book one of our VIP tours. We’ve only just started offering these and they can be booked online"
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which event in the history of football in the UK took place in each of the following years? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "the introduction of pay for the players"
            },
            {
              "key": "B",
              "text": "a change to the design of the goal"
            },
            {
              "key": "C",
              "text": "the first use of lights for matches"
            },
            {
              "key": "D",
              "text": "the introduction of goalkeepers"
            },
            {
              "key": "E",
              "text": "the first international match"
            },
            {
              "key": "F",
              "text": "two changes to the rules of the game"
            },
            {
              "key": "G",
              "text": "the introduction of a fee for spectators"
            },
            {
              "key": "H",
              "text": "an agreement on the length of a game"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "1870",
              "answer": "D",
              "explanation": "1870 was also the year that football teams started to include a player whose role it was to guard the goal"
            },
            {
              "number": 16,
              "prompt": "1874",
              "answer": "F",
              "explanation": "In 1874, referees were allowed to send players off if they committed certain offences. And also in that year, teams started having to swap ends at half- time"
            },
            {
              "number": 17,
              "prompt": "1875",
              "answer": "B",
              "explanation": "In 1875, that tape was replaced with the solid crossbar that we’re familiar with today"
            },
            {
              "number": 18,
              "prompt": "1877",
              "answer": "H",
              "explanation": "in the same year all the clubs decided to set a limit of 90 minutes for each match"
            },
            {
              "number": 19,
              "prompt": "1878",
              "answer": "C",
              "explanation": "By 1878, the number of teams in the Football League increased again. In addition, referees started using whistles and electric lamps were installed on certain pitches"
            },
            {
              "number": 20,
              "prompt": "1880",
              "answer": "G",
              "explanation": "In 1880, clubs began to charge fans for admission to games"
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
          "instructions": "Choose TWO letters, A–E. Which TWO benefits for children of learning to write did both students find surprising?",
          "options": [
            {
              "key": "A",
              "text": "improved fine motor skills"
            },
            {
              "key": "B",
              "text": "improved memory"
            },
            {
              "key": "C",
              "text": "improved concentration"
            },
            {
              "key": "D",
              "text": "improved imagination"
            },
            {
              "key": "E",
              "text": "improved spatial awareness"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO benefits for children of learning to write did both students find surprising?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "What’s less obvious is how it helps develop their concentration. They have to sit still and focus on one thing. I never associated spatial awareness with handwriting either"
            },
            {
              "number": 22,
              "prompt": "Which TWO benefits for children of learning to write did both students find surprising?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "What’s less obvious is how it helps develop their concentration. They have to sit still and focus on one thing. I never associated spatial awareness with handwriting either"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. For children with dyspraxia, which TWO problems with handwriting do the students think are easiest to correct?",
          "options": [
            {
              "key": "A",
              "text": "not spacing letters correctly"
            },
            {
              "key": "B",
              "text": "not writing in a straight line"
            },
            {
              "key": "C",
              "text": "applying too much pressure when writing"
            },
            {
              "key": "D",
              "text": "confusing letter shapes"
            },
            {
              "key": "E",
              "text": "writing very slowly"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "For children with dyspraxia, which TWO problems with handwriting do the students think are easiest to correct?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "Yeah, I like the idea of using one of those pens that lights up if you press too hard. That seems like a really simple solution. One quite simple thing you can do is to use grid paper. So they write each letter in a box and that trains them to space the letters correctly."
            },
            {
              "number": 24,
              "prompt": "For children with dyspraxia, which TWO problems with handwriting do the students think are easiest to correct?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "Yeah, I like the idea of using one of those pens that lights up if you press too hard. That seems like a really simple solution. One quite simple thing you can do is to use grid paper. So they write each letter in a box and that trains them to space the letters correctly."
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
              "prompt": "What does the woman say about using laptops to teach writing to children with dyslexia?",
              "options": [
                {
                  "key": "A",
                  "text": "Children often lack motivation to learn that way"
                },
                {
                  "key": "B",
                  "text": "Children become fluent relatively quickly"
                },
                {
                  "key": "C",
                  "text": "Children react more positively if they make a mistake"
                }
              ],
              "answer": "C",
              "explanation": "Yeah, it’s not as frustrating for them if they get things wrong. On a keyboard, they can be more willing to have a go"
            },
            {
              "number": 26,
              "prompt": "When discussing whether to teach cursive or print writing, the woman thinks that",
              "options": [
                {
                  "key": "A",
                  "text": "cursive writing disadvantages a certain group of children"
                },
                {
                  "key": "B",
                  "text": "print writing is associated with lower academic performance"
                },
                {
                  "key": "C",
                  "text": "most teachers in the UK prefer a traditional approach to handwriting"
                }
              ],
              "answer": "A",
              "explanation": "teachers’ attitudes have changed because it’s been proved that cursive is more difficult to learn, especially for children with learning difficulties who find joining up letters really challenging"
            },
            {
              "number": 27,
              "prompt": "According to the students, what impact does poor handwriting have on exam performance?",
              "options": [
                {
                  "key": "A",
                  "text": "There is evidence to suggest grades are affected by poor handwriting"
                },
                {
                  "key": "B",
                  "text": "Neat handwriting is less important now than it used to be"
                },
                {
                  "key": "C",
                  "text": "Candidates write more slowly and produce shorter answers"
                }
              ],
              "answer": "A",
              "explanation": "I was always worried that my poor handwriting affected my exam results, and now research shows that I was right to worry."
            },
            {
              "number": 28,
              "prompt": "What prediction does the man make about the future of handwriting?",
              "options": [
                {
                  "key": "A",
                  "text": "Touch typing will be taught before writing by hand"
                },
                {
                  "key": "B",
                  "text": "Children will continue to learn to write by hand"
                },
                {
                  "key": "C",
                  "text": "People will dislike handwriting on digital devices"
                }
              ],
              "answer": "B",
              "explanation": "I can’t see that changing much. Touch typing still isn’t taught in most schools, which is a shame. But maybe that won’t be necessary in the future, because people will also be able to write by hand on digital devices. Anyway, teachers understand the value of handwriting. It’s a basic life skill"
            },
            {
              "number": 29,
              "prompt": "The woman is concerned that relying on digital devices has made it difficult for her to",
              "options": [
                {
                  "key": "A",
                  "text": "take detailed notes"
                },
                {
                  "key": "B",
                  "text": "spell and punctuate"
                },
                {
                  "key": "C",
                  "text": "read old documents"
                }
              ],
              "answer": "B",
              "explanation": "But my mum is shocked by my awful spelling and the fact that my punctuation is really inconsistent. I think you can put that down to lack of practice"
            },
            {
              "number": 30,
              "prompt": "How do the students feel about their own handwriting?",
              "options": [
                {
                  "key": "A",
                  "text": "concerned they are unable to write quickly"
                },
                {
                  "key": "B",
                  "text": "embarrassed by comments made about it"
                },
                {
                  "key": "C",
                  "text": "regretful that they have lost the habit"
                }
              ],
              "answer": "C",
              "explanation": "Nobody I know would be able to identify my handwriting now. It’s a shame."
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
              "text": "The importance of birds of prey to local communities"
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
              "text": "They have been an important part of local culture for many years."
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "subheader",
              "text": "Falling numbers of birds of prey"
            },
            {
              "kind": "static",
              "text": "- The birds may be accidentally killed:"
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
              "text": "."
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "Ways of protecting chickens from birds of prey"
            },
            {
              "kind": "static",
              "text": "- Clearing away vegetation (unhelpful)."
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "- Frightening birds of prey by:"
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
              "prompt": "They destroy _______ and other rodents.",
              "answer": [
                "rats"
              ],
              "wordLimit": 1,
              "explanation": "a lot of damage can be caused to farmers’ crops by rodents, such as rats, which would consume the crops as they grow in the fields"
            },
            {
              "number": 32,
              "prompt": "They help prevent farmers from being bitten by _______ .",
              "answer": [
                "snakes"
              ],
              "wordLimit": 1,
              "explanation": "For example, a major danger to rural workers is snakes, whose bite may be dangerous or even fatal, and birds of prey have a major role in keeping their populations under control"
            },
            {
              "number": 33,
              "prompt": "They now support the economy by encouraging _______ in the area.",
              "answer": [
                "tourism"
              ],
              "wordLimit": 1,
              "explanation": "However, more recently, the sanctuary and its birds have also become increasingly important to the community in economic terms, because at present, after a relatively slow start, tourism has become an important source of revenue for them"
            },
            {
              "number": 34,
              "prompt": "By _______ when hunting or sleeping.",
              "answer": [
                "traffic"
              ],
              "wordLimit": 1,
              "explanation": "Fatalities occur when birds alight on roads to catch and eat their prey, and are hit by fast moving traffic"
            },
            {
              "number": 35,
              "prompt": "By electrocution from power lines, especially during times of high _______",
              "answer": [
                "rain"
              ],
              "wordLimit": 1,
              "explanation": "This is a particular danger in the heavy rain which can occur in the region in the months from December to April"
            },
            {
              "number": 36,
              "prompt": "- Local farmers may illegally shoot them or _______ them.",
              "answer": [
                "poison"
              ],
              "wordLimit": 1,
              "explanation": "farmers may shoot these birds, which is illegal but understandable, or they may poison the birds, which again is illegal and can have negative effects on the ecosystem"
            },
            {
              "number": 37,
              "prompt": "- Providing a _______ for chickens (expensive).",
              "answer": [
                "building"
              ],
              "wordLimit": 1,
              "explanation": "Another possibility would be to prevent the chickens from going outside at all and to keep them safe from predators inside a building, but this would cost far too much to be a practical solution"
            },
            {
              "number": 38,
              "prompt": "Keeping a _______ .",
              "answer": [
                "dog"
              ],
              "wordLimit": 1,
              "explanation": "Most of the farmers had at least one dog and said this was a big help at scaring away the predators"
            },
            {
              "number": 39,
              "prompt": "Making a _______ (e.g., with metal objects).",
              "answer": [
                "noise"
              ],
              "wordLimit": 1,
              "explanation": "some of the farmers also reported that during the breeding season, when the chickens were particularly vulnerable, they encouraged their children to watch over the chickens and to hit pans with a metal spoon so that the resulting noise would succeed in driving away birds that were trying to seize the young chicks"
            },
            {
              "number": 40,
              "prompt": "- A _______ of methods is usually most effective.",
              "answer": [
                "combination"
              ],
              "wordLimit": 1,
              "explanation": "None of these methods was 100% effective so as a result the village people told us that rather than just using one method, they were forced to use a combination for them to have any effect"
            }
          ],
          "formTitle": "Research in the Area Around the Chem be Bird Sanctuary",
          "id": "g31"
        }
      ]
    }
  ]
}
$c20t4l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 21',
  'Test 1',
  'academic',
  2004,
  $c21t1l$
{
  "audioPath": "Cambridge 21 Test 1.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formTitle": "Sailing courses",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Taster day"
            },
            {
              "kind": "static",
              "text": "What you learn: introduction to sailing"
            },
            {
              "kind": "static",
              "text": "Cost: £120 if booking one place"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Level 1"
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
              "kind": "static",
              "text": "Cost: £200"
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
              "prompt": "Other information: small groups (maximum _______ people)",
              "answer": [
                "10",
                "ten"
              ],
              "wordLimit": 1,
              "explanation": "You’d be in a small group, usually about eight people but no more than ten - and everyone’s always very friendly"
            },
            {
              "number": 2,
              "prompt": "What you learn: basic theory, e.g. understanding the _______ and tides",
              "answer": [
                "weather"
              ],
              "wordLimit": 1,
              "explanation": "So you learn about things like the weather, which is obviously really important and also the tides, as well as learning basic sailing skills"
            },
            {
              "number": 3,
              "prompt": "Basic sailing skills including _______ information",
              "answer": [
                "safety"
              ],
              "wordLimit": 1,
              "explanation": "He or she will make sure you understand everything you need to know about safety"
            },
            {
              "number": 4,
              "prompt": "Other information: _______ available for club members",
              "answer": [
                "discount"
              ],
              "wordLimit": 1,
              "explanation": "£200. But it’s a bit cheaper if you decide to join the club. There’s a discount for members"
            },
            {
              "number": 5,
              "prompt": "All inclusive (plus a useful _______)",
              "answer": [
                "dictionary"
              ],
              "wordLimit": 1,
              "explanation": "Yes, everything’s included and you also get a really good dictionary explaining all the sailing terminology"
            },
            {
              "number": 6,
              "prompt": "A _______ at the end of the course for all participants",
              "answer": [
                "certificate"
              ],
              "wordLimit": 1,
              "explanation": "And on completion of the course you get a certificate"
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Participants must be able to swim."
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
              "number": 7,
              "prompt": "Bring suitable clothing, a _______ and toiletries (e.g. shampoo).",
              "answer": [
                "towel"
              ],
              "wordLimit": 1,
              "explanation": "MAN: And a towel? WOMAN: Yes definitely"
            },
            {
              "number": 8,
              "prompt": "There is a _______ at the club.",
              "answer": [
                "caf"
              ],
              "wordLimit": 1,
              "explanation": "é / cafe MAN: OK. What about food and drink? Do I need to bring that or is there a café at the club? WOMAN: Yes, you can get sandwiches, cakes and snacks there"
            },
            {
              "number": 9,
              "prompt": "Online training _______ are recommended.",
              "answer": [
                "videos"
              ],
              "wordLimit": 1,
              "explanation": "I recommend you watch some videos we use for training. They’re available online. I can send you the link. They’ll give you an idea of what to expect"
            },
            {
              "number": 10,
              "prompt": "_______ are available for course participants.",
              "answer": [
                "Lockers"
              ],
              "wordLimit": 1,
              "explanation": "I’m just wondering if there are lockers for people to use? WOMAN: Yes, there are plenty in the changing rooms"
            }
          ],
          "formTitle": "General information",
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
          "label": "Questions 11–16",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "What should trainees always expect to get when working on low budget short films?",
              "options": [
                {
                  "key": "A",
                  "text": "travel expenses"
                },
                {
                  "key": "B",
                  "text": "a minimum wage"
                },
                {
                  "key": "C",
                  "text": "meals"
                }
              ],
              "answer": "A",
              "explanation": "Make sure your transport costs are covered - and remember, there’s very unlikely to be any catering provided, so bring plenty of food"
            },
            {
              "number": 12,
              "prompt": "According to the speaker, on big budget films trainees may get experience of",
              "options": [
                {
                  "key": "A",
                  "text": "makeup for special effects."
                },
                {
                  "key": "B",
                  "text": "working with different ethnicities."
                },
                {
                  "key": "C",
                  "text": "creating a variety of hair styles."
                }
              ],
              "answer": "B",
              "explanation": "But you’re likely to get the opportunity to work with a range of age groups, as well as different ethnicities"
            },
            {
              "number": 13,
              "prompt": "The speaker says a problem for makeup artists is",
              "options": [
                {
                  "key": "A",
                  "text": "dealing with difficult directors."
                },
                {
                  "key": "B",
                  "text": "being shouted at by their supervisor."
                },
                {
                  "key": "C",
                  "text": "waiting around for hours doing nothing."
                }
              ],
              "answer": "A",
              "explanation": "It can be stressful but you’ll see that the top makeup artists are very professional - even when they’re having to work with directors who are impatient, or unhappy with the makeup artist’s work"
            },
            {
              "number": 14,
              "prompt": "How did the speaker feel when she met famous actors for the first time?",
              "options": [
                {
                  "key": "A",
                  "text": "very shy"
                },
                {
                  "key": "B",
                  "text": "very proud"
                },
                {
                  "key": "C",
                  "text": "very disappointed"
                }
              ],
              "answer": "A",
              "explanation": "At first, I found it overwhelming and could hardly speak. I was so in awe"
            },
            {
              "number": 15,
              "prompt": "What advice does the speaker give about makeup kits?",
              "options": [
                {
                  "key": "A",
                  "text": "Always carry a basic kit with you."
                },
                {
                  "key": "B",
                  "text": "Only buy the best products for a makeup kit."
                },
                {
                  "key": "C",
                  "text": "Ask other makeup artists to check your kit."
                }
              ],
              "answer": "A",
              "explanation": "Every makeup trainee will need a makeup kit, which they’ll be expected to have with them at all times. Just the essentials will do for the kinds of tasks you’ll be given - it won’t be anything complicated"
            },
            {
              "number": 16,
              "prompt": "What advice does the speaker give about creating a portfolio?",
              "options": [
                {
                  "key": "A",
                  "text": "Keep print and digital photos."
                },
                {
                  "key": "B",
                  "text": "Only include a small selection of photos."
                },
                {
                  "key": "C",
                  "text": "Get permission to use photos."
                }
              ],
              "answer": "C",
              "explanation": "But remember you’ll need to get approval from the makeup designer in charge of the department"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "What ability is required for each of the following duties? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "being well-organised"
            },
            {
              "key": "B",
              "text": "being flexible"
            },
            {
              "key": "C",
              "text": "working quickly"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Prepping an actor",
              "answer": "C",
              "explanation": "But sometimes you’ll need to step in and get this done without wasting any time, otherwise the makeup artist will get behind schedule"
            },
            {
              "number": 18,
              "prompt": "Continuity",
              "answer": "A",
              "explanation": "Trainees play a useful role in continuity. It will be your responsibility to take photos, log them digitally and print out a hard copy to put in each actor’s file. This information needs to be kept in good order as a reshoot can mean replicating makeup months later"
            },
            {
              "number": 19,
              "prompt": "General",
              "answer": "B",
              "explanation": "General duties mean doing anything from getting the teas and coffees to putting on a wash. Having a positive attitude and being willing to do whatever is asked of you will help you get your next film job"
            },
            {
              "number": 20,
              "prompt": "Applying makeup",
              "answer": "C",
              "explanation": "If there are dozens of extras involved you’ll need to keep up a swift pace and not spend too long on each person"
            }
          ],
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
          "instructions": "Choose TWO letters, A–E. Which TWO features of the lecture on ocean biodiversity had the greatest impact on the students?",
          "options": [
            {
              "key": "A",
              "text": "the references to local problems"
            },
            {
              "key": "B",
              "text": "the broad focus of the examples"
            },
            {
              "key": "C",
              "text": "the practical suggestions for solutions"
            },
            {
              "key": "D",
              "text": "the type of issues discussed"
            },
            {
              "key": "E",
              "text": "the implications for government policy"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO features of the lecture on ocean biodiversity had the greatest impact on the students?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "LUCY: Yeah. I learned a lot from her about ocean biodiversity. I’ve already done some reading on it, and I did an assignment on some of the problems associated with it last year, but I especially liked the way her lecture focused on more long-term issues. PHIL: Yes, things that aren’t currently receiving widespread attention but are likely to be important in the future. That impressed me too PHIL: Mm. But that’s just at a national level. The examples she gave were at a more global level, and they really made it clear to me just how wide-ranging the threats to ocean biodiversity are. LUCY: Yes, me too"
            },
            {
              "number": 22,
              "prompt": "Which TWO features of the lecture on ocean biodiversity had the greatest impact on the students?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "LUCY: Yeah. I learned a lot from her about ocean biodiversity. I’ve already done some reading on it, and I did an assignment on some of the problems associated with it last year, but I especially liked the way her lecture focused on more long-term issues. PHIL: Yes, things that aren’t currently receiving widespread attention but are likely to be important in the future. That impressed me too PHIL: Mm. But that’s just at a national level. The examples she gave were at a more global level, and they really made it clear to me just how wide-ranging the threats to ocean biodiversity are. LUCY: Yes, me too"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO details about the research project particularly impressed the students?",
          "options": [
            {
              "key": "A",
              "text": "the team's previous successes"
            },
            {
              "key": "B",
              "text": "its wide geographical scale"
            },
            {
              "key": "C",
              "text": "the use of new technology"
            },
            {
              "key": "D",
              "text": "the extensive statistical evidence"
            },
            {
              "key": "E",
              "text": "the large range of specialists involved"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO details about the research project particularly impressed the students?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "PHIL: The research project she described was impressive, wasn’t it? I’d have thought it was quite unusual to have so many experts working together. LUCY: Yeah, and from such different backgrounds PHIL: Mm. And the description of improvements in systems used for tracking marine animals and things like robots were really interesting. LUCY: Yes, and her description of how robotics can be used to investigate threats to biodiversity"
            },
            {
              "number": 24,
              "prompt": "Which TWO details about the research project particularly impressed the students?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "PHIL: The research project she described was impressive, wasn’t it? I’d have thought it was quite unusual to have so many experts working together. LUCY: Yeah, and from such different backgrounds PHIL: Mm. And the description of improvements in systems used for tracking marine animals and things like robots were really interesting. LUCY: Yes, and her description of how robotics can be used to investigate threats to biodiversity"
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What is the students' opinion of each of the following resources related to ocean biodiversity? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "This is aimed at a very specialist audience."
            },
            {
              "key": "B",
              "text": "This is now rather outdated."
            },
            {
              "key": "C",
              "text": "This was an effective description of a new danger."
            },
            {
              "key": "D",
              "text": "This suggests possible ways to improve the situation."
            },
            {
              "key": "E",
              "text": "This does not give a balanced account."
            },
            {
              "key": "F",
              "text": "This is too predictable to be useful."
            },
            {
              "key": "G",
              "text": "This gives insufficient evidence for its claims."
            },
            {
              "key": "H",
              "text": "This gives a clear explanation of the problems."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Article on invasive lionfish",
              "answer": "G",
              "explanation": "Well, the writer went on about how dangerous they were in environmental terms, which is probably true, but he didn’t really provide much information to explain why"
            },
            {
              "number": 26,
              "prompt": "Documentary on microplastics",
              "answer": "B",
              "explanation": "PHIL: I watched the documentary on microplastics, at least I started to, but then I found it was made ten years ago so I gave up. LUCY: I watched to the end but you’re right, it was showing its age"
            },
            {
              "number": 27,
              "prompt": "Podcast on ocean pollution",
              "answer": "F",
              "explanation": "LUCY: Mm. I didn’t get anything out of it though. Most of it was stating the obvious. PHIL: Yes, it mentioned pesticides and plastic and things, and it clearly made the point that they were a bad thing, but everybody knows that anyway"
            },
            {
              "number": 28,
              "prompt": "Book on coastal ecosystems",
              "answer": "H",
              "explanation": "LUCY: The one by John Harper? Yes, I found it hard going at first, it went into a lot of detail about things like the effects of offshore windfarms and fish farms, but actually I ended up with a much better understanding of the issues. PHIL: Yes, I agree and I thought it was a well-written summary of those. And the diagrams helped a lot too"
            },
            {
              "number": 29,
              "prompt": "Article on metal toxicity",
              "answer": "A",
              "explanation": "LUCY: The article on metal toxicity was way above my head, I didn’t know anything about how metals from industrial emissions react in the ocean and I still don’t understand it. PHIL: I gave up reading after the first chapter - I just couldn’t follow it"
            },
            {
              "number": 30,
              "prompt": "Podcast on floating marine cities",
              "answer": "E",
              "explanation": "That podcast on floating marine cities was interesting, though it presented a rather one-sided picture, I thought. PHIL: Yes, it focused on how this would benefit people and ignored the effects on the environment"
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
              "kind": "question",
              "number": 31
            },
            {
              "kind": "subheader",
              "text": "Natural rubber"
            },
            {
              "kind": "static",
              "text": "This mainly comes from the Pará rubber tree, now cultivated in South-East Asia. The supply is limited because the growth of the tree is"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": ". production cannot easily be adjusted because of increasing or decreasing",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": ". the tree only grows near the"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": ". extracting the latex (rubber) is labour-intensive it is very difficult to",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "rubber after production.",
              "noBullet": true
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
              "kind": "static",
              "text": "An alternative source of natural rubber"
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
              "prompt": "Three resources which are essential for industrial civilisation _______ fossil fuels rubber",
              "answer": [
                "metal"
              ],
              "wordLimit": 1,
              "explanation": "(s) There are three types of natural resource without which industry could not exist. One of these is metal - without that we’d have no machines and no transportation. Another is fossil fuels, which we need to power those machines. But there’s a third resource that’s essential to connect the different parts of a machine together with belts and pipes and shock absorbers, and that is rubber"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "slow"
              ],
              "wordLimit": 1,
              "explanation": "It can take eight to ten years for a tree to start producing rubber, so cultivating them’s a slow process"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "demand"
              ],
              "wordLimit": 1,
              "explanation": "With most crops, farmers don’t have to think very far ahead, so they can easily change what crop they produce, or how much of a crop they produce, if they find the demand for that crop is rising or falling"
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "equator"
              ],
              "wordLimit": 1,
              "explanation": "The result is that it can’t be grown in the northern or southern parts of the globe, only around the equator"
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "recycle"
              ],
              "wordLimit": 1,
              "explanation": "With other resources such as water and glass, when we’ve finished using them we can recycle them, but although this is also possible with rubber, it’s very difficult, so that also reduces the amount we have available"
            },
            {
              "number": 36,
              "prompt": "New threats include lack of genetic diversity, leading to danger of disease caused by a _______",
              "answer": [
                "fungus"
              ],
              "wordLimit": 1,
              "explanation": "The most dangerous threat is a fungus, which destroyed large numbers of rubber trees in Brazil, and which could cause devastation to plantations worldwide"
            },
            {
              "number": 37,
              "prompt": ". a shift to the cultivation of palm oil extreme _______ events.",
              "answer": [
                "weather"
              ],
              "wordLimit": 1,
              "explanation": "And finally, in recent years South-East Asia, like other parts of the world, has been repeatedly hit by extreme types of weather, and this looks likely to continue in the future"
            },
            {
              "number": 38,
              "prompt": "Synthetic rubber may be used for engine parts and cooking utensils is less _______ than natural rubber is unsuitable for many purposes e.g. the tyres of aircraft.",
              "answer": [
                "strong"
              ],
              "wordLimit": 1,
              "explanation": "But compared with natural rubber, it’s not anything like as strong, and this means it can’t replace natural rubber in other products"
            },
            {
              "number": 39,
              "prompt": "A wild flower (a type of dandelion) has rubber in its _______ .",
              "answer": [
                "roots"
              ],
              "wordLimit": 1,
              "explanation": "But when it’s pulled up and its roots cut open, they’re found to contain rubber"
            },
            {
              "number": 40,
              "prompt": "It can be grown in many locations and does not require good _______ .",
              "answer": [
                "soil"
              ],
              "wordLimit": 1,
              "explanation": "They’ll grow in all sorts of places, and they don’t need rich soil"
            }
          ],
          "formTitle": "Sources of rubber",
          "id": "g31"
        }
      ]
    }
  ]
}
$c21t1l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 21',
  'Test 2',
  'academic',
  2004,
  $c21t2l$
{
  "audioPath": "Cambridge 21 Test 2.mp3",
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
              "kind": "subheader",
              "text": "Vietnamese food"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "It provides information on the use of herbs."
            },
            {
              "kind": "static",
              "text": "There are no places at present."
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "There is also an extra charge for ingredients."
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "Face massage 23 February £35"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "Candle making"
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
              "kind": "static",
              "text": "The candles can be used as presents."
            },
            {
              "kind": "static",
              "text": "Silk painting 18 May £"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "Bring an apron or old",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "DIY for beginners 24 February £125"
            },
            {
              "kind": "subheader",
              "text": "Learn how to"
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "• put up a shelf."
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______ £59",
              "answer": [
                "13"
              ],
              "wordLimit": 1,
              "explanation": "(th) January / January 13(th) / 13.01 / 13.1 I remember there was one on how to make Vietnamese food that sounded good. I think that was on the 13th of January. It cost about 60 pounds Yes, you’re right about the date, but it’s 59 pounds actually"
            },
            {
              "number": 2,
              "prompt": "Bread making 20 March £ _______",
              "answer": [
                "48"
              ],
              "wordLimit": 1,
              "explanation": "The actual cost is £48 but then there’s an extra charge as well as that for the ingredients - I’m not sure how much that is, no more than twenty pounds I think"
            },
            {
              "number": 3,
              "prompt": "Participants make white bread, sourdough and _______",
              "answer": [
                "pizza"
              ],
              "wordLimit": 1,
              "explanation": "Oh, various types of bread; I think they make white bread and then they make sourdough, that seems to be very fashionable at present, and they learn how to make pizza, which is apparently really good"
            },
            {
              "number": 4,
              "prompt": "The teacher trained in _______",
              "answer": [
                "India"
              ],
              "wordLimit": 1,
              "explanation": "The teacher’s great, the type of massage done is a traditional technique used in India and she actually did her training there"
            },
            {
              "number": 5,
              "prompt": "Bring a _______",
              "answer": [
                "mirror"
              ],
              "wordLimit": 1,
              "explanation": "You practise it on yourself so you have to take a mirror to the class, so you can see what you’re doing"
            },
            {
              "number": 6,
              "prompt": "_______ £52",
              "answer": [
                "6"
              ],
              "wordLimit": 1,
              "explanation": "(th) April / April 6(th) / 06.04 / 6.4 Yes that’s sometime in April, I think. Let me check yes, it’s on the 6th. It was on the 23rd of January but they had to change the date"
            },
            {
              "number": 7,
              "prompt": "Only _______ ingredients are used.",
              "answer": [
                "natural"
              ],
              "wordLimit": 1,
              "explanation": "I think one reason why people like it is because the candles are all made out of natural products"
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "67.50"
              ],
              "wordLimit": 1,
              "explanation": "By the way, have you heard about the class on silk painting? That’s being held on the 18th of May. You learn how to create designs on silk fabric and colour them using special dyes. Apparently people can produce beautiful artworks that way, either to put on the wall as a picture or to use for something like a scarf. It’s £67.50, which is really good value I think - there’s a similar class I’ve seen that was £110"
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "shirt"
              ],
              "wordLimit": 1,
              "explanation": "MAN: No, the only thing is everyone has to bring something to protect their clothing, like an apron if you’ve got one, or a shirt that you don’t use any more, because the dye can really stain your clothes"
            },
            {
              "number": 10,
              "prompt": "• use a drill, saw and _______",
              "answer": [
                "hammer"
              ],
              "wordLimit": 1,
              "explanation": "MAN: That’s on the 24th of February - yes, there are a few places. It’s a bit more expensive - it’s £125 - but it’s a very popular class. You learn how to use an electric drill and a saw. WOMAN: Yeah, that would be really useful, and I even need to learn how to use a hammer because I always end up hitting my fingers. MAN: Yes, you’ll do that too"
            }
          ],
          "formTitle": "Course Date Cost Notes",
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
          "instructions": "Choose TWO letters, A–E. Which TWO pieces of advice are given about the Marsden Coastal Walk?",
          "options": [
            {
              "key": "A",
              "text": "Stop for lunch in an ancient town."
            },
            {
              "key": "B",
              "text": "Don't miss the ruins of a certain building."
            },
            {
              "key": "C",
              "text": "Catch a boat to the start of this walk."
            },
            {
              "key": "D",
              "text": "Be careful of the steep and rocky paths."
            },
            {
              "key": "E",
              "text": "Don't worry about getting lost."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO pieces of advice are given about the Marsden Coastal Walk?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "As there are clear signposts all along the way, you don’t even need to take a map with you. At one point, the route goes inland slightly and passes a castle built in the 1400s near to a now-vanished market town. The castle’s now just a pile of stones but it’s a great place to take photos, and fascinating information boards show what it once looked like"
            },
            {
              "number": 12,
              "prompt": "Which TWO pieces of advice are given about the Marsden Coastal Walk?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "As there are clear signposts all along the way, you don’t even need to take a map with you. At one point, the route goes inland slightly and passes a castle built in the 1400s near to a now-vanished market town. The castle’s now just a pile of stones but it’s a great place to take photos, and fascinating information boards show what it once looked like"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO things are said about the Melby Heritage Walk?",
          "options": [
            {
              "key": "A",
              "text": "This walk is mostly downhill."
            },
            {
              "key": "B",
              "text": "The paths can get busy during the day."
            },
            {
              "key": "C",
              "text": "This is a circular walk."
            },
            {
              "key": "D",
              "text": "A tower stands on the site of an older structure."
            },
            {
              "key": "E",
              "text": "There are far-reaching views the whole way."
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO things are said about the Melby Heritage Walk?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "At the highest point, you can stop to take in the views, and those with lots of energy can climb the tower that’s situated where there was once a seventeenth century hunting lodge. The route continues along the tops of the hills and brings you back down to the starting point - the car park at Melby Coal Mine"
            },
            {
              "number": 14,
              "prompt": "Which TWO things are said about the Melby Heritage Walk?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "At the highest point, you can stop to take in the views, and those with lots of energy can climb the tower that’s situated where there was once a seventeenth century hunting lodge. The route continues along the tops of the hills and brings you back down to the starting point - the car park at Melby Coal Mine"
            }
          ],
          "id": "g13"
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
              "prompt": "Exhibition",
              "answer": "F",
              "explanation": "Go through the ticket office to an area where there are lockers to leave heavy bags in, and where you can borrow raincoats. Beyond that room is the exhibition"
            },
            {
              "number": 16,
              "prompt": "Baths",
              "answer": "B",
              "explanation": "There’s a small bathhouse where miners used to wash after their shift underground. You can see that in the building directly to the north of the engine house. The boiler has gone from there now, but there are lines of tin baths on the stone floor"
            },
            {
              "number": 17,
              "prompt": "Tools",
              "answer": "D",
              "explanation": "There’s a display of early mining tools from the days before mechanisation. You can find that in a small L-shaped building in the middle of the northern boundary of the site"
            },
            {
              "number": 18,
              "prompt": "Vehicles",
              "answer": "A",
              "explanation": "The vehicle shed, where you can find wagons of different sizes, along with some of the hi-tech cutting machines that were in use until the mine closed, is in the southwest corner of the site, and can be accessed via a covered walkway"
            },
            {
              "number": 19,
              "prompt": "Ponies",
              "answer": "H",
              "explanation": "There is a field with ponies, which are always popular with children, on the north-eastern boundary of the site, not approached via a covered walkway"
            },
            {
              "number": 20,
              "prompt": "Education centre",
              "answer": "E",
              "explanation": "The centre is connected to the ticket office via a short section of covered walkway"
            }
          ],
          "mapImage": "Cambridge 21 Test 2 map.png",
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
          "instructions": "Choose TWO letters, A–E. Which TWO facts in the sessions on food safety were new information for Nadia and Fergus?",
          "options": [
            {
              "key": "A",
              "text": "the amount of plastic in the ocean"
            },
            {
              "key": "B",
              "text": "the number of diseases caused by contaminated food"
            },
            {
              "key": "C",
              "text": "the amount of food that is wasted"
            },
            {
              "key": "D",
              "text": "the number of people who are obese"
            },
            {
              "key": "E",
              "text": "the result of treating animals with antibiotics"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO facts in the sessions on food safety were new information for Nadia and Fergus?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "FERGUS: Yeah, that’s been in the news a lot. But I hadn’t realised that unsafe food causes more than 200 different diseases. NADIA: No, I’d no idea it was that many. And speaking of diseases, I knew resistance to antibiotics is on the increase, but I didn’t know why FERGUS that it’s partly because when animals are treated with antibiotics then consumed by humans, the antibiotics get into the food chain. I had no idea about that either"
            },
            {
              "number": 22,
              "prompt": "Which TWO facts in the sessions on food safety were new information for Nadia and Fergus?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "FERGUS: Yeah, that’s been in the news a lot. But I hadn’t realised that unsafe food causes more than 200 different diseases. NADIA: No, I’d no idea it was that many. And speaking of diseases, I knew resistance to antibiotics is on the increase, but I didn’t know why FERGUS that it’s partly because when animals are treated with antibiotics then consumed by humans, the antibiotics get into the food chain. I had no idea about that either"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO features of a project aiming to prevent food fraud impressed Fergus?",
          "options": [
            {
              "key": "A",
              "text": "the new technology it used"
            },
            {
              "key": "B",
              "text": "the publicity it received"
            },
            {
              "key": "C",
              "text": "the use of multiple tests on food items"
            },
            {
              "key": "D",
              "text": "the variety of dietary requirements included"
            },
            {
              "key": "E",
              "text": "the way information was made widely accessible"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO features of a project aiming to prevent food fraud impressed Fergus?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "I thought it was really good to address a problem that’s faced by so many different groups - people with special religious rules, as well as vegetarians and vegans But what the researchers succeeded in doing was to ensure that these tests were carried out at different stages in the food’s journey from the producer to the consumer"
            },
            {
              "number": 24,
              "prompt": "Which TWO features of a project aiming to prevent food fraud impressed Fergus?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "I thought it was really good to address a problem that’s faced by so many different groups - people with special religious rules, as well as vegetarians and vegans But what the researchers succeeded in doing was to ensure that these tests were carried out at different stages in the food’s journey from the producer to the consumer"
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO topics do both students recommend should be included in the course?",
          "options": [
            {
              "key": "A",
              "text": "sustainable fishing"
            },
            {
              "key": "B",
              "text": "targeted nutrition"
            },
            {
              "key": "C",
              "text": "global differences in consumption"
            },
            {
              "key": "D",
              "text": "sustainable agriculture"
            },
            {
              "key": "E",
              "text": "digital technology and food"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO topics do both students recommend should be included in the course?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "FERGUS: But we’ve already done quite a bit on that - but not so much on the seafood industry, where stocks are in danger of being overexploited as a food source unless we can find ways of keeping stocks up. NADIA: Yes, that’d be a good topic NADIA: OK. What about sessions on the variety of food and eating habits around the world? That’s very relevant nowadays. FERGUS: Yes, I think the whole class would be interested in that"
            },
            {
              "number": 26,
              "prompt": "Which TWO topics do both students recommend should be included in the course?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "FERGUS: But we’ve already done quite a bit on that - but not so much on the seafood industry, where stocks are in danger of being overexploited as a food source unless we can find ways of keeping stocks up. NADIA: Yes, that’d be a good topic NADIA: OK. What about sessions on the variety of food and eating habits around the world? That’s very relevant nowadays. FERGUS: Yes, I think the whole class would be interested in that"
            }
          ],
          "id": "g25"
        },
        {
          "type": "completion",
          "label": "Questions 27–30",
          "instructions": "Complete the flow-chart below. Choose FOUR answers from the box, A–F.",
          "summaryTitle": "",
          "summaryText": "Student project: developing a new food product\nInitial aim\n{27} Literature review\n{28} Product development\n{29} Product production\n{30} A. This was challenging but enjoyable.B. This led to some disagreement.\nC. This was easy to decide on.D. This was helped by the guidelines provided.\nE. This seemed like an unnecessary stage.\n\nF. This involved selecting a new ingredient.",
          "wordBank": null,
          "questions": [
            {
              "number": 27,
              "prompt": "",
              "answer": "C",
              "explanation": "We made up our minds about that pretty quickly. I know some students found it a lot harder to choose, and wasted a lot of time"
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "D",
              "explanation": "NADIA: Then we had to do the literature review. We hadn’t done one of these before so, the handout with advice for the project was very useful here. FERGUS: Yes, especially the advice on how to present the information"
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "F",
              "explanation": "Then product development, actually deciding what we’d use to make the falafel, and for me the interesting thing about that was that we wanted it to be something a bit different from an ordinary falafel. NADIA: We really made the right choice when we finally decided to use jackfruit, even though it wasn’t something that either of us had ever tasted before"
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "A",
              "explanation": "The product production, working out how to make the falafel, was harder than I expected because I’d never made them before we just moved on and kept adapting it and in the end it turned out fine and we had a lot of fun"
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
              "kind": "subheader",
              "text": "Problems with overtourism"
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
              "text": "Barcelona."
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
              "kind": "subheader",
              "text": "Problems of perception"
            },
            {
              "kind": "static",
              "text": "• Cruises are generally associated with the elderly."
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
              "kind": "subheader",
              "text": "Solutions"
            },
            {
              "kind": "static",
              "text": "Cruise lines are attracting younger customers by:"
            },
            {
              "kind": "static",
              "text": "• becoming more sustainable e.g. using hybrid engines."
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
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "• _______ is one of the worst problems.",
              "answer": [
                "Pollution"
              ],
              "wordLimit": 1,
              "explanation": "Pollution, for example, is among the greatest threats to many popular tourist destinations"
            },
            {
              "number": 32,
              "prompt": "• A tourist _______ is being introduced in some cities to reduce numbers, e.g.",
              "answer": [
                "tax"
              ],
              "wordLimit": 1,
              "explanation": "Several cities, such as Barcelona, have responded by imposing a tax which all visitors to the city from cruise ships have to pay"
            },
            {
              "number": 33,
              "prompt": "• Bruges: action was taken to limit day trips from the nearby port because the city was becoming a 'theme park' (e.g. many shops were only stocking _______ and souvenirs).",
              "answer": [
                "chocolate"
              ],
              "wordLimit": 1,
              "explanation": "The city was becoming like a ‘theme park’, with shops only catering for tourists, selling chocolate, which Belgium is famous for, and other souvenirs"
            },
            {
              "number": 34,
              "prompt": "• Dubrovnik: limits the number of tourists by managing the _______ of cruise ship arrivals.",
              "answer": [
                "timing"
              ],
              "wordLimit": 1,
              "explanation": "What it does now is control the timing of all cruise ship entries to the city’s port"
            },
            {
              "number": 35,
              "prompt": "• There is an assumption about the _______ of cruises.",
              "answer": [
                "cost"
              ],
              "wordLimit": 1,
              "explanation": "A recent survey showed that cost is also a major factor in putting younger groups off going on a cruise"
            },
            {
              "number": 36,
              "prompt": "• People think there may be too many _______ .",
              "answer": [
                "rules"
              ],
              "wordLimit": 1,
              "explanation": "And another perception is that cruises have lots of rules about what to wear and how to behave"
            },
            {
              "number": 37,
              "prompt": "• having a wide range of activities e.g. boxing, _______ and well-being programmes.",
              "answer": [
                "diving"
              ],
              "wordLimit": 1,
              "explanation": "There’s even a boxing ring on one ship, and most offer diving expeditions. But there’s also a huge focus on well-being with a variety of sessions of different kinds"
            },
            {
              "number": 38,
              "prompt": "• offering a diverse selection of food including _______ options.",
              "answer": [
                "vegan"
              ],
              "wordLimit": 1,
              "explanation": "Food is always a very important part of any cruise and cruise ships have had to radically update their menus to suit the tastes of their younger customers. Vegan dishes are standard, for example"
            },
            {
              "number": 39,
              "prompt": "• providing reliable _______ .",
              "answer": [
                "wifi"
              ],
              "wordLimit": 1,
              "explanation": "/ wi-fi Many people going on longer cruises also spend time working, so companies have to guarantee wifi that can be relied upon at all times"
            },
            {
              "number": 40,
              "prompt": "• improving marketing on social media with high quality _______ .",
              "answer": [
                "videos"
              ],
              "wordLimit": 1,
              "explanation": "Leading cruise lines now employ top agencies to produce first rate videos for social media channels"
            }
          ],
          "formTitle": "Challenges facing the cruise ship industry",
          "id": "g31"
        }
      ]
    }
  ]
}
$c21t2l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 21',
  'Test 3',
  'academic',
  2004,
  $c21t3l$
{
  "audioPath": "Cambridge 21 Test 3.mp3",
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
              "text": "Advice"
            },
            {
              "kind": "static",
              "text": "Cabins:"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "- luxury cabins have a TV"
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
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Name of ferry company: _______ Ferries",
              "answer": [
                "Northern"
              ],
              "wordLimit": 1,
              "explanation": "There’s only one - it’s called Northern Ferries"
            },
            {
              "number": 2,
              "prompt": "Ferries depart seven times per _______ in summer",
              "answer": [
                "week"
              ],
              "wordLimit": 1,
              "explanation": "The service is pretty limited - there’s only one ferry leaving every evening in summer anyway, seven days a week - I’m not sure about the winter months"
            },
            {
              "number": 3,
              "prompt": "Cost for four people with car: a little less than £ _______",
              "answer": [
                "250"
              ],
              "wordLimit": 1,
              "explanation": "They were really cheap and four people and a car worked out at just under £250"
            },
            {
              "number": 4,
              "prompt": "Cancellation policy: receive a _______ (if cancelled a month in advance)",
              "answer": [
                "voucher"
              ],
              "wordLimit": 1,
              "explanation": "That could be a problem. I don’t think it’s their policy to give refunds - just a voucher - which you can use at a later date. But you have to cancel a month in advance to get that"
            },
            {
              "number": 5,
              "prompt": "- book one with a _______",
              "answer": [
                "window"
              ],
              "wordLimit": 1,
              "explanation": "We booked too late to get a cabin with a window"
            },
            {
              "number": 6,
              "prompt": "Bring snacks and _______ for the children",
              "answer": [
                "books"
              ],
              "wordLimit": 1,
              "explanation": "PAUL: Not really. So it’s best to bring some books for them"
            },
            {
              "number": 7,
              "prompt": "A _______ is required for the dog kennels",
              "answer": [
                "blanket"
              ],
              "wordLimit": 1,
              "explanation": "The kennels on board are OK - they’re quite big - you just need to provide a blanket"
            },
            {
              "number": 8,
              "prompt": "Try to see _______ in the morning",
              "answer": [
                "dolphins"
              ],
              "wordLimit": 1,
              "explanation": "They loved being on the sea at night and in the morning keeping a lookout for dolphins - we saw loads"
            },
            {
              "number": 9,
              "prompt": "If time, visit _______ Castle",
              "answer": [
                "Drum"
              ],
              "wordLimit": 1,
              "explanation": "PAUL: Drum Castle"
            },
            {
              "number": 10,
              "prompt": "The _______ restaurant in a nearby village is recommended",
              "answer": [
                "Italian"
              ],
              "wordLimit": 1,
              "explanation": "We looked up restaurants in the area and found an Italian one in a village nearby"
            }
          ],
          "formTitle": "Ferry to Shetland Islands",
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
          "instructions": "Choose TWO letters, A–E. Which TWO explanations for the popularity of street food are given?",
          "options": [
            {
              "key": "A",
              "text": "low price"
            },
            {
              "key": "B",
              "text": "locally sourced"
            },
            {
              "key": "C",
              "text": "freshly made"
            },
            {
              "key": "D",
              "text": "convenience"
            },
            {
              "key": "E",
              "text": "unusual food"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO explanations for the popularity of street food are given?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "People like the idea of trying something they can’t get anywhere else. They also like seeing food prepared in front of them and which hasn’t come straight out of a freezer"
            },
            {
              "number": 12,
              "prompt": "Which TWO explanations for the popularity of street food are given?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "People like the idea of trying something they can’t get anywhere else. They also like seeing food prepared in front of them and which hasn’t come straight out of a freezer"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO places are recommended for new street food businesses?",
          "options": [
            {
              "key": "A",
              "text": "music festivals"
            },
            {
              "key": "B",
              "text": "food markets"
            },
            {
              "key": "C",
              "text": "weddings"
            },
            {
              "key": "D",
              "text": "parties"
            },
            {
              "key": "E",
              "text": "parks"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO places are recommended for new street food businesses?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Food markets, on the other hand, are great because customers are always really interested in food and give great feedback. And if you can get a spot in your local park - fantastic. Usually very relaxed but with lots of customers passing by"
            },
            {
              "number": 14,
              "prompt": "Which TWO places are recommended for new street food businesses?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Food markets, on the other hand, are great because customers are always really interested in food and give great feedback. And if you can get a spot in your local park - fantastic. Usually very relaxed but with lots of customers passing by"
            }
          ],
          "id": "g13"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 15–16",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 15,
              "prompt": "What does the speaker say about getting equipment for a street food business?",
              "options": [
                {
                  "key": "A",
                  "text": "High quality equipment is a good investment."
                },
                {
                  "key": "B",
                  "text": "It's best to buy second-hand equipment."
                },
                {
                  "key": "C",
                  "text": "Renting equipment can be cheap."
                }
              ],
              "answer": "B",
              "explanation": "I’d try to get things like hobs and fridges second hand if you can"
            },
            {
              "number": 16,
              "prompt": "What advice is given about creating a product for a street food business?",
              "options": [
                {
                  "key": "A",
                  "text": "Provide information about the ingredients."
                },
                {
                  "key": "B",
                  "text": "It is important to have an original product."
                },
                {
                  "key": "C",
                  "text": "The presentation is an important factor."
                }
              ],
              "answer": "C",
              "explanation": "But there’s one thing people don’t always think about and that’s how you’re going to serve it. On a plate? In a bag? Will you provide a fork? Will it all be easily recyclable or reusable? It’s got to be easy to eat and look attractive or customers won’t come back"
            }
          ],
          "id": "g15"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "What problem did the owners of each of the following street food businesses experience? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Some ingredients were too expensive."
            },
            {
              "key": "B",
              "text": "The meals took a long time to prepare."
            },
            {
              "key": "C",
              "text": "They had no money for marketing."
            },
            {
              "key": "D",
              "text": "It was difficult to get a permit to sell food."
            },
            {
              "key": "E",
              "text": "A competitor was selling similar food in their area."
            },
            {
              "key": "F",
              "text": "They worked very long hours."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Thai Basil",
              "answer": "F",
              "explanation": "My friends who run Thai Basil started by juggling their street food business with their day jobs in a restaurant. Their work-life balance was non-existent as they were working til midnight in the restaurant all week and then took their food truck to markets on their days off"
            },
            {
              "number": 18,
              "prompt": "Basque",
              "answer": "A",
              "explanation": "The owners of Basque found it was hard to make a profit because the price of fish - essential for some of their dishes - was so high"
            },
            {
              "number": 19,
              "prompt": "Lou's kitchen",
              "answer": "B",
              "explanation": "The owners of Lou’s kitchen were making salads to order from their van and some of their dishes were quite complicated. At one of their first events they ended up with people standing in a long queue for more than 15 minutes - and many of them lost patience. So make sure whatever you offer can be served quickly and efficiently"
            },
            {
              "number": 20,
              "prompt": "Chip Chop",
              "answer": "D",
              "explanation": "The owners of Chip Chop had found a perfect venue near a beach where there weren’t any other street food trucks. But what they hadn’t realised was that they’d need a special licence - which individual businesses don’t need at markets or festivals. It was a complicated process and in the end they gave up"
            }
          ],
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
          "instructions": "Choose TWO letters, A–E. Which TWO points do the speakers make about the terms 'ethical' and 'sustainable' fashion?",
          "options": [
            {
              "key": "A",
              "text": "Their definitions keep changing."
            },
            {
              "key": "B",
              "text": "People think they mean the same thing."
            },
            {
              "key": "C",
              "text": "The term 'eco-friendly' is preferable."
            },
            {
              "key": "D",
              "text": "They are often used imprecisely."
            },
            {
              "key": "E",
              "text": "Companies should avoid using them on clothing labels."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO points do the speakers make about the terms 'ethical' and 'sustainable' fashion?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "most people use these terms interchangeably They’re often deliberately vague, I think, and don’t provide enough information about how their products are made"
            },
            {
              "number": 22,
              "prompt": "Which TWO points do the speakers make about the terms 'ethical' and 'sustainable' fashion?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "most people use these terms interchangeably They’re often deliberately vague, I think, and don’t provide enough information about how their products are made"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO claims about wool production do the speakers disagree with?",
          "options": [
            {
              "key": "A",
              "text": "Sheep are generally well-treated."
            },
            {
              "key": "B",
              "text": "Wool is easy to recycle."
            },
            {
              "key": "C",
              "text": "Wool is a long-lasting fabric."
            },
            {
              "key": "D",
              "text": "Wool production involves few chemicals."
            },
            {
              "key": "E",
              "text": "Sheep do less environmental damage than other livestock."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO claims about wool production do the speakers disagree with?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "RYAN: And it also lasts a long time and can be recycled. All very positive. But I wasn’t convinced by the argument that wool production is sustainable because it doesn’t use many chemicals - what about all the fungicides and insecticides used in sheep farming? MADDY: Good point. And I couldn’t find any evidence for the claim about sheep farming being better for the environment than cattle farming. RYAN: No - they’re both really bad"
            },
            {
              "number": 24,
              "prompt": "Which TWO claims about wool production do the speakers disagree with?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "RYAN: And it also lasts a long time and can be recycled. All very positive. But I wasn’t convinced by the argument that wool production is sustainable because it doesn’t use many chemicals - what about all the fungicides and insecticides used in sheep farming? MADDY: Good point. And I couldn’t find any evidence for the claim about sheep farming being better for the environment than cattle farming. RYAN: No - they’re both really bad"
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What comment do the speakers make about each of the following semi-synthetic fabrics? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "The production process is fuel efficient."
            },
            {
              "key": "B",
              "text": "It is the least sustainable of alternative fabrics."
            },
            {
              "key": "C",
              "text": "Production costs are high."
            },
            {
              "key": "D",
              "text": "It provides additional health benefits."
            },
            {
              "key": "E",
              "text": "It is not durable in the long-term."
            },
            {
              "key": "F",
              "text": "It needs to be produced in a certain way to be sustainable."
            },
            {
              "key": "G",
              "text": "Chemicals required for production can be reused."
            },
            {
              "key": "H",
              "text": "This is from a wholly sustainable source."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Lyocell",
              "answer": "G",
              "explanation": "Over 99% of dissolving agents used in the manufacturing process are used again"
            },
            {
              "number": 26,
              "prompt": "Cupro",
              "answer": "B",
              "explanation": "RYAN: Made from byproducts of the cotton industry to create a kind of vegan silk. But I’m not sure how sustainable this really is as there are so many reports of pollution caused by the manufacturing process.MADDY: Mmm. It doesn’t compare favourably with all the other sustainable fabrics we’ve looked at, no"
            },
            {
              "number": 27,
              "prompt": "Bamboo",
              "answer": "F",
              "explanation": "RYAN: Bamboo is one fabric we’re all familiar with. But I didn’t know that it was only organic bamboo that’s truly sustainable"
            },
            {
              "number": 28,
              "prompt": "EcoVero",
              "answer": "A",
              "explanation": "Probably because manufacturing causes 50 percent fewer emissions and takes up half as much energy as conventional fabrics"
            },
            {
              "number": 29,
              "prompt": "Cork",
              "answer": "H",
              "explanation": "MADDY: Mmm and it’s the only fabric that’s fundamentally sustainable - the cork trees it comes from are renewable and the product itself is both recyclable and biodegradable - which is unique.RYAN: And the harvesting process is actually good for the trees. There are no downsides to using this source at all"
            },
            {
              "number": 30,
              "prompt": "Hemp",
              "answer": "D",
              "explanation": "RYAN: Yes. Did you know that clothes made from hemp protect the wearer from the sun and it’s also antibacterial"
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
              "text": "Definition: an animal or plant that causes harm to an environment after being introduced by humans"
            },
            {
              "kind": "static",
              "text": "An invasive species can be a problem when it: eats native species. introduces a new"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": ". takes food from native species. threatens an entire",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": ".",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "How invasive species spread accidentally e.g. via people returning from their"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "or on cargo ships intentionally e.g. for pest control, or as",
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
              "kind": "subheader",
              "text": "Examples of invasive species"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Japanese knotweed plants were popular among 19th-century gardeners in the UK."
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
              "text": "Tackling invasive species"
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
              "prompt": "_______",
              "answer": [
                "disease"
              ],
              "wordLimit": 1,
              "explanation": "First of all, invasive species may eat native species, or sometimes they may bring a disease with them, which native species have never faced before and therefore have no defences against"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "ecosystem"
              ],
              "wordLimit": 1,
              "explanation": "Species invasions are one of the biggest causes of damage in an ecosystem, actually putting its survival at risk"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "holiday"
              ],
              "wordLimit": 1,
              "explanation": "(s) This could be intentional, or it could be accidental, such as when people who’ve been on holiday in another country come back with, say, the seeds of plants on their clothes or shoes"
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "pets"
              ],
              "wordLimit": 1,
              "explanation": "But sometimes humans deliberately move animals and plants around the world, for example to use them to control pests on farms, or to be pets"
            },
            {
              "number": 35,
              "prompt": "Rhinella marina (toads) were introduced to Australia from Hawaii in 1935 to eat a type of insect that was damaging the _______ plantations. failed to solve the problem and became widespread in the north of Australia. are poisonous for any species that eats them and reduce the food available for native frogs.",
              "answer": [
                "sugar"
              ],
              "wordLimit": 1,
              "explanation": "It was hoped that the toads would eat the grey-backed beetles responsible for destroying crops of sugar on many of the plantations"
            },
            {
              "number": 36,
              "prompt": "Rhododendron plants prevent _______ from reaching native plants.",
              "answer": [
                "light"
              ],
              "wordLimit": 1,
              "explanation": "Another invasive plant is rhododendrons, which can be found in UK parks and woodlands. Their introduction dates back to 1763, but they’re now seen as harmful because they block out so much light that native wild flowers can’t grow beneath them"
            },
            {
              "number": 37,
              "prompt": "Grey squirrels from N. America reduce sources of food for the UK's native red squirrels and spread a _______ that kills red squirrels.",
              "answer": [
                "virus"
              ],
              "wordLimit": 1,
              "explanation": "Grey squirrels have outcompeted the smaller, native red squirrels. They both eat the same food, and the grey squirrels carry a type of virus that is deadly to the red squirrels"
            },
            {
              "number": 38,
              "prompt": "Monitoring helps us to understand the _______ of invasive species and the impact they have.",
              "answer": [
                "behaviour"
              ],
              "wordLimit": 1,
              "explanation": "/ behavior The first step in controlling invasive species is learning about the behaviour of new species coming into the country. Monitoring is an important part of this, so that we can know if the new species begins to have a negative impact in its new environment"
            },
            {
              "number": 39,
              "prompt": "Setting up a national _______ makes it easier to track them.",
              "answer": [
                "database"
              ],
              "wordLimit": 1,
              "explanation": "One effective way to keep track of invasive species is to create a database for the whole country"
            },
            {
              "number": 40,
              "prompt": "Asking the public to _______ and report them helps with monitoring.",
              "answer": [
                "photograph"
              ],
              "wordLimit": 1,
              "explanation": "They should be encouraged to photograph harmful species - because this helps with identification - and then to report when and where these were observed"
            }
          ],
          "formTitle": "Invasive species",
          "id": "g31"
        }
      ]
    }
  ]
}
$c21t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 21',
  'Test 4',
  'academic',
  2004,
  $c21t4l$
{
  "audioPath": "Cambridge 21 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the form below. Write ONE WORD ONLY for each answer.",
          "formContent": [
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
              "text": "Purpose of today's trip: has visited the"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "looking for a new",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "collecting",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "(after repair)",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "Opinions about shopping in the town centre"
            },
            {
              "kind": "static",
              "text": "Finds the service in shops is excellent"
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
              "text": "Opinions about new out-of-town Shopping Centre"
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
              "prompt": "Name: Martyn _______",
              "answer": [
                "Leigh"
              ],
              "wordLimit": 1,
              "explanation": "MAN: Martyn Leigh. Martyn’s with a Y. WOMAN: And is your family name spelt L-double-E? MAN: It’s L-E-I-G-H"
            },
            {
              "number": 2,
              "prompt": "Today's journey to Broadbeach town centre: used his _______",
              "answer": [
                "motorbike"
              ],
              "wordLimit": 1,
              "explanation": "Well, normally I catch the bus, but I’m on my motorbike today because I’m going to work later"
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "hairdresser"
              ],
              "wordLimit": 1,
              "explanation": "I’ve just been to the hairdresser. You see, I have a job interview at the council in a few days"
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "suit"
              ],
              "wordLimit": 1,
              "explanation": "And now I’m on my way to buy a suit that I can wear to the interview"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "laptop"
              ],
              "wordLimit": 1,
              "explanation": "Well, I’ve got to go and pick up my laptop. It broke a couple of days ago so I took it to the shop to get it fixed. They had to order a spare part, but apparently it’s ready for collection now"
            },
            {
              "number": 6,
              "prompt": "Preferred day for shopping: _______",
              "answer": [
                "Monday"
              ],
              "wordLimit": 1,
              "explanation": "Well it’s more a question of when I’m free. If I’m free on a Monday, that’s when I choose to come into town. The shops are less busy then, which I always prefer"
            },
            {
              "number": 7,
              "prompt": "Thinks there are too many places selling _______",
              "answer": [
                "coffee"
              ],
              "wordLimit": 1,
              "explanation": "WOMAN: And what about recent changes? What do you like and dislike about them? For example, there are a lot of new coffee shops now, are you enjoying them? MAN: No, there are too many of them. It’s a shame as those places could be occupied by other kinds of shops"
            },
            {
              "number": 8,
              "prompt": "Would like more places to buy _______",
              "answer": [
                "books"
              ],
              "wordLimit": 1,
              "explanation": "Well, I think we have enough clothing shops. But there’s only one place that sells books at the moment. It’d be nice to have a choice, you know"
            },
            {
              "number": 9,
              "prompt": "Likes the _______ best",
              "answer": [
                "plants"
              ],
              "wordLimit": 1,
              "explanation": "But my favourite thing is the plants they’ve put around the building"
            },
            {
              "number": 10,
              "prompt": "Believes the _______ is unnecessary",
              "answer": [
                "cinema"
              ],
              "wordLimit": 1,
              "explanation": "Like the new cinema? MAN: Nah, not yet. I can’t see any advantage in having it there because the one in town is actually bigger"
            }
          ],
          "formTitle": "Survey about shopping in Broadbeach",
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
          "instructions": "Choose TWO letters, A–E. In which TWO areas of the business exhibition did James Craig promote his company last year?",
          "options": [
            {
              "key": "A",
              "text": "the Digital Marketing Centre"
            },
            {
              "key": "B",
              "text": "the TalkCon Zone"
            },
            {
              "key": "C",
              "text": "the Breakout area"
            },
            {
              "key": "D",
              "text": "the Business Village"
            },
            {
              "key": "E",
              "text": "the Business Connections Zone"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "In which TWO areas of the business exhibition did James Craig promote his company last year?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "We also used the Breakout area where people could sit down and relax, and try out our products, and due to popular request we used that again last year. Last year we also sponsored the innovative Business Connections Zone where people could leave their contact details on a board to contact other companies, and that also effectively raised our corporate profile"
            },
            {
              "number": 12,
              "prompt": "In which TWO areas of the business exhibition did James Craig promote his company last year?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "We also used the Breakout area where people could sit down and relax, and try out our products, and due to popular request we used that again last year. Last year we also sponsored the innovative Business Connections Zone where people could leave their contact details on a board to contact other companies, and that also effectively raised our corporate profile"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO facts are given about discounts on popular brands available to exhibitors?",
          "options": [
            {
              "key": "A",
              "text": "They are available to all members of exhibiting companies."
            },
            {
              "key": "B",
              "text": "They can be used for both food and clothing."
            },
            {
              "key": "C",
              "text": "They only apply if people spend at least £400."
            },
            {
              "key": "D",
              "text": "They can be used by family members."
            },
            {
              "key": "E",
              "text": "The percentage saved is always the same."
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO facts are given about discounts on popular brands available to exhibitors?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "As well as a unique chance to publicise your company, businesses who exhibit with us can claim discounts on a number of popular brands, including major high street fashion and jewellery outlets, as well as grocery chains. Discounts available range from 3.5% up to an amazing 15%, so you can save a lot of money. In fact, the average saving made by each exhibitor came to over £400! The scheme is available to every member of your organisation so this is a benefit that really does have something for you all"
            },
            {
              "number": 14,
              "prompt": "Which TWO facts are given about discounts on popular brands available to exhibitors?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "As well as a unique chance to publicise your company, businesses who exhibit with us can claim discounts on a number of popular brands, including major high street fashion and jewellery outlets, as well as grocery chains. Discounts available range from 3.5% up to an amazing 15%, so you can save a lot of money. In fact, the average saving made by each exhibitor came to over £400! The scheme is available to every member of your organisation so this is a benefit that really does have something for you all"
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which topic will each of the following speakers focus on? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Supporting job seekers"
            },
            {
              "key": "B",
              "text": "Dealing with personal problems"
            },
            {
              "key": "C",
              "text": "Effects of an unexpectedly rapid expansion"
            },
            {
              "key": "D",
              "text": "A global range of business experiences"
            },
            {
              "key": "E",
              "text": "Coping with financial set-backs"
            },
            {
              "key": "F",
              "text": "Developing a company in response to changing markets"
            },
            {
              "key": "G",
              "text": "Combining business success with contributions to charities"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Jim Clowrie",
              "answer": "C",
              "explanation": "Jim Clowrie started off selling vegetables from a small plot, then opened a small café. Rather to his surprise this became a bit of a sensation, and in a remarkably short time he had opened an amazing 76 restaurants worldwide"
            },
            {
              "number": 16,
              "prompt": "David France",
              "answer": "G",
              "explanation": "David France will be giving an inspirational talk about how as a business- minded teenager he managed to set up his own company, and even to be the first person under 18 to get a business bank account. David’s company has gone from strength to strength but he isn’t just interested in making money - he also makes regular donations to organisations helping those in need both in the UK and elsewhere in the world"
            },
            {
              "number": 17,
              "prompt": "Oliver Stanton",
              "answer": "D",
              "explanation": "Oliver Stanton was born and educated in the UK, and then went to Malaysia where he set up a rubber-wood furniture business. He then built log houses in the mountains in Japan before moving to Hong Kong to set up a digital marketing business. After that he moved back to the UK with his wife Saiphin, and together they opened a Thai café. He’ll be telling you about what he discovered during his travels around the world about business practices in different cultures"
            },
            {
              "number": 18,
              "prompt": "Francesca Heptonstall",
              "answer": "A",
              "explanation": "Her main business interest is in technology, but she’s also passionate about helping people gain employment and organises an annual jobs fair, so she’ll be concentrating on this in her talk"
            },
            {
              "number": 19,
              "prompt": "Salman Khan",
              "answer": "F",
              "explanation": "Salman Khan is the Chief Executive of QBF Enterprises, and has turned around this business from a major publishing business to one of the UK’s largest digital marketing service providers. He’ll be talking about the need for flexibility to cope with new directions in today’s business world"
            },
            {
              "number": 20,
              "prompt": "Annie Craven",
              "answer": "B",
              "explanation": "Her session will offer an interactive look at different obstacles in people’s own lives, not just in business. She also looks at how you can overcome them, whether you’re starting out in business or at the top of your game"
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
          "label": "Questions 21–23",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "Which aspect of their presentation are Mia and Leo both concerned about?",
              "options": [
                {
                  "key": "A",
                  "text": "meeting the deadline"
                },
                {
                  "key": "B",
                  "text": "finding suitable examples"
                },
                {
                  "key": "C",
                  "text": "including original ideas"
                }
              ],
              "answer": "B",
              "explanation": "But we mustn’t be too general, we’ve got to support our points by referring to specific cases. So that’ll need a lot of work. MIA: I’m afraid so"
            },
            {
              "number": 22,
              "prompt": "The students decide to focus their assignment on housing for",
              "options": [
                {
                  "key": "A",
                  "text": "family groups."
                },
                {
                  "key": "B",
                  "text": "old people."
                },
                {
                  "key": "C",
                  "text": "single people."
                }
              ],
              "answer": "A",
              "explanation": "MIA: Good. We’d better decide now what type of housing we’re going to focus on. How about housing for different generations living together? LEO: We could do. Or accommodation for one person? MIA: I think someone else is doing that. I was wondering about housing for the elderly? That’s likely to become more important. LEO: Yeah that’s true. But I think your suggestion about intergenerational living might be more interesting - let’s go with that"
            },
            {
              "number": 23,
              "prompt": "The students agree that demand for accommodation in urban areas should be met by",
              "options": [
                {
                  "key": "A",
                  "text": "repurposing offices and factories."
                },
                {
                  "key": "B",
                  "text": "constructing tall buildings."
                },
                {
                  "key": "C",
                  "text": "developing creative ideas for smaller homes."
                }
              ],
              "answer": "B",
              "explanation": "But I think the solution is to design multi-storey apartment blocks. MIA: Building up rather than out, yes"
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 24–30",
          "instructions": "What opinion is given about each of the following developments? Choose the correct letter, A–I, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "This could cause unnecessary anxiety."
            },
            {
              "key": "B",
              "text": "This would be especially beneficial for city residents."
            },
            {
              "key": "C",
              "text": "This would be challenging for young people."
            },
            {
              "key": "D",
              "text": "This would have environmental benefits."
            },
            {
              "key": "E",
              "text": "This could encourage creativity."
            },
            {
              "key": "F",
              "text": "This could lead to social problems."
            },
            {
              "key": "G",
              "text": "This could enable retired people to share a project."
            },
            {
              "key": "H",
              "text": "This would help some people but cause problems for others."
            },
            {
              "key": "I",
              "text": "This would suit both existing and new members of a household."
            }
          ],
          "questions": [
            {
              "number": 24,
              "prompt": "use of roof space for gardens",
              "answer": "B",
              "explanation": "In fact it doesn’t have to be high-rise, you can do it on a one-storey building in a suburb, but it would greatly improve how you feel if you live in an urban high-rise"
            },
            {
              "number": 25,
              "prompt": "shared working spaces",
              "answer": "E",
              "explanation": "Yes, so they aren’t having to travel to an office but can still interact with others. That’s often how new ideas get generated - by chatting to someone from a different profession"
            },
            {
              "number": 26,
              "prompt": "moveable internal walls",
              "answer": "I",
              "explanation": "I read about a type of design where the internal walls of an apartment are moveable, so the space can be adapted over time as people’s needs change. Like when children leave school and start working but still continue to live with their parents for many years? Or when an elderly relative moves in with the family it would mean they could still have their own space, specially designed for their needs"
            },
            {
              "number": 27,
              "prompt": "smart mirrors in bathrooms",
              "answer": "A",
              "explanation": "Nor am I. People might worry about conditions which aren’t serious at all"
            },
            {
              "number": 28,
              "prompt": "bike sheds with charging points",
              "answer": "D",
              "explanation": "Yes. That would encourage more people to cycle, instead of using their car. Much better for the planet"
            },
            {
              "number": 29,
              "prompt": "restriction of cars to certain areas",
              "answer": "H",
              "explanation": "LEO: I read about one housing development where cars had to be left just outside it, so the centre was all a pedestrianised area. Great for families with children. MIA: Maybe. But what if you’re disabled or elderly, and can’t walk far? It wouldn’t be so good for people like that"
            },
            {
              "number": 30,
              "prompt": "communal vegetable plots",
              "answer": "G",
              "explanation": "I saw a scheme for communal vegetable plots, where neighbours could decide what to grow together. That’d be a great way for older people to get to know one another, especially if they’re no longer going out to work"
            }
          ],
          "id": "g24"
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
              "text": "Background"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Current post-surgical strategies focus mainly on pain relief."
            },
            {
              "kind": "subheader",
              "text": "Recent research"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "- improved hospital patients' sense of wellbeing."
            },
            {
              "kind": "static",
              "text": "- reduced the length of their stay."
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
              "text": "Medical records confirmed that patients who were played music in hospital needed less"
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
              "text": "."
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "."
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
              "prompt": "Surgery impacts patients because they may experience discomfort or unwelcome changes to their _______ .",
              "answer": [
                "routine"
              ],
              "wordLimit": 1,
              "explanation": "They may also be negatively affected by having their routine disturbed, you know, like if they can’t do the things they normally do, or have to devote a lot of time to appointments such as physiotherapy, to aid their recovery"
            },
            {
              "number": 32,
              "prompt": "A study reviewed data from about 100 _______ and found that listening to music",
              "answer": [
                "trials"
              ],
              "wordLimit": 1,
              "explanation": "They identified nearly a hundred trials involving a total of seven thousand patients who were played recorded music as part of their post-operative care"
            },
            {
              "number": 33,
              "prompt": "The patients in the study all listened to music with a _______ effect.",
              "answer": [
                "calming"
              ],
              "wordLimit": 1,
              "explanation": "However, a common factor was that the chosen music had a calming quality"
            },
            {
              "number": 34,
              "prompt": "The music was mostly played through music _______ .",
              "answer": [
                "pillows"
              ],
              "wordLimit": 1,
              "explanation": "More often though, the mode of delivery was by what are known as music pillows"
            },
            {
              "number": 35,
              "prompt": "Patients reported an absence or low levels of _______ .",
              "answer": [
                "anxiety"
              ],
              "wordLimit": 1,
              "explanation": "When asked to report their experience of listening to music, surgical patients said that either they had no feelings of anxiety at any point, or those feelings were only slight"
            },
            {
              "number": 36,
              "prompt": "_______ than those who weren't played music.",
              "answer": [
                "medication"
              ],
              "wordLimit": 1,
              "explanation": "And in every case, those who were given music to listen to didn’t need as much medication to ease their pain as those patients who weren’t played music"
            },
            {
              "number": 37,
              "prompt": "The best results were achieved when patients were played music while they were _______",
              "answer": [
                "awake"
              ],
              "wordLimit": 1,
              "explanation": "And it even worked when patients were played music under general anaesthetic, although the positive effects were greater when patients were awake"
            },
            {
              "number": 38,
              "prompt": "The study concluded that playing music was effective because it served as a _______",
              "answer": [
                "distraction"
              ],
              "wordLimit": 1,
              "explanation": "A lot of people listen to music in daily life as a way to relax and forget their problems, but the researchers came to the conclusion that it worked on patients by distraction"
            },
            {
              "number": 39,
              "prompt": "The researchers recommend playing either music or sounds from _______ to all surgical patients.",
              "answer": [
                "nature"
              ],
              "wordLimit": 1,
              "explanation": "They say patients should be able to choose what they’d like to listen to, and if they prefer, recordings taken from nature can be just as good as music"
            },
            {
              "number": 40,
              "prompt": "A future study will investigate the best _______ for the music.",
              "answer": [
                "volume"
              ],
              "wordLimit": 1,
              "explanation": "Clearly, there’s more to learn about this area, and the team now plan to focus their next research on the most appropriate volume to play the music at"
            }
          ],
          "formTitle": "Music therapy for surgical patients",
          "id": "g31"
        }
      ]
    }
  ]
}
$c21t4l$,
  true
);

