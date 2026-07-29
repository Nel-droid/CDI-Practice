DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 12' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 12',
  'Test 4',
  'academic',
  2004,
  $c12t4l$
{
  "audioPath": "Cambridge 12 Test 4.mp3",
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
              "text": "Name: Margaret ……….Smith……….."
            },
            {
              "kind": "static",
              "text": "About the applicant: wants a"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "job will soon start work as a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "has led cycle trips in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "interested in being a leader of a cycling trip for families is currently doing voluntary work with members of a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "club available for five months from the 1st of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "can’t eat",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "Contact details: address: 27"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Place, Dumfries postcode:",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "Interview: interview at 2.30 pm on"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "will plan a short",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "about being a tour guide",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______",
              "answer": [
                "temporary"
              ],
              "wordLimit": 1,
              "explanation": "Are you looking for a permanent job, Margaret?"
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "doctor"
              ],
              "wordLimit": 1,
              "explanation": "I’m going to be a doctor."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "Africa"
              ],
              "wordLimit": 1,
              "explanation": "Yes, I’ve led several bike tours in Africa."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "youth"
              ],
              "wordLimit": 1,
              "explanation": "I’m a volunteer worker in a youth club"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "May"
              ],
              "wordLimit": 1,
              "explanation": "I’ll be free for five months. My job is due to start on October the 2nd, and I’m available from May the 1st until late September."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "cheese"
              ],
              "wordLimit": 1,
              "explanation": "Yes, I’m allergic to cheese."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "Arbuthnot"
              ],
              "wordLimit": 1,
              "explanation": "Could you send it to 27 Arbuthnot Place - A-R-B-U-T-H-N-O-T - Place, Dumfries."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "DG"
              ],
              "wordLimit": 1,
              "explanation": "7 4PH / DG74PH And what’s the postcode, please?"
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "Tuesday"
              ],
              "wordLimit": 1,
              "explanation": "we can interview you on Tuesday next week."
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "talk"
              ],
              "wordLimit": 1,
              "explanation": "/ presentation And at the interview we’d like to find out about your experience of being a tour guide, so could you prepare a ten-minute talk about that, please?"
            }
          ],
          "formTitle": "Cycle tour leader: Applicant enquiry",
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
              "prompt": "Which is the most rapidly-growing group of residents in the Sheepmarket area?",
              "options": [
                {
                  "key": "A",
                  "text": "young professional people"
                },
                {
                  "key": "B",
                  "text": "students from the university"
                },
                {
                  "key": "C",
                  "text": "employees in the local market"
                }
              ],
              "answer": "A",
              "explanation": "now graduates embarking on careers in the worlds of fashion and design are buying up the new apartments recently built here to replace the small houses where the market workers used to live."
            },
            {
              "number": 12,
              "prompt": "The speaker recommends the side streets in the Sheepmarket for their",
              "options": [
                {
                  "key": "A",
                  "text": "international restaurants."
                },
                {
                  "key": "B",
                  "text": "historical buildings."
                },
                {
                  "key": "C",
                  "text": "arts and crafts."
                }
              ],
              "answer": "C",
              "explanation": "The narrow old side streets are great places for finding original pictures, jewellery and ceramics"
            },
            {
              "number": 13,
              "prompt": "Clothes designed by entrants for the Young Fashion competition must",
              "options": [
                {
                  "key": "A",
                  "text": "be modelled by the designers themselves."
                },
                {
                  "key": "B",
                  "text": "be inspired by aspects of contemporary culture."
                },
                {
                  "key": "C",
                  "text": "be made from locally produced materials."
                }
              ],
              "answer": "B",
              "explanation": "This year they’ve been asked to design an outfit based on ideas from the music and technology that’s part of their everyday life"
            },
            {
              "number": 14,
              "prompt": "Car parking is free in some car parks if you",
              "options": [
                {
                  "key": "A",
                  "text": "stay for less than an hour."
                },
                {
                  "key": "B",
                  "text": "buy something in the shops."
                },
                {
                  "key": "C",
                  "text": "park in the evenings or at weekends."
                }
              ],
              "answer": "B",
              "explanation": "if you can present a receipt from one of the local stores, you’ll not be charged at all."
            }
          ],
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
              "prompt": "The Reynolds House",
              "answer": "H",
              "explanation": "The Reynolds House is one of the oldest houses in the city, and is open to the public. It’s on the north side of Crawley Road, next to the footpath that leads to the public gardens."
            },
            {
              "number": 16,
              "prompt": "The Thumb",
              "answer": "C",
              "explanation": "The Thumb’s is just what its name suggests, but it’s about 10 metres high. You’ll see it on Hill Road, across the road from the Bank."
            },
            {
              "number": 17,
              "prompt": "The Museum",
              "answer": "F",
              "explanation": "The Museum’s got a particularly fine collection of New Zealand landscapes. It’s on the east side of the Sheepmarket, on City Road. It’s on the other side of the road from the public gardens, immediately facing the junction with Hill Road."
            },
            {
              "number": 18,
              "prompt": "The Contemporary Art Gallery",
              "answer": "G",
              "explanation": "The Contemporary Art Gallery is on a little road that leads off Station Square, not far from the public gardens. The road ends at the gallery - it doesn’t go anywhere else."
            },
            {
              "number": 19,
              "prompt": "The Warner Gallery",
              "answer": "I",
              "explanation": "The Warner Gallery specialises in 19th-century art. It’s on City Road, near the junction with Crawley Road, on the same side of the road as the public gardens."
            },
            {
              "number": 20,
              "prompt": "Nucleus",
              "answer": "B",
              "explanation": "Finally, if you’re interested in purchasing high quality artwork, the place to go is Nucleus. You need to go from Crawley Road up through Station Square and east along Hill Road until you get to a small winding road turning off. Go up there and it’s on your right - if you get to City Road you’ve gone too far."
            }
          ],
          "mapImage": "Cambridge 12 Test 4 map.png",
          "id": "g15"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 21–24",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Stages of presentation Work still to be done"
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "subheader",
              "text": "Organise notes"
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "subheader",
              "text": "No further work needed"
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
              "kind": "subheader",
              "text": "No further work needed"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Introduce Giannetti’s book containing a _______ of adaptations",
              "answer": [
                "classification"
              ],
              "wordLimit": 1,
              "explanation": "So I thought I’d start with Giannetti, who’s professor of film and literature, and in one of his books he came up with a straightforward classification of film adaptations based on how faithful they are to the original plays and novels."
            },
            {
              "number": 22,
              "prompt": "Ask class to suggest the _______ adaptations",
              "answer": [
                "worst"
              ],
              "wordLimit": 1,
              "explanation": "I thought that next I’d ask the class to come up with the worst examples of Shakespeare adaptations that they’ve seen, and to say why."
            },
            {
              "number": 23,
              "prompt": "Present Rachel Malchow’s ideas Prepare some _______",
              "answer": [
                "slides"
              ],
              "wordLimit": 1,
              "explanation": "OK, well, I’d better do some slides instead, saying how various films relate to what she says."
            },
            {
              "number": 24,
              "prompt": "Discuss relationship between adaptations and _______ at the time of making the film",
              "answer": [
                "issues"
              ],
              "wordLimit": 1,
              "explanation": "Next I want to say something about how plays may be chosen for adaptation because they’re concerned with issues of the time when the film is made."
            }
          ],
          "formTitle": "Presentation of film adaptations of Shakespeare’s plays",
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What do the speakers say about each of the following films? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "clearly shows the historical period"
            },
            {
              "key": "B",
              "text": "contains only parts of the play"
            },
            {
              "key": "C",
              "text": "is too similar to another kind of film"
            },
            {
              "key": "D",
              "text": "turned out to be unpopular with audiences"
            },
            {
              "key": "E",
              "text": "presents the play in a different period from the original"
            },
            {
              "key": "F",
              "text": "sets the original in a different country"
            },
            {
              "key": "G",
              "text": "incorporates a variety of art forms"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Ran",
              "answer": "F",
              "explanation": "It was a very loose adaptation, using the same situation and story, but moving it to 16th century Japan instead of 16th century Britain."
            },
            {
              "number": 26,
              "prompt": "Much Ado About Nothing",
              "answer": "A",
              "explanation": "And I think filming it in Italy, where the play is set, makes you see what life was like at the time of the play."
            },
            {
              "number": 27,
              "prompt": "Romeo & Juliet",
              "answer": "E",
              "explanation": "Er, next, I thought Romeo & Juliet, the 1996 film, which moves the action into the present day."
            },
            {
              "number": 28,
              "prompt": "Hamlet",
              "answer": "C",
              "explanation": "Yes, but I’ve picked the 1996 film of Hamlet. It included every line of the text, but it’s more like a typical action hero movie"
            },
            {
              "number": 29,
              "prompt": "Prospero’s Books",
              "answer": "G",
              "explanation": "Then there’s Prospero’s Books, based on The Tempest. That was really innovative, from a stylistic point of view."
            },
            {
              "number": 30,
              "prompt": "Looking for Richard",
              "answer": "B",
              "explanation": "Yes, it did. I also want to mention Looking for Richard. Did you ever see it?"
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
              "text": "Past research focused on noise level (measured in decibels) and people’s responses."
            },
            {
              "kind": "static",
              "text": "Noise ‘maps’ show that the highest noise levels are usually found on roads do not show other sources of noise, e.g. when windows are open or people’s neighbours are in their"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "ignore variation in people’s perceptions of noise have made people realize that the noise is a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "issue that must be dealt with",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "subheader",
              "text": "Different types of noise"
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
              "kind": "subheader",
              "text": "What people want"
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
              "text": "Understanding sound as an art form"
            },
            {
              "kind": "static",
              "text": "We need to know how sound relates to"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "what can be learnt from psychology about the effects of sound whether physics can help us understand the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "of sound",
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
                "garden"
              ],
              "wordLimit": 1,
              "explanation": "/ gardens So they ignore important issues such as the noise someone might hear from the open windows or gardens of their neighbours"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "political"
              ],
              "wordLimit": 1,
              "explanation": "they’ve been useful in providing information and raising awareness that noise matters, we need to deal with it and so it’s a political matter."
            },
            {
              "number": 33,
              "prompt": "Problems caused by noise sleep disturbance increase in amount of stress effect on the _______ of schoolchildren",
              "answer": [
                "work"
              ],
              "wordLimit": 1,
              "explanation": "/ study if schoolchildren don’t have a quiet place to study, their work will suffer."
            },
            {
              "number": 34,
              "prompt": "Some noises can be considered pleasant e.g. the sound of a _______ in a town",
              "answer": [
                "fountain"
              ],
              "wordLimit": 1,
              "explanation": "Some types of sounds that most people would probably think of as nice and relaxing might well score quite highly in decibel levels - think of the sound made by a fountain in a town square, for example."
            },
            {
              "number": 35,
              "prompt": "To investigate this, researchers may use methods from _______ sciences e.g. questionnaires",
              "answer": [
                "social"
              ],
              "wordLimit": 1,
              "explanation": "Instead, many researchers are using social science techniques, studying people’s emotional response to sound by using questionnaires and so on."
            },
            {
              "number": 36,
              "prompt": "Plenty of activity in urban environments which are _______ , but also allow people to relax",
              "answer": [
                "lively"
              ],
              "wordLimit": 1,
              "explanation": "a city needs to have a sense of activity, so it needs to be lively, with sounds like the clack of high heels on a pavement or the hiss of a coffee machine, but these mustn’t be too intrusive, because at the same time we need to be able to relax."
            },
            {
              "number": 37,
              "prompt": "But architects and town planners do not get much _______ in acoustics regard sound as the responsibility of engineers",
              "answer": [
                "training"
              ],
              "wordLimit": 1,
              "explanation": "One of the major problems in achieving this will be getting architects and town planners to use the research. Apart from studying the basics of acoustics, these people receive very little training in this area."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "culture"
              ],
              "wordLimit": 1,
              "explanation": "We need to develop a complex understanding of many factors. What is the relationship between sound and culture?"
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "nature"
              ],
              "wordLimit": 1,
              "explanation": "Can we learn anything from physics about the nature of sound itself?"
            },
            {
              "number": 40,
              "prompt": "Virtual reality programs advantage: predict the effect of buildings current disadvantage: they are _______",
              "answer": [
                "silent"
              ],
              "wordLimit": 1,
              "explanation": "architects and town planners already use virtual reality - but these programs are silent."
            }
          ],
          "formTitle": "Noise in Cities",
          "id": "g31"
        }
      ]
    }
  ]
}
$c12t4l$,
  true
);
