DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 15',
  'Test 3',
  'academic',
  2004,
  $c15t3l$
{
  "audioPath": "Cambridge 15 Test 3.mp3",
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
              "text": "First Job"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "Responsibilities data entry go to"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "and take notes general admin management of",
              "noBullet": true
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
              "text": "Second Job"
            },
            {
              "kind": "static",
              "text": "Warehouse assistant in South London"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "Requirements ability to work with numbers good computer skills very organised and"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "good communication skills used to working in a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "able to cope with items that are",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "Need experience of driving in London warehouse work"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Administrative assistant in a company that produces _______ (North London)",
              "answer": [
                "furniture"
              ],
              "wordLimit": 1,
              "explanation": "They’re called Home Solutions and they design and make furniture."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "meetings"
              ],
              "wordLimit": 1,
              "explanation": "Then they expect the person they appoint to attend meetings and take notes there …"
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "diary"
              ],
              "wordLimit": 1,
              "explanation": "That should be OK. And in my last job I also had to manage the diary."
            },
            {
              "number": 4,
              "prompt": "Requirements good computer skills including spreadsheets good interpersonal skills attention to _______",
              "answer": [
                "detail"
              ],
              "wordLimit": 1,
              "explanation": "/ details Then they mention that they want someone who is careful and takes care with details"
            },
            {
              "number": 5,
              "prompt": "Experience need a minimum of _______ of experience of teleconferencing",
              "answer": [
                "1 year"
              ],
              "wordLimit": 1,
              "explanation": "/ one year In fact they’re only asking for at least one year, so that’s great."
            },
            {
              "number": 6,
              "prompt": "Responsibilities stock management managing _______",
              "answer": [
                "deliveries"
              ],
              "wordLimit": 1,
              "explanation": "So as far as the responsibilities for this position go, they want someone who can manage the stock, obviously, and also deliveries."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "tidy"
              ],
              "wordLimit": 1,
              "explanation": "And tidy?"
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "team"
              ],
              "wordLimit": 1,
              "explanation": "And for the last warehouse job I had, one of the things I enjoyed most was being part of a team."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "heavy"
              ],
              "wordLimit": 1,
              "explanation": "So you’re OK moving heavy things?"
            },
            {
              "number": 10,
              "prompt": "_______ service",
              "answer": [
                "customer"
              ],
              "wordLimit": 1,
              "explanation": "And you’ve got experience of warehouse work … and the final thing they mention is customer service."
            }
          ],
          "formTitle": "Employment Agency: Possible Jobs",
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
              "prompt": "When did the Street Play Scheme first take place?",
              "options": [
                {
                  "key": "A",
                  "text": "two years ago"
                },
                {
                  "key": "B",
                  "text": "three years ago"
                },
                {
                  "key": "C",
                  "text": "six years ago"
                }
              ],
              "answer": "B",
              "explanation": "So the scheme’s been up and running for three years now."
            },
            {
              "number": 12,
              "prompt": "How often is Beechwood Road closed to traffic now?",
              "options": [
                {
                  "key": "A",
                  "text": "once a week"
                },
                {
                  "key": "B",
                  "text": "on Saturdays and Sundays"
                },
                {
                  "key": "C",
                  "text": "once a month"
                }
              ],
              "answer": "A",
              "explanation": "At the moment it’s just once a week."
            },
            {
              "number": 13,
              "prompt": "Who is responsible for closing the road?",
              "options": [
                {
                  "key": "A",
                  "text": "a council official"
                },
                {
                  "key": "B",
                  "text": "the police"
                },
                {
                  "key": "C",
                  "text": "local wardens"
                }
              ],
              "answer": "C",
              "explanation": "We have volunteer wardens, mostly parents but some elderly residents too, who block off our road at either end."
            },
            {
              "number": 14,
              "prompt": "Residents who want to use their cars",
              "options": [
                {
                  "key": "A",
                  "text": "have to park in another street."
                },
                {
                  "key": "B",
                  "text": "must drive very slowly"
                },
                {
                  "key": "C",
                  "text": "need permission from a warden."
                }
              ],
              "answer": "B",
              "explanation": "as long as they drive at under 20 kilometres per hour."
            },
            {
              "number": 15,
              "prompt": "Alice says that Street Play Schemes are most needed in",
              "options": [
                {
                  "key": "A",
                  "text": "wealthy areas"
                },
                {
                  "key": "B",
                  "text": "quiet suburban areas."
                },
                {
                  "key": "C",
                  "text": "areas with heavy traffic."
                }
              ],
              "answer": "C",
              "explanation": "Absolutely - we want to include all kids in the city - especially those who live on busy roads."
            },
            {
              "number": 16,
              "prompt": "What has been the reaction of residents who are not parents?",
              "options": [
                {
                  "key": "A",
                  "text": "Many of them were unhappy at first."
                },
                {
                  "key": "B",
                  "text": "They like seeing children play in the street."
                },
                {
                  "key": "C",
                  "text": "They are surprised by the lack of noise."
                }
              ],
              "answer": "B",
              "explanation": "On the whole everyone is very supportive and say they’re very happy to see children out on the street"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. Which TWO benefits for children does Alice think are the most important?",
          "options": [
            {
              "key": "A",
              "text": "increased physical activity"
            },
            {
              "key": "B",
              "text": "increased sense of independence"
            },
            {
              "key": "C",
              "text": "opportunity to learn new games"
            },
            {
              "key": "D",
              "text": "opportunity to be part of a community"
            },
            {
              "key": "E",
              "text": "opportunity to make new friends"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Which TWO benefits for children does Alice think are the most important?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "but for me the biggest advantage is that kids develop confidence in themselves to be outside without their parents. The other really fantastic thing is that children get to know the adults in the street - it’s like having a big extended family."
            },
            {
              "number": 18,
              "prompt": "Which TWO benefits for children does Alice think are the most important?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "but for me the biggest advantage is that kids develop confidence in themselves to be outside without their parents. The other really fantastic thing is that children get to know the adults in the street - it’s like having a big extended family."
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO results of the King Street experiment surprised Alice?",
          "options": [
            {
              "key": "A",
              "text": "more shoppers"
            },
            {
              "key": "B",
              "text": "improved safety"
            },
            {
              "key": "C",
              "text": "less air pollution"
            },
            {
              "key": "D",
              "text": "more relaxed atmosphere"
            },
            {
              "key": "E",
              "text": "less noise pollution"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO results of the King Street experiment surprised Alice?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "air quality was significantly better but what I hadn’t expected was how much quieter it would be Of course everyone said they felt safer but we were actually amazed that sales in the shops went up considerably that day"
            },
            {
              "number": 20,
              "prompt": "Which TWO results of the King Street experiment surprised Alice?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "air quality was significantly better but what I hadn’t expected was how much quieter it would be Of course everyone said they felt safer but we were actually amazed that sales in the shops went up considerably that day"
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
          "type": "completion",
          "label": "Questions 21–26",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "what"
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": "the item is on the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": "of the item, including the headline any",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "static",
              "text": "accompanying the item the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": "of the item, e.g. what’s made prominent the writer’s main",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": "the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": "the writer may make about the reader",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "_______",
              "answer": [
                "page"
              ],
              "wordLimit": 1,
              "explanation": "For example, there’s the question of which page of the newspaper the item appears on."
            },
            {
              "number": 22,
              "prompt": "_______",
              "answer": [
                "size"
              ],
              "wordLimit": 1,
              "explanation": "Then there’s the size"
            },
            {
              "number": 23,
              "prompt": "_______",
              "answer": [
                "graphic"
              ],
              "wordLimit": 1,
              "explanation": "/ graphics What about graphics"
            },
            {
              "number": 24,
              "prompt": "_______",
              "answer": [
                "structure"
              ],
              "wordLimit": 1,
              "explanation": "what structure is it given?"
            },
            {
              "number": 25,
              "prompt": "_______",
              "answer": [
                "purpose"
              ],
              "wordLimit": 1,
              "explanation": "And that relates to a very important point: what’s the writer’s purpose"
            },
            {
              "number": 26,
              "prompt": "_______",
              "answer": [
                "assumption"
              ],
              "wordLimit": 1,
              "explanation": "/ assumptions And I suppose the writer may make assumptions about the reader."
            }
          ],
          "formTitle": "What Hazel should analyse about items in newspapers:",
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "What does Hazel decide to do about each of the following types of articles? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "She will definitely look for a suitable article."
            },
            {
              "key": "B",
              "text": "She may look for a suitable article."
            },
            {
              "key": "C",
              "text": "She definitely won’t look for an article."
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "national news item",
              "answer": "A",
              "explanation": "And on that basis a national news item would be worth analysing - I’m quite keen on politics, so I’ll try and find a suitable topic."
            },
            {
              "number": 28,
              "prompt": "editorial",
              "answer": "C",
              "explanation": "I was interested in how newspapers express their opinions explicitly, so I wanted to compare editorials in different papers, but when I started looking. I couldn’t find two on the same topic that I felt like analysing."
            },
            {
              "number": 29,
              "prompt": "human interest",
              "answer": "C",
              "explanation": "In that case, I won’t even bother to look."
            },
            {
              "number": 30,
              "prompt": "arts",
              "answer": "B",
              "explanation": "I usually find stories like that raise quite strong feelings in me! I’ll avoid that. Perhaps I’ll choose an arts topic"
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
              "text": "Europe from 17th century:"
            },
            {
              "kind": "static",
              "text": "1600s: cleanliness and bathing started becoming usual"
            },
            {
              "kind": "static",
              "text": "1791: Leblanc invented a way of making soda ash from"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "early 1800s: Chevreul turned soapmaking into a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "from 1800s, there was no longer a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "on soap.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Prehistoric times: water was used to wash off _______",
              "answer": [
                "mud"
              ],
              "wordLimit": 1,
              "explanation": "at least that it rinsed mud off their hands."
            },
            {
              "number": 32,
              "prompt": "Ancient Babylon soap-like material found in _______ cylinders",
              "answer": [
                "clay"
              ],
              "wordLimit": 1,
              "explanation": "Archaeologists discovered cylinders made of clay"
            },
            {
              "number": 33,
              "prompt": "Ancient Greece: people cleaned themselves with sand and other substances used a strigil - scraper made of _______ washed clothes in streams",
              "answer": [
                "metal"
              ],
              "wordLimit": 1,
              "explanation": "scraped off the oil and dirt with a metal instrument known as a strigil."
            },
            {
              "number": 34,
              "prompt": "Ancient Germany and Gaul: used soap to colour their _______",
              "answer": [
                "hair"
              ],
              "wordLimit": 1,
              "explanation": "They used this mixture to tint their hair red."
            },
            {
              "number": 35,
              "prompt": "Ancient Rome: animal fat, ashes and clay mixed through action of rain, used for washing clothes from about 312 BC, water carried to Roman _______ by aqueducts",
              "answer": [
                "bath"
              ],
              "wordLimit": 1,
              "explanation": "/ baths The first of the famous Roman baths, supplied with water from their aqueducts"
            },
            {
              "number": 36,
              "prompt": "Europe in Middle Ages: decline in bathing contributed to occurrence of _______",
              "answer": [
                "disease"
              ],
              "wordLimit": 1,
              "explanation": "/ diseases This lack of personal cleanliness and related unsanitary living conditions were major factors in the outbreaks of disease in the Middle Ages, and especially the Black Death of the 14th century."
            },
            {
              "number": 37,
              "prompt": "_______ began to be added to soap",
              "answer": [
                "perfume"
              ],
              "wordLimit": 1,
              "explanation": "Vegetable and animal oils were used with ashes of plants, along with perfume, apparently for the first time."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "salt"
              ],
              "wordLimit": 1,
              "explanation": "patented a process for turning salt into soda ash"
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "science"
              ],
              "wordLimit": 1,
              "explanation": "His studies established the basis for both fat and soap chemistry, and soapmaking became a science."
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "tax"
              ],
              "wordLimit": 1,
              "explanation": "a development that was reinforced when the high tax was removed."
            }
          ],
          "formTitle": "Early history of keeping clean",
          "id": "g31"
        }
      ]
    }
  ]
}
$c15t3l$,
  true
);
