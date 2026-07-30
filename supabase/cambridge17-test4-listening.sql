DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 17',
  'Test 4',
  'academic',
  2004,
  $c17t4l$
{
  "audioPath": "Cambridge 17 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the notes below. Write ONE WORD for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Basic cleaning package offered"
            },
            {
              "kind": "subheader",
              "text": "Cleaning all surfaces"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "Cleaning shower, sinks, toilet etc."
            },
            {
              "kind": "subheader",
              "text": "Additional services agreed"
            },
            {
              "kind": "subheader",
              "text": "Every week"
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
              "kind": "subheader",
              "text": "Every month"
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
              "text": "Other possibilities"
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
              "kind": "subheader",
              "text": "Information on the cleaners"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "References are required."
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "Usually, each customer has one regular cleaner."
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Cleaning the _______ throughout the apartment",
              "answer": [
                "floor"
              ],
              "wordLimit": 1,
              "explanation": "/ floors No, I don’t have any, but the floor would need cleaning."
            },
            {
              "number": 2,
              "prompt": "- Cleaning the _______",
              "answer": [
                "fridge"
              ],
              "wordLimit": 1,
              "explanation": "Actually, I hardly ever use that, but can you do the fridge?"
            },
            {
              "number": 3,
              "prompt": "- Ironing clothes - _______ only",
              "answer": [
                "shirts"
              ],
              "wordLimit": 1,
              "explanation": "It wouldn’t be much, just my shirts for work that week."
            },
            {
              "number": 4,
              "prompt": "- Cleaning all the _______ from the inside",
              "answer": [
                "windows"
              ],
              "wordLimit": 1,
              "explanation": "So for example, if the inside of your windows need cleaning, we could do that."
            },
            {
              "number": 5,
              "prompt": "- Washing down the _______",
              "answer": [
                "balcony"
              ],
              "wordLimit": 1,
              "explanation": "But would you be able to do something about the balcony?"
            },
            {
              "number": 6,
              "prompt": "They can organise a plumber or an _______ if necessary.",
              "answer": [
                "electrician"
              ],
              "wordLimit": 1,
              "explanation": "And the same thing if you need an electrician."
            },
            {
              "number": 7,
              "prompt": "A special cleaning service is available for customers who are allergic to _______",
              "answer": [
                "dust"
              ],
              "wordLimit": 1,
              "explanation": "And I don’t know if this is of interest to you, but we also offer a special vacuum cleaning system which can improve the indoor air quality of your home by capturing up to 99% of all the dust in the air. So if you’re troubled by allergies, this can make a big difference."
            },
            {
              "number": 8,
              "prompt": "Before being hired, all cleaners have a background check carried out by the _______",
              "answer": [
                "police"
              ],
              "wordLimit": 1,
              "explanation": "So all our cleaners are very carefully selected. When they apply to us, they have to undergo a security check with the police to make sure they don’t have any sort of criminal background, and, of course, they have to provide references as well."
            },
            {
              "number": 9,
              "prompt": "All cleaners are given _______ for two weeks.",
              "answer": [
                "training"
              ],
              "wordLimit": 1,
              "explanation": "Then if we think they might be suitable for the job, we give them training for it. That lasts for two weeks so it’s very thorough, and at the end of it, they have a test."
            },
            {
              "number": 10,
              "prompt": "Customers send a _______ after each visit.",
              "answer": [
                "review"
              ],
              "wordLimit": 1,
              "explanation": "we ask all our clients to complete a review of their performance after every visit and to email it to us."
            }
          ],
          "formTitle": "Easy Life Cleaning Services",
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
              "prompt": "Many hotel managers are unaware that their staff often leave because of",
              "options": [
                {
                  "key": "A",
                  "text": "a lack of training."
                },
                {
                  "key": "B",
                  "text": "long hours."
                },
                {
                  "key": "C",
                  "text": "low pay."
                }
              ],
              "answer": "A",
              "explanation": "but what they don’t realise is that it’s the lack of training in many hotel jobs which is a huge factor."
            },
            {
              "number": 12,
              "prompt": "What is the impact of high staff turnover on managers?",
              "options": [
                {
                  "key": "A",
                  "text": "an increased workload"
                },
                {
                  "key": "B",
                  "text": "low morale"
                },
                {
                  "key": "C",
                  "text": "an inability to meet targets"
                }
              ],
              "answer": "A",
              "explanation": "Well, having to recruit new staff all the time can be very time-consuming, and managers may have to cover some duties while waiting for new staff to arrive."
            },
            {
              "number": 13,
              "prompt": "What mistake should managers always avoid?",
              "options": [
                {
                  "key": "A",
                  "text": "failing to treat staff equally"
                },
                {
                  "key": "B",
                  "text": "reorganising shifts without warning"
                },
                {
                  "key": "C",
                  "text": "neglecting to have enough staff during busy periods"
                }
              ],
              "answer": "A",
              "explanation": "When organising shifts, for example, make sure you never give certain staff preferential treatment. All staff should be given some choice about when they work, and everyone should have to work some evening and weekend shifts."
            },
            {
              "number": 14,
              "prompt": "What unexpected benefit did Dunwich Hotel notice after improving staff retention rates?",
              "options": [
                {
                  "key": "A",
                  "text": "a fall in customer complaints"
                },
                {
                  "key": "B",
                  "text": "an increase in loyalty club membership"
                },
                {
                  "key": "C",
                  "text": "a rise in spending per customer"
                }
              ],
              "answer": "C",
              "explanation": "Not only did the level of complaints fall, but they also noticed a significant increase in the amount each customer spent during their stay."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which way of reducing staff turnover was used in each of the following hotels? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "improving relationships and teamwork"
            },
            {
              "key": "B",
              "text": "offering incentives and financial benefits"
            },
            {
              "key": "C",
              "text": "providing career opportunities"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "The Sun Club",
              "answer": "A",
              "explanation": "They weren’t made to feel they were partners who were contributing to the success of the business as a whole. This situation has changed. Junior staff at all levels are regularly invited to meetings where their ideas are welcomed."
            },
            {
              "number": 16,
              "prompt": "The Portland",
              "answer": "C",
              "explanation": "Their first step was to introduce a scheme for recognising talent amongst their employees."
            },
            {
              "number": 17,
              "prompt": "Bluewater Hotels",
              "answer": "B",
              "explanation": "As a reward, they’re sent on an all-expenses-paid trip abroad every year."
            },
            {
              "number": 18,
              "prompt": "Pentlow Hotels",
              "answer": "C",
              "explanation": "In order to encourage them to see that working in a hotel could be worthwhile and rewarding, with good prospects, they introduced a management programme."
            },
            {
              "number": 19,
              "prompt": "Green Planet",
              "answer": "B",
              "explanation": "To make life easier for staff, many of whom had childcare responsibilities, the hotel began issuing vouchers to help cover the cost of childcare."
            },
            {
              "number": 20,
              "prompt": "The Amesbury",
              "answer": "A",
              "explanation": "Since she joined the company, she has made a huge effort to achieve this by creating a co-operative and supportive environment. For her, the staff are part of a large family where everyone is valued."
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
          "instructions": "Choose TWO letters, A–E. Which TWO points do Thomas and Jeanne make about Thomas’s sporting activities at school?",
          "options": [
            {
              "key": "A",
              "text": "He should have felt more positive about them."
            },
            {
              "key": "B",
              "text": "The training was too challenging for him."
            },
            {
              "key": "C",
              "text": "He could have worked harder at them."
            },
            {
              "key": "D",
              "text": "His parents were disappointed in him."
            },
            {
              "key": "E",
              "text": "His fellow students admired him."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO points do Thomas and Jeanne make about Thomas’s sporting activities at school?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "Yeah - that was my goal, and all my classmates assumed I would achieve it; they thought I was brilliant. Perhaps they should have pushed me harder, though."
            },
            {
              "number": 22,
              "prompt": "Which TWO points do Thomas and Jeanne make about Thomas’s sporting activities at school?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "Yeah - that was my goal, and all my classmates assumed I would achieve it; they thought I was brilliant. Perhaps they should have pushed me harder, though."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO feelings did Thomas experience when he was in Kenya?",
          "options": [
            {
              "key": "A",
              "text": "disbelief"
            },
            {
              "key": "B",
              "text": "relief"
            },
            {
              "key": "C",
              "text": "stress"
            },
            {
              "key": "D",
              "text": "gratitude"
            },
            {
              "key": "E",
              "text": "homesickness"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO feelings did Thomas experience when he was in Kenya?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "I just kept thinking how fortunate I was. What a great chance this was! I thought ‘this can’t be happening’!"
            },
            {
              "number": 24,
              "prompt": "Which TWO feelings did Thomas experience when he was in Kenya?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "I just kept thinking how fortunate I was. What a great chance this was! I thought ‘this can’t be happening’!"
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What comment do the students make about the development of each of the following items of sporting equipment? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "It could cause excessive sweating."
            },
            {
              "key": "B",
              "text": "The material was being mass produced for another purpose."
            },
            {
              "key": "C",
              "text": "People often needed to make their own."
            },
            {
              "key": "D",
              "text": "It often had to be replaced."
            },
            {
              "key": "E",
              "text": "The material was expensive."
            },
            {
              "key": "F",
              "text": "It was unpopular among spectators."
            },
            {
              "key": "G",
              "text": "It caused injuries."
            },
            {
              "key": "H",
              "text": "No one ring it liked it at first."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "the table tennis bat",
              "answer": "B",
              "explanation": "In about the 1920s, a factory was making rolls of the rubber in bulk for something like horse harnesses."
            },
            {
              "number": 26,
              "prompt": "the cricket helmet",
              "answer": "F",
              "explanation": "I’m just looking on the internet … and it says that when the first cricket helmet came in, in 1978, the Australian batsman who first wore it was booed and jeered by people watching because it was so ugly!"
            },
            {
              "number": 27,
              "prompt": "the cycle helmet",
              "answer": "A",
              "explanation": "It says serious cyclists ended up with wet hair from all the hard exercise."
            },
            {
              "number": 28,
              "prompt": "the golf club",
              "answer": "D",
              "explanation": "I remember my great grandfather telling me that because a club was made entirely of wood, it would easily break and players had to get another."
            },
            {
              "number": 29,
              "prompt": "the hockey stick",
              "answer": "C",
              "explanation": "What it does say here, though, is that when the game started you had to produce a stick yourself."
            },
            {
              "number": 30,
              "prompt": "the football",
              "answer": "G",
              "explanation": "You can imagine the damage to player’s necks when the ball was headed."
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
              "text": "What is maple syrup? made from the sap of the maple tree added to food or used in cooking colour described as"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "very",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "compared to refined sugar",
              "noBullet": true
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
              "text": "Today’s maple syrup"
            },
            {
              "kind": "subheader",
              "text": "The trees"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "The changing temperature and movement of water within the tree produces the sap."
            },
            {
              "kind": "subheader",
              "text": "The production"
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
              "kind": "static",
              "text": "The syrup is ready for use."
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
                "golden"
              ],
              "wordLimit": 1,
              "explanation": "Maple syrup is a thick, golden"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "healthy"
              ],
              "wordLimit": 1,
              "explanation": "it provides a healthy alternative to refined sugar."
            },
            {
              "number": 33,
              "prompt": "The maple tree has many species needs sunny days and cool nights maple leaf has been on the Canadian flag since 1964 needs moist soil but does not need fertiliser as well best growing conditions and _______ are in Canada and North America",
              "answer": [
                "climate"
              ],
              "wordLimit": 1,
              "explanation": "In these areas, the climate suits the trees perfectly."
            },
            {
              "number": 34,
              "prompt": "Early maple sugar producers made holes in the tree trunks used hot _______ to heat the sap used tree bark to make containers for collection sweetened food and drink with sugar",
              "answer": [
                "rock"
              ],
              "wordLimit": 1,
              "explanation": "/ rocks they boiled the liquid by placing pieces of rock that had become scorching hot from the sun into the sap."
            },
            {
              "number": 35,
              "prompt": "Tree trunks may not have the correct _______ until they have been growing for 40 years.",
              "answer": [
                "diameter"
              ],
              "wordLimit": 1,
              "explanation": "The trees have to be well looked after and they cannot be used to make syrup until the trunks reach a diameter of around 25 centimetres. This can take anything up to 40 years."
            },
            {
              "number": 36,
              "prompt": "A tap drilled into the trunk and a _______ carries the sap into a bucket.",
              "answer": [
                "tube"
              ],
              "wordLimit": 1,
              "explanation": "When the tree is ready, it can be tapped and this involves drilling a small hole into the trunk and inserting a tube into it that ends in a bucket."
            },
            {
              "number": 37,
              "prompt": "Large pans of sap called evaporators are heated by means of a _______ .",
              "answer": [
                "fire"
              ],
              "wordLimit": 1,
              "explanation": "These are basically extremely large pans - the sap is poured into these, a fire is built and the pans are then heated until the sap boils."
            },
            {
              "number": 38,
              "prompt": "A lot of _______ is produced during the evaporation process.",
              "answer": [
                "steam"
              ],
              "wordLimit": 1,
              "explanation": "The evaporation process creates large quantities of steam"
            },
            {
              "number": 39,
              "prompt": "‘Sugar sand’ is removed because it makes the syrup look _______ and affects the taste.",
              "answer": [
                "cloudy"
              ],
              "wordLimit": 1,
              "explanation": "After this process, something called ‘sugar sand’ has to be filtered out as this builds up during the boiling and gives the syrup a cloudy appearance and a slightly gritty taste."
            },
            {
              "number": 40,
              "prompt": "A huge quantity of sap is needed to make a _______ of maple syrup.",
              "answer": [
                "litre"
              ],
              "wordLimit": 1,
              "explanation": "/ liter It takes 40 litres of sap to produce one litre of maple syrup so you can get an idea of how much is needed!"
            }
          ],
          "formTitle": "Maple syrup",
          "id": "g31"
        }
      ]
    }
  ]
}
$c17t4l$,
  true
);
