DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 13' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 13',
  'Test 4',
  'academic',
  2004,
  $c13t4l$
{
  "audioPath": "Cambridge 13 Test 4.mp3",
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
              "text": "Alex complete his training in …..2014……"
            },
            {
              "kind": "static",
              "text": "About the applicant:"
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
              "text": "Benefits of doing training at JPNW:"
            },
            {
              "kind": "static",
              "text": "Lots of opportunities because of the size of the organisation."
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "The training experience increases people’s confidence a lot."
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
              "text": "Advice for interview:"
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
              "prompt": "At first, Alex did his training in the _______ department.",
              "answer": [
                "Finance"
              ],
              "wordLimit": 1,
              "explanation": "I did my initial training in Finance."
            },
            {
              "number": 2,
              "prompt": "Alex didn’t have a qualification from school in _______ .",
              "answer": [
                "Maths"
              ],
              "wordLimit": 1,
              "explanation": "/ Math / Mathematics I didn’t do well in my exams at school and I was really worried because I failed Maths."
            },
            {
              "number": 3,
              "prompt": "Alex thinks he should have done the diploma in _______ skills.",
              "answer": [
                "business"
              ],
              "wordLimit": 1,
              "explanation": "I took the one on IT skills but I wish I’d done that one instead."
            },
            {
              "number": 4,
              "prompt": "Age of other trainees: the youngest was _______ .",
              "answer": [
                "17"
              ],
              "wordLimit": 1,
              "explanation": "/ seventeen there was only one person younger than me, how was 17."
            },
            {
              "number": 5,
              "prompt": "Trainees receive the same amount of _______ as permanent staff.",
              "answer": [
                "holiday"
              ],
              "wordLimit": 1,
              "explanation": "/ holidays / vacation / vacations Buy you get the same number of days’ holiday as everyone else."
            },
            {
              "number": 6,
              "prompt": "Trainees go to _______ one day per month.",
              "answer": [
                "college"
              ],
              "wordLimit": 1,
              "explanation": "Yes, one day each month."
            },
            {
              "number": 7,
              "prompt": "The company is in a convenient _______ .",
              "answer": [
                "location"
              ],
              "wordLimit": 1,
              "explanation": "Yes, it’s very close to the train station so the location’s a real advantage."
            },
            {
              "number": 8,
              "prompt": "Don’t wear _______ .",
              "answer": [
                "jeans"
              ],
              "wordLimit": 1,
              "explanation": "Nothing too casual - like jeans"
            },
            {
              "number": 9,
              "prompt": "Don’t be _______ .",
              "answer": [
                "late"
              ],
              "wordLimit": 1,
              "explanation": "Erm, well I know it’s really obvious but arrive in plenty of time."
            },
            {
              "number": 10,
              "prompt": "Make sure you _______ .",
              "answer": [
                "smile"
              ],
              "wordLimit": 1,
              "explanation": "And one other useful piece of advice my manager told me before I had the interview for this job - is to smile."
            }
          ],
          "formTitle": "Alex’s Training",
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
              "prompt": "Annie recommends that when cross-country skiing, the visitors should",
              "options": [
                {
                  "key": "A",
                  "text": "get away from the regular trails."
                },
                {
                  "key": "B",
                  "text": "stop to enjoy views of the scenery."
                },
                {
                  "key": "C",
                  "text": "go at a slow speed at the beginning."
                }
              ],
              "answer": "A",
              "explanation": "There are marked trails, but you can also leave these and go off on your own and that’s an experience not to be missed."
            },
            {
              "number": 12,
              "prompt": "What does Annie tell the group about this afternoon’s dog-sled trip?",
              "options": [
                {
                  "key": "A",
                  "text": "Those who want to can take part in a race."
                },
                {
                  "key": "B",
                  "text": "Anyone has the chance to drive a team of dogs."
                },
                {
                  "key": "C",
                  "text": "One group member will be chosen to lead the trail."
                }
              ],
              "answer": "B",
              "explanation": "If you want, you can have your own team for the afternoon and learn how to drive them"
            },
            {
              "number": 13,
              "prompt": "What does Annie say about the team relay event?",
              "options": [
                {
                  "key": "A",
                  "text": "All participants receive a medal."
                },
                {
                  "key": "B",
                  "text": "The course is 4 km long."
                },
                {
                  "key": "C",
                  "text": "Each team is led by a teacher."
                }
              ],
              "answer": "A",
              "explanation": "there’s a medal for everyone who takes part."
            },
            {
              "number": 14,
              "prompt": "On the snow-shoe trip, the visitors will",
              "options": [
                {
                  "key": "A",
                  "text": "visit an old gold mine."
                },
                {
                  "key": "B",
                  "text": "learn about unusual flowers."
                },
                {
                  "key": "C",
                  "text": "climb to the top of a mountain."
                }
              ],
              "answer": "C",
              "explanation": "It’s a long ascent, though not too steep, and walkers generally take a couple of days to get to the summit and return."
            },
            {
              "number": 15,
              "prompt": "The cost of accommodation in the mountain hut includes",
              "options": [
                {
                  "key": "A",
                  "text": "a supply of drinking water."
                },
                {
                  "key": "B",
                  "text": "transport of visitors’ luggage."
                },
                {
                  "key": "C",
                  "text": "cooked meals."
                }
              ],
              "answer": "A",
              "explanation": "It’s got cooking facilities, firewood and water for drinking."
            },
            {
              "number": 16,
              "prompt": "If there is a storm while the visitors are in the hut, they should",
              "options": [
                {
                  "key": "A",
                  "text": "contact the bus driver."
                },
                {
                  "key": "B",
                  "text": "wait until the weather improves."
                },
                {
                  "key": "C",
                  "text": "use the emergency locator beacon."
                }
              ],
              "answer": "B",
              "explanation": "In that case, stay in the hut - generally the storms don’t last long."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "What information does Annie give about skiing on each of the following mountain trails? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "It has a good place to stop and rest."
            },
            {
              "key": "B",
              "text": "It is suitable for all abilities."
            },
            {
              "key": "C",
              "text": "It involves crossing a river."
            },
            {
              "key": "D",
              "text": "It demands a lot of skill."
            },
            {
              "key": "E",
              "text": "It may be closed in bad weather."
            },
            {
              "key": "F",
              "text": "It has some very narrow sections."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Highland Trail",
              "answer": "B",
              "explanation": "This trail’s been designed to give first-timers an experience they’ll enjoy regardless of their age or skill, but it’s also ideal for experts to practise their technique."
            },
            {
              "number": 18,
              "prompt": "Pine Trail",
              "answer": "D",
              "explanation": "But if you’ve fully mastered the techniques needed for hills, it’s great fun."
            },
            {
              "number": 19,
              "prompt": "Stony Trail",
              "answer": "A",
              "explanation": "There’s a shelter half-way where you can sit and take a break and enjoy the afternoon sunshine."
            },
            {
              "number": 20,
              "prompt": "Loser’s Trail",
              "answer": "E",
              "explanation": "check with us before you set out to make sure the trail’s open that day."
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
          "type": "multiple_choice",
          "label": "Questions 21–26",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "What was Jack’s attitude to nutritional food labels before this project?",
              "options": [
                {
                  "key": "A",
                  "text": "He didn’t read everything on them."
                },
                {
                  "key": "B",
                  "text": "He didn’t think they were important."
                },
                {
                  "key": "C",
                  "text": "He thought they were too complicated."
                }
              ],
              "answer": "A",
              "explanation": "I’ve never really been concerned enough to check how healthy a product is."
            },
            {
              "number": 22,
              "prompt": "Alice says that before doing this project,",
              "options": [
                {
                  "key": "A",
                  "text": "she was unaware of what certain foods contained."
                },
                {
                  "key": "B",
                  "text": "she was too lazy to read food labels."
                },
                {
                  "key": "C",
                  "text": "she was only interested in the number of calories."
                }
              ],
              "answer": "A",
              "explanation": "I tended to believe claims on packaging like ‘low in fat’. But I now realise that the ‘healthy’ yoghurt I’ve bought for years is full of sugar and that it’s actually quite high in calories."
            },
            {
              "number": 23,
              "prompt": "When discussing supermarket brands of pizza, Jack agrees with Alice that",
              "options": [
                {
                  "key": "A",
                  "text": "the list of ingredients is shocking."
                },
                {
                  "key": "B",
                  "text": "he will hesitate before buying pizza again."
                },
                {
                  "key": "C",
                  "text": "the nutritional label is misleading."
                }
              ],
              "answer": "C",
              "explanation": "Yes, because unless you read the label really carefully, you wouldn’t know that the nutritional values given are for half a pizza."
            },
            {
              "number": 24,
              "prompt": "Jack prefers the daily value system to other labelling systems because it is",
              "options": [
                {
                  "key": "A",
                  "text": "more accessible."
                },
                {
                  "key": "B",
                  "text": "more logical."
                },
                {
                  "key": "C",
                  "text": "more comprehensive."
                }
              ],
              "answer": "C",
              "explanation": "I’m not sure it’s the easiest for people to use but at least you get the full story."
            },
            {
              "number": 25,
              "prompt": "What surprised both students about one flavour of crisps?",
              "options": [
                {
                  "key": "A",
                  "text": "The percentage of artificial additives given was incorrect."
                },
                {
                  "key": "B",
                  "text": "The products did not contain any meat."
                },
                {
                  "key": "C",
                  "text": "The labels did not list all the ingredients."
                }
              ],
              "answer": "B",
              "explanation": "Yeah. I don’t understand how they can get away with calling them chicken flavour when they only contain artificial additives."
            },
            {
              "number": 26,
              "prompt": "What do the students think about research into the impact of nutritional food labelling?",
              "options": [
                {
                  "key": "A",
                  "text": "It did not produce clear results."
                },
                {
                  "key": "B",
                  "text": "It focused on the wrong people."
                },
                {
                  "key": "C",
                  "text": "It made unrealistic recommendations."
                }
              ],
              "answer": "A",
              "explanation": "Those findings weren’t that conclusive"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 27–28",
          "instructions": "Choose TWO letters, A–E. Which TWO things surprised the students about the traffic-light system for nutritional labels?",
          "options": [
            {
              "key": "A",
              "text": "its widespread use"
            },
            {
              "key": "B",
              "text": "the fact that it is voluntary for supermarkets"
            },
            {
              "key": "C",
              "text": "how little research was done before its introduction"
            },
            {
              "key": "D",
              "text": "its unpopularity with food manufacturers"
            },
            {
              "key": "E",
              "text": "the way that certain colours are used"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Which TWO things surprised the students about the traffic-light system for nutritional labels?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Buy it’s not been adopted universally what I couldn’t get over is the fact that it was brought in without enough consultation"
            },
            {
              "number": 28,
              "prompt": "Which TWO things surprised the students about the traffic-light system for nutritional labels?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Buy it’s not been adopted universally what I couldn’t get over is the fact that it was brought in without enough consultation"
            }
          ],
          "id": "g27"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 29–30",
          "instructions": "Choose TWO letters, A–E. Which TWO things are true about the participants in the study on the traffic-light system?",
          "options": [
            {
              "key": "A",
              "text": "They had low literacy levels."
            },
            {
              "key": "B",
              "text": "They were regular consumers of packaged food."
            },
            {
              "key": "C",
              "text": "They were selected randomly."
            },
            {
              "key": "D",
              "text": "They were from all socio-economic groups."
            },
            {
              "key": "E",
              "text": "They were interviewed face-to-face."
            }
          ],
          "questions": [
            {
              "number": 29,
              "prompt": "Which TWO things are true about the participants in the study on the traffic-light system?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Yeah. But it’s good to get feedback from all socio-economic groups. But if they hadn’t interviewed participants face-to-face, they could have used a much bigger sample size."
            },
            {
              "number": 30,
              "prompt": "Which TWO things are true about the participants in the study on the traffic-light system?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Yeah. But it’s good to get feedback from all socio-economic groups. But if they hadn’t interviewed participants face-to-face, they could have used a much bigger sample size."
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
              "text": "Coffee in the Arab world"
            },
            {
              "kind": "static",
              "text": "These was small-scale trade in wild coffee from Ethiopia."
            },
            {
              "kind": "static",
              "text": "1522: Coffee was approved in the Ottoman court as a type of medicine."
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Coffee arrives in Europe (17th century)"
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
              "text": "Coffee and European colonization"
            },
            {
              "kind": "static",
              "text": "European powers established coffee plantations in their colonies."
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
              "kind": "question",
              "number": 38
            },
            {
              "kind": "subheader",
              "text": "Coffee in the 19th century"
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
              "prompt": "1623: In Constantinople, the ruler ordered the _______ of every coffee house.",
              "answer": [
                "destruction"
              ],
              "wordLimit": 1,
              "explanation": "in 1623 the ruler of Constantinople demanded the destruction of all the coffee houses in the city"
            },
            {
              "number": 32,
              "prompt": "Coffee shops were compared to _______ .",
              "answer": [
                "universities"
              ],
              "wordLimit": 1,
              "explanation": "/ university coffee shops became places where ordinary people, nearly always men, could meet to exchange ideas. Because of this, some people said that these places performed a similar function to universities."
            },
            {
              "number": 33,
              "prompt": "They played an important part in social and _______ changes.",
              "answer": [
                "political"
              ],
              "wordLimit": 1,
              "explanation": "many social movements and political developments had their origins in coffee house discussions."
            },
            {
              "number": 34,
              "prompt": "Types of coffee were often named according to the _______ they came from.",
              "answer": [
                "port"
              ],
              "wordLimit": 1,
              "explanation": "/ ports it’s interesting that the names given to these different types, like Mocha or Java coffee, were often taken from the port they were shipped to Europe from."
            },
            {
              "number": 35,
              "prompt": "In Brazil and the Caribbean, most cultivation depended on _______ .",
              "answer": [
                "slaves"
              ],
              "wordLimit": 1,
              "explanation": "/ slavery In Brazil and the various Caribbean colonies, coffee was grown in huge plantations and the workers there were almost all slaves."
            },
            {
              "number": 36,
              "prompt": "In Java, coffee was used as a form of _______ .",
              "answer": [
                "taxation"
              ],
              "wordLimit": 1,
              "explanation": "in Java, which had been colonized by the Dutch, the peasants grew coffee and passed a proportion of this on to the Dutch, so it was used as a means of taxation."
            },
            {
              "number": 37,
              "prompt": "Coffee became almost as important as _______ .",
              "answer": [
                "sugar"
              ],
              "wordLimit": 1,
              "explanation": "Coffee was grown in ever-increasing quantities to satisfy the growing demand from Europe, and it became nearly as important as sugar production"
            },
            {
              "number": 38,
              "prompt": "The move towards the consumption of _______ in Britain did not also take place in the USA.",
              "answer": [
                "tea"
              ],
              "wordLimit": 1,
              "explanation": "when the USA gained independence from Britain in 1766, they identified this drink with Britain, and coffee remained the preferred drink in the USA"
            },
            {
              "number": 39,
              "prompt": "Prices dropped because of improvements in _______ .",
              "answer": [
                "transportation"
              ],
              "wordLimit": 1,
              "explanation": "This was partly because new types of transportation had been developed which were cheaper and more efficient."
            },
            {
              "number": 40,
              "prompt": "Industrial workers found coffee helped them to work at _______ .",
              "answer": [
                "night"
              ],
              "wordLimit": 1,
              "explanation": "sometimes this meant their work didn’t stop when it got dark; they might have to continue throughout the night."
            }
          ],
          "formTitle": "The history of coffee",
          "id": "g31"
        }
      ]
    }
  ]
}
$c13t4l$,
  true
);
