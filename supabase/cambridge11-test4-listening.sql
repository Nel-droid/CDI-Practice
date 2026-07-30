DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 11' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 11',
  'Test 4',
  'academic',
  2004,
  $c11t4l$
{
  "audioPath": "Cambridge 11 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formTitle": "Fingle Village Festival",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Jazz band"
            },
            {
              "kind": "static",
              "text": "Cost: tickets available for £15 (example)"
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
              "text": "Duck races"
            },
            {
              "kind": "static",
              "text": "Cost: £1 per duck"
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
              "text": "Flower show"
            },
            {
              "kind": "static",
              "text": "Cost: free"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Venue: the _______ school",
              "answer": [
                "secondary"
              ],
              "wordLimit": 1,
              "explanation": "Yes, that’s right, the secondary school."
            },
            {
              "number": 2,
              "prompt": "Notes: also appearing — Carolyn Hart (plays the _______)",
              "answer": [
                "flute"
              ],
              "wordLimit": 1,
              "explanation": "Yes the flute."
            },
            {
              "number": 3,
              "prompt": "Venue: start behind the _______",
              "answer": [
                "cinema"
              ],
              "wordLimit": 1,
              "explanation": "All the ducks will be launched into the river at the back of the cinema"
            },
            {
              "number": 4,
              "prompt": "Notes: prize is tickets for a _______ held at the end of the festival",
              "answer": [
                "concert"
              ],
              "wordLimit": 1,
              "explanation": "Yes, the first duck in each race to arrive at the finishing line wins its owner free tickets for the concert on the last night of the festival."
            },
            {
              "number": 5,
              "prompt": "Ducks can be bought in the _______",
              "answer": [
                "market"
              ],
              "wordLimit": 1,
              "explanation": "They’re on sale at a stall in the market"
            },
            {
              "number": 6,
              "prompt": "Venue: _______ Hall",
              "answer": [
                "Bythwaite"
              ],
              "wordLimit": 1,
              "explanation": "Well, admission is free, and the show is being held in Bythwaite Hall."
            },
            {
              "number": 7,
              "prompt": "Notes: prizes presented at 5 pm by a well-known _______",
              "answer": [
                "actor"
              ],
              "wordLimit": 1,
              "explanation": "The prizes are being given by a famous actor, Kevin Shapless"
            }
          ],
          "id": "g1"
        },
        {
          "type": "matching",
          "label": "Questions 8–10",
          "instructions": "Who is each play suitable for? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "mainly for children"
            },
            {
              "key": "B",
              "text": "mainly for adults"
            },
            {
              "key": "C",
              "text": "suitable for people of all ages"
            }
          ],
          "questions": [
            {
              "number": 8,
              "prompt": "The Mystery of Muldoon",
              "answer": "A",
              "explanation": "That’s aimed at five to ten-year-olds."
            },
            {
              "number": 9,
              "prompt": "Fire and Flood",
              "answer": "B",
              "explanation": "If you’d like something for yourself and your husband and leave your children with a babysitter, you might like to see ‘Fire and Flood’"
            },
            {
              "number": 10,
              "prompt": "Silly Sailor",
              "answer": "C",
              "explanation": "That’s a comedy, and it’s for young and old."
            }
          ],
          "id": "g8"
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
          "instructions": "What does the speaker say about each of the following collections? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "was given by one person"
            },
            {
              "key": "B",
              "text": "was recently publicised in the media"
            },
            {
              "key": "C",
              "text": "includes some items given by members of the public"
            },
            {
              "key": "D",
              "text": "includes some items given by the artists"
            },
            {
              "key": "E",
              "text": "includes the most popular exhibits in the museum"
            },
            {
              "key": "F",
              "text": "is the largest of its kind in the country"
            },
            {
              "key": "G",
              "text": "has had some of its contents relocated"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "20th- and 21st-century paintings",
              "answer": "E",
              "explanation": "This is the gallery that attracts the largest number of visitors"
            },
            {
              "number": 12,
              "prompt": "19th-century paintings",
              "answer": "D",
              "explanation": "several of the artists each donated one work"
            },
            {
              "number": 13,
              "prompt": "Sculptures",
              "answer": "G",
              "explanation": "a number of the sculptures have been moved to other parts of the museum."
            },
            {
              "number": 14,
              "prompt": "‘Around the world’ exhibition",
              "answer": "B",
              "explanation": "‘Around the world’ is a temporary exhibition - you’ve probably seen something about it on TV or in the newspapers"
            },
            {
              "number": 15,
              "prompt": "Coins",
              "answer": "C",
              "explanation": "And many of them were discovered by ordinary people digging their gardens and donated to the museum!"
            },
            {
              "number": 16,
              "prompt": "Porcelain and glass",
              "answer": "A",
              "explanation": "All our porcelain and glass we left to the museum by its founder"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "Label the plan below. Write the correct letter, A–H, next to Questions 17–20.",
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
              "number": 17,
              "prompt": "restaurant",
              "answer": "F",
              "explanation": "To reach it, when you get to the bottom of the stairs, go straight ahead to the far side of the sitting area, then turn right into the corridor. You’ll see the door on the restaurant facing you."
            },
            {
              "number": 18,
              "prompt": "café",
              "answer": "H",
              "explanation": "When you reach the bottom of the stairs, you’ll need to go straight ahead, turn right into the corridor, and the café is immediately on the right."
            },
            {
              "number": 19,
              "prompt": "baby-changing facilities",
              "answer": "C",
              "explanation": "there are baby-changing facilities downstairs: cross the sitting area, continue straight ahead along the corridor on the left and you and your body will find the facilities on the left-hand side."
            },
            {
              "number": 20,
              "prompt": "cloakroom",
              "answer": "B",
              "explanation": "The cloakroom where you should leave coats, umbrella and any large bags, is on the left hand side of the sitting area. It’s through the last door before you come to the corridor."
            }
          ],
          "mapImage": "Cambridge 11 Test 4 map.png",
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
          "instructions": "Choose TWO letters, A–E. Which TWO characteristics were shared by the subjects of Joanna’s psychology study?",
          "options": [
            {
              "key": "A",
              "text": "They had all won prizes for their music."
            },
            {
              "key": "B",
              "text": "They had all made music recordings."
            },
            {
              "key": "C",
              "text": "They were all under 27 years old."
            },
            {
              "key": "D",
              "text": "They had all toured internationally."
            },
            {
              "key": "E",
              "text": "They all played a string instrument."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO characteristics were shared by the subjects of Joanna’s psychology study?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "they’d done quite extensive tours in different continents I wasn’t specifically look for artists who’d produced recordings, but this is something that’s just taken for granted these days, and they all had."
            },
            {
              "number": 22,
              "prompt": "Which TWO characteristics were shared by the subjects of Joanna’s psychology study?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "they’d done quite extensive tours in different continents I wasn’t specifically look for artists who’d produced recordings, but this is something that’s just taken for granted these days, and they all had."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO points does Joanna make about her use of telephone interviews?",
          "options": [
            {
              "key": "A",
              "text": "It meant rich data could be collected."
            },
            {
              "key": "B",
              "text": "It allowed the involvement of top performers."
            },
            {
              "key": "C",
              "text": "It led to a stressful atmosphere at times."
            },
            {
              "key": "D",
              "text": "It meant interview times had to be limited."
            },
            {
              "key": "E",
              "text": "It caused some technical problems."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO points does Joanna make about her use of telephone interviews?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "I realised if I was going to interview leading musicians it’s only be possible over the phone because they’re so busy And I don’t think using the phone meant I got less rich data rather the opposite in fact."
            },
            {
              "number": 24,
              "prompt": "Which TWO points does Joanna make about her use of telephone interviews?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "I realised if I was going to interview leading musicians it’s only be possible over the phone because they’re so busy And I don’t think using the phone meant I got less rich data rather the opposite in fact."
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO topics did Joanna originally intend to investigate in her research? === PAGE 6 ===",
          "options": [
            {
              "key": "A",
              "text": "regulations concerning concert dress"
            },
            {
              "key": "B",
              "text": "audience reactions to the dress of performers"
            },
            {
              "key": "C",
              "text": "changes in performer attitudes to concert dress"
            },
            {
              "key": "D",
              "text": "how choice of dress relates to performer roles"
            },
            {
              "key": "E",
              "text": "links between musical instrument and dress choice"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO topics did Joanna originally intend to investigate in her research? === PAGE 6 ===",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "When I started I was more interested in trying to investigate the impact of what was worn on those listening whether someone like a violinist might adopt a different style of clothing from, say, someone playing the flute or the trumpet"
            },
            {
              "number": 26,
              "prompt": "Which TWO topics did Joanna originally intend to investigate in her research? === PAGE 6 ===",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "When I started I was more interested in trying to investigate the impact of what was worn on those listening whether someone like a violinist might adopt a different style of clothing from, say, someone playing the flute or the trumpet"
            }
          ],
          "id": "g25"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 27–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 27,
              "prompt": "Joanna concentrated on women performers because",
              "options": [
                {
                  "key": "A",
                  "text": "women are more influenced by fashion."
                },
                {
                  "key": "B",
                  "text": "women’s dress has led to more controversy."
                },
                {
                  "key": "C",
                  "text": "women’s code of dress is less strict than men’s."
                }
              ],
              "answer": "C",
              "explanation": "in social terms the choices they have are more limited … they’d really upset audiences if they strayed away from quite narrow boundaries."
            },
            {
              "number": 28,
              "prompt": "Mike Frost’s article suggests that in popular music, women’s dress is affected by",
              "options": [
                {
                  "key": "A",
                  "text": "their wish to be taken seriously."
                },
                {
                  "key": "B",
                  "text": "their tendency to copy each other."
                },
                {
                  "key": "C",
                  "text": "their reaction to the masculine nature of the music."
                }
              ],
              "answer": "A",
              "explanation": "he suggests this is because otherwise they’d just be discounted as trivial."
            },
            {
              "number": 29,
              "prompt": "What did Joanna’s subjects say about the audience at a performance?",
              "options": [
                {
                  "key": "A",
                  "text": "The musicians’ choice of clothing is linked to respect for the audience."
                },
                {
                  "key": "B",
                  "text": "The clothing should not distract the audience from the music."
                },
                {
                  "key": "C",
                  "text": "The audience should make the effort to dress appropriately."
                }
              ],
              "answer": "A",
              "explanation": "They believed the audience had certain expectations and it was up to them as performers to fulfil these expectations to show a kind of esteem …"
            },
            {
              "number": 30,
              "prompt": "According to the speakers, musicians could learn from sports scientists about",
              "options": [
                {
                  "key": "A",
                  "text": "the importance of clothing for physical freedom."
                },
                {
                  "key": "B",
                  "text": "the part played by clothing in improving performance."
                },
                {
                  "key": "C",
                  "text": "the way clothing may protect against physical injury."
                }
              ],
              "answer": "C",
              "explanation": "I’d imagine some features of sports clothing could safeguard the players from the potentially dangerous effects of this sort of thing."
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
              "kind": "static",
              "text": "Rattan Lal:"
            },
            {
              "kind": "static",
              "text": "Claims that 13% of CO2 in the atmosphere could be absorbed by agricultural soils"
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
              "text": "It was suggested that carbon from soil was entering the atmosphere"
            },
            {
              "kind": "static",
              "text": "Soil and carbon: plants turn CO2 from the air into carbon-based substances such as"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "some CO2 moves from the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "of plants to microbes in the soil carbon was lost from the soil when agriculture was invented",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Regenerative agriculture: uses established practices to make sure soil remains fertile and"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "e.g. through year-round planting and increasing the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "of plants that are grown",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "California study: taking place on a big"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "farm uses compost made from waste from agriculture and",
              "noBullet": true
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
              "prompt": "Erosion is more likely in soil that is _______",
              "answer": [
                "dry"
              ],
              "wordLimit": 1,
              "explanation": "erosion can occur if soil is dry"
            },
            {
              "number": 32,
              "prompt": "Lai found soil in Africa that was very _______",
              "answer": [
                "hard"
              ],
              "wordLimit": 1,
              "explanation": "Lal was studying soils in Africa so devoid of organic matter that the ground had become extremely hard"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "sugar"
              ],
              "wordLimit": 1,
              "explanation": "/ sugars Plants absorb CO2 from the air and transform it into sugars and other carbon-based substance."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "roots"
              ],
              "wordLimit": 1,
              "explanation": "some transfer from the roots to fungi and soil microbes"
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "moist"
              ],
              "wordLimit": 1,
              "explanation": "/ damp / wet This aims to boost the fertility of soil and keep it moist through established practices."
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "variety"
              ],
              "wordLimit": 1,
              "explanation": "increasing the variety of plants being grown"
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "cattle"
              ],
              "wordLimit": 1,
              "explanation": "a first-of-its-kind study on a large cattle farm in the state"
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "gardens"
              ],
              "wordLimit": 1,
              "explanation": "/ gardening waste produced in gardens"
            },
            {
              "number": 39,
              "prompt": "Australia study: aims to increase soil carbon by using _______ that are always green",
              "answer": [
                "grasses"
              ],
              "wordLimit": 1,
              "explanation": "working to build up soil carbon by cultivating grasses that stay green all year round."
            },
            {
              "number": 40,
              "prompt": "Future developments may include: reducing the amount of fertilizer used in farming giving farmers _______ for carbon storage, as well as their produce",
              "answer": [
                "payment"
              ],
              "wordLimit": 1,
              "explanation": "/ payments / money farmers should receive payment not just for the corn or beef they produce but also for the carbon they can store in their soil."
            }
          ],
          "formTitle": "The use of soil to reduce carbon dioxide (CO2) in the atmosphere",
          "id": "g31"
        }
      ]
    }
  ]
}
$c11t4l$,
  true
);
