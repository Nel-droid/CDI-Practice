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
