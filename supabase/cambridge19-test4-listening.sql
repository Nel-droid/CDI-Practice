DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 19',
  'Test 4',
  'academic',
  2004,
  $c19t4l$
{
  "audioPath": "Cambridge 19 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
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
              "kind": "static",
              "text": "See Tiffany in HR: to give"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "number to collect",
              "noBullet": true
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
              "prompt": "Name of supervisor _______",
              "answer": [
                "KAEDEN"
              ],
              "wordLimit": 1,
              "explanation": "Hello Charlotte. I’m Kaeden, one of the supervisors. Welcome to the team."
            },
            {
              "number": 2,
              "prompt": "Where to leave coat and bag: use _______ in staffroom",
              "answer": [
                "locker"
              ],
              "wordLimit": 1,
              "explanation": "/ lockers So, after you’ve finished at the front desk, I’ll take you to the staffroom. Put your coat and rucksack in one of the lockers there. Take whichever one is free."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "passport"
              ],
              "wordLimit": 1,
              "explanation": "I was told to bring my passport with me. HR need to take a note of the number in it."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "uniform"
              ],
              "wordLimit": 1,
              "explanation": "OK. Tiffany will give you a uniform. They have lots in different sizes, so you just tell her what you need."
            },
            {
              "number": 5,
              "prompt": "Location of HR office: on _______ floor",
              "answer": [
                "third"
              ],
              "wordLimit": 1,
              "explanation": "/ 3rd The staffroom’s on the first floor, and HR are a couple of floors above that, on the third floor. There’s a staircase outside the staffroom."
            },
            {
              "number": 6,
              "prompt": "Supervisor's mobile number: _______",
              "answer": [
                "0412665903"
              ],
              "wordLimit": 1,
              "explanation": "It’s oh-four-one-two double-six-five nine-oh-three."
            }
          ],
          "formTitle": "First day at work",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Task 1 Task 2 Notes"
            },
            {
              "kind": "static",
              "text": "Bakery section Check sell by dates Change price labels"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "subheader",
              "text": "Sushi takeaway counter"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "Wipe preparation area and clean the sink"
            },
            {
              "kind": "subheader",
              "text": "Do not clean any knives"
            },
            {
              "kind": "subheader",
              "text": "Meat and fish counters"
            },
            {
              "kind": "static",
              "text": "Clean the serving area, including the weighing scales"
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
              "prompt": "Use _______ labels",
              "answer": [
                "yellow"
              ],
              "wordLimit": 1,
              "explanation": "When something needs a new price label, put a yellow one on the package, next to the original price."
            },
            {
              "number": 8,
              "prompt": "Re-stock with _______ boxes if needed",
              "answer": [
                "plastic"
              ],
              "wordLimit": 1,
              "explanation": "Beneath those is where we keep the plastic boxes -we run out of those really quickly, so you should bring more from the storeroom."
            },
            {
              "number": 9,
              "prompt": "Collect _______ for the fish from the cold- room",
              "answer": [
                "ice"
              ],
              "wordLimit": 1,
              "explanation": "The fish is laid on ice, but when that starts to melt, you’ll need to get more from the cold-room."
            },
            {
              "number": 10,
              "prompt": "Must wear special _______",
              "answer": [
                "gloves"
              ],
              "wordLimit": 1,
              "explanation": "But make sure you put on thermal gloves when you take anything out of the cold-room."
            }
          ],
          "formTitle": "Responsibilities",
          "id": "g7"
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
          "instructions": "Choose TWO letters, A–E. Which TWO problems with some training programmes for new runners does Liz mention?",
          "options": [
            {
              "key": "A",
              "text": "There is a risk of serious injury."
            },
            {
              "key": "B",
              "text": "They are unsuitable for certain age groups."
            },
            {
              "key": "C",
              "text": "They are unsuitable for people with health issues."
            },
            {
              "key": "D",
              "text": "It is difficult to stay motivated."
            },
            {
              "key": "E",
              "text": "There is a lack of individual support."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO problems with some training programmes for new runners does Liz mention?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "However, they don’t work for everyone-especially if you suffer from something like a heart condition or asthma, because they’re aimed at people with average fitness and running ability. Another thing is that everyone is different- and if you have any specific questions related to your needs, there’s no one to provide any answers."
            },
            {
              "number": 12,
              "prompt": "Which TWO problems with some training programmes for new runners does Liz mention?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "However, they don’t work for everyone-especially if you suffer from something like a heart condition or asthma, because they’re aimed at people with average fitness and running ability. Another thing is that everyone is different- and if you have any specific questions related to your needs, there’s no one to provide any answers."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO tips does Liz recommend for new runners?",
          "options": [
            {
              "key": "A",
              "text": "doing two runs a week"
            },
            {
              "key": "B",
              "text": "running in the evening"
            },
            {
              "key": "C",
              "text": "going on runs with a friend"
            },
            {
              "key": "D",
              "text": "listening to music during runs"
            },
            {
              "key": "E",
              "text": "running very slowly"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO tips does Liz recommend for new runners?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "I don’t think the time of day is especially important- some people are better in the evening, while others are morning people- but you need to be consistent, so aim to train regularly- twice a week is enough to begin with. Listening to music can be very helpful- it takes your mind off things and helps your body get into a rhythm."
            },
            {
              "number": 14,
              "prompt": "Which TWO tips does Liz recommend for new runners?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "I don’t think the time of day is especially important- some people are better in the evening, while others are morning people- but you need to be consistent, so aim to train regularly- twice a week is enough to begin with. Listening to music can be very helpful- it takes your mind off things and helps your body get into a rhythm."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–18",
          "instructions": "What reason prevented each of the following members of the Compton Park Runners Club from joining until recently? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "a lack of confidence"
            },
            {
              "key": "B",
              "text": "a dislike of running"
            },
            {
              "key": "C",
              "text": "a lack of time"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Ceri",
              "answer": "A",
              "explanation": "Ceri, for example, joined the club two years ago at the age of 40. She’d always enjoyed running at school but wasn’t sure if she’d be able to do it. She was worried about being left behind and being the slowest runner."
            },
            {
              "number": 16,
              "prompt": "James",
              "answer": "B",
              "explanation": "James had always hated the idea of running but a friend encouraged him to come along for a taster session and he hasn’t looked back. He never misses a training session despite having a really demanding job"
            },
            {
              "number": 17,
              "prompt": "Leo",
              "answer": "C",
              "explanation": "Leo was worried about having to commit himself to training sessions every week and wasn’t sure he’d be able to fit training into his busy schedule."
            },
            {
              "number": 18,
              "prompt": "Mark",
              "answer": "A",
              "explanation": "Mark is quite typical of our new members. He’s never considered himself to be a sporty person and it was only when he retired that he decided to take up the challenge of trying to run 5 kilometres. It took him months to find the courage to contact us but felt reassured immediately as there were other people his age who were only just taking up running for the first time."
            }
          ],
          "id": "g15"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 19–20",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 19,
              "prompt": "What does Liz say about running her first marathon?",
              "options": [
                {
                  "key": "A",
                  "text": "It had always been her ambition."
                },
                {
                  "key": "B",
                  "text": "Her husband persuaded her to do it."
                },
                {
                  "key": "C",
                  "text": "She nearly gave up before the end."
                }
              ],
              "answer": "C",
              "explanation": "I managed to complete it in four hours, but I felt like giving up halfway through -it was only the support of the spectators that kept me going."
            },
            {
              "number": 20,
              "prompt": "Liz says new runners should sign up for a race",
              "options": [
                {
                  "key": "A",
                  "text": "every six months."
                },
                {
                  "key": "B",
                  "text": "within a few weeks of taking up running."
                },
                {
                  "key": "C",
                  "text": "after completing several practice runs."
                }
              ],
              "answer": "B",
              "explanation": "But after you’ve been training for a few weeks, it’s worth putting your name down for a 5K- some people find they only need a few practice runs before taking part in a race, but I’d give yourself a couple of months at least."
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
          "type": "multiple_choice",
          "label": "Questions 21–25",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "Kieran thinks the packing advice given by Jane’s grandfather is",
              "options": [
                {
                  "key": "A",
                  "text": "common sense."
                },
                {
                  "key": "B",
                  "text": "hard to follow."
                },
                {
                  "key": "C",
                  "text": "over-protective."
                }
              ],
              "answer": "A",
              "explanation": "He says you have to support the spine otherwise the paper can come away from the cover."
            },
            {
              "number": 22,
              "prompt": "How does Jane feel about the books her grandfather has given her?",
              "options": [
                {
                  "key": "A",
                  "text": "They are not worth keeping."
                },
                {
                  "key": "B",
                  "text": "They should go to a collector."
                },
                {
                  "key": "C",
                  "text": "They have sentimental value for her."
                }
              ],
              "answer": "C",
              "explanation": "I should dump them really if they’re going to deteriorate further, but I’d feel bad. They’ll always remind me of him."
            },
            {
              "number": 23,
              "prompt": "Jane and Kieran agree that hardback books should be",
              "options": [
                {
                  "key": "A",
                  "text": "put out on display."
                },
                {
                  "key": "B",
                  "text": "given as gifts to visitors."
                },
                {
                  "key": "C",
                  "text": "more attractively designed."
                }
              ],
              "answer": "A",
              "explanation": "I agree-and book covers can be a work of art in themselves. Some are really eye-catching."
            },
            {
              "number": 24,
              "prompt": "While talking about taking a book from a shelf, Jane",
              "options": [
                {
                  "key": "A",
                  "text": "describes the mistakes other people make doing it."
                },
                {
                  "key": "B",
                  "text": "reflects on a significant childhood experience."
                },
                {
                  "key": "C",
                  "text": "explains why some books are easier to remove than others."
                }
              ],
              "answer": "B",
              "explanation": "He watched me pull a heavy book off the shelf when I was small, and it fell on the floor and broke apart."
            },
            {
              "number": 25,
              "prompt": "What do Jane and Kieran suggest about new books?",
              "options": [
                {
                  "key": "A",
                  "text": "Their parents liked buying them as presents."
                },
                {
                  "key": "B",
                  "text": "They would like to buy more of them."
                },
                {
                  "key": "C",
                  "text": "Not everyone can afford them."
                }
              ],
              "answer": "C",
              "explanation": "I guess we’re lucky we can buy them."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 26–30",
          "instructions": "Where does Jane’s grandfather keep each of the following types of books in his shop? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "near the entrance"
            },
            {
              "key": "B",
              "text": "in the attic"
            },
            {
              "key": "C",
              "text": "at the back of the shop"
            },
            {
              "key": "D",
              "text": "on a high shelf"
            },
            {
              "key": "E",
              "text": "near the stairs"
            },
            {
              "key": "F",
              "text": "in a specially designed space"
            },
            {
              "key": "G",
              "text": "within the cafe"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "rare books",
              "answer": "D",
              "explanation": "But he likes people to know that he has them. So, he puts them out in the shop but makes sure you need a ladder to get them."
            },
            {
              "number": 27,
              "prompt": "children’s books",
              "answer": "F",
              "explanation": "Not exactly- he’s got a dedicated area on the ground floor with cushions"
            },
            {
              "number": 28,
              "prompt": "unwanted books",
              "answer": "A",
              "explanation": "He hardly ever throws anything away -he just leaves unwanted books by the front door for customers to take."
            },
            {
              "number": 29,
              "prompt": "requested books",
              "answer": "C",
              "explanation": "Yeah-and books people or institutions have requested, they all go at the far end."
            },
            {
              "number": 30,
              "prompt": "coursebooks",
              "answer": "G",
              "explanation": "he’s moved them downstairs to attract the students. They’re actually part of the coffee shop, on low shelves all around it."
            }
          ],
          "id": "g26"
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
              "text": "Reforestation projects should:"
            },
            {
              "kind": "subheader",
              "text": "- include a range of tree species"
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
              "kind": "question",
              "number": 33
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Large-scale reforestation projects"
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
              "text": "Lampang Province, Northern Thailand"
            },
            {
              "kind": "static",
              "text": "- A forest was restored in an area damaged by mining."
            },
            {
              "kind": "static",
              "text": "- A variety of native fig trees were planted, which are important for"
            },
            {
              "kind": "subheader",
              "text": "+ supporting many wildlife species"
            },
            {
              "kind": "static",
              "text": "+ increasing the"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "of recovery by attracting animals and birds, e.g.,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "were soon attracted to the area.",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Involving local communities"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "- The mangrove reforestation project:"
            },
            {
              "kind": "static",
              "text": "+ provided employment for local people"
            },
            {
              "kind": "subheader",
              "text": "+ restored a healthy ecosystem"
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "- not include invasive species because of possible _______ with native species",
              "answer": [
                "competition"
              ],
              "wordLimit": 1,
              "explanation": "Invasive species are a significant contributor to the current global biodiversity crisis and are often in competition with native species and may threaten their long-term survival."
            },
            {
              "number": 32,
              "prompt": "- aim to capture carbon, protect the environment and provide sustainable sources of _______ for local people",
              "answer": [
                "food"
              ],
              "wordLimit": 1,
              "explanation": "Restoring biodiversity that will maximise carbon capture is key when reforesting an area, but ideally any reforestation project should have several goals. These could include selecting trees that can contribute to wildlife conservation, improve the availability of food for the local community and maintain the stability of soil systems."
            },
            {
              "number": 33,
              "prompt": "- use tree seeds with a high genetic diversity to increase resistance to _______ and climate change",
              "answer": [
                "disease"
              ],
              "wordLimit": 1,
              "explanation": "Using seeds with low genetic diversity generally lowers the resilience of restored forests, which can make them vulnerable to disease and unable to adapt to climate change."
            },
            {
              "number": 34,
              "prompt": "- plant trees on previously forested land which is in a bad condition, not select land which is being used for _______",
              "answer": [
                "agriculture"
              ],
              "wordLimit": 1,
              "explanation": "Reforesting areas which are currently exploited for agriculture should be avoided as this often leads to other areas being deforested."
            },
            {
              "number": 35,
              "prompt": "- Base planning decisions on information from accurate _______",
              "answer": [
                "maps"
              ],
              "wordLimit": 1,
              "explanation": "Making the right decisions about where to plant trees depends on having the right information. Having detailed and up-to-date maps identifying high-prioritv areas for intervention is essential."
            },
            {
              "number": 36,
              "prompt": "- Drones are useful for identifying areas in Brazil which are endangered by keeping _______ and illegal logging.",
              "answer": [
                "cattle"
              ],
              "wordLimit": 1,
              "explanation": "Drone technology is a useful tool in helping to prioritise and monitor areas of degraded forest for restoration. In Brazil, it’s being used to identify and quantify how parts of the Amazon are being devastated by human activities such as rearing cattle and illegal logging."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "speed"
              ],
              "wordLimit": 1,
              "explanation": "They are central to tropical reforestation projects as they accelerate the speed of the recovery process by attracting animals and birds which act as natural seed dispersers."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "monkeys"
              ],
              "wordLimit": 1,
              "explanation": "At this site, for example, after only three rainy seasons, monkeys started visiting to eat the fig fruits, naturally dispersing seeds through defecation."
            },
            {
              "number": 39,
              "prompt": "- Destruction of mangrove forests in Madagascar made it difficult for people to make a living from _______",
              "answer": [
                "fishing"
              ],
              "wordLimit": 1,
              "explanation": "Destruction of the mangrove forests had a terrible impact on plant and animal life, and also badly affected the fishing industry, which was a major source of employment for local people living in coastal areas."
            },
            {
              "number": 40,
              "prompt": "+ protects against the higher risk of _______",
              "answer": [
                "flooding"
              ],
              "wordLimit": 1,
              "explanation": "The mangroves also act as a defence against the increased threat of flooding caused by climate change."
            }
          ],
          "formTitle": "Tree planting",
          "id": "g31"
        }
      ]
    }
  ]
}
$c19t4l$,
  true
);
