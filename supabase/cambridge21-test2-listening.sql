DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 21',
  'Test 2',
  'academic',
  2004,
  $c21t2l$
{
  "audioPath": "Cambridge 21 Test 2.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Vietnamese food"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "It provides information on the use of herbs."
            },
            {
              "kind": "static",
              "text": "There are no places at present."
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "There is also an extra charge for ingredients."
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "Face massage 23 February £35"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "Candle making"
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
              "text": "The candles can be used as presents."
            },
            {
              "kind": "static",
              "text": "Silk painting 18 May £"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "Bring an apron or old",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "DIY for beginners 24 February £125"
            },
            {
              "kind": "subheader",
              "text": "Learn how to"
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "• put up a shelf."
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______ £59",
              "answer": [
                "13"
              ],
              "wordLimit": 1,
              "explanation": "(th) January / January 13(th) / 13.01 / 13.1 I remember there was one on how to make Vietnamese food that sounded good. I think that was on the 13th of January. It cost about 60 pounds Yes, you’re right about the date, but it’s 59 pounds actually"
            },
            {
              "number": 2,
              "prompt": "Bread making 20 March £ _______",
              "answer": [
                "48"
              ],
              "wordLimit": 1,
              "explanation": "The actual cost is £48 but then there’s an extra charge as well as that for the ingredients - I’m not sure how much that is, no more than twenty pounds I think"
            },
            {
              "number": 3,
              "prompt": "Participants make white bread, sourdough and _______",
              "answer": [
                "pizza"
              ],
              "wordLimit": 1,
              "explanation": "Oh, various types of bread; I think they make white bread and then they make sourdough, that seems to be very fashionable at present, and they learn how to make pizza, which is apparently really good"
            },
            {
              "number": 4,
              "prompt": "The teacher trained in _______",
              "answer": [
                "India"
              ],
              "wordLimit": 1,
              "explanation": "The teacher’s great, the type of massage done is a traditional technique used in India and she actually did her training there"
            },
            {
              "number": 5,
              "prompt": "Bring a _______",
              "answer": [
                "mirror"
              ],
              "wordLimit": 1,
              "explanation": "You practise it on yourself so you have to take a mirror to the class, so you can see what you’re doing"
            },
            {
              "number": 6,
              "prompt": "_______ £52",
              "answer": [
                "6"
              ],
              "wordLimit": 1,
              "explanation": "(th) April / April 6(th) / 06.04 / 6.4 Yes that’s sometime in April, I think. Let me check yes, it’s on the 6th. It was on the 23rd of January but they had to change the date"
            },
            {
              "number": 7,
              "prompt": "Only _______ ingredients are used.",
              "answer": [
                "natural"
              ],
              "wordLimit": 1,
              "explanation": "I think one reason why people like it is because the candles are all made out of natural products"
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "67.50"
              ],
              "wordLimit": 1,
              "explanation": "By the way, have you heard about the class on silk painting? That’s being held on the 18th of May. You learn how to create designs on silk fabric and colour them using special dyes. Apparently people can produce beautiful artworks that way, either to put on the wall as a picture or to use for something like a scarf. It’s £67.50, which is really good value I think - there’s a similar class I’ve seen that was £110"
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "shirt"
              ],
              "wordLimit": 1,
              "explanation": "MAN: No, the only thing is everyone has to bring something to protect their clothing, like an apron if you’ve got one, or a shirt that you don’t use any more, because the dye can really stain your clothes"
            },
            {
              "number": 10,
              "prompt": "• use a drill, saw and _______",
              "answer": [
                "hammer"
              ],
              "wordLimit": 1,
              "explanation": "MAN: That’s on the 24th of February - yes, there are a few places. It’s a bit more expensive - it’s £125 - but it’s a very popular class. You learn how to use an electric drill and a saw. WOMAN: Yeah, that would be really useful, and I even need to learn how to use a hammer because I always end up hitting my fingers. MAN: Yes, you’ll do that too"
            }
          ],
          "formTitle": "Course Date Cost Notes",
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
          "instructions": "Choose TWO letters, A–E. Which TWO pieces of advice are given about the Marsden Coastal Walk?",
          "options": [
            {
              "key": "A",
              "text": "Stop for lunch in an ancient town."
            },
            {
              "key": "B",
              "text": "Don't miss the ruins of a certain building."
            },
            {
              "key": "C",
              "text": "Catch a boat to the start of this walk."
            },
            {
              "key": "D",
              "text": "Be careful of the steep and rocky paths."
            },
            {
              "key": "E",
              "text": "Don't worry about getting lost."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO pieces of advice are given about the Marsden Coastal Walk?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "As there are clear signposts all along the way, you don’t even need to take a map with you. At one point, the route goes inland slightly and passes a castle built in the 1400s near to a now-vanished market town. The castle’s now just a pile of stones but it’s a great place to take photos, and fascinating information boards show what it once looked like"
            },
            {
              "number": 12,
              "prompt": "Which TWO pieces of advice are given about the Marsden Coastal Walk?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "As there are clear signposts all along the way, you don’t even need to take a map with you. At one point, the route goes inland slightly and passes a castle built in the 1400s near to a now-vanished market town. The castle’s now just a pile of stones but it’s a great place to take photos, and fascinating information boards show what it once looked like"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO things are said about the Melby Heritage Walk?",
          "options": [
            {
              "key": "A",
              "text": "This walk is mostly downhill."
            },
            {
              "key": "B",
              "text": "The paths can get busy during the day."
            },
            {
              "key": "C",
              "text": "This is a circular walk."
            },
            {
              "key": "D",
              "text": "A tower stands on the site of an older structure."
            },
            {
              "key": "E",
              "text": "There are far-reaching views the whole way."
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO things are said about the Melby Heritage Walk?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "At the highest point, you can stop to take in the views, and those with lots of energy can climb the tower that’s situated where there was once a seventeenth century hunting lodge. The route continues along the tops of the hills and brings you back down to the starting point - the car park at Melby Coal Mine"
            },
            {
              "number": 14,
              "prompt": "Which TWO things are said about the Melby Heritage Walk?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "At the highest point, you can stop to take in the views, and those with lots of energy can climb the tower that’s situated where there was once a seventeenth century hunting lodge. The route continues along the tops of the hills and brings you back down to the starting point - the car park at Melby Coal Mine"
            }
          ],
          "id": "g13"
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
              "prompt": "Exhibition",
              "answer": "F",
              "explanation": "Go through the ticket office to an area where there are lockers to leave heavy bags in, and where you can borrow raincoats. Beyond that room is the exhibition"
            },
            {
              "number": 16,
              "prompt": "Baths",
              "answer": "B",
              "explanation": "There’s a small bathhouse where miners used to wash after their shift underground. You can see that in the building directly to the north of the engine house. The boiler has gone from there now, but there are lines of tin baths on the stone floor"
            },
            {
              "number": 17,
              "prompt": "Tools",
              "answer": "D",
              "explanation": "There’s a display of early mining tools from the days before mechanisation. You can find that in a small L-shaped building in the middle of the northern boundary of the site"
            },
            {
              "number": 18,
              "prompt": "Vehicles",
              "answer": "A",
              "explanation": "The vehicle shed, where you can find wagons of different sizes, along with some of the hi-tech cutting machines that were in use until the mine closed, is in the southwest corner of the site, and can be accessed via a covered walkway"
            },
            {
              "number": 19,
              "prompt": "Ponies",
              "answer": "H",
              "explanation": "There is a field with ponies, which are always popular with children, on the north-eastern boundary of the site, not approached via a covered walkway"
            },
            {
              "number": 20,
              "prompt": "Education centre",
              "answer": "E",
              "explanation": "The centre is connected to the ticket office via a short section of covered walkway"
            }
          ],
          "mapImage": "Cambridge 21 Test 2 map.png",
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
          "instructions": "Choose TWO letters, A–E. Which TWO facts in the sessions on food safety were new information for Nadia and Fergus?",
          "options": [
            {
              "key": "A",
              "text": "the amount of plastic in the ocean"
            },
            {
              "key": "B",
              "text": "the number of diseases caused by contaminated food"
            },
            {
              "key": "C",
              "text": "the amount of food that is wasted"
            },
            {
              "key": "D",
              "text": "the number of people who are obese"
            },
            {
              "key": "E",
              "text": "the result of treating animals with antibiotics"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO facts in the sessions on food safety were new information for Nadia and Fergus?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "FERGUS: Yeah, that’s been in the news a lot. But I hadn’t realised that unsafe food causes more than 200 different diseases. NADIA: No, I’d no idea it was that many. And speaking of diseases, I knew resistance to antibiotics is on the increase, but I didn’t know why FERGUS that it’s partly because when animals are treated with antibiotics then consumed by humans, the antibiotics get into the food chain. I had no idea about that either"
            },
            {
              "number": 22,
              "prompt": "Which TWO facts in the sessions on food safety were new information for Nadia and Fergus?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "FERGUS: Yeah, that’s been in the news a lot. But I hadn’t realised that unsafe food causes more than 200 different diseases. NADIA: No, I’d no idea it was that many. And speaking of diseases, I knew resistance to antibiotics is on the increase, but I didn’t know why FERGUS that it’s partly because when animals are treated with antibiotics then consumed by humans, the antibiotics get into the food chain. I had no idea about that either"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO features of a project aiming to prevent food fraud impressed Fergus?",
          "options": [
            {
              "key": "A",
              "text": "the new technology it used"
            },
            {
              "key": "B",
              "text": "the publicity it received"
            },
            {
              "key": "C",
              "text": "the use of multiple tests on food items"
            },
            {
              "key": "D",
              "text": "the variety of dietary requirements included"
            },
            {
              "key": "E",
              "text": "the way information was made widely accessible"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO features of a project aiming to prevent food fraud impressed Fergus?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "I thought it was really good to address a problem that’s faced by so many different groups - people with special religious rules, as well as vegetarians and vegans But what the researchers succeeded in doing was to ensure that these tests were carried out at different stages in the food’s journey from the producer to the consumer"
            },
            {
              "number": 24,
              "prompt": "Which TWO features of a project aiming to prevent food fraud impressed Fergus?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "I thought it was really good to address a problem that’s faced by so many different groups - people with special religious rules, as well as vegetarians and vegans But what the researchers succeeded in doing was to ensure that these tests were carried out at different stages in the food’s journey from the producer to the consumer"
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO topics do both students recommend should be included in the course?",
          "options": [
            {
              "key": "A",
              "text": "sustainable fishing"
            },
            {
              "key": "B",
              "text": "targeted nutrition"
            },
            {
              "key": "C",
              "text": "global differences in consumption"
            },
            {
              "key": "D",
              "text": "sustainable agriculture"
            },
            {
              "key": "E",
              "text": "digital technology and food"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO topics do both students recommend should be included in the course?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "FERGUS: But we’ve already done quite a bit on that - but not so much on the seafood industry, where stocks are in danger of being overexploited as a food source unless we can find ways of keeping stocks up. NADIA: Yes, that’d be a good topic NADIA: OK. What about sessions on the variety of food and eating habits around the world? That’s very relevant nowadays. FERGUS: Yes, I think the whole class would be interested in that"
            },
            {
              "number": 26,
              "prompt": "Which TWO topics do both students recommend should be included in the course?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "FERGUS: But we’ve already done quite a bit on that - but not so much on the seafood industry, where stocks are in danger of being overexploited as a food source unless we can find ways of keeping stocks up. NADIA: Yes, that’d be a good topic NADIA: OK. What about sessions on the variety of food and eating habits around the world? That’s very relevant nowadays. FERGUS: Yes, I think the whole class would be interested in that"
            }
          ],
          "id": "g25"
        },
        {
          "type": "completion",
          "label": "Questions 27–30",
          "instructions": "Complete the flow-chart below. Choose FOUR answers from the box, A–F.",
          "summaryTitle": "",
          "summaryText": "Student project: developing a new food product\nInitial aim\n{27} Literature review\n{28} Product development\n{29} Product production\n{30} A. This was challenging but enjoyable.B. This led to some disagreement.\nC. This was easy to decide on.D. This was helped by the guidelines provided.\nE. This seemed like an unnecessary stage.\n\nF. This involved selecting a new ingredient.",
          "wordBank": null,
          "questions": [
            {
              "number": 27,
              "prompt": "",
              "answer": "C",
              "explanation": "We made up our minds about that pretty quickly. I know some students found it a lot harder to choose, and wasted a lot of time"
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "D",
              "explanation": "NADIA: Then we had to do the literature review. We hadn’t done one of these before so, the handout with advice for the project was very useful here. FERGUS: Yes, especially the advice on how to present the information"
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "F",
              "explanation": "Then product development, actually deciding what we’d use to make the falafel, and for me the interesting thing about that was that we wanted it to be something a bit different from an ordinary falafel. NADIA: We really made the right choice when we finally decided to use jackfruit, even though it wasn’t something that either of us had ever tasted before"
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "A",
              "explanation": "The product production, working out how to make the falafel, was harder than I expected because I’d never made them before we just moved on and kept adapting it and in the end it turned out fine and we had a lot of fun"
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
              "text": "Problems with overtourism"
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
              "text": "Barcelona."
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
              "text": "Problems of perception"
            },
            {
              "kind": "static",
              "text": "• Cruises are generally associated with the elderly."
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "subheader",
              "text": "Solutions"
            },
            {
              "kind": "static",
              "text": "Cruise lines are attracting younger customers by:"
            },
            {
              "kind": "static",
              "text": "• becoming more sustainable e.g. using hybrid engines."
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
              "prompt": "• _______ is one of the worst problems.",
              "answer": [
                "Pollution"
              ],
              "wordLimit": 1,
              "explanation": "Pollution, for example, is among the greatest threats to many popular tourist destinations"
            },
            {
              "number": 32,
              "prompt": "• A tourist _______ is being introduced in some cities to reduce numbers, e.g.",
              "answer": [
                "tax"
              ],
              "wordLimit": 1,
              "explanation": "Several cities, such as Barcelona, have responded by imposing a tax which all visitors to the city from cruise ships have to pay"
            },
            {
              "number": 33,
              "prompt": "• Bruges: action was taken to limit day trips from the nearby port because the city was becoming a 'theme park' (e.g. many shops were only stocking _______ and souvenirs).",
              "answer": [
                "chocolate"
              ],
              "wordLimit": 1,
              "explanation": "The city was becoming like a ‘theme park’, with shops only catering for tourists, selling chocolate, which Belgium is famous for, and other souvenirs"
            },
            {
              "number": 34,
              "prompt": "• Dubrovnik: limits the number of tourists by managing the _______ of cruise ship arrivals.",
              "answer": [
                "timing"
              ],
              "wordLimit": 1,
              "explanation": "What it does now is control the timing of all cruise ship entries to the city’s port"
            },
            {
              "number": 35,
              "prompt": "• There is an assumption about the _______ of cruises.",
              "answer": [
                "cost"
              ],
              "wordLimit": 1,
              "explanation": "A recent survey showed that cost is also a major factor in putting younger groups off going on a cruise"
            },
            {
              "number": 36,
              "prompt": "• People think there may be too many _______ .",
              "answer": [
                "rules"
              ],
              "wordLimit": 1,
              "explanation": "And another perception is that cruises have lots of rules about what to wear and how to behave"
            },
            {
              "number": 37,
              "prompt": "• having a wide range of activities e.g. boxing, _______ and well-being programmes.",
              "answer": [
                "diving"
              ],
              "wordLimit": 1,
              "explanation": "There’s even a boxing ring on one ship, and most offer diving expeditions. But there’s also a huge focus on well-being with a variety of sessions of different kinds"
            },
            {
              "number": 38,
              "prompt": "• offering a diverse selection of food including _______ options.",
              "answer": [
                "vegan"
              ],
              "wordLimit": 1,
              "explanation": "Food is always a very important part of any cruise and cruise ships have had to radically update their menus to suit the tastes of their younger customers. Vegan dishes are standard, for example"
            },
            {
              "number": 39,
              "prompt": "• providing reliable _______ .",
              "answer": [
                "wifi"
              ],
              "wordLimit": 1,
              "explanation": "/ wi-fi Many people going on longer cruises also spend time working, so companies have to guarantee wifi that can be relied upon at all times"
            },
            {
              "number": 40,
              "prompt": "• improving marketing on social media with high quality _______ .",
              "answer": [
                "videos"
              ],
              "wordLimit": 1,
              "explanation": "Leading cruise lines now employ top agencies to produce first rate videos for social media channels"
            }
          ],
          "formTitle": "Challenges facing the cruise ship industry",
          "id": "g31"
        }
      ]
    }
  ]
}
$c21t2l$,
  true
);
