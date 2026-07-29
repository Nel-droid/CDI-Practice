DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 12' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 12',
  'Test 1',
  'academic',
  2004,
  $c12t1l$
{
  "audioPath": "Cambridge 12 Test 1.mp3",
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
              "text": "Cruise on a lake"
            },
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "Travel on an old …..steamship….."
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Farm visit"
            },
            {
              "kind": "subheader",
              "text": "Children can help feed the sheep"
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
              "text": "Cycling trips"
            },
            {
              "kind": "subheader",
              "text": "Cyclists explore the Back Road"
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
              "text": "Cyclists need:"
            },
            {
              "kind": "subheader",
              "text": "- a repair kit"
            },
            {
              "kind": "subheader",
              "text": "- food and drink"
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
              "text": "Cost"
            },
            {
              "kind": "static",
              "text": "Total cost for whole family of cruise and farm visit: $10"
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Can take photos of the _______ that surround the lake",
              "answer": [
                "mountains"
              ],
              "wordLimit": 1,
              "explanation": "And don’t forget to take pictures of the mountains."
            },
            {
              "number": 2,
              "prompt": "Visit can include a 40-minute ride on a _______",
              "answer": [
                "horse"
              ],
              "wordLimit": 1,
              "explanation": "Well, there’s also a 40-minute trek round the farm on a house, if he wants."
            },
            {
              "number": 3,
              "prompt": "Visitors can walk in the farm’s _______ by the lake",
              "answer": [
                "garden"
              ],
              "wordLimit": 1,
              "explanation": "/ gardens There are some very beautiful gardens along the side of the lake which also belong to the farm"
            },
            {
              "number": 4,
              "prompt": "_______ is available at extra cost",
              "answer": [
                "lunch"
              ],
              "wordLimit": 1,
              "explanation": "And can we get lunch there?"
            },
            {
              "number": 5,
              "prompt": "A _______ is provided",
              "answer": [
                "map"
              ],
              "wordLimit": 1,
              "explanation": "They’ll give you a map when you get your ticket for the cruise - there’s no extra charge."
            },
            {
              "number": 6,
              "prompt": "Only suitable for cyclists who have some _______",
              "answer": [
                "experience"
              ],
              "wordLimit": 1,
              "explanation": "It needs someone who’s got a bit more experience."
            },
            {
              "number": 7,
              "prompt": "- Bikes can be hired from _______ (near the Cruise Ship Terminal)",
              "answer": [
                "Ratchesons"
              ],
              "wordLimit": 1,
              "explanation": "It’s called Ratchesons."
            },
            {
              "number": 8,
              "prompt": "- a _______ (can be hired)",
              "answer": [
                "helmet"
              ],
              "wordLimit": 1,
              "explanation": "And I assume I can rent a helmet from the bike place?"
            },
            {
              "number": 9,
              "prompt": "There are no _______ or accommodation in the area",
              "answer": [
                "shops"
              ],
              "wordLimit": 1,
              "explanation": "It’s a great ride, but you want to be well prepared because it’s very remote - you won’t see any shops round there, or anywhere to stay"
            },
            {
              "number": 10,
              "prompt": "_______ [10]",
              "answer": [
                "267"
              ],
              "wordLimit": 1,
              "explanation": "Then I’m afraid it’s $267"
            }
          ],
          "formTitle": "FAMILY EXCURSIONS",
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
              "prompt": "According to the manager, what do most people like about the job of kitchen assistant?",
              "options": [
                {
                  "key": "A",
                  "text": "the variety of work"
                },
                {
                  "key": "B",
                  "text": "the friendly atmosphere"
                },
                {
                  "key": "C",
                  "text": "the opportunities for promotion"
                }
              ],
              "answer": "A",
              "explanation": "they’re pleased that they have so many different things to do, which means they never get bored."
            },
            {
              "number": 12,
              "prompt": "The manager is concerned about some of the new staff’s",
              "options": [
                {
                  "key": "A",
                  "text": "jewellery."
                },
                {
                  "key": "B",
                  "text": "hair styles."
                },
                {
                  "key": "C",
                  "text": "shoes."
                }
              ],
              "answer": "A",
              "explanation": "but some of you’ll need to remove your rings and bracelets - just put them somewhere safe for today, and remember to leave them at home tomorrow, as they can be a safety hazard."
            },
            {
              "number": 13,
              "prompt": "The manager says that the day is likely to be busy for kitchen staff because",
              "options": [
                {
                  "key": "A",
                  "text": "it is a public holiday."
                },
                {
                  "key": "B",
                  "text": "the head chef is absent."
                },
                {
                  "key": "C",
                  "text": "the restaurant is almost fully booked."
                }
              ],
              "answer": "C",
              "explanation": "Now it’s going to be a busy day for you all today - we don’t have any tables free for this evening, and only a few for lunch."
            },
            {
              "number": 14,
              "prompt": "Only kitchen staff who are 18 or older are allowed to use",
              "options": [
                {
                  "key": "A",
                  "text": "the waste disposal unit."
                },
                {
                  "key": "B",
                  "text": "the electric mixer."
                },
                {
                  "key": "C",
                  "text": "the meat slicer."
                }
              ],
              "answer": "C",
              "explanation": "Then I think there are two of you here who are under 18 - that’s Emma and Jake, isn’t it? Right, so for you two, the meat slicer is out of bounds."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 15–16",
          "instructions": "Choose TWO letters, A–E. According to the manager, which TWO things can make the job of kitchen assistant stressful?",
          "options": [
            {
              "key": "A",
              "text": "They have to follow orders immediately."
            },
            {
              "key": "B",
              "text": "The kitchen gets very hot."
            },
            {
              "key": "C",
              "text": "They may not be able to take a break."
            },
            {
              "key": "D",
              "text": "They have to do overtime."
            },
            {
              "key": "E",
              "text": "The work is physically demanding."
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "According to the manager, which TWO things can make the job of kitchen assistant stressful?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "What you will find is that you’re on your feet all day long, lifting and carrying, so if you’re not fit now you soon will be! You’ll find you don’t have much chance to take it easy when someone tells you to do something you need to do it straightaway"
            },
            {
              "number": 16,
              "prompt": "According to the manager, which TWO things can make the job of kitchen assistant stressful?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "What you will find is that you’re on your feet all day long, lifting and carrying, so if you’re not fit now you soon will be! You’ll find you don’t have much chance to take it easy when someone tells you to do something you need to do it straightaway"
            }
          ],
          "id": "g15"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "What is the responsibility of each of the following restaurant staff? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "training courses"
            },
            {
              "key": "B",
              "text": "food stocks"
            },
            {
              "key": "C",
              "text": "first aid"
            },
            {
              "key": "D",
              "text": "breakages"
            },
            {
              "key": "E",
              "text": "staff discounts"
            },
            {
              "key": "F",
              "text": "timetables"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Joy Parkins",
              "answer": "F",
              "explanation": "I’m Joy Parkins and I decide who does what during the day and how long they work for."
            },
            {
              "number": 18,
              "prompt": "David Field",
              "answer": "C",
              "explanation": "One person whose name you must remember is David Field. If you injure yourself at all, even if it’s really minor, you must report to him and he’ll make sure the incident is recorded and you get the appropriate treatment."
            },
            {
              "number": 19,
              "prompt": "Dexter Wills",
              "answer": "D",
              "explanation": "Then there’s Dexter Wills - he’s the person you need to see if you smash a plate or something like that."
            },
            {
              "number": 20,
              "prompt": "Mike Smith",
              "answer": "B",
              "explanation": "And finally, there’s Mike Smith. He’s the member of staff who takes care of all the stores of perishables, so if you notice we’re getting low in flour or sugar or something, make sure you let him know so he can put in an order."
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
          "type": "multiple_choice",
          "label": "Questions 21–23",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "What will be the main topic of Trudie and Stewart’s paper?",
              "options": [
                {
                  "key": "A",
                  "text": "how public library services are organised in different countries"
                },
                {
                  "key": "B",
                  "text": "how changes in society are reflected in public libraries"
                },
                {
                  "key": "C",
                  "text": "how the funding of public libraries has changed"
                }
              ],
              "answer": "B",
              "explanation": "Maybe we should concentrate on this country, and try relate the changes in libraries to external developments, like the fact that far more people can read than a century ago, and that the local population may speak lots of different languages."
            },
            {
              "number": 22,
              "prompt": "They agree that one disadvantage of free digitalised books is that",
              "options": [
                {
                  "key": "A",
                  "text": "they may take a long time to read."
                },
                {
                  "key": "B",
                  "text": "they can be difficult to read."
                },
                {
                  "key": "C",
                  "text": "they are generally old."
                }
              ],
              "answer": "C",
              "explanation": "But the digitalised books that are available online for free are mostly out of copyright, aren’t they? And copyright in this country lasts for 70 years after the author dies. So you won’t find the latest best-seller or up-to-date information."
            },
            {
              "number": 23,
              "prompt": "Stewart expect that in the future libraries will",
              "options": [
                {
                  "key": "A",
                  "text": "maintain their traditional function."
                },
                {
                  "key": "B",
                  "text": "become centres for local communities."
                },
                {
                  "key": "C",
                  "text": "no longer contain any books."
                }
              ],
              "answer": "C",
              "explanation": "What I’m afraid will happen is that books and magazines will all disappear, and there’ll just be rows and rows of computers."
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 24–30",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "whether it has a"
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": "of its own its policy regarding noise of various kinds how it’s affected by laws regarding all aspects of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": "how the design needs to take the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": "of customers into account what",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 27
            },
            {
              "kind": "static",
              "text": "is required in case of accidents why a famous person’s",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 28
            },
            {
              "kind": "static",
              "text": "is located in the library whether it has a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 29
            },
            {
              "kind": "static",
              "text": "of local organisations how it’s different from a library in a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 30
            }
          ],
          "questions": [
            {
              "number": 24,
              "prompt": "_______",
              "answer": [
                "budget"
              ],
              "wordLimit": 1,
              "explanation": "For instance, um, we could interview some of the staff, and find out whether the library has its own budget, or if that’s controlled by the local council."
            },
            {
              "number": 25,
              "prompt": "_______",
              "answer": [
                "employment"
              ],
              "wordLimit": 1,
              "explanation": "Then there are things like how the library is affected by employment laws. I suppose there are rules about working hours, facilities for staff, and so on."
            },
            {
              "number": 26,
              "prompt": "_______",
              "answer": [
                "safety"
              ],
              "wordLimit": 1,
              "explanation": "Then there are other issues relating to the design of the building and how customers use it. Like what measures does the library take to ensure their safety?"
            },
            {
              "number": 27,
              "prompt": "_______",
              "answer": [
                "insurance"
              ],
              "wordLimit": 1,
              "explanation": "there’s the question of the kind of insurance the library needs to have, in case anyone gets injured."
            },
            {
              "number": 28,
              "prompt": "_______",
              "answer": [
                "diary"
              ],
              "wordLimit": 1,
              "explanation": "Well, next to it they’ve got the diary of a well-known politician from the late 19th century."
            },
            {
              "number": 29,
              "prompt": "_______",
              "answer": [
                "percent"
              ],
              "wordLimit": 1,
              "explanation": ", while the followers achieved less than half that, only 13 percent"
            },
            {
              "number": 30,
              "prompt": "_______",
              "answer": [
                "museum"
              ],
              "wordLimit": 1,
              "explanation": "I quite fancy finding out what the differences are between a library that’s open to the public and one that’s part of a museum, for example"
            }
          ],
          "formTitle": "Study of local library: possible questions",
          "id": "g24"
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
          "instructions": "Complete the notes below. Write NO MORE THAN TWO WORDS for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "subheader",
              "text": "Collaboration"
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
              "kind": "static",
              "text": "The speaker’s team won because they reduced collaboration."
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "Industriousness"
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
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "Creativity"
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
              "kind": "subheader",
              "text": "Excellence"
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "Companies that always aim at excellence may miss opportunities."
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Many business values can result in _______ .",
              "answer": [
                "damage"
              ],
              "wordLimit": 2,
              "explanation": "Pursue values by all means, but be prepared for what may happen as a result. They can actually cause damage, which is not at all the intention."
            },
            {
              "number": 32,
              "prompt": "Senior managers need to understand and deal with the potential _______ that may result.",
              "answer": [
                "side"
              ],
              "wordLimit": 2,
              "explanation": "effects But all too often the right thing backfires, if those leaders adopt values without understanding and managing the side effects that arise."
            },
            {
              "number": 33,
              "prompt": "During a training course, the speaker was in a team that had to build a _______ .",
              "answer": [
                "bridge"
              ],
              "wordLimit": 2,
              "explanation": "On a management training course I once attended, we were put into groups and had to construct a bridge across a stream"
            },
            {
              "number": 34,
              "prompt": "Other teams experienced _______ from trying to collaborate.",
              "answer": [
                "confusion"
              ],
              "wordLimit": 2,
              "explanation": "The other teams tried to collaborate on building the structure, and descended into confusion"
            },
            {
              "number": 35,
              "prompt": "Sales of a _______ were poor because of collaboration.",
              "answer": [
                "smartphone"
              ],
              "wordLimit": 2,
              "explanation": "In the case of a smartphone that a certain company launched, one director wanted to target the business market, and another demanded it was aimed at consumers. The company wanted both directors to be involved, so gave the product a consumer-friendly name, but marketed it to companies. The result was that it met the needs of neither group. It would have been better to let one director or the other have his way, not both."
            },
            {
              "number": 36,
              "prompt": "Hard work may be a bad use of various company _______ .",
              "answer": [
                "resources"
              ],
              "wordLimit": 2,
              "explanation": "Of course hard work is valuable, but only when properly targeted. Otherwise it wastes the resources that companies value most - time and energy. And that’s bad for the organisation."
            },
            {
              "number": 37,
              "prompt": "The word ‘lazy’ in this context refers to people who avoid doing tasks that are _______",
              "answer": [
                "unnecessary"
              ],
              "wordLimit": 2,
              "explanation": "/ not necessary Here ‘lazy’ means having a rational determination not to carry out unnecessary tasks."
            },
            {
              "number": 38,
              "prompt": "An advertising campaign for a _______ was memorable but failed to boost sales.",
              "answer": [
                "chocolate"
              ],
              "wordLimit": 2,
              "explanation": "bar This happened a few years ago with the launch of a chocolate bar: subsequent research showed that plenty of consumers remembered the adverts, but had no idea what was being advertised"
            },
            {
              "number": 39,
              "prompt": "Creativity should be used as a response to a particular _______ .",
              "answer": [
                "problem"
              ],
              "wordLimit": 2,
              "explanation": "Creativity needs to be targeted, to solve a problem that the company has identified"
            },
            {
              "number": 40,
              "prompt": "According to one study, on average, pioneers had a _______ that was far higher than that of followers.",
              "answer": [
                "market"
              ],
              "wordLimit": 2,
              "explanation": "share The study found that the pioneers commanded an average market share of"
            }
          ],
          "formTitle": "Four business values",
          "id": "g31"
        }
      ]
    }
  ]
}
$c12t1l$,
  true
);
