DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 21',
  'Test 3',
  'academic',
  2004,
  $c21t3l$
{
  "audioPath": "Cambridge 21 Test 3.mp3",
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
              "kind": "question",
              "number": 4
            },
            {
              "kind": "subheader",
              "text": "Advice"
            },
            {
              "kind": "static",
              "text": "Cabins:"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "- luxury cabins have a TV"
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
              "number": 1,
              "prompt": "Name of ferry company: _______ Ferries",
              "answer": [
                "Northern"
              ],
              "wordLimit": 1,
              "explanation": "There’s only one - it’s called Northern Ferries"
            },
            {
              "number": 2,
              "prompt": "Ferries depart seven times per _______ in summer",
              "answer": [
                "week"
              ],
              "wordLimit": 1,
              "explanation": "The service is pretty limited - there’s only one ferry leaving every evening in summer anyway, seven days a week - I’m not sure about the winter months"
            },
            {
              "number": 3,
              "prompt": "Cost for four people with car: a little less than £ _______",
              "answer": [
                "250"
              ],
              "wordLimit": 1,
              "explanation": "They were really cheap and four people and a car worked out at just under £250"
            },
            {
              "number": 4,
              "prompt": "Cancellation policy: receive a _______ (if cancelled a month in advance)",
              "answer": [
                "voucher"
              ],
              "wordLimit": 1,
              "explanation": "That could be a problem. I don’t think it’s their policy to give refunds - just a voucher - which you can use at a later date. But you have to cancel a month in advance to get that"
            },
            {
              "number": 5,
              "prompt": "- book one with a _______",
              "answer": [
                "window"
              ],
              "wordLimit": 1,
              "explanation": "We booked too late to get a cabin with a window"
            },
            {
              "number": 6,
              "prompt": "Bring snacks and _______ for the children",
              "answer": [
                "books"
              ],
              "wordLimit": 1,
              "explanation": "PAUL: Not really. So it’s best to bring some books for them"
            },
            {
              "number": 7,
              "prompt": "A _______ is required for the dog kennels",
              "answer": [
                "blanket"
              ],
              "wordLimit": 1,
              "explanation": "The kennels on board are OK - they’re quite big - you just need to provide a blanket"
            },
            {
              "number": 8,
              "prompt": "Try to see _______ in the morning",
              "answer": [
                "dolphins"
              ],
              "wordLimit": 1,
              "explanation": "They loved being on the sea at night and in the morning keeping a lookout for dolphins - we saw loads"
            },
            {
              "number": 9,
              "prompt": "If time, visit _______ Castle",
              "answer": [
                "Drum"
              ],
              "wordLimit": 1,
              "explanation": "PAUL: Drum Castle"
            },
            {
              "number": 10,
              "prompt": "The _______ restaurant in a nearby village is recommended",
              "answer": [
                "Italian"
              ],
              "wordLimit": 1,
              "explanation": "We looked up restaurants in the area and found an Italian one in a village nearby"
            }
          ],
          "formTitle": "Ferry to Shetland Islands",
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
          "instructions": "Choose TWO letters, A–E. Which TWO explanations for the popularity of street food are given?",
          "options": [
            {
              "key": "A",
              "text": "low price"
            },
            {
              "key": "B",
              "text": "locally sourced"
            },
            {
              "key": "C",
              "text": "freshly made"
            },
            {
              "key": "D",
              "text": "convenience"
            },
            {
              "key": "E",
              "text": "unusual food"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO explanations for the popularity of street food are given?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "People like the idea of trying something they can’t get anywhere else. They also like seeing food prepared in front of them and which hasn’t come straight out of a freezer"
            },
            {
              "number": 12,
              "prompt": "Which TWO explanations for the popularity of street food are given?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "People like the idea of trying something they can’t get anywhere else. They also like seeing food prepared in front of them and which hasn’t come straight out of a freezer"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO places are recommended for new street food businesses?",
          "options": [
            {
              "key": "A",
              "text": "music festivals"
            },
            {
              "key": "B",
              "text": "food markets"
            },
            {
              "key": "C",
              "text": "weddings"
            },
            {
              "key": "D",
              "text": "parties"
            },
            {
              "key": "E",
              "text": "parks"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO places are recommended for new street food businesses?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Food markets, on the other hand, are great because customers are always really interested in food and give great feedback. And if you can get a spot in your local park - fantastic. Usually very relaxed but with lots of customers passing by"
            },
            {
              "number": 14,
              "prompt": "Which TWO places are recommended for new street food businesses?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Food markets, on the other hand, are great because customers are always really interested in food and give great feedback. And if you can get a spot in your local park - fantastic. Usually very relaxed but with lots of customers passing by"
            }
          ],
          "id": "g13"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 15–16",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 15,
              "prompt": "What does the speaker say about getting equipment for a street food business?",
              "options": [
                {
                  "key": "A",
                  "text": "High quality equipment is a good investment."
                },
                {
                  "key": "B",
                  "text": "It's best to buy second-hand equipment."
                },
                {
                  "key": "C",
                  "text": "Renting equipment can be cheap."
                }
              ],
              "answer": "B",
              "explanation": "I’d try to get things like hobs and fridges second hand if you can"
            },
            {
              "number": 16,
              "prompt": "What advice is given about creating a product for a street food business?",
              "options": [
                {
                  "key": "A",
                  "text": "Provide information about the ingredients."
                },
                {
                  "key": "B",
                  "text": "It is important to have an original product."
                },
                {
                  "key": "C",
                  "text": "The presentation is an important factor."
                }
              ],
              "answer": "C",
              "explanation": "But there’s one thing people don’t always think about and that’s how you’re going to serve it. On a plate? In a bag? Will you provide a fork? Will it all be easily recyclable or reusable? It’s got to be easy to eat and look attractive or customers won’t come back"
            }
          ],
          "id": "g15"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "What problem did the owners of each of the following street food businesses experience? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Some ingredients were too expensive."
            },
            {
              "key": "B",
              "text": "The meals took a long time to prepare."
            },
            {
              "key": "C",
              "text": "They had no money for marketing."
            },
            {
              "key": "D",
              "text": "It was difficult to get a permit to sell food."
            },
            {
              "key": "E",
              "text": "A competitor was selling similar food in their area."
            },
            {
              "key": "F",
              "text": "They worked very long hours."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Thai Basil",
              "answer": "F",
              "explanation": "My friends who run Thai Basil started by juggling their street food business with their day jobs in a restaurant. Their work-life balance was non-existent as they were working til midnight in the restaurant all week and then took their food truck to markets on their days off"
            },
            {
              "number": 18,
              "prompt": "Basque",
              "answer": "A",
              "explanation": "The owners of Basque found it was hard to make a profit because the price of fish - essential for some of their dishes - was so high"
            },
            {
              "number": 19,
              "prompt": "Lou's kitchen",
              "answer": "B",
              "explanation": "The owners of Lou’s kitchen were making salads to order from their van and some of their dishes were quite complicated. At one of their first events they ended up with people standing in a long queue for more than 15 minutes - and many of them lost patience. So make sure whatever you offer can be served quickly and efficiently"
            },
            {
              "number": 20,
              "prompt": "Chip Chop",
              "answer": "D",
              "explanation": "The owners of Chip Chop had found a perfect venue near a beach where there weren’t any other street food trucks. But what they hadn’t realised was that they’d need a special licence - which individual businesses don’t need at markets or festivals. It was a complicated process and in the end they gave up"
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
          "type": "choose_two",
          "paired": true,
          "label": "Questions 21–22",
          "instructions": "Choose TWO letters, A–E. Which TWO points do the speakers make about the terms 'ethical' and 'sustainable' fashion?",
          "options": [
            {
              "key": "A",
              "text": "Their definitions keep changing."
            },
            {
              "key": "B",
              "text": "People think they mean the same thing."
            },
            {
              "key": "C",
              "text": "The term 'eco-friendly' is preferable."
            },
            {
              "key": "D",
              "text": "They are often used imprecisely."
            },
            {
              "key": "E",
              "text": "Companies should avoid using them on clothing labels."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO points do the speakers make about the terms 'ethical' and 'sustainable' fashion?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "most people use these terms interchangeably They’re often deliberately vague, I think, and don’t provide enough information about how their products are made"
            },
            {
              "number": 22,
              "prompt": "Which TWO points do the speakers make about the terms 'ethical' and 'sustainable' fashion?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "most people use these terms interchangeably They’re often deliberately vague, I think, and don’t provide enough information about how their products are made"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO claims about wool production do the speakers disagree with?",
          "options": [
            {
              "key": "A",
              "text": "Sheep are generally well-treated."
            },
            {
              "key": "B",
              "text": "Wool is easy to recycle."
            },
            {
              "key": "C",
              "text": "Wool is a long-lasting fabric."
            },
            {
              "key": "D",
              "text": "Wool production involves few chemicals."
            },
            {
              "key": "E",
              "text": "Sheep do less environmental damage than other livestock."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO claims about wool production do the speakers disagree with?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "RYAN: And it also lasts a long time and can be recycled. All very positive. But I wasn’t convinced by the argument that wool production is sustainable because it doesn’t use many chemicals - what about all the fungicides and insecticides used in sheep farming? MADDY: Good point. And I couldn’t find any evidence for the claim about sheep farming being better for the environment than cattle farming. RYAN: No - they’re both really bad"
            },
            {
              "number": 24,
              "prompt": "Which TWO claims about wool production do the speakers disagree with?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "RYAN: And it also lasts a long time and can be recycled. All very positive. But I wasn’t convinced by the argument that wool production is sustainable because it doesn’t use many chemicals - what about all the fungicides and insecticides used in sheep farming? MADDY: Good point. And I couldn’t find any evidence for the claim about sheep farming being better for the environment than cattle farming. RYAN: No - they’re both really bad"
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What comment do the speakers make about each of the following semi-synthetic fabrics? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "The production process is fuel efficient."
            },
            {
              "key": "B",
              "text": "It is the least sustainable of alternative fabrics."
            },
            {
              "key": "C",
              "text": "Production costs are high."
            },
            {
              "key": "D",
              "text": "It provides additional health benefits."
            },
            {
              "key": "E",
              "text": "It is not durable in the long-term."
            },
            {
              "key": "F",
              "text": "It needs to be produced in a certain way to be sustainable."
            },
            {
              "key": "G",
              "text": "Chemicals required for production can be reused."
            },
            {
              "key": "H",
              "text": "This is from a wholly sustainable source."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Lyocell",
              "answer": "G",
              "explanation": "Over 99% of dissolving agents used in the manufacturing process are used again"
            },
            {
              "number": 26,
              "prompt": "Cupro",
              "answer": "B",
              "explanation": "RYAN: Made from byproducts of the cotton industry to create a kind of vegan silk. But I’m not sure how sustainable this really is as there are so many reports of pollution caused by the manufacturing process.MADDY: Mmm. It doesn’t compare favourably with all the other sustainable fabrics we’ve looked at, no"
            },
            {
              "number": 27,
              "prompt": "Bamboo",
              "answer": "F",
              "explanation": "RYAN: Bamboo is one fabric we’re all familiar with. But I didn’t know that it was only organic bamboo that’s truly sustainable"
            },
            {
              "number": 28,
              "prompt": "EcoVero",
              "answer": "A",
              "explanation": "Probably because manufacturing causes 50 percent fewer emissions and takes up half as much energy as conventional fabrics"
            },
            {
              "number": 29,
              "prompt": "Cork",
              "answer": "H",
              "explanation": "MADDY: Mmm and it’s the only fabric that’s fundamentally sustainable - the cork trees it comes from are renewable and the product itself is both recyclable and biodegradable - which is unique.RYAN: And the harvesting process is actually good for the trees. There are no downsides to using this source at all"
            },
            {
              "number": 30,
              "prompt": "Hemp",
              "answer": "D",
              "explanation": "RYAN: Yes. Did you know that clothes made from hemp protect the wearer from the sun and it’s also antibacterial"
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
              "text": "Definition: an animal or plant that causes harm to an environment after being introduced by humans"
            },
            {
              "kind": "static",
              "text": "An invasive species can be a problem when it: eats native species. introduces a new"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": ". takes food from native species. threatens an entire",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": ".",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "How invasive species spread accidentally e.g. via people returning from their"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "or on cargo ships intentionally e.g. for pest control, or as",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": ".",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Examples of invasive species"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Japanese knotweed plants were popular among 19th-century gardeners in the UK."
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
              "text": "Tackling invasive species"
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
              "prompt": "_______",
              "answer": [
                "disease"
              ],
              "wordLimit": 1,
              "explanation": "First of all, invasive species may eat native species, or sometimes they may bring a disease with them, which native species have never faced before and therefore have no defences against"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "ecosystem"
              ],
              "wordLimit": 1,
              "explanation": "Species invasions are one of the biggest causes of damage in an ecosystem, actually putting its survival at risk"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "holiday"
              ],
              "wordLimit": 1,
              "explanation": "(s) This could be intentional, or it could be accidental, such as when people who’ve been on holiday in another country come back with, say, the seeds of plants on their clothes or shoes"
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "pets"
              ],
              "wordLimit": 1,
              "explanation": "But sometimes humans deliberately move animals and plants around the world, for example to use them to control pests on farms, or to be pets"
            },
            {
              "number": 35,
              "prompt": "Rhinella marina (toads) were introduced to Australia from Hawaii in 1935 to eat a type of insect that was damaging the _______ plantations. failed to solve the problem and became widespread in the north of Australia. are poisonous for any species that eats them and reduce the food available for native frogs.",
              "answer": [
                "sugar"
              ],
              "wordLimit": 1,
              "explanation": "It was hoped that the toads would eat the grey-backed beetles responsible for destroying crops of sugar on many of the plantations"
            },
            {
              "number": 36,
              "prompt": "Rhododendron plants prevent _______ from reaching native plants.",
              "answer": [
                "light"
              ],
              "wordLimit": 1,
              "explanation": "Another invasive plant is rhododendrons, which can be found in UK parks and woodlands. Their introduction dates back to 1763, but they’re now seen as harmful because they block out so much light that native wild flowers can’t grow beneath them"
            },
            {
              "number": 37,
              "prompt": "Grey squirrels from N. America reduce sources of food for the UK's native red squirrels and spread a _______ that kills red squirrels.",
              "answer": [
                "virus"
              ],
              "wordLimit": 1,
              "explanation": "Grey squirrels have outcompeted the smaller, native red squirrels. They both eat the same food, and the grey squirrels carry a type of virus that is deadly to the red squirrels"
            },
            {
              "number": 38,
              "prompt": "Monitoring helps us to understand the _______ of invasive species and the impact they have.",
              "answer": [
                "behaviour"
              ],
              "wordLimit": 1,
              "explanation": "/ behavior The first step in controlling invasive species is learning about the behaviour of new species coming into the country. Monitoring is an important part of this, so that we can know if the new species begins to have a negative impact in its new environment"
            },
            {
              "number": 39,
              "prompt": "Setting up a national _______ makes it easier to track them.",
              "answer": [
                "database"
              ],
              "wordLimit": 1,
              "explanation": "One effective way to keep track of invasive species is to create a database for the whole country"
            },
            {
              "number": 40,
              "prompt": "Asking the public to _______ and report them helps with monitoring.",
              "answer": [
                "photograph"
              ],
              "wordLimit": 1,
              "explanation": "They should be encouraged to photograph harmful species - because this helps with identification - and then to report when and where these were observed"
            }
          ],
          "formTitle": "Invasive species",
          "id": "g31"
        }
      ]
    }
  ]
}
$c21t3l$,
  true
);
