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
