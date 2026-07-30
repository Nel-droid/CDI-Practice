DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 17',
  'Test 3',
  'academic',
  2004,
  $c17t3l$
{
  "audioPath": "Cambridge 17 Test 3.mp3",
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
              "text": "Jack’s advice"
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
              "kind": "subheader",
              "text": "Irish surfing locations"
            },
            {
              "kind": "subheader",
              "text": "County Clare"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "subheader",
              "text": "- There are famous cliffs nearby"
            },
            {
              "kind": "subheader",
              "text": "County Mayo"
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
              "kind": "subheader",
              "text": "Weather"
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
              "text": "Costs"
            },
            {
              "kind": "subheader",
              "text": "Equipment"
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
              "number": 1,
              "prompt": "Recommends surfing for _______ holidays in the summer",
              "answer": [
                "family"
              ],
              "wordLimit": 1,
              "explanation": "I think it’s the kind of holiday all the family can enjoy together."
            },
            {
              "number": 2,
              "prompt": "Need to be quite _______",
              "answer": [
                "fit"
              ],
              "wordLimit": 1,
              "explanation": "I’ve heard you need to be pretty fit."
            },
            {
              "number": 3,
              "prompt": "- Lahinch has some good quality _______ and surf schools",
              "answer": [
                "hotels"
              ],
              "wordLimit": 1,
              "explanation": "Are there good hotels there?"
            },
            {
              "number": 4,
              "prompt": "- Good surf school at _______ beach",
              "answer": [
                "Carrowniskey"
              ],
              "wordLimit": 1,
              "explanation": "There’s a good surf school at Carrowniskey beach."
            },
            {
              "number": 5,
              "prompt": "- Surf camp lasts for one _______",
              "answer": [
                "week"
              ],
              "wordLimit": 1,
              "explanation": "Three hours every day for a week."
            },
            {
              "number": 6,
              "prompt": "- Can also explore the local _______ by kayak",
              "answer": [
                "bay"
              ],
              "wordLimit": 1,
              "explanation": "One thing we did while the kids were surfing was to rent some kayaks to have a look around the bay which is nearby."
            },
            {
              "number": 7,
              "prompt": "Best month to go: _______",
              "answer": [
                "September"
              ],
              "wordLimit": 1,
              "explanation": "September’s my favourite month because the water is warmer then."
            },
            {
              "number": 8,
              "prompt": "Average temperature in summer: approx. _______ degrees",
              "answer": [
                "19"
              ],
              "wordLimit": 1,
              "explanation": "/ nineteen The average temperature is about 19 degrees and it usually doesn’t go above 25 degrees."
            },
            {
              "number": 9,
              "prompt": "- Wetsuit and surfboard: _______ euros per day",
              "answer": [
                "30"
              ],
              "wordLimit": 1,
              "explanation": "/ thirty You can expect to pay a daily rate of about 30 euros for the hire of a wetsuit and board"
            },
            {
              "number": 10,
              "prompt": "- Also advisable to hire _______ for warmth",
              "answer": [
                "boots"
              ],
              "wordLimit": 1,
              "explanation": "And make sure you also get boots. They keep your feet warm and it’s easier to surf with them on too."
            }
          ],
          "formTitle": "Advice on surfing holidays",
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
          "instructions": "Choose TWO letters, A–E. Which TWO facts are given about the school’s extended hours childcare service?",
          "options": [
            {
              "key": "A",
              "text": "It started recently."
            },
            {
              "key": "B",
              "text": "More children attend after school than before school."
            },
            {
              "key": "C",
              "text": "An average of 50 children attend in the mornings."
            },
            {
              "key": "D",
              "text": "A child cannot attend both the before and after school sessions."
            },
            {
              "key": "E",
              "text": "The maximum number of children who can attend is 70."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO facts are given about the school’s extended hours childcare service?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "We are insured to provide care for up to 70 children I think we generally expect around 50-60 children for the afternoon sessions and about half that number for the breakfast sessions."
            },
            {
              "number": 12,
              "prompt": "Which TWO facts are given about the school’s extended hours childcare service?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "We are insured to provide care for up to 70 children I think we generally expect around 50-60 children for the afternoon sessions and about half that number for the breakfast sessions."
            }
          ],
          "id": "g11"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 13–15",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 13,
              "prompt": "How much does childcare cost for a complete afternoon session per child?",
              "options": [
                {
                  "key": "A",
                  "text": "£3.50"
                },
                {
                  "key": "B",
                  "text": "£5.70"
                },
                {
                  "key": "C",
                  "text": "£7.20"
                }
              ],
              "answer": "C",
              "explanation": "For the afternoon sessions, which run from 3.30 until 6 p.m., it’s £7.20."
            },
            {
              "number": 14,
              "prompt": "What does the manager say about food?",
              "options": [
                {
                  "key": "A",
                  "text": "Children with allergies should bring their own food."
                },
                {
                  "key": "B",
                  "text": "Children may bring healthy snacks with them."
                },
                {
                  "key": "C",
                  "text": "Children are given a proper meal at 5 p.m."
                }
              ],
              "answer": "C",
              "explanation": "At 5 p.m. children are given something more substantial, such as pasta or a casserole."
            },
            {
              "number": 15,
              "prompt": "What is different about arrangements in the school holidays?",
              "options": [
                {
                  "key": "A",
                  "text": "Children from other schools can attend."
                },
                {
                  "key": "B",
                  "text": "Older children can attend."
                },
                {
                  "key": "C",
                  "text": "A greater number of children can attend."
                }
              ],
              "answer": "A",
              "explanation": "It will also feel different because they’ll get the chance to make new friends with children from other schools - spaces are available for them because a lot of our term-time children don’t always attend during the holiday."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "What information is given about each of the following activities on offer? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "has limited availability"
            },
            {
              "key": "B",
              "text": "is no longer available"
            },
            {
              "key": "C",
              "text": "is for over 8s only"
            },
            {
              "key": "D",
              "text": "requires help from parents"
            },
            {
              "key": "E",
              "text": "involves an additional fee"
            },
            {
              "key": "F",
              "text": "is a new activity"
            },
            {
              "key": "G",
              "text": "was requested by children"
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "Spanish",
              "answer": "E",
              "explanation": "This is the only activity which we have to make an extra charge for - but it’s well worth it."
            },
            {
              "number": 17,
              "prompt": "Music",
              "answer": "D",
              "explanation": "We do rely on parental support for this, so if any of you sing or play an instrument and would be prepared to help out at these sessions, we’d be delighted."
            },
            {
              "number": 18,
              "prompt": "Painting",
              "answer": "G",
              "explanation": "but children kept asking if they could do some art and so we finally gave in."
            },
            {
              "number": 19,
              "prompt": "Yoga",
              "answer": "F",
              "explanation": "Yoga is something that we’ve been meaning to introduce for some time but haven’t been able to find anyone available to teach it - until now that is."
            },
            {
              "number": 20,
              "prompt": "Cooking",
              "answer": "C",
              "explanation": "Although the younger children love doing it, we found that the mess was just too much, so we’ve decided to restrict this to the over 8s, as they are better able to clean up after themselves."
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
          "type": "multiple_choice",
          "label": "Questions 21–24",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "Holly has chosen the Orion Stadium placement because",
              "options": [
                {
                  "key": "A",
                  "text": "it involves children."
                },
                {
                  "key": "B",
                  "text": "it is outdoors."
                },
                {
                  "key": "C",
                  "text": "it sounds like fun."
                }
              ],
              "answer": "B",
              "explanation": "I know, but it’s the fresh air that attracts me - organising something indoors doesn’t have the same appeal, even though it might be fun."
            },
            {
              "number": 22,
              "prompt": "Which aspect of safety does Dr Green emphasise most?",
              "options": [
                {
                  "key": "A",
                  "text": "ensuring children stay in the stadium"
                },
                {
                  "key": "B",
                  "text": "checking the equipment children will use"
                },
                {
                  "key": "C",
                  "text": "removing obstacles in changing rooms"
                }
              ],
              "answer": "A",
              "explanation": "Oh I see - that’ll include keeping everyone within the boundary once they’re in their kit and on the field?"
            },
            {
              "number": 23,
              "prompt": "What does Dr Green say about the spectators?",
              "options": [
                {
                  "key": "A",
                  "text": "They can be hard to manage."
                },
                {
                  "key": "B",
                  "text": "They make useful volunteers."
                },
                {
                  "key": "C",
                  "text": "They shouldn’t take photographs."
                }
              ],
              "answer": "A",
              "explanation": "And that’s not always easy, especially when a proud parent’s trying to get a snap of their child and you want them to move elsewhere."
            },
            {
              "number": 24,
              "prompt": "What has affected the schedule in the past?",
              "options": [
                {
                  "key": "A",
                  "text": "bad weather"
                },
                {
                  "key": "B",
                  "text": "an injury"
                },
                {
                  "key": "C",
                  "text": "extra time"
                }
              ],
              "answer": "B",
              "explanation": "Yeah, and I was thinking about what to do if someone got hurt as well. I know that last year that caused a terrible delay."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What do Holly and her tutor agree is an important aspect of each of the following events management skills? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "being flexible"
            },
            {
              "key": "B",
              "text": "focusing on details"
            },
            {
              "key": "C",
              "text": "having a smart appearance"
            },
            {
              "key": "D",
              "text": "hiding your emotions"
            },
            {
              "key": "E",
              "text": "relying on experts"
            },
            {
              "key": "F",
              "text": "trusting your own views"
            },
            {
              "key": "G",
              "text": "doing one thing at a time"
            },
            {
              "key": "H",
              "text": "thinking of the future"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Communication",
              "answer": "C",
              "explanation": "Good - just remember it isn’t only about what you say. If you meet someone face-to-face and want to persuade them to be a sponsor, for example …"
            },
            {
              "number": 26,
              "prompt": "Organisation",
              "answer": "A",
              "explanation": "I guess it’s being prepared to make changes that matters"
            },
            {
              "number": 27,
              "prompt": "Time management",
              "answer": "D",
              "explanation": "Yes, but it’s how you respond as that deadline approaches!"
            },
            {
              "number": 28,
              "prompt": "Creativity",
              "answer": "B",
              "explanation": "Often your client has what we call the ‘big picture’ idea, but it’s up to the events manager to think of all the fine points that go to making it work."
            },
            {
              "number": 29,
              "prompt": "Leadership",
              "answer": "F",
              "explanation": "So, believe in what you think best."
            },
            {
              "number": 30,
              "prompt": "Networking",
              "answer": "H",
              "explanation": "I guess that will help me when I apply for a real job."
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
              "text": "Most birds are believed to migrate seasonally."
            },
            {
              "kind": "subheader",
              "text": "Hibernation theory"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "static",
              "text": "This theory was later disproved by experiments on caged birds."
            },
            {
              "kind": "subheader",
              "text": "Transmutation theory"
            },
            {
              "kind": "static",
              "text": "Aristotle believed birds changed from one species into another in summer and winter."
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
              "kind": "static",
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "17th century"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Scientific developments"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "."
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
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "It was believed that birds hibernated underwater or buried themselves in _______",
              "answer": [
                "mud"
              ],
              "wordLimit": 1,
              "explanation": "Another theory for the regular appearance and disappearance of birds was that they spend winter hidden in mud till the weather changed and food became abundant again."
            },
            {
              "number": 32,
              "prompt": "- In autumn he observed that redstarts experience the loss of _______ and thought they then turned into robins.",
              "answer": [
                "feathers"
              ],
              "wordLimit": 1,
              "explanation": "He observed that in the autumn, small birds called ‘redstarts’ began to lose their feathers"
            },
            {
              "number": 33,
              "prompt": "- Aristotle’s assumptions were logical because the two species of birds had a similar _______",
              "answer": [
                "shape"
              ],
              "wordLimit": 1,
              "explanation": "These assumptions are understandable given that this pair of species are similar in shape, but are a classic example of an incorrect interpretation based on correct observations."
            },
            {
              "number": 34,
              "prompt": "Charles Morton popularised the idea that birds fly to the _______ in winter.",
              "answer": [
                "moon"
              ],
              "wordLimit": 1,
              "explanation": "He wrote a surprisingly well-regarded paper claiming that birds migrate to the moon and back every year."
            },
            {
              "number": 35,
              "prompt": "In 1822, a stork was killed in Germany which had an African spear in its _______",
              "answer": [
                "neck"
              ],
              "wordLimit": 1,
              "explanation": "This particular stork made history because of the long spear in its neck which incredibly had not killed it"
            },
            {
              "number": 36,
              "prompt": "- previously there had been no _______ that storks migrate to Africa",
              "answer": [
                "evidence"
              ],
              "wordLimit": 1,
              "explanation": "This was a truly defining moment in the history of ornithology because it was the first evidence that storks spend their winters in sub-Saharan Africa."
            },
            {
              "number": 37,
              "prompt": "Little was known about the _______ and journeys of migrating birds until the practice of ringing was established.",
              "answer": [
                "destinations"
              ],
              "wordLimit": 1,
              "explanation": "Before this, very little information was available about the actual destinations of particular species and how they travelled there."
            },
            {
              "number": 38,
              "prompt": "- It was thought large birds carried small birds on some journeys because they were considered incapable of travelling across huge _______ .",
              "answer": [
                "oceans"
              ],
              "wordLimit": 1,
              "explanation": "This idea came about because it seemed impossible that small birds weighing only a few grams could fly over vast oceans."
            },
            {
              "number": 39,
              "prompt": "- Ringing depended on what is called the ‘ _______ ’ of dead birds.",
              "answer": [
                "recovery"
              ],
              "wordLimit": 1,
              "explanation": "The development of bird ringing, by a Danish schoolteacher, Hans Christian Cornelius Mortensen, made many discoveries possible. This is still common practice today and relies upon what is known as ‘recovery’"
            },
            {
              "number": 40,
              "prompt": "In 1931, the first _______ to show the migration of European birds was printed.",
              "answer": [
                "atlas"
              ],
              "wordLimit": 1,
              "explanation": "Huge amounts of data were gathered in the early part of the twentieth century and for the first time in history people understood where birds actually went to in winter. In 1931, an atlas was published showing where the most common species of European birds migrated to."
            }
          ],
          "formTitle": "Bird Migration Theory",
          "id": "g31"
        }
      ]
    }
  ]
}
$c17t3l$,
  true
);
