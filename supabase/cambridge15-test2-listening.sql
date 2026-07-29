DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 15',
  'Test 2',
  'academic',
  2004,
  $c15t2l$
{
  "audioPath": "Cambridge 15 Test 2.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–4",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Date Type of event Details"
            },
            {
              "kind": "static",
              "text": "17th a concert performers from Canada"
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
              "kind": "static",
              "text": "20th (evening) a"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "show show is called",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "18th a ballet company called _______",
              "answer": [
                "Eustatis"
              ],
              "wordLimit": 1,
              "explanation": "The next day, the 18th, there’s a performance by a ballet company called Eustatis."
            },
            {
              "number": 2,
              "prompt": "19th-20th (afternoon) a play type of play: a comedy called Jemima has had a good _______",
              "answer": [
                "review"
              ],
              "wordLimit": 1,
              "explanation": "I haven’t seen it myself, but the review in the local paper was very good."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "dance"
              ],
              "wordLimit": 1,
              "explanation": "And what about dance?"
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "Chat"
              ],
              "wordLimit": 1,
              "explanation": "The show is about how people communicate, or fail to communicate, with each other, so it’s got the rather strange name, Chat."
            }
          ],
          "formTitle": "Festival information",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 5–10",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Making"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "food (children only) Making",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "(adults only) Making toys from",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "using various tools",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Outdoor activities"
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
              "number": 5,
              "prompt": "_______",
              "answer": [
                "healthy"
              ],
              "wordLimit": 1,
              "explanation": "It’s going to focus on how to make food part of a healthy lifestyle, and it’ll show that even sweet things like cakes can contain much less sugar than they usually do."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "posters"
              ],
              "wordLimit": 1,
              "explanation": "Another workshop is just for children, and that’s on creating posters to reflect the history of the town."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "wood"
              ],
              "wordLimit": 1,
              "explanation": "Because it involves carpentry - participants will be making toys out of wood, so there’ll be a lot of sharp chisels and other tools around."
            },
            {
              "number": 8,
              "prompt": "Swimming in the _______",
              "answer": [
                "lake"
              ],
              "wordLimit": 1,
              "explanation": "In a lake, for instance."
            },
            {
              "number": 9,
              "prompt": "Walking in the woods, led by an expert on _______",
              "answer": [
                "insects"
              ],
              "wordLimit": 1,
              "explanation": "The leader is an expert on insects."
            },
            {
              "number": 10,
              "prompt": "See the festival organiser’s _______ for more information",
              "answer": [
                "blog"
              ],
              "wordLimit": 1,
              "explanation": "If you’d like to read about how the preparations for the festival are going, the festival organizer is keeping a blog."
            }
          ],
          "formTitle": "Workshops",
          "id": "g5"
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
              "prompt": "The park was originally established",
              "options": [
                {
                  "key": "A",
                  "text": "as an amenity provided by the city council."
                },
                {
                  "key": "B",
                  "text": "as land belonging to a private house."
                },
                {
                  "key": "C",
                  "text": "as a shared area set up by the local community."
                }
              ],
              "answer": "C",
              "explanation": "unlike many public parks that started in private ownership, as the garden of a large house, for instance, Minster was some waste land, which people living nearby started planting with flowers in 1892."
            },
            {
              "number": 12,
              "prompt": "Why is there a statue of Diane Gosforth in the park?",
              "options": [
                {
                  "key": "A",
                  "text": "She was a resident who helped to lead a campaign."
                },
                {
                  "key": "B",
                  "text": "She was a council member responsible for giving the public access."
                },
                {
                  "key": "C",
                  "text": "She was a senior worker at the park for many years."
                }
              ],
              "answer": "A",
              "explanation": "Diane Gosforth was one of those people, and she organised petitions and demonstrations"
            },
            {
              "number": 13,
              "prompt": "During the First World War, the park was mainly used for",
              "options": [
                {
                  "key": "A",
                  "text": "exercises by troops."
                },
                {
                  "key": "B",
                  "text": "growing vegetables."
                },
                {
                  "key": "C",
                  "text": "public meetings."
                }
              ],
              "answer": "B",
              "explanation": "Soon after this the First World War broke out, in 1914, and most of the park was dug up and planted with vegetables, which were sold locally."
            },
            {
              "number": 14,
              "prompt": "When did the physical transformation of the park begin?",
              "options": [
                {
                  "key": "A",
                  "text": "2013"
                },
                {
                  "key": "B",
                  "text": "2015"
                },
                {
                  "key": "C",
                  "text": "2016"
                }
              ],
              "answer": "C",
              "explanation": "The changes finally got going in 2016, and were finished on schedule last year."
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
              "prompt": "statue of Diane Gosforth",
              "answer": "E",
              "explanation": "but it’s now immediately to the north of the lily pond, almost in the centre of the park"
            },
            {
              "number": 16,
              "prompt": "wooden sculptures",
              "answer": "C",
              "explanation": "There’s a new area of wooden sculptures, which are on the river bank, where the path from the east gate makes a sharp bend."
            },
            {
              "number": 17,
              "prompt": "playground",
              "answer": "B",
              "explanation": "that’s between the river and the path that leads from the pond to the river."
            },
            {
              "number": 18,
              "prompt": "maze",
              "answer": "A",
              "explanation": "That’s near the west gate - you go north from there towards the river and then turn left to reach it."
            },
            {
              "number": 19,
              "prompt": "tennis courts",
              "answer": "G",
              "explanation": "They’re still in the south-west corner of the park, where there’s a right-angle bend in the path."
            },
            {
              "number": 20,
              "prompt": "fitness area",
              "answer": "D",
              "explanation": "This is right next to the lily pond on the same side as the west gate."
            }
          ],
          "mapImage": "Cambridge 15 Test 2 map.png",
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
          "instructions": "Choose TWO letters, A–E. Which TWO groups of people is the display primarily intended for?",
          "options": [
            {
              "key": "A",
              "text": "student from the English department"
            },
            {
              "key": "B",
              "text": "residents of the local area"
            },
            {
              "key": "C",
              "text": "the university’s teaching staff"
            },
            {
              "key": "D",
              "text": "potential new students"
            },
            {
              "key": "E",
              "text": "students from other departments"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO groups of people is the display primarily intended for?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "It’ll be publicised in the city, to encourage people to come and find out something of what does on here. And it’s included in the information that’s sent to people who are considering applying to study here next year."
            },
            {
              "number": 22,
              "prompt": "Which TWO groups of people is the display primarily intended for?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "It’ll be publicised in the city, to encourage people to come and find out something of what does on here. And it’s included in the information that’s sent to people who are considering applying to study here next year."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. What are Cathy and Graham’s TWO reasons for choosing the novelist Charles Dickens?",
          "options": [
            {
              "key": "A",
              "text": "His speeches inspired others to try to improve society."
            },
            {
              "key": "B",
              "text": "He used his publications to draw attention to social problems."
            },
            {
              "key": "C",
              "text": "His novels are well-known now."
            },
            {
              "key": "D",
              "text": "He was consulted on a number of social issues."
            },
            {
              "key": "E",
              "text": "His reputation has changed in recent times."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "What are Cathy and Graham’s TWO reasons for choosing the novelist Charles Dickens?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Most people have heard of him, and have probably read some of his novels, or seen films based on them And his novels show the awful conditions that most people had to live in, don’t they: he wanted to shock people into doing something about it."
            },
            {
              "number": 24,
              "prompt": "What are Cathy and Graham’s TWO reasons for choosing the novelist Charles Dickens?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Most people have heard of him, and have probably read some of his novels, or seen films based on them And his novels show the awful conditions that most people had to live in, don’t they: he wanted to shock people into doing something about it."
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What topic do Cathy and Graham choose to illustrate with each novel? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "poverty"
            },
            {
              "key": "B",
              "text": "education"
            },
            {
              "key": "C",
              "text": "Dickens’s travels"
            },
            {
              "key": "D",
              "text": "entertainment"
            },
            {
              "key": "E",
              "text": "crime and the law"
            },
            {
              "key": "F",
              "text": "wealth"
            },
            {
              "key": "G",
              "text": "medicine"
            },
            {
              "key": "H",
              "text": "a woman’s life"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "The Pickwick Papers",
              "answer": "G",
              "explanation": "that there’s a character who keeps falling asleep, and that medical condition was named after the book - Pickwickian Syndrome."
            },
            {
              "number": 26,
              "prompt": "Oliver Twist",
              "answer": "B",
              "explanation": "We could use that to illustrate the fact that very few children went to school, particularly not poor children, so they learnt in other ways."
            },
            {
              "number": 27,
              "prompt": "Nicholas Nickleby",
              "answer": "D",
              "explanation": "But there’s also the company of touring actors that Nicholas joins. We could do something on theatres and other amusements of the time."
            },
            {
              "number": 28,
              "prompt": "Martin Chuzzlewit",
              "answer": "C",
              "explanation": "Yes, and Dickens himself had been there a year before, and drew on his experience there in the novel."
            },
            {
              "number": 29,
              "prompt": "Bleak House",
              "answer": "H",
              "explanation": "That’s true, but think about Esther, the heroine. As a child she lives with someone she doesn’t know is her aunt, who treats her very badly. Then she’s very happy living with her guardian, and he puts her in charge of the household. And at the end she gets married and her guardian gives her and her husband a house, where of course they’re very happy."
            },
            {
              "number": 30,
              "prompt": "Little Dorrit",
              "answer": "F",
              "explanation": "What about focusing on the part when Mr Dorrit inherits a fortune, and he starts pretending he’s always been rich?"
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
              "text": "How the programme was organised"
            },
            {
              "kind": "static",
              "text": "It focused on a dry and arid region in Chicualacuala district, near the Limpopo River."
            },
            {
              "kind": "static",
              "text": "People depended on the forest to provide charcoal as a source of income."
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
              "text": "Fenced areas created to keep animals away from crops."
            },
            {
              "kind": "subheader",
              "text": "The programme provided"
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
              "text": "- water pumps."
            },
            {
              "kind": "subheader",
              "text": "The farmers provided"
            },
            {
              "kind": "subheader",
              "text": "- labour"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "Further developments"
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
              "kind": "question",
              "number": 39
            },
            {
              "kind": "subheader",
              "text": "Evaluation and lessons learned"
            },
            {
              "kind": "static",
              "text": "Agricultural production increased, improving incomes and food security."
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "_______ was seen as the main priority to ensure the supply of water.",
              "answer": [
                "Irrigation"
              ],
              "wordLimit": 1,
              "explanation": "the programme focused primarily on making use of existing water resources from the Limpopo River by setting up systems of irrigation"
            },
            {
              "number": 32,
              "prompt": "Most of the work organised by farmers’ associations was done by _______",
              "answer": [
                "women"
              ],
              "wordLimit": 1,
              "explanation": "women formed the majority of the workforce."
            },
            {
              "number": 33,
              "prompt": "- _______ for the fences",
              "answer": [
                "wire"
              ],
              "wordLimit": 1,
              "explanation": "/ wires The community was responsible for creating these fences, but the programme provided the necessary wire for making them."
            },
            {
              "number": 34,
              "prompt": "- _______ for suitable crops",
              "answer": [
                "seed"
              ],
              "wordLimit": 1,
              "explanation": "/ seeds the programme provided the necessary seeds for this."
            },
            {
              "number": 35,
              "prompt": "- _______ for the fences on their land.",
              "answer": [
                "posts"
              ],
              "wordLimit": 1,
              "explanation": "they also provided and put up the posts that supported the fences around the fields."
            },
            {
              "number": 36,
              "prompt": "The marketing of produce was sometimes difficult due to lack of _______ .",
              "answer": [
                "transport"
              ],
              "wordLimit": 1,
              "explanation": "as the farmers did not have access to transport"
            },
            {
              "number": 37,
              "prompt": "Training was therefore provided in methods of food _______ .",
              "answer": [
                "preservation"
              ],
              "wordLimit": 1,
              "explanation": "the farmers needed to learn techniques for its preservation."
            },
            {
              "number": 38,
              "prompt": "Farmers made special places where _______ could be kept.",
              "answer": [
                "fish"
              ],
              "wordLimit": 1,
              "explanation": "/ fishes off areas and to fill these with water and use them for breeding fish"
            },
            {
              "number": 39,
              "prompt": "Local people later suggested keeping _______ .",
              "answer": [
                "bees"
              ],
              "wordLimit": 1,
              "explanation": "They decided to try setting up colonies of bees"
            },
            {
              "number": 40,
              "prompt": "Enough time must be allowed, particularly for the _______ phase of the programme.",
              "answer": [
                "design"
              ],
              "wordLimit": 1,
              "explanation": "However, it’s important to set realistic timelines for each phase of the programme, especially for its design"
            }
          ],
          "formTitle": "Agricultural programme in Mozambique",
          "id": "g31"
        }
      ]
    }
  ]
}
$c15t2l$,
  true
);
