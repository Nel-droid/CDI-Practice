DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 19',
  'Test 1',
  'academic',
  2004,
  $c19t1l$
{
  "audioPath": "Cambridge 19 Test 1.mp3",
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
              "text": "The park"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "Habitats: wetland, grassland and woodland"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "Wildlife includes birds, insects and animals"
            },
            {
              "kind": "static",
              "text": "Subjects studied in educational visits include"
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
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "Benefits of outdoor educational visits"
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
              "text": "Practical issues"
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
              "prompt": "Area: _______ hectares",
              "answer": [
                "69"
              ],
              "wordLimit": 1,
              "explanation": "Of course. Altogether the park covers 170 acres, that’s 69 hectares."
            },
            {
              "number": 2,
              "prompt": "Wetland: lakes, ponds and a _______",
              "answer": [
                "stream"
              ],
              "wordLimit": 1,
              "explanation": "the gravel pits filled with water, forming the two large lakes. There are also several smaller ones, ponds and a stream that flows through the park."
            },
            {
              "number": 3,
              "prompt": "Science: Children look at _______ about plants, etc.",
              "answer": [
                "data"
              ],
              "wordLimit": 1,
              "explanation": "Well, one focus is on science, where we help children to discover and study plants, trees and insects. They also collect and analyse data about the things they see."
            },
            {
              "number": 4,
              "prompt": "Geography: includes learning to use a _______ and compass History: changes in land use",
              "answer": [
                "map"
              ],
              "wordLimit": 1,
              "explanation": "Another focus is on geography. The park is a great environment to learn and practice reading a map and using a compass to navigate around the park."
            },
            {
              "number": 5,
              "prompt": "Leisure and tourism: mostly concentrates on the park’s _______",
              "answer": [
                "visitors"
              ],
              "wordLimit": 1,
              "explanation": "That focuses on your visitors, I would imagine."
            },
            {
              "number": 6,
              "prompt": "Music: Children make _______ with natural materials, and experiment with rhythm and speed.",
              "answer": [
                "sounds"
              ],
              "wordLimit": 1,
              "explanation": "here the children experiment with natural materials to create sounds and explore rhythm and tempo."
            },
            {
              "number": 7,
              "prompt": "They give children a feeling of _______ that they may not have elsewhere.",
              "answer": [
                "freedom"
              ],
              "wordLimit": 1,
              "explanation": "I would imagine they get a sense of freedom that might not be a normal part of their lives."
            },
            {
              "number": 8,
              "prompt": "Children learn new _______ and gain self-confidence.",
              "answer": [
                "skills"
              ],
              "wordLimit": 1,
              "explanation": "And very often the children discover that they can do things they didn’t know they could do, and they develop new skills."
            },
            {
              "number": 9,
              "prompt": "Cost per child: £ _______",
              "answer": [
                "4.95"
              ],
              "wordLimit": 1,
              "explanation": "If there are over 30, it costs £4.95 for each child who attends on the day."
            },
            {
              "number": 10,
              "prompt": "Adults, such as _______ , free",
              "answer": [
                "leaders"
              ],
              "wordLimit": 1,
              "explanation": "There’s no charge for leaders and other adults-as many as you want to bring."
            }
          ],
          "formTitle": "Hinchingbrooke Country Park",
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
          "label": "Questions 11–15",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "During the visit to Malatte, in France, members especially enjoyed",
              "options": [
                {
                  "key": "A",
                  "text": "going to a theme park."
                },
                {
                  "key": "B",
                  "text": "experiencing a river trip."
                },
                {
                  "key": "C",
                  "text": "visiting a cheese factory."
                }
              ],
              "answer": "B",
              "explanation": "but we all had a great time on the final boat trip down the river-that was the real highlight."
            },
            {
              "number": 12,
              "prompt": "What will happen in Stanthorpe to mark the 25th anniversary of the Twinning Association?",
              "options": [
                {
                  "key": "A",
                  "text": "A tree will be planted."
                },
                {
                  "key": "B",
                  "text": "A garden seat will be bought."
                },
                {
                  "key": "C",
                  "text": "A footbridge will be built."
                }
              ],
              "answer": "A",
              "explanation": "we’ve decided to plant a poplar tree in the museum gardens."
            },
            {
              "number": 13,
              "prompt": "Which event raised most funds this year?",
              "options": [
                {
                  "key": "A",
                  "text": "the film show"
                },
                {
                  "key": "B",
                  "text": "the pancake evening"
                },
                {
                  "key": "C",
                  "text": "the cookery demonstration"
                }
              ],
              "answer": "B",
              "explanation": "Our pancake evening was well attended and made record profits."
            },
            {
              "number": 14,
              "prompt": "For the first evening with the French visitors host families are advised to",
              "options": [
                {
                  "key": "A",
                  "text": "take them for a walk round the town."
                },
                {
                  "key": "B",
                  "text": "go to a local restaurant."
                },
                {
                  "key": "C",
                  "text": "have a meal at home."
                }
              ],
              "answer": "C",
              "explanation": "Don’t try to do too much that first evening as they’ll be tired, so have dinner in the house or garden rather than eating out."
            },
            {
              "number": 15,
              "prompt": "On Saturday evening there will be the chance to",
              "options": [
                {
                  "key": "A",
                  "text": "listen to a concert."
                },
                {
                  "key": "B",
                  "text": "watch a match."
                },
                {
                  "key": "C",
                  "text": "take part in a competition."
                }
              ],
              "answer": "A",
              "explanation": "we’ll have Toby Sharp and his band performing English and Scottish country songs."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "Label the map below. Write the correct letter, A–H, next to Questions 16–20.",
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
              "number": 16,
              "prompt": "Farm shop",
              "answer": "G",
              "explanation": "There’s an excellent farm shop in the grounds where our visitors can buy local produce - it’s in the old stables, which is the first building you come to"
            },
            {
              "number": 17,
              "prompt": "Disabled entry",
              "answer": "C",
              "explanation": "I know that one or two of our visitors may not be all that mobile."
            },
            {
              "number": 18,
              "prompt": "Adventure playground",
              "answer": "B",
              "explanation": "Children will probably be most interested in the adventure playground. That’s at the northern end of the larger lake, in a bend on the path that leads to the lake."
            },
            {
              "number": 19,
              "prompt": "Kitchen gardens",
              "answer": "D",
              "explanation": "The kitchen gardens are rectangular and surrounded by a wall. They’re to the north-east of the house, quite near the smaller lake."
            },
            {
              "number": 20,
              "prompt": "The Temple of the Four Winds",
              "answer": "A",
              "explanation": "Then when the path forks, take the right-hand path. Go up there with the woods on your left and the temple is right at the end."
            }
          ],
          "mapImage": "Cambridge 19 Test 1 map.png",
          "id": "g16"
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
          "instructions": "Choose TWO letters, A–E. Which TWO things did Colin find most satisfying about his bread reuse project?",
          "options": [
            {
              "key": "A",
              "text": "receiving support from local restaurants"
            },
            {
              "key": "B",
              "text": "finding a good way to prevent waste"
            },
            {
              "key": "C",
              "text": "overcoming problems in a basic process"
            },
            {
              "key": "D",
              "text": "experimenting with designs and colours"
            },
            {
              "key": "E",
              "text": "learning how to apply 3-D printing"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO things did Colin find most satisfying about his bread reuse project?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "It must’ve been a great feeling to make something appetising out of bits of old bread that would’ve been thrown away otherwise. in this project, I had time to play around with different patterns for the biscuits and finding how I could add fruit and vegetables to make them a more appetising colour, and I was really pleased with what I managed to produce."
            },
            {
              "number": 22,
              "prompt": "Which TWO things did Colin find most satisfying about his bread reuse project?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "It must’ve been a great feeling to make something appetising out of bits of old bread that would’ve been thrown away otherwise. in this project, I had time to play around with different patterns for the biscuits and finding how I could add fruit and vegetables to make them a more appetising colour, and I was really pleased with what I managed to produce."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO ways do the students agree that touch-sensitive sensors for food labels could be developed in future?",
          "options": [
            {
              "key": "A",
              "text": "for use on medical products"
            },
            {
              "key": "B",
              "text": "to show that food is no longer fit to eat"
            },
            {
              "key": "C",
              "text": "for use with drinks as well as foods"
            },
            {
              "key": "D",
              "text": "to provide applications for blind people"
            },
            {
              "key": "E",
              "text": "to indicate the weight of certain foods"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO ways do the students agree that touch-sensitive sensors for food labels could be developed in future?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "But actually, I thought it might be really good for drug storage in hospitals and pharmacies. coming back to food, maybe it’d be possible to use it for other things besides freshness. Like how many kilograms a joint of meat is, for example."
            },
            {
              "number": 24,
              "prompt": "Which TWO ways do the students agree that touch-sensitive sensors for food labels could be developed in future?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "But actually, I thought it might be really good for drug storage in hospitals and pharmacies. coming back to food, maybe it’d be possible to use it for other things besides freshness. Like how many kilograms a joint of meat is, for example."
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What is the students’ opinion about each of the following food trends? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "This is only relevant to young people."
            },
            {
              "key": "B",
              "text": "This may have disappointing results."
            },
            {
              "key": "C",
              "text": "This already seems to be widespread."
            },
            {
              "key": "D",
              "text": "Retailers should do more to encourage this."
            },
            {
              "key": "E",
              "text": "More financial support is needed for this."
            },
            {
              "key": "F",
              "text": "Most people know little about this."
            },
            {
              "key": "G",
              "text": "There should be stricter regulations about this."
            },
            {
              "key": "H",
              "text": "This could be dangerous."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Use of local products",
              "answer": "D",
              "explanation": "Oh things like more focus on local products? That seems so obvious, but the shops are still full of imported foods."
            },
            {
              "number": 26,
              "prompt": "Reduction in unnecessary packaging",
              "answer": "G",
              "explanation": "One thing everyone’s aware of is the need for a reduction in unnecessary packaging-but just about everything you buy in supermarkets is still covered in plastic. The government needs to do something about it."
            },
            {
              "number": 27,
              "prompt": "Gluten-free and lactose-free food",
              "answer": "C",
              "explanation": "Do you think there’ll be more interest in gluten and lactose-free food?"
            },
            {
              "number": 28,
              "prompt": "Use of branded products related to celebrity chefs",
              "answer": "B",
              "explanation": "One thing I ’ve noticed is the number of branded products related to celebrity chefs - people watch them cooking on TV and then buy things like spice mixes or frozen foods with the chef’s name on. I bought something like that once, but I won’t again."
            },
            {
              "number": 29,
              "prompt": "Development of 'ghost kitchens’ for takeaway food",
              "answer": "F",
              "explanation": "Did the article mention ‘ghost kitchens’ used to produce takeaway food?"
            },
            {
              "number": 30,
              "prompt": "Use of mushrooms for common health concerns",
              "answer": "H",
              "explanation": "Did you know more and more people are using all sorts of different mushrooms now, to treat different health concerns? Things like heart problems?"
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
              "text": "an important Neolithic archaeological site in the northwest of Ireland"
            },
            {
              "kind": "subheader",
              "text": "Discovery"
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
              "kind": "question",
              "number": 32
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "- carbon dating later proved the site was Neolithic."
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Neolithic farmers"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Neolithic innovations include:"
            },
            {
              "kind": "subheader",
              "text": "- cooking indoors"
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
              "text": "Reasons for the decline in farming a decline in"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "quality an increase in",
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
              "prompt": "In the 1930s, a local teacher realised that stones beneath the bog surface were once _______",
              "answer": [
                "walls"
              ],
              "wordLimit": 1,
              "explanation": "when local people were digging in the bog, they were constantly hitting against what seemed to be rows of stones. He realised that these must be walls and that they must be thousands of years old for them to predate the bog which subsequently grew over them."
            },
            {
              "number": 32,
              "prompt": "His _______ became an archaeologist and undertook an investigation of the site:",
              "answer": [
                "son"
              ],
              "wordLimit": 1,
              "explanation": "Patrick Caulfield’s son Seamus, who had become an archaeologist by then, began to explore further."
            },
            {
              "number": 33,
              "prompt": "- a traditional method used by local people to dig for _______ was used to identify where stones were located",
              "answer": [
                "fuel"
              ],
              "wordLimit": 1,
              "explanation": "He inserted iron probes into the bog to map the formation of the stones, a traditional method which local people had always used for finding fuel buried in the bog for thousands of years."
            },
            {
              "number": 34,
              "prompt": "Items are well preserved in the bog because of a lack of _______ .",
              "answer": [
                "oxygen"
              ],
              "wordLimit": 1,
              "explanation": "Objects remain so well preserved in these conditions because of the acidity of the peat and the deficiency of oxygen"
            },
            {
              "number": 35,
              "prompt": "Houses were _______ in shape and had a hole in the roof.",
              "answer": [
                "rectangular"
              ],
              "wordLimit": 1,
              "explanation": "able to build bigger houses. These weren’t round as people often assume, but rectangular with a small hole"
            },
            {
              "number": 36,
              "prompt": "- pots used for storage and to make _______ .",
              "answer": [
                "lamps"
              ],
              "wordLimit": 1,
              "explanation": "The pots were used for many things; as well as for storing food, pots were filled with a small amount of fat and when this was set alight, they served as lamps."
            },
            {
              "number": 37,
              "prompt": "Each field at Céide was large enough to support a big _______ .",
              "answer": [
                "family"
              ],
              "wordLimit": 1,
              "explanation": "Evidence from the Céide Fields suggests that each plot of land was of a suitable size to sustain an extended family."
            },
            {
              "number": 38,
              "prompt": "The fields were probably used to restrict the grazing of animals - no evidence of structures to house them during _______ .",
              "answer": [
                "winter"
              ],
              "wordLimit": 1,
              "explanation": "This must have been a year-round activity as no structures have been found which would have been used to shelter animals in the winter."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "soil"
              ],
              "wordLimit": 1,
              "explanation": "The soil would have become less productive and led to the abandonment of farming."
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "rain"
              ],
              "wordLimit": 1,
              "explanation": "but this began to change and the conditions became wetter as there was a lot more rain"
            }
          ],
          "formTitle": "Céide Fields",
          "id": "g31"
        }
      ]
    }
  ]
}
$c19t1l$,
  true
);
