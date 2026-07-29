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
