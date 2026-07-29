DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 10' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 10',
  'Test 2',
  'academic',
  2004,
  $c10t2l$
{
  "audioPath": "Cambridge 10 Test 2.mp3",
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
              "text": "Travelled to town today: by ……….bus………."
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
              "text": "Area: Bradfield"
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
              "kind": "static",
              "text": "Suggestions for improvement: better"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "have more footpaths more frequent",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Things that would encourage cycling to work: having"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "parking places for bicycles being able to use a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "at work the opportunity to have cycling",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "on busy roads",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Name: Luisa _______",
              "answer": [
                "Hardie"
              ],
              "wordLimit": 1,
              "explanation": "Hardie."
            },
            {
              "number": 2,
              "prompt": "Address: _______ White Stone Rd",
              "answer": [
                "19"
              ],
              "wordLimit": 1,
              "explanation": "It’s 19, White Stone Road."
            },
            {
              "number": 3,
              "prompt": "Postcode: _______",
              "answer": [
                "GT"
              ],
              "wordLimit": 1,
              "explanation": "8 2LC / GT82LC It’s actually G-T-8, 2-L-C."
            },
            {
              "number": 4,
              "prompt": "Occupation: _______",
              "answer": [
                "hairdresser"
              ],
              "wordLimit": 1,
              "explanation": "I’ve actually just finished my training. I’m a hairdresser."
            },
            {
              "number": 5,
              "prompt": "Reason for visit to town: to go to the _______",
              "answer": [
                "dentist"
              ],
              "wordLimit": 1,
              "explanation": "/ dentist’s Actually it’s not for shopping today, which would be my normal reason, but to see the dentist."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "lighting"
              ],
              "wordLimit": 1,
              "explanation": "Well, something I’ve thought about for some time is that when I do walk and I’m doing a later shift, I think the lighting should be better."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "trains"
              ],
              "wordLimit": 1,
              "explanation": "And, I don’t think there are enough trains. That’s why I don’t use them - you have to wait so long."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "safe"
              ],
              "wordLimit": 1,
              "explanation": "Yep. Well, I have thought about it and where I work there are no safe places to leave your bikes."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "shower"
              ],
              "wordLimit": 1,
              "explanation": "And also, I’d have to cycle uphill and on a hot day I’d arrive at work pretty sweaty so I think I’d need a shower somewhere at work."
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "training"
              ],
              "wordLimit": 1,
              "explanation": "And I suppose the last thing is that I wouldn’t be all that confident about cycling on such busy roads. I think I’d like to see you offering training for that, you know."
            }
          ],
          "formTitle": "Transport Survey",
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
              "prompt": "The idea for the two new developments in the city came from",
              "options": [
                {
                  "key": "A",
                  "text": "local people."
                },
                {
                  "key": "B",
                  "text": "the City Council."
                },
                {
                  "key": "C",
                  "text": "the SWRDC."
                }
              ],
              "answer": "A",
              "explanation": "As many of you may know, the idea for these initiatives came from you, the public, in the extensive consultation exercise which the City Council conducted last year."
            },
            {
              "number": 12,
              "prompt": "What is unusual about Brackenside pool?",
              "options": [
                {
                  "key": "A",
                  "text": "its architectural style"
                },
                {
                  "key": "B",
                  "text": "its heating system"
                },
                {
                  "key": "C",
                  "text": "its method of water treatment"
                }
              ],
              "answer": "C",
              "explanation": "which fits is so well with many of the other buildings in the area, with up-to- the-minute features such as a recycling system - the only one of its kind in the world - which enables seawater to be used in the pool."
            },
            {
              "number": 13,
              "prompt": "Local newspapers have raised worries about",
              "options": [
                {
                  "key": "A",
                  "text": "the late opening date."
                },
                {
                  "key": "B",
                  "text": "the cost of the project."
                },
                {
                  "key": "C",
                  "text": "the size of the facilities."
                }
              ],
              "answer": "C",
              "explanation": "Now, there has been quite a bit of discussion in the local press about whether there would be enough room for the number of visitors we’re hoping to attract, but the design is deceptive and there have been rigorous checks about capacity."
            },
            {
              "number": 14,
              "prompt": "What decision has not yet been made about the pool?",
              "options": [
                {
                  "key": "A",
                  "text": "whose statue will be at the door"
                },
                {
                  "key": "B",
                  "text": "the exact opening times"
                },
                {
                  "key": "C",
                  "text": "who will open it"
                }
              ],
              "answer": "A",
              "explanation": "There’ll also be a competition for the public to decide on the sculpture we plan to have at the entrance: you will decide which famous historical figure from the city we should have."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which feature is related to each of the following areas of the world represented in the playground? Choose the correct letter, A–I, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "ancient forts"
            },
            {
              "key": "B",
              "text": "waterways"
            },
            {
              "key": "C",
              "text": "ice and snow"
            },
            {
              "key": "D",
              "text": "jewels"
            },
            {
              "key": "E",
              "text": "local animals"
            },
            {
              "key": "F",
              "text": "mountains"
            },
            {
              "key": "G",
              "text": "music and film"
            },
            {
              "key": "H",
              "text": "space travel"
            },
            {
              "key": "I",
              "text": "volcanoes"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Asia",
              "answer": "E",
              "explanation": "For example, there is a section on Asia, and this is represented by rides and equipment in the shape of snakes, orang-utans, tigers and so on - fauna native to the forests of the region"
            },
            {
              "number": 16,
              "prompt": "Antarctica",
              "answer": "F",
              "explanation": "Moving south to the Antarctic - we couldn’t run to an ice rink I’m afraid but opted instead for climbing blocks in the shape of mountains - I thought they could have had slides for the glaciers but the designers did want to avoid being too literal!"
            },
            {
              "number": 17,
              "prompt": "South America",
              "answer": "D",
              "explanation": "Then on to South America - and here the theme is El Dorado - games replicating the search for mines full of precious stones."
            },
            {
              "number": 18,
              "prompt": "North America",
              "answer": "H",
              "explanation": "And then moving up to North America, here there was considerable debate - I know the contribution of cinema and jazz was considered but the designers finally opted for rockets and the international Space Station"
            },
            {
              "number": 19,
              "prompt": "Europe",
              "answer": "A",
              "explanation": "Eastwards to Europe then, and perhaps the most traditional choice of all the areas: medieval castles and other fortifications."
            },
            {
              "number": 20,
              "prompt": "Africa",
              "answer": "B",
              "explanation": "Then last, but not least, moving south to Africa and a whole set of wonderful mosaics and trails to represent the great rivers of this fascinating and varied continent."
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
          "instructions": "Choose TWO letters, A–E. Which TWO hobbies was Thor Heyerdahl very interested in as a youth?",
          "options": [
            {
              "key": "A",
              "text": "camping"
            },
            {
              "key": "B",
              "text": "climbing"
            },
            {
              "key": "C",
              "text": "collecting"
            },
            {
              "key": "D",
              "text": "hunting"
            },
            {
              "key": "E",
              "text": "reading"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO hobbies was Thor Heyerdahl very interested in as a youth?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Sure. Why don’t you begin with describing the type of boy he was, especially his passion for collecting things. No, it was climbing that he spent his time on as a young man."
            },
            {
              "number": 22,
              "prompt": "Which TWO hobbies was Thor Heyerdahl very interested in as a youth?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Sure. Why don’t you begin with describing the type of boy he was, especially his passion for collecting things. No, it was climbing that he spent his time on as a young man."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which do the speakers say are the TWO reasons why Heyerdahl went to live on an island?",
          "options": [
            {
              "key": "A",
              "text": "to examine ancient carvings"
            },
            {
              "key": "B",
              "text": "to experience an isolated place"
            },
            {
              "key": "C",
              "text": "to formulate a new theory"
            },
            {
              "key": "D",
              "text": "to learn survival skills"
            },
            {
              "key": "E",
              "text": "to study the impact of an extreme environment"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which do the speakers say are the TWO reasons why Heyerdahl went to live on an island?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Oh, right … After university he married a classmate and together, they decided to experience living on a small island to find out how harsh weather conditions shaped people’s lifestyles."
            },
            {
              "number": 24,
              "prompt": "Which do the speakers say are the TWO reasons why Heyerdahl went to live on an island?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Oh, right … After university he married a classmate and together, they decided to experience living on a small island to find out how harsh weather conditions shaped people’s lifestyles."
            }
          ],
          "id": "g23"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 25–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 25,
              "prompt": "According to Victor and Olivia, academics thought that Polynesian migration from the east was impossible due to",
              "options": [
                {
                  "key": "A",
                  "text": "the fact that Eastern countries were far away."
                },
                {
                  "key": "B",
                  "text": "the lack of materials for boat building."
                },
                {
                  "key": "C",
                  "text": "the direction of the winds and currents."
                }
              ],
              "answer": "A",
              "explanation": "Yes, they thought that travel from the east was impossible, because of the huge, empty stretch of ocean that lies between the islands and the nearest inhabited land."
            },
            {
              "number": 26,
              "prompt": "Which do the speakers agree was the main reason for Heyerdahl’s raft journey?",
              "options": [
                {
                  "key": "A",
                  "text": "to overcome a research setback"
                },
                {
                  "key": "B",
                  "text": "to demonstrate a personal quality"
                },
                {
                  "key": "C",
                  "text": "to test a new theory"
                }
              ],
              "answer": "C",
              "explanation": "Well, I think it was more a matter of simply trying out his idea, to see if migration from the east was possible."
            },
            {
              "number": 27,
              "prompt": "What was most important to Heyerdahl about his raft journey?",
              "options": [
                {
                  "key": "A",
                  "text": "the fact that he was the first person to do it"
                },
                {
                  "key": "B",
                  "text": "the speed of crossing the Pacific"
                },
                {
                  "key": "C",
                  "text": "the use of authentic construction methods"
                }
              ],
              "answer": "C",
              "explanation": "The most important factor seems to have been that he use only ancient techniques and local materials to build his raft."
            },
            {
              "number": 28,
              "prompt": "Why did Heyerdahl go to Easter Island?",
              "options": [
                {
                  "key": "A",
                  "text": "to build a stone statue"
                },
                {
                  "key": "B",
                  "text": "to sail a reed boat"
                },
                {
                  "key": "C",
                  "text": "to learn the local language"
                }
              ],
              "answer": "A",
              "explanation": "But what he wanted to do was talk to the local people about their old stone carvings and then make one himself to learn more about the process."
            },
            {
              "number": 29,
              "prompt": "In Olivia’s opinion, Heyerdahl’s greatest influence was on",
              "options": [
                {
                  "key": "A",
                  "text": "theories about Polynesian origins."
                },
                {
                  "key": "B",
                  "text": "the development of archaeological methodology."
                },
                {
                  "key": "C",
                  "text": "establishing archaeology as an academic subject."
                }
              ],
              "answer": "B",
              "explanation": "To my mind, he was first person to establish what modern academics call practical archaeology. I mean, that they try to recreate something from the past today"
            },
            {
              "number": 30,
              "prompt": "Which criticism do the speakers make of William Oliver’s textbook?",
              "options": [
                {
                  "key": "A",
                  "text": "Its style is out of date."
                },
                {
                  "key": "B",
                  "text": "Its content is over-simplified."
                },
                {
                  "key": "C",
                  "text": "Its methodology is flawed."
                }
              ],
              "answer": "A",
              "explanation": "I thought the research methods he used were very sound, although I must say I found the overall tone somewhat old-fashioned. I think they need to do a new, revised edition."
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
              "text": "Business markets greater"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "among companies increase in power of large",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "Companies rising",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "in certain countries",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "External influences on businesses more discussion with"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "before making business decisions environmental concerns which may lead to more",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Business structures more teams will be formed to work on a particular"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "businesses may need to offer hours that are",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": ", or the chance to work remotely",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Management styles increasing need for managers to provide good"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "changes influenced by",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "taking senior roles",
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
              "prompt": "_______",
              "answer": [
                "competition"
              ],
              "wordLimit": 1,
              "explanation": "One area I want to mention is business markets, and I’m sure a really significant development will be a major increase in competition, with companies from all round the world trying to sell similar products"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "global"
              ],
              "wordLimit": 1,
              "explanation": "At the same time, mergers and takeovers mean that governments are actually losing power to major global corporations."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "demand"
              ],
              "wordLimit": 1,
              "explanation": "A third point I want to make about markets is that in the rapidly expanding economies, such as India, China, Brazil and Russia, demand is growing very fast."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "customers"
              ],
              "wordLimit": 1,
              "explanation": "In particular, companies are consulting customers more and more before making their business decisions."
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "regulation"
              ],
              "wordLimit": 1,
              "explanation": "Another influence is that concerns about the environment will force manufacturers to extend product lifecycles, to reduce the amount of pollution and waste. And in some cases, regulation will need to be strengthened."
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "project"
              ],
              "wordLimit": 1,
              "explanation": "I think we’re going to see a greater emphasis within companies on teams created with a specific project in mind."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "flexible"
              ],
              "wordLimit": 1,
              "explanation": "Typical examples that will attract and retain staff are traditional ones like flexible hours and - something that has been made possible by advances in technology - remote working, with people based at their home, abroad, or almost anywhere they choose."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "leadership"
              ],
              "wordLimit": 1,
              "explanation": "Above all they’ll need great skills in leadership, so that their organisation can initiate and respond to change in a fast-moving world, where they face lots of competing requirements and potential conflicts."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "women"
              ],
              "wordLimit": 1,
              "explanation": "The predominant style of management will almost certainly become more consultative and collaborative, caused above all, by more women moving into senior management positions."
            },
            {
              "number": 40,
              "prompt": "Changes in the economy service sector continues to be important increasing value of intellectual property more and more _______ workers",
              "answer": [
                "self-employed"
              ],
              "wordLimit": 1,
              "explanation": "Instead, more and more people are becoming self-employed, to gain the freedom and control over their lives that they’re unlikely to get from being employed."
            }
          ],
          "formTitle": "THE FUTURE OF MANAGEMENT",
          "id": "g31"
        }
      ]
    }
  ]
}
$c10t2l$,
  true
);
