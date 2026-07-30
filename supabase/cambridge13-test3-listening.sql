DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 13' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 13',
  'Test 3',
  'academic',
  2004,
  $c13t3l$
{
  "audioPath": "Cambridge 13 Test 3.mp3",
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
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "Linda recommends living in suburb of: …..Dalton….."
            },
            {
              "kind": "subheader",
              "text": "Accommodation"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Transport"
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
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "Advantages of living in Banford"
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
              "kind": "subheader",
              "text": "Meet Linda"
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
              "prompt": "Average rent: £ _______ a month",
              "answer": [
                "850"
              ],
              "wordLimit": 1,
              "explanation": "Yeah, you should be able to get something reasonable for 850 pounds per month."
            },
            {
              "number": 2,
              "prompt": "Linda travels to work by _______",
              "answer": [
                "bike"
              ],
              "wordLimit": 1,
              "explanation": "/ bicycle I go by bike."
            },
            {
              "number": 3,
              "prompt": "Limited _______ in city centre",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "there’s hardly any parking"
            },
            {
              "number": 4,
              "prompt": "Trains to London every _______ Minutes",
              "answer": [
                "30"
              ],
              "wordLimit": 1,
              "explanation": "/ thirty There’s a fast train every 30 minutes which only takes 45 minutes."
            },
            {
              "number": 5,
              "prompt": "Poor train service at _______",
              "answer": [
                "weekend"
              ],
              "wordLimit": 1,
              "explanation": "/ weekends It’s weekends that are a problem"
            },
            {
              "number": 6,
              "prompt": "New _______ opened recently",
              "answer": [
                "cinema"
              ],
              "wordLimit": 1,
              "explanation": "There are some nice restaurants in the city centre and a brand new cinema which has only been open a couple of months."
            },
            {
              "number": 7,
              "prompt": "_______ has excellent reputation",
              "answer": [
                "hospital"
              ],
              "wordLimit": 1,
              "explanation": "The schools are good and the hospital here is one of the best in the country."
            },
            {
              "number": 8,
              "prompt": "Good _______ on Bridge Street",
              "answer": [
                "dentist"
              ],
              "wordLimit": 1,
              "explanation": "Oh, I can give you the name of my dentist too in Bridge Street"
            },
            {
              "number": 9,
              "prompt": "Meet Linda on _______ after 5.30 pm",
              "answer": [
                "Thursday"
              ],
              "wordLimit": 1,
              "explanation": "Either a Tuesday or Thursday is good for me, after 5.30."
            },
            {
              "number": 10,
              "prompt": "In the _______ opposite the station",
              "answer": [
                "caf"
              ],
              "wordLimit": 1,
              "explanation": "é / cafe I’ll meet you in the cafe outside. You can’t miss it. It’s opposite the station and next to the museum."
            }
          ],
          "formTitle": "Moving to Banford City",
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
          "instructions": "What advantage does the speaker mention for each of the following physical activities? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "not dependent on season"
            },
            {
              "key": "B",
              "text": "enjoyable"
            },
            {
              "key": "C",
              "text": "low risk of injury"
            },
            {
              "key": "D",
              "text": "fitness level unimportant"
            },
            {
              "key": "E",
              "text": "sociable"
            },
            {
              "key": "F",
              "text": "fast results"
            },
            {
              "key": "G",
              "text": "motivating"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "using a gym",
              "answer": "F",
              "explanation": "but with regular training you’ll see a big difference in a relatively short space of time."
            },
            {
              "number": 12,
              "prompt": "running",
              "answer": "D",
              "explanation": "that it’s a very accessible form of exercise that anyone can run even if you could only run a few meters to begin with."
            },
            {
              "number": 13,
              "prompt": "swimming",
              "answer": "A",
              "explanation": "What attracts many people is that you can swim in an indoor pool at any time of year."
            },
            {
              "number": 14,
              "prompt": "cycling",
              "answer": "B",
              "explanation": "many people say being out in the fresh air in a park or in the countryside can be fun"
            },
            {
              "number": 15,
              "prompt": "doing yoga",
              "answer": "C",
              "explanation": "Make sure you get someone with a recognised qualification though. Or you could do yourself permanent damage."
            },
            {
              "number": 16,
              "prompt": "training with a personal trainer",
              "answer": "G",
              "explanation": "Getting a personal trainer is a good way to start your fitness program. Obviously there can be significant costs involved. But if you’ve got someone there to encourage you and help you achieve your goals, you’re less likely to give up."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. For which TWO reasons does the speaker say people give up going to the gym?",
          "options": [
            {
              "key": "A",
              "text": "lack of time"
            },
            {
              "key": "B",
              "text": "loss of confidence"
            },
            {
              "key": "C",
              "text": "too much effort required"
            },
            {
              "key": "D",
              "text": "high costs"
            },
            {
              "key": "E",
              "text": "feeling less successful than others"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "For which TWO reasons does the speaker say people give up going to the gym?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "I think people lose interest when they don’t think they’re making enough progress. That’s when they give up hope and stop believing they’ll ever achieve their goals Also, what people sometimes don’t realize when they start is that it takes a lot of determination and hard work to keep training week after week, and lots of people don’t have that kind of commitment"
            },
            {
              "number": 18,
              "prompt": "For which TWO reasons does the speaker say people give up going to the gym?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "I think people lose interest when they don’t think they’re making enough progress. That’s when they give up hope and stop believing they’ll ever achieve their goals Also, what people sometimes don’t realize when they start is that it takes a lot of determination and hard work to keep training week after week, and lots of people don’t have that kind of commitment"
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO pieces of advice does the speaker give for setting goals?",
          "options": [
            {
              "key": "A",
              "text": "write goals down"
            },
            {
              "key": "B",
              "text": "have achievable aims"
            },
            {
              "key": "C",
              "text": "set a time limit"
            },
            {
              "key": "D",
              "text": "give yourself rewards"
            },
            {
              "key": "E",
              "text": "challenge yourself"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO pieces of advice does the speaker give for setting goals?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "to set manageable goals Give yourself a really nice treat every time you reach one of your goals"
            },
            {
              "number": 20,
              "prompt": "Which TWO pieces of advice does the speaker give for setting goals?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "to set manageable goals Give yourself a really nice treat every time you reach one of your goals"
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
          "label": "Questions 21–24",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "What first inspired Jim to choose this project?",
              "options": [
                {
                  "key": "A",
                  "text": "textiles displayed in an exhibition"
                },
                {
                  "key": "B",
                  "text": "a book about a botanic garden"
                },
                {
                  "key": "C",
                  "text": "carpets he saw on holiday"
                }
              ],
              "answer": "C",
              "explanation": "I went to a carpet shop with my parents when we were on holiday in Turkey, and I remember all the amazing colours."
            },
            {
              "number": 22,
              "prompt": "Jim eventually decided to do a practical investigation which involved",
              "options": [
                {
                  "key": "A",
                  "text": "using a range of dyes with different fibres."
                },
                {
                  "key": "B",
                  "text": "applying different dyes to one type of fibre."
                },
                {
                  "key": "C",
                  "text": "testing one dye and a range of fibres."
                }
              ],
              "answer": "A",
              "explanation": "Then I decided to include others as well, so I looked at cotton and wool and nylon."
            },
            {
              "number": 23,
              "prompt": "When doing his experiments, Jim was surprised by",
              "options": [
                {
                  "key": "A",
                  "text": "how much natural material was needed to make the dye."
                },
                {
                  "key": "B",
                  "text": "the fact that dyes were widely available on the internet."
                },
                {
                  "key": "C",
                  "text": "the time that he had to leave the fabric in the dye."
                }
              ],
              "answer": "A",
              "explanation": "Like I was using one vegetable, beetroot, for a red dye, and I had to chop up a whole pile of it."
            },
            {
              "number": 24,
              "prompt": "What problem did Jim have with using tartrazine as a fabric dye?",
              "options": [
                {
                  "key": "A",
                  "text": "It caused a slight allergic reaction."
                },
                {
                  "key": "B",
                  "text": "It was not a permanent dye on cotton."
                },
                {
                  "key": "C",
                  "text": "It was ineffective when used on nylon."
                }
              ],
              "answer": "B",
              "explanation": "but when I rinsed the material, the colour just washed away."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What problem is identified with each of the following natural dyes? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "It is expensive."
            },
            {
              "key": "B",
              "text": "The colour is too strong."
            },
            {
              "key": "C",
              "text": "The colour is not long-lasting."
            },
            {
              "key": "D",
              "text": "It is very poisonous."
            },
            {
              "key": "E",
              "text": "It can damage the fabric."
            },
            {
              "key": "F",
              "text": "The colour may be unexpected."
            },
            {
              "key": "G",
              "text": "It is unsuitable for some fabrics."
            },
            {
              "key": "H",
              "text": "It is not generally available"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "turmeric",
              "answer": "C",
              "explanation": "it’s not permanent when it’s used as a dye - a few washes, and it’s gone."
            },
            {
              "number": 26,
              "prompt": "beetroot",
              "answer": "F",
              "explanation": "but the wool ended up just a sort of watery cream shade."
            },
            {
              "number": 27,
              "prompt": "Tyrian purple",
              "answer": "H",
              "explanation": "It comes from a shellfish, and it was worn in ancient times but only by important people as it was so rare. I didn’t use it."
            },
            {
              "number": 28,
              "prompt": "logwood",
              "answer": "D",
              "explanation": "It can be extremely dangerous if it’s ingested"
            },
            {
              "number": 29,
              "prompt": "cochineal",
              "answer": "A",
              "explanation": "But it cost a fortune."
            },
            {
              "number": 30,
              "prompt": "metal oxide",
              "answer": "E",
              "explanation": "the metal can actually affect the fabric"
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
              "text": "Description"
            },
            {
              "kind": "static",
              "text": "They are common in Western and South Australia"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "subheader",
              "text": "They are relatively large"
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
              "kind": "subheader",
              "text": "Navigation study"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Observations in the wild"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "What people want"
            },
            {
              "kind": "static",
              "text": "Possible reasons:"
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
              "text": "Tracking study"
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
              "kind": "static",
              "text": "- It appeared that the lizards were trying to avoid one another"
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "They are brown, but recognisable by their blue _______",
              "answer": [
                "tongue"
              ],
              "wordLimit": 1,
              "explanation": "/ tongues the colour of their tongue, which is dark blue"
            },
            {
              "number": 32,
              "prompt": "Their diet consists mainly of _______",
              "answer": [
                "plants"
              ],
              "wordLimit": 1,
              "explanation": "They have quite a varied diet, including insects and even small animals, but they mostly eat plants of varying kinds."
            },
            {
              "number": 33,
              "prompt": "Their main predators are large birds and _______",
              "answer": [
                "snakes"
              ],
              "wordLimit": 1,
              "explanation": "they’re more likely to be caught and killed by snakes."
            },
            {
              "number": 34,
              "prompt": "One study found that lizards can use the _______ to help them navigate",
              "answer": [
                "sky"
              ],
              "wordLimit": 1,
              "explanation": "they could usually find their way back home as long as they could see the sky - they didn’t need any other landmarks on the ground."
            },
            {
              "number": 35,
              "prompt": "Observations show that these lizards keep the same _______ for several years",
              "answer": [
                "partner"
              ],
              "wordLimit": 1,
              "explanation": "/ partners it seems that they’re relatively monogamous, returning to the same partner year after year."
            },
            {
              "number": 36,
              "prompt": "- to improve the survival of their young (but little _______ has been noted between parents and children)",
              "answer": [
                "contact"
              ],
              "wordLimit": 1,
              "explanation": "they have hardly any contact with their parents."
            },
            {
              "number": 37,
              "prompt": "- to provide _______ for female lizards",
              "answer": [
                "protection"
              ],
              "wordLimit": 1,
              "explanation": "they can give the female lizards protection from other males"
            },
            {
              "number": 38,
              "prompt": "- A study was carried out using GPS systems attached to the _______ of the lizards",
              "answer": [
                "tail"
              ],
              "wordLimit": 1,
              "explanation": "/ tails we developed a tiny GPS system that would allow us to track them, and we fixed this onto their tails."
            },
            {
              "number": 39,
              "prompt": "- This provided information on the lizards’ location and even the number of _______ taken",
              "answer": [
                "steps"
              ],
              "wordLimit": 1,
              "explanation": "but even about how many steps they took during this period."
            },
            {
              "number": 40,
              "prompt": "- This may be in order to reduce chances of _______",
              "answer": [
                "injury"
              ],
              "wordLimit": 1,
              "explanation": "/ injuries one hypothesis is that male lizards can cause quite serious injuries to one another, so maybe this avoidance is a way of preventing this"
            }
          ],
          "formTitle": "The sleepy lizard (tiliqua rugosa)",
          "id": "g31"
        }
      ]
    }
  ]
}
$c13t3l$,
  true
);
