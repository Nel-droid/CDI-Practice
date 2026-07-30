DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 16',
  'Test 3',
  'academic',
  2004,
  $c16t3l$
{
  "audioPath": "Cambridge 16 Test 3.mp3",
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
              "text": "The course focuses on skills and safety"
            },
            {
              "kind": "static",
              "text": "Charlie would be placed in Level 5."
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Instructors"
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
              "text": "Classes"
            },
            {
              "kind": "static",
              "text": "The size of the classes is limited."
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
              "kind": "subheader",
              "text": "Day 1"
            },
            {
              "kind": "static",
              "text": "Charlie should arrive at 9.20 am on the first day."
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
              "text": "Cost"
            },
            {
              "kind": "static",
              "text": "The course costs $10 per week."
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "First of all, children at this level are taken to practise in a _______ .",
              "answer": [
                "park"
              ],
              "wordLimit": 1,
              "explanation": "They start off practising on the site here, and we aim to get them riding on the road, but first they’re taken to ride in the park, away from the traffic."
            },
            {
              "number": 2,
              "prompt": "Instructors wear _______ shirts.",
              "answer": [
                "blue"
              ],
              "wordLimit": 1,
              "explanation": "Then the instructors themselves are in blue shirts, and one of these is responsible for each class."
            },
            {
              "number": 3,
              "prompt": "A _______ is required and training is given.",
              "answer": [
                "reference"
              ],
              "wordLimit": 1,
              "explanation": "In order to be accepted, all our instructors have to submit a reference from someone who’s seen them work with children"
            },
            {
              "number": 4,
              "prompt": "There are quiet times during the morning for a _______ or a game.",
              "answer": [
                "story"
              ],
              "wordLimit": 1,
              "explanation": "They’re out riding most of the time but they have quiet times too, where their instructor might tell them a story that’s got something to do with cycling, or get them to play a game together."
            },
            {
              "number": 5,
              "prompt": "Classes are held even if there is _______ .",
              "answer": [
                "rain"
              ],
              "wordLimit": 1,
              "explanation": "Now, what happens if there’s rain? Do the classes still run?"
            },
            {
              "number": 6,
              "prompt": "What to bring a change of clothing a _______ shoes (not sandals)",
              "answer": [
                "snack"
              ],
              "wordLimit": 1,
              "explanation": "And a snack for break time."
            },
            {
              "number": 7,
              "prompt": "Charlie’s _______",
              "answer": [
                "medication"
              ],
              "wordLimit": 1,
              "explanation": "And just at present Charlie has to take medication every few hours, so I’ll make sure he has that."
            },
            {
              "number": 8,
              "prompt": "Before the class, his _______ will be checked.",
              "answer": [
                "helmet"
              ],
              "wordLimit": 1,
              "explanation": "The most important is that we have a very careful check to make sure that every child’s helmet fits properly."
            },
            {
              "number": 9,
              "prompt": "He should then go to the _______ to meet his class instructor.",
              "answer": [
                "tent"
              ],
              "wordLimit": 1,
              "explanation": "Then after that, all the instructors will be waiting to meet their classes, and they’ll meet up in the tent"
            },
            {
              "number": 10,
              "prompt": "_______ [10]",
              "answer": [
                "199"
              ],
              "wordLimit": 1,
              "explanation": "One hundred ninety-nine dollars"
            }
          ],
          "formTitle": "JUNIOR CYCLE CAMP",
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
          "instructions": "Choose TWO letters, A–E. According to Megan, what are the TWO main advantages of working in the agriculture and horticulture sectors?",
          "options": [
            {
              "key": "A",
              "text": "the active lifestyle"
            },
            {
              "key": "B",
              "text": "the above-average salaries"
            },
            {
              "key": "C",
              "text": "the flexible working opportunities"
            },
            {
              "key": "D",
              "text": "the opportunities for overseas travel"
            },
            {
              "key": "E",
              "text": "the chance to be in a natural environment"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "According to Megan, what are the TWO main advantages of working in the agriculture and horticulture sectors?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "For a start, they often offer opportunities for those who don’t want to be stuck with a 40-hour week, but need to juggle work with other responsibilities such as child care But there are certainly health benefits, especially in jobs where you’re not sitting all day looking at a screen"
            },
            {
              "number": 12,
              "prompt": "According to Megan, what are the TWO main advantages of working in the agriculture and horticulture sectors?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "For a start, they often offer opportunities for those who don’t want to be stuck with a 40-hour week, but need to juggle work with other responsibilities such as child care But there are certainly health benefits, especially in jobs where you’re not sitting all day looking at a screen"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO of the following are likely to be disadvantages for people working outdoors?",
          "options": [
            {
              "key": "A",
              "text": "the increasing risk of accidents"
            },
            {
              "key": "B",
              "text": "being in a very quiet location"
            },
            {
              "key": "C",
              "text": "difficult weather conditions at times"
            },
            {
              "key": "D",
              "text": "the cost of housing"
            },
            {
              "key": "E",
              "text": "the level of physical fitness required"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO of the following are likely to be disadvantages for people working outdoors?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "but can be extremely unpleasant when it’s cold and windy But if you like a lively city environment surrounded by lots of people, these jobs are probably not for you - they’re often in pretty remote areas."
            },
            {
              "number": 14,
              "prompt": "Which TWO of the following are likely to be disadvantages for people working outdoors?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "but can be extremely unpleasant when it’s cold and windy But if you like a lively city environment surrounded by lots of people, these jobs are probably not for you - they’re often in pretty remote areas."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "What information does Megan give about each of the following job opportunities? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "not a permanent job"
            },
            {
              "key": "B",
              "text": "involves leading a team"
            },
            {
              "key": "C",
              "text": "experience not essential"
            },
            {
              "key": "D",
              "text": "intensive work but also fun"
            },
            {
              "key": "E",
              "text": "chance to earn more through overtime"
            },
            {
              "key": "F",
              "text": "chance for rapid promotion"
            },
            {
              "key": "G",
              "text": "accommodation available"
            },
            {
              "key": "H",
              "text": "local travel involved"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Fresh food commercial manager",
              "answer": "D",
              "explanation": "They operate in a very fast-paced environment with low profit margins - the staff there work hard, but they play hard as well, so if you’ve a sociable personality this may be for you."
            },
            {
              "number": 16,
              "prompt": "Agronomist",
              "answer": "F",
              "explanation": "There are good opportunities for the right person to quickly make their way up the career ladder"
            },
            {
              "number": 17,
              "prompt": "Fresh produce buyer",
              "answer": "A",
              "explanation": "A leading supermarket is looking for a fresh produce buyer who is available for a 12-month maternity cover contract."
            },
            {
              "number": 18,
              "prompt": "Garden centre sales manager",
              "answer": "H",
              "explanation": "We have also received a request for a sales manager for a chain of garden centres. You will be visiting centres in the region to ensure their high levels of customer service are maintained."
            },
            {
              "number": 19,
              "prompt": "Tree technician",
              "answer": "C",
              "explanation": "A year’s experience would be preferred but the company might be prepared to consider someone who has just completed an appropriate training course."
            },
            {
              "number": 20,
              "prompt": "Farm worker",
              "answer": "G",
              "explanation": "Perks of the job include the possibility of renting a small cottage on the estate, and the chance to earn a competitive salary. A driving licence and tractor driving experience are essential."
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
          "instructions": "Choose TWO letters, A–E. Which TWO points does Adam make about his experiment on artificial sweeteners?",
          "options": [
            {
              "key": "A",
              "text": "The results were what he had predicted."
            },
            {
              "key": "B",
              "text": "The experiment was simple to set up"
            },
            {
              "key": "C",
              "text": "A large sample of people was tested."
            },
            {
              "key": "D",
              "text": "The subjects were unaware of what they were drinking."
            },
            {
              "key": "E",
              "text": "The test was repeated several times for each person."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO points does Adam make about his experiment on artificial sweeteners?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "It took me ages to decide exactly how I’d organise it, especially how I could make sure that people didn’t know which drink I was giving them. It was hard to keep track of it all, especially as I had so many people doing it"
            },
            {
              "number": 22,
              "prompt": "Which TWO points does Adam make about his experiment on artificial sweeteners?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "It took me ages to decide exactly how I’d organise it, especially how I could make sure that people didn’t know which drink I was giving them. It was hard to keep track of it all, especially as I had so many people doing it"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO problems did Rosie have when measuring the fat content of nuts?",
          "options": [
            {
              "key": "A",
              "text": "She used the wrong sort of nuts."
            },
            {
              "key": "B",
              "text": "She used an unsuitable chemical."
            },
            {
              "key": "C",
              "text": "She did not grind the nuts finely enough."
            },
            {
              "key": "D",
              "text": "The information on the nut package was incorrect."
            },
            {
              "key": "E",
              "text": "The weighing scales may have been unsuitable."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO problems did Rosie have when measuring the fat content of nuts?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "I think I should probably have ground up the nuts more than I did. It’s possible that the scales for weighing the fat weren’t accurate enough, too."
            },
            {
              "number": 24,
              "prompt": "Which TWO problems did Rosie have when measuring the fat content of nuts?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "I think I should probably have ground up the nuts more than I did. It’s possible that the scales for weighing the fat weren’t accurate enough, too."
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
              "prompt": "Adam suggests that restaurants could reduce obesity if their menus",
              "options": [
                {
                  "key": "A",
                  "text": "offered fewer options."
                },
                {
                  "key": "B",
                  "text": "had more low-calorie foods."
                },
                {
                  "key": "C",
                  "text": "were organised in a particular way."
                }
              ],
              "answer": "C",
              "explanation": "So, if you put the low-calorie items at the beginning and end of the menu, people will probably go for the food with fewer calories, without even realising what they’re doing."
            },
            {
              "number": 26,
              "prompt": "The students agree that food manufacturers deliberately",
              "options": [
                {
                  "key": "A",
                  "text": "make calorie counts hard to understand."
                },
                {
                  "key": "B",
                  "text": "fail to provide accurate calorie counts."
                },
                {
                  "key": "C",
                  "text": "use ineffective methods to reduce calories."
                }
              ],
              "answer": "A",
              "explanation": "Well, when manufacturers put calorie counts of a food on the label, they’re sometimes really confusing and I suspect they do it on purpose."
            },
            {
              "number": 27,
              "prompt": "What does Rosie say about levels of exercise in England?",
              "options": [
                {
                  "key": "A",
                  "text": "The amount recommended is much too low."
                },
                {
                  "key": "B",
                  "text": "Most people overestimate how much they do."
                },
                {
                  "key": "C",
                  "text": "Women now exercise more than they used to."
                }
              ],
              "answer": "B",
              "explanation": "Now when you ask them, about 40% of men and 30% of women say they do this, but when you objectively measure the amount of walking they do with motion sensors, you find that only 6% of men and 4% of women do the recommended amount of exercise."
            },
            {
              "number": 28,
              "prompt": "Adam refers to the location and width of stairs in a train station to illustrate",
              "options": [
                {
                  "key": "A",
                  "text": "practical changes that can influence people’s behaviour."
                },
                {
                  "key": "B",
                  "text": "methods of helping people who have mobility problems."
                },
                {
                  "key": "C",
                  "text": "ways of preventing accidents by controlling crowd movement."
                }
              ],
              "answer": "A",
              "explanation": "if people reach the stairs before they reach the escalator when they’re leaving the station, they’re more likely to take the stairs. And if you increase the width of the stairs, you’ll get more people using them at the same time. It’s an unconscious process and influenced by minor modifications in their environment."
            },
            {
              "number": 29,
              "prompt": "What do the students agree about including reference to exercise in their presentation?",
              "options": [
                {
                  "key": "A",
                  "text": "They should probably leave it out."
                },
                {
                  "key": "B",
                  "text": "They need to do more research on it."
                },
                {
                  "key": "C",
                  "text": "They should discuss this with their tutor."
                }
              ],
              "answer": "A",
              "explanation": "But actually, I’m not sure if we should be talking about exercise in our presentation."
            },
            {
              "number": 30,
              "prompt": "What are the students going to do next for their presentation?",
              "options": [
                {
                  "key": "A",
                  "text": "prepare some slides for it"
                },
                {
                  "key": "B",
                  "text": "find out how long they have for it"
                },
                {
                  "key": "C",
                  "text": "decide on its content and organisation"
                }
              ],
              "answer": "C",
              "explanation": "Let’s think about what we’re going to include and what will go where."
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
              "text": "Interest in knitting"
            },
            {
              "kind": "static",
              "text": "Knitting has a long history around the world."
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
              "text": "The number of knitting classes is now increasing."
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "Benefits of knitting gives support in times of"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "difficulty requires only",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "skills and little money to start reduces stress in a busy life",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Early knitting"
            },
            {
              "kind": "static",
              "text": "The origins are not known."
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
              "text": "Wool became the most popular yarn for spinning."
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
              "prompt": "We imagine someone like a _______ knitting.",
              "answer": [
                "grandmother"
              ],
              "wordLimit": 1,
              "explanation": "When someone says the word ‘knitting’ we might well picture an elderly person - a grandmother perhaps - sitting by the fire knitting garments for themselves or other members of the family."
            },
            {
              "number": 32,
              "prompt": "A _______ ago, knitting was expected to disappear.",
              "answer": [
                "decade"
              ],
              "wordLimit": 1,
              "explanation": "during the previous decade, it was one of the skills that was predicted to vanish from everyday life."
            },
            {
              "number": 33,
              "prompt": "People are buying more _______ for knitting nowadays.",
              "answer": [
                "equipment"
              ],
              "wordLimit": 1,
              "explanation": "With that trend, we’re also seeing an increase in the sales figures for knitting equipment."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "economic"
              ],
              "wordLimit": 1,
              "explanation": "it’s still true today that knitting can be helpful if you’re experiencing economic hardship."
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "basic"
              ],
              "wordLimit": 1,
              "explanation": "And the results of knitting your own clothes can be very rewarding, even though the skills you need to get going are really quite basic and the financial outlay is minimal."
            },
            {
              "number": 36,
              "prompt": "Findings show early knitted items to be _______ in shape.",
              "answer": [
                "round"
              ],
              "wordLimit": 1,
              "explanation": "One of the interesting things about knitting is that the earliest pieces of clothing that have been found suggest that most of the items produced were round rather than flat."
            },
            {
              "number": 37,
              "prompt": "The first needles were made of natural materials such as wood and _______",
              "answer": [
                "bone"
              ],
              "wordLimit": 1,
              "explanation": "What’s more, the very first needles people used were hand carved out of wood and other natural materials, like bone"
            },
            {
              "number": 38,
              "prompt": "Early yarns felt _______ to touch.",
              "answer": [
                "rough"
              ],
              "wordLimit": 1,
              "explanation": "these were often very rough on the skin."
            },
            {
              "number": 39,
              "prompt": "Geographical areas had their own _______ of knitting.",
              "answer": [
                "style"
              ],
              "wordLimit": 1,
              "explanation": "Another interesting fact about knitting is that because it was practised in so many parts of the world for so many purposes, regional differences in style developed."
            },
            {
              "number": 40,
              "prompt": "Everyday tasks like looking after _______ were done while knitting.",
              "answer": [
                "sheep"
              ],
              "wordLimit": 1,
              "explanation": "while watching over sheep, walking to market or riding in boats."
            }
          ],
          "formTitle": "Hand knitting",
          "id": "g31"
        }
      ]
    }
  ]
}
$c16t3l$,
  true
);
