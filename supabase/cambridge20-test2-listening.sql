DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 20',
  'Test 2',
  'academic',
  2004,
  $c20t2l$
{
  "audioPath": "Cambridge 20 Test 2.mp3",
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
              "text": "This can give the carer:"
            },
            {
              "kind": "subheader",
              "text": "- time for other responsibilities"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Assessment of mother’s needs"
            },
            {
              "kind": "static",
              "text": "This may include discussion of:"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "What types of tasks are involved, e.g.:"
            },
            {
              "kind": "subheader",
              "text": "- help with dressing"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "subheader",
              "text": "- shopping"
            },
            {
              "kind": "subheader",
              "text": "- helping with meals"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "Any aspects of caring that are especially difficult, e.g.:"
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
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Types of support that may be offered to carers"
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
              "kind": "subheader",
              "text": "- help with housework"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "- a _______",
              "answer": [
                "Break"
              ],
              "wordLimit": 1,
              "explanation": "They realise that carers sometimes need time for all the other responsibilities they have, apart from the person they’re caring for, and also that they sometimes need a break"
            },
            {
              "number": 2,
              "prompt": "- how much _______ the caring involves",
              "answer": [
                "Time"
              ],
              "wordLimit": 1,
              "explanation": "they’d want to know the amount of time you spend looking after your mother every day."
            },
            {
              "number": 3,
              "prompt": "- helping her have a _______",
              "answer": [
                "Shower"
              ],
              "wordLimit": 1,
              "explanation": "I help her get into the shower in the morning"
            },
            {
              "number": 4,
              "prompt": "- dealing with _______",
              "answer": [
                "Money"
              ],
              "wordLimit": 1,
              "explanation": "They’ll probably ask you if you do the shopping for her and help her at mealtimes, and whether she can cope using money."
            },
            {
              "number": 5,
              "prompt": "- loss of _______",
              "answer": [
                "Memory"
              ],
              "wordLimit": 1,
              "explanation": "So, recently I’ve noticed she’s started to have quite bad problems with her memory. If I wasn’t there, I think she’d forget to eat, for example. And often she doesn’t seem quite sure what day it is"
            },
            {
              "number": 6,
              "prompt": "- _______ her",
              "answer": [
                "Lifting"
              ],
              "wordLimit": 1,
              "explanation": "And are there any physical difficulties you have caring for her? Lifting her, for example"
            },
            {
              "number": 7,
              "prompt": "- preventing a _______",
              "answer": [
                "Fall"
              ],
              "wordLimit": 1,
              "explanation": "They can give you advice about that and also about how to avoid the possibility of your mum having a fall"
            },
            {
              "number": 8,
              "prompt": "- transport costs, e.g. cost of a _______",
              "answer": [
                "Taxi"
              ],
              "wordLimit": 1,
              "explanation": "they might help you with transport costs, like if you have to get a taxi to take your mother for an appointment, for example"
            },
            {
              "number": 9,
              "prompt": "- car-related costs, e.g. fuel and _______",
              "answer": [
                "Insurance"
              ],
              "wordLimit": 1,
              "explanation": "And you can claim for the insurance too"
            },
            {
              "number": 10,
              "prompt": "- help to reduce _______",
              "answer": [
                "Stress"
              ],
              "wordLimit": 1,
              "explanation": "it seems to me you under quite a bit of stress"
            }
          ],
          "id": "g1"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Part 2",
      "groups": [
        {
          "type": "matching",
          "label": "Questions 11–16",
          "instructions": "What is the role of the volunteers in each of the following activities? Choose the correct letter, A–I, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "providing entertainment"
            },
            {
              "key": "B",
              "text": "providing publicity about a council service"
            },
            {
              "key": "C",
              "text": "contacting local businesses"
            },
            {
              "key": "D",
              "text": "giving advice to visitors"
            },
            {
              "key": "E",
              "text": "collecting feedback on events"
            },
            {
              "key": "F",
              "text": "selling tickets"
            },
            {
              "key": "G",
              "text": "introducing guest speakers at an event"
            },
            {
              "key": "H",
              "text": "encouraging cooperation between local organisations"
            },
            {
              "key": "I",
              "text": "helping people find their seats"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "walking around the town centre",
              "answer": "D",
              "explanation": "One is to walk around the town centre streets wearing our volunteer T-shirt. Tourists often ask how to get to a particular shop, and they might also be grateful for recommendations about what to visit"
            },
            {
              "number": 12,
              "prompt": "helping at concerts",
              "answer": "I",
              "explanation": "part of the volunteers’ role is to get everyone in the audience to the right place as smoothly as possible"
            },
            {
              "number": 13,
              "prompt": "getting involved with community groups",
              "answer": "H",
              "explanation": "Volunteers may get involved with community groups, such as sports clubs or gardeners’ associations. Here, the volunteers talk about how groups can help each other."
            },
            {
              "number": 14,
              "prompt": "helping with a magazine",
              "answer": "E",
              "explanation": "We depend on volunteers though to find out what people think of events they’ve attended and any suggestions they have for the future. The volunteers then send a summary to the editors"
            },
            {
              "number": 15,
              "prompt": "participating at lunches for retired people",
              "answer": "A",
              "explanation": "some volunteers put on a show. Usually around half an hour of songs and short plays, the club members really welcome the chance to chat to the volunteers at these events"
            },
            {
              "number": 16,
              "prompt": "helping with the website",
              "answer": "B",
              "explanation": "The town council has a website, of course, and volunteers are asked to help by making sure residents know about it"
            }
          ],
          "id": "g11"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 17–20",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 17,
              "prompt": "Which event requires the largest number of volunteers?",
              "options": [
                {
                  "key": "A",
                  "text": "the music festival"
                },
                {
                  "key": "B",
                  "text": "the science festival"
                },
                {
                  "key": "C",
                  "text": "the book festival"
                }
              ],
              "answer": "B",
              "explanation": "More are needed for the music festival because that lasts a whole week, and even more help is required for the science festival, even though it’s only two days long"
            },
            {
              "number": 18,
              "prompt": "What is the most important requirement for volunteers at the festivals?",
              "options": [
                {
                  "key": "A",
                  "text": "interpersonal skills"
                },
                {
                  "key": "B",
                  "text": "personal interest in the event"
                },
                {
                  "key": "C",
                  "text": "flexibility"
                }
              ],
              "answer": "A",
              "explanation": "What essential though is being able to get on well with other people and also to deal with someone who’s behaving badly, as occasionally happens"
            },
            {
              "number": 19,
              "prompt": "New volunteers will start working in the week beginning",
              "options": [
                {
                  "key": "A",
                  "text": "2 September"
                },
                {
                  "key": "B",
                  "text": "9 September"
                },
                {
                  "key": "C",
                  "text": "23 September"
                }
              ],
              "answer": "B",
              "explanation": "Our plan is to get you all working in September, after a week’s training starting on the 2nd, so we’ll be timetabling you for duties the following week from the 9th onward"
            },
            {
              "number": 20,
              "prompt": "What is the next annual event for volunteers?",
              "options": [
                {
                  "key": "A",
                  "text": "a boat trip"
                },
                {
                  "key": "B",
                  "text": "a barbecue"
                },
                {
                  "key": "C",
                  "text": "a party"
                }
              ],
              "answer": "A",
              "explanation": "Our forthcoming event is a trip along the canal from here to Dewhurst and back. It’s on Saturday, September the 28th"
            }
          ],
          "id": "g17"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "matching",
          "label": "Questions 21–25",
          "instructions": "What is Rosie and Colin’s opinion about each of the following aspects of human geography? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "The information given about this was too vague."
            },
            {
              "key": "B",
              "text": "This may not be relevant to their course."
            },
            {
              "key": "C",
              "text": "This will involve only a small number of statistics."
            },
            {
              "key": "D",
              "text": "It will be easy to find facts about this."
            },
            {
              "key": "E",
              "text": "The facts about this may not be reliable."
            },
            {
              "key": "F",
              "text": "No useful research has been done on this."
            },
            {
              "key": "G",
              "text": "The information provided about this was interesting."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Population",
              "answer": "D",
              "explanation": "Yeah, but quite straightforward to find on the internet"
            },
            {
              "number": 22,
              "prompt": "Health",
              "answer": "G",
              "explanation": "Yes, fascinating, wasn’t it"
            },
            {
              "number": 23,
              "prompt": "Economies",
              "answer": "B",
              "explanation": "I thought that had been taken off the syllabus for this year"
            },
            {
              "number": 24,
              "prompt": "Culture",
              "answer": "A",
              "explanation": "I didn’t get much out of that. It was all so general and the lecturer didn’t give any useful examples"
            },
            {
              "number": 25,
              "prompt": "Poverty",
              "answer": "E",
              "explanation": "The trouble is, Dr Lee was saying, that you have to be careful with some of the figures relating to poverty. They’re sometimes deliberately manipulated"
            }
          ],
          "id": "g21"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 26–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 26,
              "prompt": "Rosie says that in her own city the main problem is",
              "options": [
                {
                  "key": "A",
                  "text": "Crime"
                },
                {
                  "key": "B",
                  "text": "Housing"
                },
                {
                  "key": "C",
                  "text": "Unemployment"
                }
              ],
              "answer": "C",
              "explanation": "Yes, but where I come from, that’s linked to another more serious issue, which is that a lot of people don’t have jobs."
            },
            {
              "number": 27,
              "prompt": "What recent additions to the outskirts of their cities are both students happy about?",
              "options": [
                {
                  "key": "A",
                  "text": "Conference centres"
                },
                {
                  "key": "B",
                  "text": "Sports centres"
                },
                {
                  "key": "C",
                  "text": "Retail centres"
                }
              ],
              "answer": "A",
              "explanation": "But the outskirts are ideal for buildings that need a lot of space, like for conferences. They’ve opened a couple of big ones."
            },
            {
              "number": 28,
              "prompt": "The students agree that developing disused industrial sites may",
              "options": [
                {
                  "key": "A",
                  "text": "Have unexpected costs"
                },
                {
                  "key": "B",
                  "text": "Damage the urban environment"
                },
                {
                  "key": "C",
                  "text": "Destroy valuable historical buildings"
                }
              ],
              "answer": "A",
              "explanation": "Hmm, that can’t be cheap. And I bet it’s often not budgeted for"
            },
            {
              "number": 29,
              "prompt": "The students will mention Masdar City as an example of an attempt to achieve",
              "options": [
                {
                  "key": "A",
                  "text": "Daily collections for waste recycling"
                },
                {
                  "key": "B",
                  "text": "Sustainable energy use"
                },
                {
                  "key": "C",
                  "text": "Free transport for everyone"
                }
              ],
              "answer": "B",
              "explanation": "It was designed to be a green city, wasn’t it? That might be a good example of a city which set out to depend entirely on renewable energy"
            },
            {
              "number": 30,
              "prompt": "When discussing the ecotown of Greenhill Abbots, Colin is uncertain about",
              "options": [
                {
                  "key": "A",
                  "text": "What its objectives were"
                },
                {
                  "key": "B",
                  "text": "Why there was opposition to it"
                },
                {
                  "key": "C",
                  "text": "How much of it has actually been built"
                }
              ],
              "answer": "C",
              "explanation": "I’m not sure how far they’ve got with it"
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
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "The UK food industry is constantly developing products which are newor different."
            },
            {
              "kind": "static",
              "text": "Influencers on social media become ‘ambassadors’ for a brand."
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "Supermarkets track demand for ingredients on social media."
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "subheader",
              "text": "Marketing campaigns"
            },
            {
              "kind": "static",
              "text": "The avocado:"
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
              "kind": "static",
              "text": "Oat milk:"
            },
            {
              "kind": "static",
              "text": "- A Swedish brand’s media campaign received publicity by upsetting competitors."
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
              "text": "Norwegian skrei:"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "subheader",
              "text": "- Ethical concerns"
            },
            {
              "kind": "static",
              "text": "Quinoa:"
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
              "prompt": "The growth in interest in food fashions started with _______ of food being shared on social media.",
              "answer": [
                "Photos"
              ],
              "wordLimit": 1,
              "explanation": "/ Photographs / Pictures Interest in food fashions has risen rapidly since the birth of the smartphone when people first began taking photos of their food and instantly sharing them with their friends"
            },
            {
              "number": 32,
              "prompt": "Sales of _______ food brands have grown rapidly this way.",
              "answer": [
                "Vegan"
              ],
              "wordLimit": 1,
              "explanation": "Companies which sell vegan produce were pioneers in being able to increase sales really quickly in this way"
            },
            {
              "number": 33,
              "prompt": "Famous _______ are influential.",
              "answer": [
                "Chefs"
              ],
              "wordLimit": 1,
              "explanation": "/ Cooks particularly interested in what well-known chefs are putting on their menus"
            },
            {
              "number": 34,
              "prompt": "- _______ were invited to visit growers in South Africa.",
              "answer": [
                "Journalists"
              ],
              "wordLimit": 1,
              "explanation": "/ Reporters They paid for a group of journalists to travel out to South Africa to meet avocado farmers"
            },
            {
              "number": 35,
              "prompt": "- Advertising focused on its _______ benefits.",
              "answer": [
                "Health"
              ],
              "wordLimit": 1,
              "explanation": "Advertisements were designed to promote the avocado as a superfood, rich in nutrients and therefore beneficial for health"
            },
            {
              "number": 36,
              "prompt": "- Promotion in the USA through _______ shops reduced the need for advertising.",
              "answer": [
                "Coffee"
              ],
              "wordLimit": 1,
              "explanation": "In the USA, the brand decided against a big retail launch in favour of getting the product into coffee chains, which removed the need for a big advertising budget"
            },
            {
              "number": 37,
              "prompt": "- It appealed to consumers who are concerned about the _______",
              "answer": [
                "Environment"
              ],
              "wordLimit": 1,
              "explanation": "Oat milk had an advantage over other alternative milk products, such as almond milk. Many consumers prefer it because it has less of an impact on the environment"
            },
            {
              "number": 38,
              "prompt": "- has helped strengthen the _______ of Norwegian seafood.",
              "answer": [
                "Reputation"
              ],
              "wordLimit": 1,
              "explanation": "The demand for Skre has been used by a food marketing agency to build the reputation of Norway’s fisheries in general"
            },
            {
              "number": 39,
              "prompt": "- Its success led to an increase in its _______ .",
              "answer": [
                "Price"
              ],
              "wordLimit": 1,
              "explanation": "/ Cost when demand peaked some years ago, the price soared, making it unaffordable for local people"
            },
            {
              "number": 40,
              "prompt": "- Overuse of resources resulted in poor quality _______ .",
              "answer": [
                "Soil"
              ],
              "wordLimit": 1,
              "explanation": "One issue has been that the fertility of the soil decreased dramatically"
            }
          ],
          "formTitle": "Developing Food Trends",
          "id": "g31"
        }
      ]
    }
  ]
}
$c20t2l$,
  true
);
