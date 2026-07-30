DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 18',
  'Test 2',
  'academic',
  2004,
  $c18t2l$
{
  "audioPath": "Cambridge 18 Test 2.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–5",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Benefits"
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
              "kind": "static",
              "text": "Person specification must be prepared to work well in a team must care about maintaining a high standard of"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "must have a qualification in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______ provided for all staff",
              "answer": [
                "training"
              ],
              "wordLimit": 1,
              "explanation": "For example, all employees get training - even temporary staff."
            },
            {
              "number": 2,
              "prompt": "_______ during weekdays at all Milo’s Restaurants",
              "answer": [
                "discount"
              ],
              "wordLimit": 1,
              "explanation": "But another benefit of working for a big company like this is that you can get a discount at any of their restaurants."
            },
            {
              "number": 3,
              "prompt": "_______ provided after midnight",
              "answer": [
                "taxi"
              ],
              "wordLimit": 1,
              "explanation": "But if you have to do a late shift and finish work after midnight, the company will pay for you to get a taxi home."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "service"
              ],
              "wordLimit": 1,
              "explanation": "e had to make sure we gave a really high level of service."
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "English"
              ],
              "wordLimit": 1,
              "explanation": "So the only other thing that’s required is good communication skills, so you’ll need to have a certificate in English."
            }
          ],
          "formTitle": "Working at Milo’s Restaurants",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 6–10",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "subheader",
              "text": "Street"
            },
            {
              "kind": "subheader",
              "text": "Breakfast supervisor"
            },
            {
              "kind": "static",
              "text": "Checking portions, etc. are correct"
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
              "kind": "static",
              "text": "Start work at 5.30 a.m."
            },
            {
              "kind": "subheader",
              "text": "City Road Junior chef"
            },
            {
              "kind": "subheader",
              "text": "Supporting senior chefs"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "subheader",
              "text": "Annual salary £23,000"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 6,
              "prompt": "include Pay and conditions _______",
              "answer": [
                "Wivenhoe"
              ],
              "wordLimit": 1,
              "explanation": "The first one is in Wivenhoe Street."
            },
            {
              "number": 7,
              "prompt": "Making sure _______ is clean",
              "answer": [
                "equipment"
              ],
              "wordLimit": 1,
              "explanation": "Obviously checking that all the portions are correct, etc., and then things like checking all the procedures for cleaning the equipment are being followed."
            },
            {
              "number": 8,
              "prompt": "Starting salary £ _______ per hour",
              "answer": [
                "9.75"
              ],
              "wordLimit": 1,
              "explanation": "Well, to begin with, you’d be getting £9.75 but that goes up to £11.25 after three months."
            },
            {
              "number": 9,
              "prompt": "Maintaining stock and organising _______",
              "answer": [
                "deliveries"
              ],
              "wordLimit": 1,
              "explanation": "And you’d be responsible for making sure there’s enough stock each week - and sorting out all the deliveries."
            },
            {
              "number": 10,
              "prompt": "No work on a _______ once a month",
              "answer": [
                "Sunday"
              ],
              "wordLimit": 1,
              "explanation": "But you do get one Sunday off every four weeks."
            }
          ],
          "formTitle": "Location Job title Responsibilities",
          "id": "g6"
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
          "instructions": "Choose TWO letters, A–E. What are the TWO main reasons why this site has been chosen for the housing development?",
          "options": [
            {
              "key": "A",
              "text": "It has suitable geographical features."
            },
            {
              "key": "B",
              "text": "There is easy access to local facilities."
            },
            {
              "key": "C",
              "text": "It has good connections with the airport."
            },
            {
              "key": "D",
              "text": "The land is of little agricultural value."
            },
            {
              "key": "E",
              "text": "It will be convenient for workers."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "What are the TWO main reasons why this site has been chosen for the housing development?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "But because of the new industrial centre in Nunston, there’s a lot of demand for housing for employees in the region, as many employees are having to commute long distances at present. We were more interested in the fact that there’s an excellent hospital just 15 kilometres away, and a large secondary school even closer than that."
            },
            {
              "number": 12,
              "prompt": "What are the TWO main reasons why this site has been chosen for the housing development?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "But because of the new industrial centre in Nunston, there’s a lot of demand for housing for employees in the region, as many employees are having to commute long distances at present. We were more interested in the fact that there’s an excellent hospital just 15 kilometres away, and a large secondary school even closer than that."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO aspects of the planned housing development have people given positive feedback about?",
          "options": [
            {
              "key": "A",
              "text": "the facilities for cyclists"
            },
            {
              "key": "B",
              "text": "the impact on the environment"
            },
            {
              "key": "C",
              "text": "the encouragement of good relations between residents"
            },
            {
              "key": "D",
              "text": "the low cost of all the accommodation"
            },
            {
              "key": "E",
              "text": "the rural location"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO aspects of the planned housing development have people given positive feedback about?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "blended in well with the natural features of the landscape, with provision made for protecting trees and wildlife on the site. the design and facilities of the development make it seem a place where people of all ages can live together happily."
            },
            {
              "number": 14,
              "prompt": "Which TWO aspects of the planned housing development have people given positive feedback about?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "blended in well with the natural features of the landscape, with provision made for protecting trees and wildlife on the site. the design and facilities of the development make it seem a place where people of all ages can live together happily."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Label the map below. Write the correct letter, A–H, next to Questions 15–20.",
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
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "School",
              "answer": "G",
              "explanation": "If you look at the South Entrance at the bottom of the map, there’s a road from there that goes right up through the development. The school will be on that road, at the corner of the second turning to the left."
            },
            {
              "number": 16,
              "prompt": "Sports centre",
              "answer": "C",
              "explanation": "A large sports centre is planned with facilities for indoor and outdoor activities. This will be on the western side of the development, just below the road that branches off from London Road."
            },
            {
              "number": 17,
              "prompt": "Clinic",
              "answer": "D",
              "explanation": "The clinic will be just below this, to the right of a street of houses."
            },
            {
              "number": 18,
              "prompt": "Community centre",
              "answer": "B",
              "explanation": "On the northeast side of the development, there’ll be a row of specially designed houses specifically for residents over 65, and the community centre will be adjoining this."
            },
            {
              "number": 19,
              "prompt": "Supermarket",
              "answer": "H",
              "explanation": "There’ll be a supermarket between the two entrances to the development. We’re planning to leave the three large trees near London Road, and it’ll be just to the south of these."
            },
            {
              "number": 20,
              "prompt": "Playground",
              "answer": "A",
              "explanation": "If you look at the road that goes up from the South Entrance, you’ll see it curves round to the left at the top, and the playground will be in that curve, with nice views of the lake."
            }
          ],
          "mapImage": "Cambridge 18 Test 2 map.png",
          "id": "g15"
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
              "prompt": "Why do the students think the Laki eruption of 1783 is so important?",
              "options": [
                {
                  "key": "A",
                  "text": "It was the most severe eruption in modern times."
                },
                {
                  "key": "B",
                  "text": "It led to the formal study of volcanoes."
                },
                {
                  "key": "C",
                  "text": "It had a profound effect on society."
                }
              ],
              "answer": "C",
              "explanation": "But what I found more significant was how it impacted directly and indirectly on political events, as well as having massive social and economic consequences."
            },
            {
              "number": 22,
              "prompt": "What surprised Adam about observations made at the time?",
              "options": [
                {
                  "key": "A",
                  "text": "the number of places producing them"
                },
                {
                  "key": "B",
                  "text": "the contradictions in them"
                },
                {
                  "key": "C",
                  "text": "the lack of scientific data to support them"
                }
              ],
              "answer": "A",
              "explanation": "Yeah. I was surprised there were so many weather stations established by that time - so, you know, you can see how the weather changed, often by the hour."
            },
            {
              "number": 23,
              "prompt": "According to Michelle, what did the contemporary sources say about the Laki haze?",
              "options": [
                {
                  "key": "A",
                  "text": "People thought it was similar to ordinary fog."
                },
                {
                  "key": "B",
                  "text": "It was associated with health issues."
                },
                {
                  "key": "C",
                  "text": "It completely blocked out the sun for weeks."
                }
              ],
              "answer": "B",
              "explanation": "Reports from the period blamed the haze for an increase in headaches, respiratory issues and asthma attacks."
            },
            {
              "number": 24,
              "prompt": "Adam corrects Michelle when she claims that Benjamin Franklin",
              "options": [
                {
                  "key": "A",
                  "text": "came to the wrong conclusion about the cause of the haze."
                },
                {
                  "key": "B",
                  "text": "was the first to identify the reason for the haze."
                },
                {
                  "key": "C",
                  "text": "supported the opinions of other observers about the haze."
                }
              ],
              "answer": "B",
              "explanation": "It was Benjamin Franklin who realised that before anyone else."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO issues following the Laki eruption surprised the students?",
          "options": [
            {
              "key": "A",
              "text": "how widespread the effects were"
            },
            {
              "key": "B",
              "text": "how long-lasting the effects were"
            },
            {
              "key": "C",
              "text": "the number of deaths it caused"
            },
            {
              "key": "D",
              "text": "the speed at which the volcanic ash cloud spread"
            },
            {
              "key": "E",
              "text": "how people ignored the warning signs"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO issues following the Laki eruption surprised the students?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "not that the effects would go on for so long. Or that two years after the eruption, strange weather events were being reported as far away as North America and North Africa."
            },
            {
              "number": 26,
              "prompt": "Which TWO issues following the Laki eruption surprised the students?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "not that the effects would go on for so long. Or that two years after the eruption, strange weather events were being reported as far away as North America and North Africa."
            }
          ],
          "id": "g25"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "What comment do the students make about the impact of the Laki eruption on the following countries? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "This country suffered the most severe loss of life."
            },
            {
              "key": "B",
              "text": "The impact on agriculture was predictable."
            },
            {
              "key": "C",
              "text": "There was a significant increase in deaths of young people."
            },
            {
              "key": "D",
              "text": "Animals suffered from a sickness."
            },
            {
              "key": "E",
              "text": "This country saw the highest rise in food prices in the world."
            },
            {
              "key": "F",
              "text": "It caused a particularly harsh winter."
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Iceland",
              "answer": "D",
              "explanation": "One of the most dramatic things there was the effect on livestock as they grazed in the fields. They were poisoned because they ate vegetation that had been contaminated with fluorine as a result of the volcanic fallout."
            },
            {
              "number": 28,
              "prompt": "Egypt",
              "answer": "A",
              "explanation": "It’s so far from where the eruption happened and yet the famine there led to more people dying than any other country."
            },
            {
              "number": 29,
              "prompt": "UK",
              "answer": "C",
              "explanation": "According to one report it was about double the usual number and included an unusually high percentage of people under the age of 25."
            },
            {
              "number": 30,
              "prompt": "USA",
              "answer": "F",
              "explanation": "Yes, and there was ice floating down the Mississippi, which was unprecedented."
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
              "kind": "subheader",
              "text": "Reason for choice of subject"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "subheader",
              "text": "Pockets in men’s clothes"
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
              "text": "The wearer could use the pockets for small items."
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Pockets in women’s clothes"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Women were very concerned about pickpockets."
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
              "kind": "static",
              "text": "Pockets, of various sizes, stayed inside clothing for many decades."
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
              "prompt": "They are _______ but can be overlooked by consumers and designers.",
              "answer": [
                "convenient"
              ],
              "wordLimit": 1,
              "explanation": "even though we often carry bags or briefcases as well, nothing is quite as convenient as being able to pop your phone or credit card into your pocket."
            },
            {
              "number": 32,
              "prompt": "Men started to wear _______ in the 18th century.",
              "answer": [
                "suits"
              ],
              "wordLimit": 1,
              "explanation": "that was the time when suits became popular."
            },
            {
              "number": 33,
              "prompt": "A _______ sewed pockets into the lining of the garments.",
              "answer": [
                "tailor"
              ],
              "wordLimit": 1,
              "explanation": "all three garments were lined with material and pockets were sewn into this cloth by whichever tailor the customer used"
            },
            {
              "number": 34,
              "prompt": "Bigger pockets might be made for men who belonged to a certain type of _______",
              "answer": [
                "profession"
              ],
              "wordLimit": 1,
              "explanation": "they were often larger but plainer if the wearer was someone with a profession who needed to carry medical instruments"
            },
            {
              "number": 35,
              "prompt": "Women’s pockets were less _______ than men’s.",
              "answer": [
                "visible"
              ],
              "wordLimit": 1,
              "explanation": "For one thing, they weren’t nearly as visible or as easy to reach as men’s."
            },
            {
              "number": 36,
              "prompt": "Pockets were produced in pairs using _______ to link them together.",
              "answer": [
                "string"
              ],
              "wordLimit": 1,
              "explanation": "/ strings So - what they did was to have a pair of pockets made that were tied together with string."
            },
            {
              "number": 37,
              "prompt": "Pockets hung from the women’s _______ under skirts and petticoats.",
              "answer": [
                "waist"
              ],
              "wordLimit": 1,
              "explanation": "/ waists Women tied the pockets around their waist so that they hung beneath their clothes."
            },
            {
              "number": 38,
              "prompt": "Items such as _______ could be reached through a gap in the material.",
              "answer": [
                "perfume"
              ],
              "wordLimit": 1,
              "explanation": "They would have an opening in the folds of their skirts through which they could reach whatever they needed, like their perfume."
            },
            {
              "number": 39,
              "prompt": "When dresses changed shape, hidden pockets had a negative effect on the _______ of women.",
              "answer": [
                "image"
              ],
              "wordLimit": 1,
              "explanation": "That’s when dresses became tighter and less bulky, and the pairs of pockets became very noticeable - they stood out too much and detracted from the woman’s image."
            },
            {
              "number": 40,
              "prompt": "Bags called ‘pouches’ became popular, before women carried a _______",
              "answer": [
                "handbag"
              ],
              "wordLimit": 1,
              "explanation": "they inevitably led on to the handbag of more modern times"
            }
          ],
          "formTitle": "Pockets",
          "id": "g31"
        }
      ]
    }
  ]
}
$c18t2l$,
  true
);
