DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 17',
  'Test 2',
  'academic',
  2004,
  $c17t2l$
{
  "audioPath": "Cambridge 17 Test 2.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Library"
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
              "kind": "subheader",
              "text": "Lunch club"
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
              "kind": "static",
              "text": "Help for individuals needed next week"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Help with _______ books (times to be arranged)",
              "answer": [
                "collecting"
              ],
              "wordLimit": 1,
              "explanation": "So, one thing you could do is get involved in collecting them - if you’ve got a car, that is."
            },
            {
              "number": 2,
              "prompt": "Help needed to keep _______ of books up to date",
              "answer": [
                "records"
              ],
              "wordLimit": 1,
              "explanation": "Another thing is the records that we keep of the books we’re given, and those we borrow and need to return to the town library."
            },
            {
              "number": 3,
              "prompt": "Library is in the _______ Room in the village hall",
              "answer": [
                "West"
              ],
              "wordLimit": 1,
              "explanation": "No, we simply have the use of a room in the village hall, the West Room."
            },
            {
              "number": 4,
              "prompt": "Help by providing _______",
              "answer": [
                "transport"
              ],
              "wordLimit": 1,
              "explanation": "I could help with transport, if that’s of any use."
            },
            {
              "number": 5,
              "prompt": "Help with hobbies such as _______",
              "answer": [
                "art"
              ],
              "wordLimit": 1,
              "explanation": "I could get involved in one or two, particularly if there are any art groups."
            },
            {
              "number": 6,
              "prompt": "Taking Mrs Carroll to _______",
              "answer": [
                "hospital"
              ],
              "wordLimit": 1,
              "explanation": "She needs a lift to the hospital next week, and we’re struggling to find someone."
            },
            {
              "number": 7,
              "prompt": "Work in the _______ at Mr Selsbury’s house",
              "answer": [
                "garden"
              ],
              "wordLimit": 1,
              "explanation": "We’re got some people to decorate his kitchen, but if you could do some weeding in his garden, that would be wonderful."
            }
          ],
          "formTitle": "Opportunities for voluntary work in Southoe village",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 8–10",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Date Event Location Help needed"
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
              "number": 8,
              "prompt": "19 Oct _______ Village hall providing refreshments",
              "answer": [
                "quiz"
              ],
              "wordLimit": 1,
              "explanation": "So next month, on the 19th of October, we’re holding a quiz - a couple of residents are great at planning unusual ones, and we always fill the village hall."
            },
            {
              "number": 9,
              "prompt": "18 Nov dance Village hall checking _______",
              "answer": [
                "tickets"
              ],
              "wordLimit": 1,
              "explanation": "Well, we sell tickets in advance"
            },
            {
              "number": 10,
              "prompt": "31 Dec New Year’s Eve party Mountfort Hotel designing the _______",
              "answer": [
                "poster"
              ],
              "wordLimit": 1,
              "explanation": "The one thing we haven’t got yet is a poster."
            }
          ],
          "formTitle": "Village social events",
          "id": "g8"
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
              "prompt": "Many past owners made changes to",
              "options": [
                {
                  "key": "A",
                  "text": "the gardens."
                },
                {
                  "key": "B",
                  "text": "the house."
                },
                {
                  "key": "C",
                  "text": "the farm."
                }
              ],
              "answer": "B",
              "explanation": "Almost all of them have left their mark, generally by adding new rooms, like the ballroom and conservatory, or by demolishing others."
            },
            {
              "number": 12,
              "prompt": "Sir Edward Downes built Oniton Hall because he wanted",
              "options": [
                {
                  "key": "A",
                  "text": "a place for discussing politics."
                },
                {
                  "key": "B",
                  "text": "a place to display his wealth."
                },
                {
                  "key": "C",
                  "text": "a place for artists and writers."
                }
              ],
              "answer": "C",
              "explanation": "He broke off contact with his former political allies, and hosted meeting of creative and literary people, like painters and poets."
            },
            {
              "number": 13,
              "prompt": "Visitors can learn about the work of servants in the past from",
              "options": [
                {
                  "key": "A",
                  "text": "audio guides."
                },
                {
                  "key": "B",
                  "text": "photographs."
                },
                {
                  "key": "C",
                  "text": "people in costume."
                }
              ],
              "answer": "C",
              "explanation": "Photographs of course don’t give much of an idea, so instead, as you go round the house, you’ll see volunteers dressed up as nineteenth-century servants, going about their work."
            },
            {
              "number": 14,
              "prompt": "What is new for children at Onion Hall?",
              "options": [
                {
                  "key": "A",
                  "text": "clothes for dressing up"
                },
                {
                  "key": "B",
                  "text": "mini tractors"
                },
                {
                  "key": "C",
                  "text": "the adventure playground"
                }
              ],
              "answer": "B",
              "explanation": "Our latest addition is child-sized tractors, that you can drive around the grounds."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which activity is offered at each of the following locations on the farm? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "shopping"
            },
            {
              "key": "B",
              "text": "watching cows being milked"
            },
            {
              "key": "C",
              "text": "seeing old farming equipment"
            },
            {
              "key": "D",
              "text": "eating and drinking"
            },
            {
              "key": "E",
              "text": "starting a trip"
            },
            {
              "key": "F",
              "text": "seeing rare breeds of animals"
            },
            {
              "key": "G",
              "text": "helping to look after animals"
            },
            {
              "key": "H",
              "text": "using farming tools"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "dairy",
              "answer": "D",
              "explanation": "It’s now the place to go for lunch, or afternoon tea, or just a cup of coffee and a slice of homemade cake."
            },
            {
              "number": 16,
              "prompt": "large barn",
              "answer": "C",
              "explanation": "The big stone building that dominates the farm is the large barn, and in here is our collection of agricultural tools."
            },
            {
              "number": 17,
              "prompt": "small barn",
              "answer": "G",
              "explanation": "There’s a small barn, also made of stone, where you can groom the donkeys and horses, to keep their coats clean."
            },
            {
              "number": 18,
              "prompt": "stables",
              "answer": "A",
              "explanation": "The horses no longer live in the stables, which instead is the place to go to buy gifts, books, our own jams and pickles, and clothes and blankets made of wool from our sheep."
            },
            {
              "number": 19,
              "prompt": "shed",
              "answer": "E",
              "explanation": "Outside the shed, which is the only brick building, you can climb into a horse-drawn carriage for a lovely, relaxing tour of the park and farm."
            },
            {
              "number": 20,
              "prompt": "parkland",
              "answer": "F",
              "explanation": "You’ll see types of cattle and sheep that are hardly ever found on farms these days."
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
          "instructions": "Choose TWO letters, A–E. Which TWO things do the students agree they need to include in their review of Romeo and Juliet?",
          "options": [
            {
              "key": "A",
              "text": "analysis of the text"
            },
            {
              "key": "B",
              "text": "a summary of the plot"
            },
            {
              "key": "C",
              "text": "a description of the theatre"
            },
            {
              "key": "D",
              "text": "a personal reaction"
            },
            {
              "key": "E",
              "text": "a reference to particular scenes"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO things do the students agree they need to include in their review of Romeo and Juliet?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "And part of that means talking about the emotional impact the performance had on us. And we should definitely mention how well the director handled important bits of the play - like when Romeo climbs onto Juliet’s balcony."
            },
            {
              "number": 22,
              "prompt": "Which TWO things do the students agree they need to include in their review of Romeo and Juliet?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "And part of that means talking about the emotional impact the performance had on us. And we should definitely mention how well the director handled important bits of the play - like when Romeo climbs onto Juliet’s balcony."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 23–27",
          "instructions": "Which opinion do the speakers give about each of the following aspects of The Emporium’s production of Romeo and Juliet? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "They both expected this to be more traditional."
            },
            {
              "key": "B",
              "text": "They both thought this was original."
            },
            {
              "key": "C",
              "text": "They agree this created the right atmosphere."
            },
            {
              "key": "D",
              "text": "They agree this was a major strength."
            },
            {
              "key": "E",
              "text": "They were both disappointed by this."
            },
            {
              "key": "F",
              "text": "They disagree about why this was an issue."
            },
            {
              "key": "G",
              "text": "They disagree about how this could be improved."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "the set",
              "answer": "D",
              "explanation": "I think it was visually really stunning. I’d say that was probably the most memorable thing about this production."
            },
            {
              "number": 24,
              "prompt": "the lighting",
              "answer": "C",
              "explanation": "It helped to change the mood of the quieter scenes."
            },
            {
              "number": 25,
              "prompt": "the costume design",
              "answer": "A",
              "explanation": "I was a bit surprised by the contemporary dress, I must say."
            },
            {
              "number": 26,
              "prompt": "the music",
              "answer": "E",
              "explanation": "I thought they were wasted because the music didn’t have much impact in Acts 2 and 3."
            },
            {
              "number": 27,
              "prompt": "the actors’ delivery",
              "answer": "F",
              "explanation": "They were speaking too fast."
            }
          ],
          "id": "g23"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 28–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 28,
              "prompt": "The students think the story of Romeo and Juliet is still relevant for young people today because",
              "options": [
                {
                  "key": "A",
                  "text": "it illustrates how easily conflict can start."
                },
                {
                  "key": "B",
                  "text": "it deals with problems that families experience."
                },
                {
                  "key": "C",
                  "text": "it teaches them about relationships."
                }
              ],
              "answer": "B",
              "explanation": "There are always disagreements and tension between teenagers and their parents."
            },
            {
              "number": 29,
              "prompt": "The students found watching Romeo and Juliet in another language",
              "options": [
                {
                  "key": "A",
                  "text": "frustrating."
                },
                {
                  "key": "B",
                  "text": "demanding."
                },
                {
                  "key": "C",
                  "text": "moving."
                }
              ],
              "answer": "C",
              "explanation": "The ending was pretty powerful."
            },
            {
              "number": 30,
              "prompt": "Why do the students think Shakespeare’s plays have such international appeal?",
              "options": [
                {
                  "key": "A",
                  "text": "The stories are exciting."
                },
                {
                  "key": "B",
                  "text": "There are recognisable characters."
                },
                {
                  "key": "C",
                  "text": "They can be interpreted in many ways."
                }
              ],
              "answer": "C",
              "explanation": "Yeah, and they can also be understood on different levels."
            }
          ],
          "id": "g28"
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
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "The Icelandic language has approximately"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "speakers has a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "that is still growing has not changed a lot over the last thousand years has its own words for computer-based concepts, such as web browser and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "Young speakers are big users of digital technology, such as"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "are becoming",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "very quickly are having discussions using only English while they are in the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "at school are better able to identify the content of a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "in English than",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Icelandic"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "The Icelandic government has set up a fund to support the production of more digital content in the language believes that Icelandic has a secure future is worried that young Icelanders may lose their"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "as Icelanders is worried about the consequences of children not being",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "in either Icelandic or English",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "_______",
              "answer": [
                "321,000",
                "321000"
              ],
              "wordLimit": 1,
              "explanation": "In order to illustrate its effect, I’m going to focus on the Icelandic language, which is spoken by around 321,000 people, most of whom live in Iceland - an island in the North Atlantic Ocean."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "vocabulary"
              ],
              "wordLimit": 1,
              "explanation": "In fact, the vocabulary of Icelandic is continually increasing because when speakers need a new word for something, they tend to create one, rather than borrowing from another language."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "podcast"
              ],
              "wordLimit": 1,
              "explanation": "Then there’s an Icelandic word for podcast - which is too hard to pronounce! And so on."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "smartphones"
              ],
              "wordLimit": 1,
              "explanation": "Think about smartphones. They didn’t even exist until comparatively recently, but today young people use them all the time to read books, watch TV or films, play games, listen to music, and so on."
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "bilingual"
              ],
              "wordLimit": 1,
              "explanation": "Obviously, this is a good thing in many respects because it promotes their bilingual skills, but the extent of the influence of English in the virtual world is staggering and it’s all happening really fast."
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "playground"
              ],
              "wordLimit": 1,
              "explanation": "teachers have found that playground conversations in Icelandic secondary schools can be conducted entirely in English"
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "picture"
              ],
              "wordLimit": 1,
              "explanation": "while teachers of much younger children have reported situations where their classes find it easier to say what is in a picture using English, rather than Icelandic."
            },
            {
              "number": 38,
              "prompt": "Technology and internet companies write very little in Icelandic because of the small number of speakers and because of how complicated its _______ is",
              "answer": [
                "grammar"
              ],
              "wordLimit": 1,
              "explanation": "The other drawback of Icelandic is the grammar, which is significantly more complex than in most languages. At the moment, the tech giants are simply not interested in tackling this."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "identity"
              ],
              "wordLimit": 1,
              "explanation": "When you consider how much of the past is tied up in a language, will young Icelanders lose their sense of their own identity?"
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "fluent"
              ],
              "wordLimit": 1,
              "explanation": "If children are learning two languages through different routes, neither of which they are fully fluent in, will they be able to express themselves properly?"
            }
          ],
          "formTitle": "The impact of digital technology on the Icelandic language",
          "id": "g31"
        }
      ]
    }
  ]
}
$c17t2l$,
  true
);
