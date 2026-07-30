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
