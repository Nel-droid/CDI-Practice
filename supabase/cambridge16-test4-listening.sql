DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 16',
  'Test 4',
  'academic',
  2004,
  $c16t4l$
{
  "audioPath": "Cambridge 16 Test 4.mp3",
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
              "text": "Owner’s names: Jack Fitzgerald and Shirley Fitzgerald"
            },
            {
              "kind": "static",
              "text": "Granary Cottage available for week beginning"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "May cost for the week: £",
              "noBullet": true
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
              "text": "Cottage cost for the week: £480 building was originally a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "walk through doors from living room into a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "several",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "spaces at the front bathroom has a shower central heating and stove that burns",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "views of old",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "from living room view of hilltop",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "from the bedroom",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______",
              "answer": [
                "28th"
              ],
              "wordLimit": 1,
              "explanation": "It’s free the week beginning the 28th, though, for seven nights. In fact, that’s the only time you could have it in May."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "550"
              ],
              "wordLimit": 1,
              "explanation": "That’s the beginning of high season, so it’d be £550 for the week."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "Chervil"
              ],
              "wordLimit": 1,
              "explanation": "Well, we’ve just finished converting another building into a cottage, which we’re calling Chervil Cottage."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "garage"
              ],
              "wordLimit": 1,
              "explanation": "The building was built as a garage."
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "garden"
              ],
              "wordLimit": 1,
              "explanation": "Does it have a garden?"
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "The front door opens onto the old farmyard, and parking isn’t a problem - there’s plenty of room at the front for that."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "wood"
              ],
              "wordLimit": 1,
              "explanation": "There’s central heating, and if you want to light a fire, there’s a stove. We can provide all the wood you need for it."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "bridge"
              ],
              "wordLimit": 1,
              "explanation": "There’s a famous stone bridge - it’s one of the oldest in the region, and you can see it from the living room. It isn’t far away."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "monument"
              ],
              "wordLimit": 1,
              "explanation": "The bedroom window looks in the opposite direction, and has a lovely view of the hills and the monument at the top."
            },
            {
              "number": 10,
              "prompt": "Payment deposit: £144 deadline for final payment: end of _______",
              "answer": [
                "March"
              ],
              "wordLimit": 1,
              "explanation": "You’re coming in May, so the last day of March, please."
            }
          ],
          "formTitle": "Holiday rental",
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
              "prompt": "A survey found people’s main concern about traffic in the area was",
              "options": [
                {
                  "key": "A",
                  "text": "cuts to public transport."
                },
                {
                  "key": "B",
                  "text": "poor maintenance of roads."
                },
                {
                  "key": "C",
                  "text": "changes in the type of traffic."
                }
              ],
              "answer": "C",
              "explanation": "but a significant number of people complained about the increasing number of heavy vehicles using our local roads to avoid traffic elsewhere."
            },
            {
              "number": 12,
              "prompt": "Which change will shortly be made to the cycle path next to the river?",
              "options": [
                {
                  "key": "A",
                  "text": "It will be widened."
                },
                {
                  "key": "B",
                  "text": "It will be extended."
                },
                {
                  "key": "C",
                  "text": "It will be resurfaced."
                }
              ],
              "answer": "A",
              "explanation": "but overtaking can be a problem so we’re going to add a bit on the side to make it wider"
            },
            {
              "number": 13,
              "prompt": "Plans for a pedestrian crossing have been postponed because",
              "options": [
                {
                  "key": "A",
                  "text": "the Post Office has moved."
                },
                {
                  "key": "B",
                  "text": "the proposed location is unsafe."
                },
                {
                  "key": "C",
                  "text": "funding is not available at present."
                }
              ],
              "answer": "B",
              "explanation": "but the Highways Department have told us that it would be dangerous to have a pedestrian crossing where we’d originally planned it as there’s a bend in the road there."
            },
            {
              "number": 14,
              "prompt": "On Station Road, notices have been erected",
              "options": [
                {
                  "key": "A",
                  "text": "telling cyclists not to leave their bikes outside the station ticket office."
                },
                {
                  "key": "B",
                  "text": "asking motorists to switch off engines when waiting at the level crossing."
                },
                {
                  "key": "C",
                  "text": "warning pedestrians to leave enough time when crossing the railway line."
                }
              ],
              "answer": "B",
              "explanation": "On Station Road near the station and level crossing, drivers can face quite long waits if the level crossing’s closed, and we’ve now got signs up requesting them not to leave their engines running at that time."
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
              "prompt": "New car park",
              "answer": "C",
              "explanation": "this is quite dangerous for pedestrians so we’re suggesting a new car park on the opposite side of the Community Hall, right next to it."
            },
            {
              "number": 16,
              "prompt": "New cricket pitch",
              "answer": "F",
              "explanation": "As we’ve now purchased additional space to the east of the recreation ground, beyond the trees"
            },
            {
              "number": 17,
              "prompt": "Children’s playground",
              "answer": "A",
              "explanation": "We’ve got plans for a children’s playground which will be accessible by a footpath from the Community Hall and will be alongside the river"
            },
            {
              "number": 18,
              "prompt": "Skateboard ramp",
              "answer": "I",
              "explanation": "The skateboard ramp is very popular with both younger and older children - we had considered moving this up towards the river, but in the end we decided to have it in the southeast corner near the road."
            },
            {
              "number": 19,
              "prompt": "Pavilion",
              "answer": "E",
              "explanation": "The pavilion is very well used at present by both football players and cricketers. It will stay where it is now - to the left of the line of trees and near to the river"
            },
            {
              "number": 20,
              "prompt": "Notice board",
              "answer": "H",
              "explanation": "And finally, we’ll be getting a new notice board for local information, and that will be directly on people’s right as they go from the road into the recreation ground."
            }
          ],
          "mapImage": "Cambridge 16 Test 4 map.png",
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
          "instructions": "Choose TWO letters, A–E. Which TWO benefits of city bike-sharing schemes do the students agree are the most important?",
          "options": [
            {
              "key": "A",
              "text": "reducing noise pollution"
            },
            {
              "key": "B",
              "text": "reducing traffic congestion"
            },
            {
              "key": "C",
              "text": "improving air quality"
            },
            {
              "key": "D",
              "text": "encouraging health and fitness"
            },
            {
              "key": "E",
              "text": "making cycling affordable"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO benefits of city bike-sharing schemes do the students agree are the most important?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "I mean, doesn’t the impact of reduced emissions on air pollution have a more significant effect on people’s health? Certainly, in some cities bike- sharing had made a big contribution to that. And also helped to cut the number of cars on the road significantly."
            },
            {
              "number": 22,
              "prompt": "Which TWO benefits of city bike-sharing schemes do the students agree are the most important?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "I mean, doesn’t the impact of reduced emissions on air pollution have a more significant effect on people’s health? Certainly, in some cities bike- sharing had made a big contribution to that. And also helped to cut the number of cars on the road significantly."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO things do the students think are necessary for successful bike-sharing schemes?",
          "options": [
            {
              "key": "A",
              "text": "Bikes should have a GPS system."
            },
            {
              "key": "B",
              "text": "The app should be easy to use."
            },
            {
              "key": "C",
              "text": "Public awareness should be raised."
            },
            {
              "key": "D",
              "text": "Only one scheme should be available."
            },
            {
              "key": "E",
              "text": "There should be a large network of cycle lanes."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO things do the students think are necessary for successful bike-sharing schemes?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "But some technical things are really important - like a fully functional app - so people can make payments and book bikes easily What does matter though - is having a big publicity campaign."
            },
            {
              "number": 24,
              "prompt": "Which TWO things do the students think are necessary for successful bike-sharing schemes?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "But some technical things are really important - like a fully functional app - so people can make payments and book bikes easily What does matter though - is having a big publicity campaign."
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What is the speakers’ opinion of the bike-sharing schemes in each of the following cities? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "They agree it has been disappointing."
            },
            {
              "key": "B",
              "text": "They think it should be cheaper."
            },
            {
              "key": "C",
              "text": "They are surprised it has been so successful."
            },
            {
              "key": "D",
              "text": "They agree that more investment is required."
            },
            {
              "key": "E",
              "text": "They think the system has been well designed."
            },
            {
              "key": "F",
              "text": "They disagree about the reasons for its success."
            },
            {
              "key": "G",
              "text": "They think it has expanded too quickly."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Amsterdam",
              "answer": "C",
              "explanation": "In a way it’s strange that there was such a demand for bike-sharing because you’d have thought most people would have used their own bikes."
            },
            {
              "number": 26,
              "prompt": "Dublin",
              "answer": "F",
              "explanation": "It must be because the public transport system’s quite limited."
            },
            {
              "number": 27,
              "prompt": "London",
              "answer": "D",
              "explanation": "Basically, not enough’s been spent on increasing the number of cycle lanes."
            },
            {
              "number": 28,
              "prompt": "Buenos Aires",
              "answer": "E",
              "explanation": "An example of good planning."
            },
            {
              "number": 29,
              "prompt": "New York",
              "answer": "B",
              "explanation": "More than it costs to take a taxi, Crazy."
            },
            {
              "number": 30,
              "prompt": "Sydney",
              "answer": "A",
              "explanation": "I would have expected it to have grown pretty quickly here."
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
              "text": "The dodo was a large flightless bird which used to inhabit the island of Mauritius."
            },
            {
              "kind": "subheader",
              "text": "History"
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
              "text": "They killed the dodo birds for their meat."
            },
            {
              "kind": "static",
              "text": "The last one was killed in 1681."
            },
            {
              "kind": "subheader",
              "text": "Description"
            },
            {
              "kind": "static",
              "text": "The only record we have is written descriptions and pictures (possibly unreliable)."
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
              "kind": "subheader",
              "text": "Reasons for extinction"
            },
            {
              "kind": "static",
              "text": "Hunting was probably not the main cause."
            },
            {
              "kind": "static",
              "text": "Sailors brought dogs and monkeys."
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
              "prompt": "1507 - Portuguese ships transporting _______ stopped at the island to collect food and water.",
              "answer": [
                "spice"
              ],
              "wordLimit": 1,
              "explanation": "/ spices The sailors were carrying spices back to Europe"
            },
            {
              "number": 32,
              "prompt": "1638 - The Dutch established a _______ on the island.",
              "answer": [
                "colony"
              ],
              "wordLimit": 1,
              "explanation": "/ settlement However, in 1683 the Dutch arrived and set up a colony there."
            },
            {
              "number": 33,
              "prompt": "A Dutch painting suggests the dodo was very _______ .",
              "answer": [
                "fat"
              ],
              "wordLimit": 1,
              "explanation": "The best-known picture is a Dutch painting in which the bird appears to be extremely fat, but this may not be accurate - an Indian painting done at the same time shows a much thinner bird."
            },
            {
              "number": 34,
              "prompt": "The only remaining soft tissue is a dried _______ .",
              "answer": [
                "head"
              ],
              "wordLimit": 1,
              "explanation": "of these, three have disappeared, so only one example of soft tissue from the dodo survives, a dodo head."
            },
            {
              "number": 35,
              "prompt": "Recent studies of a dodo skeleton suggest the birds were capable of rapid _______",
              "answer": [
                "movement"
              ],
              "wordLimit": 1,
              "explanation": "but scientists now believe the bird’s strong knee joints would have made it capable of movement which was not slow, but actually quite fast."
            },
            {
              "number": 36,
              "prompt": "It’s thought they were able to use their small wings to maintain _______ .",
              "answer": [
                "balance"
              ],
              "wordLimit": 1,
              "explanation": "/ balancing but the scientists suggest that these were probably employed for balance while going over uneven ground."
            },
            {
              "number": 37,
              "prompt": "Their _______ was of average size.",
              "answer": [
                "brain"
              ],
              "wordLimit": 1,
              "explanation": "which suggested the bird’s brain was not small"
            },
            {
              "number": 38,
              "prompt": "Their sense of _______ enabled them to find food.",
              "answer": [
                "smell"
              ],
              "wordLimit": 1,
              "explanation": "The researchers also found that the structure of the bird’s skull suggested that one sense which was particularly well-developed was that of smell."
            },
            {
              "number": 39,
              "prompt": "_______ also escaped onto the island and ate the birds’ eggs.",
              "answer": [
                "rats"
              ],
              "wordLimit": 1,
              "explanation": "These were brought to the island deliberately, but the ships also brought another type of creature - rats, which came to land from the ships and rapidly overran the island."
            },
            {
              "number": 40,
              "prompt": "The arrival of farming meant the _______ was destroyed.",
              "answer": [
                "forest"
              ],
              "wordLimit": 1,
              "explanation": "This meant that the forest that has once covered all the island, and that had provided a perfect home for the dodo, was cut down so that crops such as sugar could be grown."
            }
          ],
          "formTitle": "THE EXTINCTION OF THE DODO BIRD",
          "id": "g31"
        }
      ]
    }
  ]
}
$c16t4l$,
  true
);
