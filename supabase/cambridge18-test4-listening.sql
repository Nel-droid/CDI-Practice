DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 18',
  'Test 4',
  'academic',
  2004,
  $c18t4l$
{
  "audioPath": "Cambridge 18 Test 4.mp3",
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
              "kind": "static",
              "text": "Work involves dealing with enquiries making"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "and reorganising them maintaining the internal",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "general administration",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Requirements"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "(essential) a calm and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "manner good IT skills",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Other information a"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "job - further opportunities may be available hours: 7.45 a.m. to",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "p.m. Monday to Friday",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Role _______",
              "answer": [
                "receptionist"
              ],
              "wordLimit": 1,
              "explanation": "So this is a position for a receptionist - I believe you’ve done that sort of work before?"
            },
            {
              "number": 2,
              "prompt": "Location Fordham _______ Centre",
              "answer": [
                "Medical"
              ],
              "wordLimit": 1,
              "explanation": "Well, this job’s in Fordham, so not too far away for you, and it’s at the medical centre there."
            },
            {
              "number": 3,
              "prompt": "_______ Road, Fordham",
              "answer": [
                "Chastons"
              ],
              "wordLimit": 1,
              "explanation": "It’s quite near the station, on Chastons Road."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "appointments"
              ],
              "wordLimit": 1,
              "explanation": "Yes, and you’d also be involved in making appointments, whether face to face or on the phone."
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "database"
              ],
              "wordLimit": 1,
              "explanation": "And another of your duties would be keeping the centre’s database up-to- date."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "experience"
              ],
              "wordLimit": 1,
              "explanation": "Now when the details came in, I immediately thought of you because one thing they do require is someone with experience"
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "confident"
              ],
              "wordLimit": 1,
              "explanation": "stay calm, and at the same time be confident when interacting with the public."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "temporary"
              ],
              "wordLimit": 1,
              "explanation": "Well, they’re looking for someone from the beginning of next month, but I should tell you that this isn’t a permanent job, it’s temporary, so the contract would be just to the end of September."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "1.15",
                "1"
              ],
              "wordLimit": 1,
              "explanation": ":15 One fifteen."
            },
            {
              "number": 10,
              "prompt": "_______ is available onsite",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "Oh, one thing … is there parking available for staff at the centre?"
            }
          ],
          "formTitle": "Job details from employment agency",
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
              "prompt": "The museum building was originally",
              "options": [
                {
                  "key": "A",
                  "text": "a factory."
                },
                {
                  "key": "B",
                  "text": "a private home."
                },
                {
                  "key": "C",
                  "text": "a hall of residence."
                }
              ],
              "answer": "B",
              "explanation": "So, where we’re standing at the moment is the entrance to a large building that was constructed in 1880 as the home of a local businessman."
            },
            {
              "number": 12,
              "prompt": "The university uses part of the museum building as",
              "options": [
                {
                  "key": "A",
                  "text": "teaching rooms."
                },
                {
                  "key": "B",
                  "text": "a research library."
                },
                {
                  "key": "C",
                  "text": "administration offices."
                }
              ],
              "answer": "A",
              "explanation": "The museum’s owned by the university, and apart from two rooms that are our offices, the university uses the main part of the building. You may see students going into the building for lessons, but it’s not open to museum visitors, I’m afraid."
            },
            {
              "number": 13,
              "prompt": "What does the guide say about the entrance fee?",
              "options": [
                {
                  "key": "A",
                  "text": "Visitors decide whether or not they wish to pay."
                },
                {
                  "key": "B",
                  "text": "Only children and students receive a discount."
                },
                {
                  "key": "C",
                  "text": "The museum charges extra for special exhibitions."
                }
              ],
              "answer": "A",
              "explanation": "We do have a donation box just over there so feel free to give whatever amount you consider appropriate."
            },
            {
              "number": 14,
              "prompt": "What are visitors advised to leave in the cloakroom?",
              "options": [
                {
                  "key": "A",
                  "text": "cameras"
                },
                {
                  "key": "B",
                  "text": "coats"
                },
                {
                  "key": "C",
                  "text": "bags"
                }
              ],
              "answer": "C",
              "explanation": "You might be more comfortable not carrying around heavy rucksacks, though keep your coats and jackets on as it’s quite cold in the museum garden today."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "What information does the speaker give about each of the following areas of the museum? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Parents must supervise their children."
            },
            {
              "key": "B",
              "text": "There are new things to see."
            },
            {
              "key": "C",
              "text": "It is closed today."
            },
            {
              "key": "D",
              "text": "This is only for school groups."
            },
            {
              "key": "E",
              "text": "There is a quiz for visitors."
            },
            {
              "key": "F",
              "text": "It features something created by students."
            },
            {
              "key": "G",
              "text": "An expert is here today."
            },
            {
              "key": "H",
              "text": "There is a one-way system."
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Four Seasons",
              "answer": "F",
              "explanation": "It was designed especially for the museum by a group of young people on a film studies course, and it’s beautiful."
            },
            {
              "number": 16,
              "prompt": "Farmhouse Kitchen",
              "answer": "G",
              "explanation": "And this morning, a specialist cheesemaker will be giving demonstrations of how it’s produced."
            },
            {
              "number": 17,
              "prompt": "A Year on the Farm",
              "answer": "E",
              "explanation": "If you’re feeling competitive, you can take our memory test in which you answer questions about things you’ve seen in the museum."
            },
            {
              "number": 18,
              "prompt": "Wagon Walk",
              "answer": "A",
              "explanation": "The carts are old and fragile, so we ask you to keep your children close to you and ensure they don’t climb on the carts."
            },
            {
              "number": 19,
              "prompt": "Bees are Magic",
              "answer": "C",
              "explanation": "In the far corner of the garden is Bees are Magic, but we’re redeveloping this area so you can’t visit that at the moment."
            },
            {
              "number": 20,
              "prompt": "The Pond",
              "answer": "B",
              "explanation": "There are baby ducks that are only a few days old, as well as tiny frogs."
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
          "instructions": "Choose TWO letters, A–E. Which TWO educational skills were shown in the video of children doing origami?",
          "options": [
            {
              "key": "A",
              "text": "solving problems"
            },
            {
              "key": "B",
              "text": "following instructions"
            },
            {
              "key": "C",
              "text": "working cooperatively"
            },
            {
              "key": "D",
              "text": "learning through play"
            },
            {
              "key": "E",
              "text": "developing hand-eye coordination"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO educational skills were shown in the video of children doing origami?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "On the video you could see them really listening hard to make sure they did all the steps in the right order to make the bird. One thing that really stood out for me was that the children were all having fun while being taught something new."
            },
            {
              "number": 22,
              "prompt": "Which TWO educational skills were shown in the video of children doing origami?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "On the video you could see them really listening hard to make sure they did all the steps in the right order to make the bird. One thing that really stood out for me was that the children were all having fun while being taught something new."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 23–27",
          "instructions": "Which comment do the students make about each of the following children in the video? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "demonstrated independence"
            },
            {
              "key": "B",
              "text": "asked for teacher support"
            },
            {
              "key": "C",
              "text": "developed a competitive attitude"
            },
            {
              "key": "D",
              "text": "seemed to find the activity calming"
            },
            {
              "key": "E",
              "text": "seemed pleased with the results"
            },
            {
              "key": "F",
              "text": "seemed confused"
            },
            {
              "key": "G",
              "text": "seemed to find the activity easy"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Sid",
              "answer": "D",
              "explanation": "it helped him to settle down and start concentrating."
            },
            {
              "number": 24,
              "prompt": "Jack",
              "answer": "A",
              "explanation": "You could see him trying out different things rather than asking the teacher for help."
            },
            {
              "number": 25,
              "prompt": "Naomi",
              "answer": "C",
              "explanation": "She seemed to be losing interest at one point but then she decided she wanted her mouse to be the best and that motivated her to try harder."
            },
            {
              "number": 26,
              "prompt": "Anya",
              "answer": "G",
              "explanation": "She listened so carefully and then produced the perfect bird with very little effort."
            },
            {
              "number": 27,
              "prompt": "Zara",
              "answer": "F",
              "explanation": "She seemed unsure about what she was supposed to do."
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
              "prompt": "Before starting an origami activity in class, the students think it is important for the teacher to",
              "options": [
                {
                  "key": "A",
                  "text": "make models that demonstrate the different stages."
                },
                {
                  "key": "B",
                  "text": "check children understand the terminology involved."
                },
                {
                  "key": "C",
                  "text": "tell children not to worry if they find the activity difficult."
                }
              ],
              "answer": "A",
              "explanation": "I think it would have taken me ages to prepare examples, showing each of the steps involved in making the bird. But that was a really good idea."
            },
            {
              "number": 29,
              "prompt": "The students agree that some teachers might be unwilling to use origami in class because",
              "options": [
                {
                  "key": "A",
                  "text": "they may not think that crafts are important."
                },
                {
                  "key": "B",
                  "text": "they may not have the necessary skills."
                },
                {
                  "key": "C",
                  "text": "they may worry that it will take up too much time."
                }
              ],
              "answer": "B",
              "explanation": "I bet it’s because so many teachers are clumsy like me."
            },
            {
              "number": 30,
              "prompt": "Why do the students decide to use origami in their maths teaching practice?",
              "options": [
                {
                  "key": "A",
                  "text": "to correct a particular misunderstanding"
                },
                {
                  "key": "B",
                  "text": "to set a challenge"
                },
                {
                  "key": "C",
                  "text": "to introduce a new concept"
                }
              ],
              "answer": "C",
              "explanation": "I think it would also work really well for presenting fractions, which is coming up soon."
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
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "His novel, Les Misérables"
            },
            {
              "kind": "static",
              "text": "It has been adapted for theatre and cinema."
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "subheader",
              "text": "His early career"
            },
            {
              "kind": "static",
              "text": "In Paris, his career was successful and he led the Romantic movement."
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "Napoleon III disliked his views and exiled him."
            },
            {
              "kind": "subheader",
              "text": "His exile from France"
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
              "text": "His house on Guernsey"
            },
            {
              "kind": "static",
              "text": "Victor Hugo lived in this house until the end of the Empire in France."
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
              "text": "The library still contains many of his favourite books."
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
            },
            {
              "kind": "static",
              "text": "1927."
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "We know more about its overall _______ than about its author.",
              "answer": [
                "plot"
              ],
              "wordLimit": 1,
              "explanation": "So, some of us, I’m sure, have a pretty general idea of the plot, but we know much less about the author."
            },
            {
              "number": 32,
              "prompt": "He spoke publicly about social issues, such as _______ and education.",
              "answer": [
                "poverty"
              ],
              "wordLimit": 1,
              "explanation": "However, as well as being a literary genius, he also gave many speeches about issues like the level of poverty in his society."
            },
            {
              "number": 33,
              "prompt": "Victor Hugo had to live elsewhere in _______",
              "answer": [
                "Europe"
              ],
              "wordLimit": 1,
              "explanation": "So Victor Hugo was forced to reside in other parts of Europe."
            },
            {
              "number": 34,
              "prompt": "He used his income from the sale of some _______ he had written to buy a house on Guernsey.",
              "answer": [
                "poetry"
              ],
              "wordLimit": 1,
              "explanation": "This was a property that he bought using the money he’d made in France from the publication of a collection of his poetry."
            },
            {
              "number": 35,
              "prompt": "The ground floor contains portraits, _______ and tapestries that he valued.",
              "answer": [
                "drawings"
              ],
              "wordLimit": 1,
              "explanation": "He lived in the house with his family … and portraits of its members still hang in rooms on the ground floor, along with drawings that he did during his travels that he felt were important to him."
            },
            {
              "number": 36,
              "prompt": "He bought cheap _______ made of wood and turned this into beautiful wall carvings.",
              "answer": [
                "furniture"
              ],
              "wordLimit": 1,
              "explanation": "The walls are covered in dark wood panelling that Victor Hugo created himself using wooden furniture that he bought in the market."
            },
            {
              "number": 37,
              "prompt": "The first floor consists of furnished areas with wallpaper and _______ that have a Chinese design.",
              "answer": [
                "lamps"
              ],
              "wordLimit": 1,
              "explanation": "There’s a strong Chinese influence in these areas in things like the wallpaper pattern and the lamps - which he would have made himself by copying original versions."
            },
            {
              "number": 38,
              "prompt": "He wrote in a room at the top of the house that had a view of the _______",
              "answer": [
                "harbour"
              ],
              "wordLimit": 1,
              "explanation": "/ harbor And then, at the very top of the house, there’s a room called the Lookout - called that because it looks out over the harbour."
            },
            {
              "number": 39,
              "prompt": "He entertained other writers as well as poor _______ in his house.",
              "answer": [
                "children"
              ],
              "wordLimit": 1,
              "explanation": "While living in his house on Guernsey, he entertained many other famous writers, but he also invited a large group of local children from the deprived areas of the island to dinner once a week."
            },
            {
              "number": 40,
              "prompt": "Victor Hugo’s _______ gave ownership of the house to the city of Paris in",
              "answer": [
                "relatives"
              ],
              "wordLimit": 1,
              "explanation": "In 1927, the house was owned by his relatives, and they decided to donate it to the city of Paris."
            }
          ],
          "formTitle": "Victor Hugo",
          "id": "g31"
        }
      ]
    }
  ]
}
$c18t4l$,
  true
);
