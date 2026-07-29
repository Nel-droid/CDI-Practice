-- Cambridge Listening — Part 2 of 6: books 12 & 13 (8 tests).
-- Paste this whole file into the Supabase SQL editor and Run.

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

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 12' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 12',
  'Test 2',
  'academic',
  2004,
  $c12t2l$
{
  "audioPath": "Cambridge 12 Test 2.mp3",
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
              "kind": "subheader",
              "text": "Start date: ……….16th………. May"
            },
            {
              "kind": "subheader",
              "text": "Opening ceremony (first day)"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "The mayor will make a speech"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "Performance of a"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "About Helen Tungate (a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": ")",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "Other events"
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
              "kind": "static",
              "text": "Time: 2 and 5 pm every day except 1st day of festival"
            },
            {
              "kind": "static",
              "text": "Several professional concerts and one by children"
            },
            {
              "kind": "subheader",
              "text": "Venue: library"
            },
            {
              "kind": "subheader",
              "text": "Time: 6.30 pm on the 18th"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "In town centre, starting at _______",
              "answer": [
                "2.45 the"
              ],
              "wordLimit": 1,
              "explanation": "events will start at 2.45"
            },
            {
              "number": 2,
              "prompt": "A _______ will perform",
              "answer": [
                "band"
              ],
              "wordLimit": 1,
              "explanation": "Then there’ll be a performance by a band."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "play"
              ],
              "wordLimit": 1,
              "explanation": "After that, a community group from the town will perform a play they’ve written themselves, just a short one. It’s about Helen Tungate."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "scientist"
              ],
              "wordLimit": 1,
              "explanation": "She was a scientist years ago."
            },
            {
              "number": 5,
              "prompt": "Evening fireworks display situated across the _______",
              "answer": [
                "river"
              ],
              "wordLimit": 1,
              "explanation": "later, as the sun sets, there’ll be a firework display. You should go to the park to watch, as you’ll get the best view from there, and the display takes place on the opposite side of the river."
            },
            {
              "number": 6,
              "prompt": "Video about relationships that children have with their _______",
              "answer": [
                "grandparents"
              ],
              "wordLimit": 1,
              "explanation": "For example, the students of the art college have produced a number of videos, all connected with relationships between children and their grandparents."
            },
            {
              "number": 7,
              "prompt": "Venue: _______ House",
              "answer": [
                "Handsworth"
              ],
              "wordLimit": 1,
              "explanation": "the videos are being shown in Handsworth House."
            },
            {
              "number": 8,
              "prompt": "Performance of _______ Dances",
              "answer": [
                "traditional"
              ],
              "wordLimit": 1,
              "explanation": "there’ll be a demonstration of traditional dances from all round the country."
            },
            {
              "number": 9,
              "prompt": "Venue: the _______ market in the town centre",
              "answer": [
                "outdoor"
              ],
              "wordLimit": 1,
              "explanation": "It’s in the market in the town centre - the outdoor one, not the covered market."
            },
            {
              "number": 10,
              "prompt": "Tickets available online from festival box office and from shops which have the festival _______ in their windows",
              "answer": [
                "logo"
              ],
              "wordLimit": 1,
              "explanation": "Yes, you can book online, or you can buy them when you arrive in Kenton, either at the festival box office, or from any shops displaying our logo in the windows."
            }
          ],
          "formTitle": "Events during Kenton Festival",
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
              "prompt": "When the group meet at the airport they will have",
              "options": [
                {
                  "key": "A",
                  "text": "breakfast."
                },
                {
                  "key": "B",
                  "text": "coffee."
                },
                {
                  "key": "C",
                  "text": "lunch."
                }
              ],
              "answer": "B",
              "explanation": "I suggest we meet there for coffee at 10"
            },
            {
              "number": 12,
              "prompt": "The group will be met at Munich Airport by",
              "options": [
                {
                  "key": "A",
                  "text": "an employee at the National Theatre."
                },
                {
                  "key": "B",
                  "text": "a theatre manager."
                },
                {
                  "key": "C",
                  "text": "a tour operator."
                }
              ],
              "answer": "C",
              "explanation": "When we arrive in Munich, we’ll be met at the airport by Claus Bauer. Claus works for a tour operator"
            },
            {
              "number": 13,
              "prompt": "How much will they pay per night for a double room at the hotel?",
              "options": [
                {
                  "key": "A",
                  "text": "110 euros"
                },
                {
                  "key": "B",
                  "text": "120 euros"
                },
                {
                  "key": "C",
                  "text": "150 euros"
                }
              ],
              "answer": "A",
              "explanation": "The normal rate at the hotel where we’re staying is 150 euros a night for a double room. I’d hoped to get that down to 120 euros, but in fact I’ve been able to negotiate a rate of 110"
            },
            {
              "number": 14,
              "prompt": "What type of restaurant will they go to on Tuesday evening?",
              "options": [
                {
                  "key": "A",
                  "text": "an Italian restaurant"
                },
                {
                  "key": "B",
                  "text": "a Lebanese restaurant"
                },
                {
                  "key": "C",
                  "text": "a typical restaurant of the region"
                }
              ],
              "answer": "B",
              "explanation": "Some of you suggested an Italian restaurant, but I must confess that I decided to book a Lebanese one"
            },
            {
              "number": 15,
              "prompt": "Who will they meet on Wednesday afternoon?",
              "options": [
                {
                  "key": "A",
                  "text": "an actor"
                },
                {
                  "key": "B",
                  "text": "a playwright"
                },
                {
                  "key": "C",
                  "text": "a theatre director"
                }
              ],
              "answer": "C",
              "explanation": "On Wednesday afternoon, the director of the play we’re going to see that evening will talk to us at the theatre"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "What does the man say about the play on each of the following days? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "The playwright will be present."
            },
            {
              "key": "B",
              "text": "The play was written to celebrate an anniversary."
            },
            {
              "key": "C",
              "text": "The play will be performed inside a historic building."
            },
            {
              "key": "D",
              "text": "The play will be accompanied by live music."
            },
            {
              "key": "E",
              "text": "The play will be performed outdoors."
            },
            {
              "key": "F",
              "text": "The play will be performed for the first time."
            },
            {
              "key": "G",
              "text": "The performance will be attended by officials from the town."
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "Wednesday",
              "answer": "F",
              "explanation": "The play we’re seeing on Wednesday evening is a modern one, and we’re going to the premiere"
            },
            {
              "number": 17,
              "prompt": "Thursday",
              "answer": "B",
              "explanation": "On Thursday we’re seeing a play that was first performed last year, when it was commissioned to mark a hundred years since the birth in the town of a well-known scientist."
            },
            {
              "number": 18,
              "prompt": "Friday",
              "answer": "E",
              "explanation": "Friday’s play will really make you think hard about what clothes to pack, as it’ll be in the garden of a palace."
            },
            {
              "number": 19,
              "prompt": "Saturday",
              "answer": "G",
              "explanation": "On Saturday, we’re going by coach to a theatre in another town, not far from Munich. This will be the opening of a drama festival, and the mayor and all the other dignitaries of the town will be attending"
            },
            {
              "number": 20,
              "prompt": "Monday",
              "answer": "C",
              "explanation": "our final play is on Monday, and it’s in the stunning setting of the old Town Hall, which dates back to the 14th century."
            }
          ],
          "id": "g16"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 21–25",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "James chose to take Scandinavian Studies because when he was a child",
              "options": [
                {
                  "key": "A",
                  "text": "he was often taken to Denmark."
                },
                {
                  "key": "B",
                  "text": "his mother spoke to him in Danish."
                },
                {
                  "key": "C",
                  "text": "a number of Danish people visited his family."
                }
              ],
              "answer": "C",
              "explanation": "Well, my mother is Danish, and although we always lived in England, she used to talk about her home a lot, and that made me want to visit Denmark. We hardly ever did, though - my mother usually went on her own. But whenever her relations or friends were in England they always came to see us."
            },
            {
              "number": 22,
              "prompt": "When he graduates, James would like to",
              "options": [
                {
                  "key": "A",
                  "text": "take a postgraduate course."
                },
                {
                  "key": "B",
                  "text": "work in the media."
                },
                {
                  "key": "C",
                  "text": "become a translator."
                }
              ],
              "answer": "B",
              "explanation": "I’m interested in journalism, and I quite like the idea of moving to Scandinavia and writing for magazines."
            },
            {
              "number": 23,
              "prompt": "Which course will end this term?",
              "options": [
                {
                  "key": "A",
                  "text": "Swedish cinema"
                },
                {
                  "key": "B",
                  "text": "Danish television programmes"
                },
                {
                  "key": "C",
                  "text": "Scandinavian literature"
                }
              ],
              "answer": "C",
              "explanation": "That’ll continue next term, but the one on Scandinavian literature that’s running at the moment will be replaced by more specialised courses."
            },
            {
              "number": 24,
              "prompt": "They agree that James’s literature paper this term will be on",
              "options": [
                {
                  "key": "A",
                  "text": "19th century playwrights"
                },
                {
                  "key": "B",
                  "text": "the Icelandic sagas"
                },
                {
                  "key": "C",
                  "text": "modern Scandinavian novels."
                }
              ],
              "answer": "A",
              "explanation": "You might find modern novels or 19th century playwrights interesting."
            },
            {
              "number": 25,
              "prompt": "Beth recommends that James’s paper should be",
              "options": [
                {
                  "key": "A",
                  "text": "a historical overview of the genre."
                },
                {
                  "key": "B",
                  "text": "an in-depth analysis of a single writer."
                },
                {
                  "key": "C",
                  "text": "a study of the social background to the literature."
                }
              ],
              "answer": "C",
              "explanation": "I think you first need to get an understanding of the literature in the context of the society in which it was produced - who it was written for, how it was published, and so on"
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 26–30",
          "instructions": "Complete the flow-chart below. Choose FIVE answers from the box, A–G.",
          "summaryTitle": "",
          "summaryText": "How James will write his paper on the Vikings\nHe’ll read a {26} and choose his topic.\n↓\nHe’ll borrow a {27} from Beth.\n↓\nHe’ll plan the {28} of the paper.\n↓\nHe’ll read some source material and write {29} .\n↓\nHe’ll write the paper using {30} .\n↓\nHe’ll write the complete paper.",
          "wordBank": [
            {
              "key": "A",
              "text": "bullet points"
            },
            {
              "key": "B",
              "text": "film"
            },
            {
              "key": "C",
              "text": "notes"
            },
            {
              "key": "D",
              "text": "structure"
            },
            {
              "key": "E",
              "text": "student paper"
            },
            {
              "key": "F",
              "text": "textbook"
            },
            {
              "key": "G",
              "text": "documentary"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "",
              "answer": "E",
              "explanation": "what I suggest is that you read an assignment a student wrote last year"
            },
            {
              "number": 27,
              "prompt": "",
              "answer": "G",
              "explanation": "But I’ve got a recording of a documentary that you should watch."
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "D",
              "explanation": "So then should I work out an outline?"
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "C",
              "explanation": "Yes. Just headings for different sections, at this stage. And then you should start looking for suitable articles and books to draw on, and take notes"
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "A",
              "explanation": "Then put short phrases and sentences as bullet points under each heading"
            }
          ],
          "id": "g26"
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
              "kind": "question",
              "number": 31
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "Also caused by differences in"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "between people ‘",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "’ conflicts: people more concerned about own team than about company",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "subheader",
              "text": "Chief Executives (CEOs)"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "May not like to have their decisions questioned"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "subheader",
              "text": "Other managers"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "subheader",
              "text": "Minimising conflict"
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
              "prompt": "Conflict mostly consists of behaviour in the general category of _______",
              "answer": [
                "bullying"
              ],
              "wordLimit": 1,
              "explanation": "What is conflict in the workplace? Definitions vary, but I’m taking it to refer to a whole range of behaviours that the victim finds unacceptable, from minor, harmless arguments to - at the opposite extreme - physical violence. Much of this is covered by the term bullying"
            },
            {
              "number": 32,
              "prompt": "Often a result of people wanting to prove their _______",
              "answer": [
                "superiority"
              ],
              "wordLimit": 1,
              "explanation": "often it’s caused by someone who feels the need to show their superiority over someone else"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "personality"
              ],
              "wordLimit": 1,
              "explanation": "In some cases one person simply dislikes the other, on the basis that the personality of one is in some way incompatible with that of the other person"
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "structural"
              ],
              "wordLimit": 1,
              "explanation": "Some conflicts arise when people are more interested in promoting themselves and their team than in the company as a whole. These conflicts are called ‘structural’"
            },
            {
              "number": 35,
              "prompt": "Conflict-related stress can cause _______ that may last for months",
              "answer": [
                "absence"
              ],
              "wordLimit": 1,
              "explanation": "Conflict obviously affects the individuals concerned - the situation is likely to be very stressful for victims, resulting in their absence from work, possibly for months"
            },
            {
              "number": 36,
              "prompt": "Many have both _______ and anxiety",
              "answer": [
                "confidence"
              ],
              "wordLimit": 1,
              "explanation": "Many CEOs combine two opposing characteristics: confidence - that is, the belief that they’re capable of great achievements - with a high level of anxiety"
            },
            {
              "number": 37,
              "prompt": "There may be conflict between people who have different _______",
              "answer": [
                "visions"
              ],
              "wordLimit": 1,
              "explanation": "it’s particularly difficult to tackle the situation where colleagues, managers and board members are all trying to achieve their own visions. When they can’t agree on strategic issues and on where they see the business going, there are real problems."
            },
            {
              "number": 38,
              "prompt": "A structure that is more _______ may create a feeling of uncertainly about who staff should report to.",
              "answer": [
                "democratic"
              ],
              "wordLimit": 1,
              "explanation": "a company with a more democratic business model, can suffer more, when uncertainly about who to report to leads to conflicting demands."
            },
            {
              "number": 39,
              "prompt": "Bosses need to try hard to gain _______",
              "answer": [
                "respect"
              ],
              "wordLimit": 1,
              "explanation": "A good manager, at any level, will make efforts to earn the respect of the people they work with"
            },
            {
              "number": 40,
              "prompt": "Someone from outside the company may be given the role of _______ in order to resolve conflicts.",
              "answer": [
                "mediator"
              ],
              "wordLimit": 1,
              "explanation": "if one of the parties in a conflict sees human resources as simply a mouthpiece for the chief executive, then an external mediator might be able to help"
            }
          ],
          "formTitle": "Conflict at work",
          "id": "g31"
        }
      ]
    }
  ]
}
$c12t2l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 12' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 12',
  'Test 3',
  'academic',
  2004,
  $c12t3l$
{
  "audioPath": "Cambridge 12 Test 3.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "The library re-opened last ……month……."
            },
            {
              "kind": "static",
              "text": "The library now has a seating area with magazines an expanded section for books on"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "a new section on local",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "a community room for meetings (also possible to",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "there) a new section of books for",
              "noBullet": true
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
              "text": "Reading Challenge: read six books during the holidays"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "IT support is available on Tuesday - no"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "is necessary free check of blood",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "and cholesterol levels (over 60s only)",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Other information the library shop sells wall-charts, cards and"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "evenings and weekends: free",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "is available",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______",
              "answer": [
                "travel"
              ],
              "wordLimit": 1,
              "explanation": "/ traveling / travelling we’ve got a much larger section of the library devoted to travel books now"
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "history"
              ],
              "wordLimit": 1,
              "explanation": "Yes, actually we’ve now got a new section with materials on the history of the town and surrounding region."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "study"
              ],
              "wordLimit": 1,
              "explanation": "we do have a room called the community room. It can be hired out for meetings, but at other times people can use it to study."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "teenagers"
              ],
              "wordLimit": 1,
              "explanation": "we’ve introduced a special section of fiction written specially for teenagers"
            },
            {
              "number": 5,
              "prompt": "For younger children the next Science Club meeting: experiments using things from your _______",
              "answer": [
                "kitchen"
              ],
              "wordLimit": 1,
              "explanation": "For example we have a Science Club. At the next meeting, they’re going to be doing experiments with stuff that everyone has in the kitchen"
            },
            {
              "number": 6,
              "prompt": "For adults this Friday: a local author talks about a novel based on a real _______",
              "answer": [
                "crime"
              ],
              "wordLimit": 1,
              "explanation": "On Friday we have a local author called Tanya Streep who’s going to be talking about her new novel. It’s called ‘Catch the Mouse’ and she based the story on a crime that actually took place here years ago."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "appointment"
              ],
              "wordLimit": 1,
              "explanation": "/ booking we do have IT support available for members. We get quite a few older people coming along who are wanting to get up to speed with computer technology. It’s on Tuesday mornings - they don’t need to make an appointment or anything, they just turn up."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "sugar"
              ],
              "wordLimit": 1,
              "explanation": "And there’s another service which you wouldn’t expect from a library, which is a free medical check-up. The hospital arranges for someone to come along and measure the level of sugar in your blood, and they check cholesterol levels at the same time."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "stamps"
              ],
              "wordLimit": 1,
              "explanation": "we do have a little shop with things like wallcharts and greetings cards, and also stamps"
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "is there parking available?"
            }
          ],
          "formTitle": "PUBLIC LIBRARY",
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
          "instructions": "Choose TWO letters, A–E. Which TWO age groups are taking increasing numbers of holidays with BC Travel?",
          "options": [
            {
              "key": "A",
              "text": "16-30 years"
            },
            {
              "key": "B",
              "text": "31-42 years"
            },
            {
              "key": "C",
              "text": "43-54 years"
            },
            {
              "key": "D",
              "text": "55-64 years"
            },
            {
              "key": "E",
              "text": "over 65 years"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO age groups are taking increasing numbers of holidays with BC Travel?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "the over-65s are an important market, and one that’s increasing steadily year on year whereas there’s a noticeable growth in the number of holidays taken by the 55 to 64-year-olds"
            },
            {
              "number": 12,
              "prompt": "Which TWO age groups are taking increasing numbers of holidays with BC Travel?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "the over-65s are an important market, and one that’s increasing steadily year on year whereas there’s a noticeable growth in the number of holidays taken by the 55 to 64-year-olds"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO are the main reasons given for the popularity of activity holidays?",
          "options": [
            {
              "key": "A",
              "text": "Clients make new friends."
            },
            {
              "key": "B",
              "text": "Clients learn a useful skill."
            },
            {
              "key": "C",
              "text": "Clients learn about a different culture."
            },
            {
              "key": "D",
              "text": "Clients are excited by the risk involved."
            },
            {
              "key": "E",
              "text": "Clients find them good value for money."
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO are the main reasons given for the popularity of activity holidays?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "they do often take place outside the main tourist centres, which gives an opportunity for clients to find out more about the local people and customs but clients often say that more than this, it’s the chance to create lasting relationships with other like-minded people that’s the main draw."
            },
            {
              "number": 14,
              "prompt": "Which TWO are the main reasons given for the popularity of activity holidays?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "they do often take place outside the main tourist centres, which gives an opportunity for clients to find out more about the local people and customs but clients often say that more than this, it’s the chance to create lasting relationships with other like-minded people that’s the main draw."
            }
          ],
          "id": "g13"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 15–17",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 15,
              "prompt": "How does BC Travel plan to expand the painting holidays?",
              "options": [
                {
                  "key": "A",
                  "text": "by adding to the number of locations"
                },
                {
                  "key": "B",
                  "text": "by increasing the range of levels"
                },
                {
                  "key": "C",
                  "text": "by employing more teachers"
                }
              ],
              "answer": "C",
              "explanation": "We’ve got an excellent team of artists to lead the classes - some of them have been with us from the start, and five additional ones will be joining us this year"
            },
            {
              "number": 16,
              "prompt": "Why are BC Travel’s cooking holidays unusual?",
              "options": [
                {
                  "key": "A",
                  "text": "They only use organic foods."
                },
                {
                  "key": "B",
                  "text": "They have an international focus."
                },
                {
                  "key": "C",
                  "text": "They mainly involve vegetarian dishes."
                }
              ],
              "answer": "B",
              "explanation": "lot of agents offer holidays where clients cook recipes related to one particular country, usually the one they’re staying in, but we focus on dishes from a great many different ones"
            },
            {
              "number": 17,
              "prompt": "What does the speaker say about the photography holidays?",
              "options": [
                {
                  "key": "A",
                  "text": "Clients receive individual tuition."
                },
                {
                  "key": "B",
                  "text": "The tutors are also trained guides."
                },
                {
                  "key": "C",
                  "text": "Advice is given on selling photographs."
                }
              ],
              "answer": "A",
              "explanation": "clients can have one-on-one tuition during the holiday"
            }
          ],
          "id": "g15"
        },
        {
          "type": "completion",
          "label": "Questions 18–20",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Location Main focus Other comments"
            },
            {
              "kind": "question",
              "number": 18
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "question",
              "number": 20
            }
          ],
          "questions": [
            {
              "number": 18,
              "prompt": "Ireland and Italy general fitness personally designed programme also reduces _______",
              "answer": [
                "stress"
              ],
              "wordLimit": 1,
              "explanation": "clients find that they end up losing much of the stress they’ve built up in their daily lives."
            },
            {
              "number": 19,
              "prompt": "Greece _______ control includes exercise on the beach",
              "answer": [
                "weight"
              ],
              "wordLimit": 1,
              "explanation": "In Greece, we have a two-week holiday for clients who want to do something about their weight."
            },
            {
              "number": 20,
              "prompt": "Morocco Mountain biking wide variety of levels one holiday that is specially designed for _______",
              "answer": [
                "families"
              ],
              "wordLimit": 1,
              "explanation": "We offer one which is tailored to the needs of families"
            }
          ],
          "formTitle": "Fitness Holidays",
          "id": "g18"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 21–26",
          "instructions": "Complete the flow-chart below. Choose SIX answers from the box, A–H.",
          "summaryTitle": "",
          "summaryText": "STAGES IN DOING A TOURISM CASE STUDY\nRESEARCH\nLocate and read relevant articles, noting key information and also {21} Identify a problem or need\nSelect interviewees - these may be site {22} , visitors or city\n{23} Prepare and carry out interviews. If possible, collect statistics.\nCheck whether {24} of interviewees can be used.\n↓\nANALYSIS\nSelect relevant information and try to identify {25} Decide on the best form of visuals\n↓\n\nWRITING THE CASE STUDY\nGive some background before writing the main sections\nF. solutionsG. headingsH. officials",
          "wordBank": [
            {
              "key": "A",
              "text": "patterns"
            },
            {
              "key": "B",
              "text": "names"
            },
            {
              "key": "C",
              "text": "sources"
            },
            {
              "key": "D",
              "text": "questions"
            },
            {
              "key": "E",
              "text": "employees"
            },
            {
              "key": "F",
              "text": "solutions"
            },
            {
              "key": "G",
              "text": "headings"
            },
            {
              "key": "H",
              "text": "officials"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "",
              "answer": "C",
              "explanation": "Did you remember to keep a record of where you got the information from?"
            },
            {
              "number": 22,
              "prompt": "",
              "answer": "E",
              "explanation": "The people who work there?"
            },
            {
              "number": 23,
              "prompt": "",
              "answer": "H",
              "explanation": "we could even contact some people here in the city, like administrators involved in overseeing tourism."
            },
            {
              "number": 24,
              "prompt": "",
              "answer": "B",
              "explanation": "But Dr Baker also said we have to establish with our interviewees whether we can identify them in our case study, or whether they want to be anonymous."
            },
            {
              "number": 25,
              "prompt": "",
              "answer": "A",
              "explanation": "analyse that carefully to find out if we can identify any trends or regularities there."
            },
            {
              "number": 26,
              "prompt": "",
              "answer": "F",
              "explanation": "in a normal report we’d end with some suggestions to deal with the problem or need we identified, but in a case study we end up with a question or a series of questions to our readers, and they decide what ought to be done."
            }
          ],
          "id": "g21"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 27–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 27,
              "prompt": "Natalie and Dave agree one reason why so few people visit Horton Castle is that",
              "options": [
                {
                  "key": "A",
                  "text": "the publicity is poor."
                },
                {
                  "key": "B",
                  "text": "it is difficult to get to."
                },
                {
                  "key": "C",
                  "text": "there is little there of interest."
                }
              ],
              "answer": "A",
              "explanation": "And I think there’s plenty of fascinating stuff there for a really good day out, but you’d never realise it from the castle website - maybe that’s the problem."
            },
            {
              "number": 28,
              "prompt": "Natalie and Dave agree that the greatest problem with a visitor centre could be",
              "options": [
                {
                  "key": "A",
                  "text": "covering the investment costs."
                },
                {
                  "key": "B",
                  "text": "finding a big enough space for it."
                },
                {
                  "key": "C",
                  "text": "dealing with planning restrictions."
                }
              ],
              "answer": "C",
              "explanation": "And as it’s on a historical site it’d need to get special planning permission, I expect. That might be hard."
            },
            {
              "number": 29,
              "prompt": "What does Dave say about conditions in the town of Horton?",
              "options": [
                {
                  "key": "A",
                  "text": "There is a lot of unemployment."
                },
                {
                  "key": "B",
                  "text": "There are few people of working age."
                },
                {
                  "key": "C",
                  "text": "There are opportunities for skilled workers."
                }
              ],
              "answer": "B",
              "explanation": "Once they’ve left school and got any skills or qualifications, the young people all get out as fast as they can to get jobs in the city, and the only people left are children and those who’ve retired."
            },
            {
              "number": 30,
              "prompt": "According to Natalie, one way to prevent damage to the castle site would be to",
              "options": [
                {
                  "key": "A",
                  "text": "insist visitors have a guide."
                },
                {
                  "key": "B",
                  "text": "make visitors keep to the paths."
                },
                {
                  "key": "C",
                  "text": "limit visitor numbers."
                }
              ],
              "answer": "B",
              "explanation": "if numbers increase, there might have to be some restrictions, like sticking to marked ways. And there’d need to be guides and wardens around to make sure these were enforced."
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
              "text": "Mercury (Hg)"
            },
            {
              "kind": "subheader",
              "text": "Highly toxic"
            },
            {
              "kind": "static",
              "text": "Released into the atmosphere from coal"
            },
            {
              "kind": "static",
              "text": "In water it may be consumed by fish"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Research on effects of mercury on birds"
            },
            {
              "kind": "static",
              "text": "Claire Varian-Ramos is investigating"
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
              "text": "Findings:"
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
              "kind": "subheader",
              "text": "Lab-based studies"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "subheader",
              "text": "Implications for humans"
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
              "prompt": "It has also recently been found to affect birds which feed on _______",
              "answer": [
                "insects"
              ],
              "wordLimit": 1,
              "explanation": "what wasn’t known until quite recently is that those that eat insects can also be affected."
            },
            {
              "number": 32,
              "prompt": "- the effects on birds’ _______ or mental processes, e.g. memory",
              "answer": [
                "behaviour"
              ],
              "wordLimit": 1,
              "explanation": "/ behavior these may be to do with the behaviour of the birds, or with the effect of mercury on the way their brain works, so whether it leads to problems with memory, for example."
            },
            {
              "number": 33,
              "prompt": "- the effects on bird song (usually learned from a bird’s _______ )",
              "answer": [
                "father"
              ],
              "wordLimit": 1,
              "explanation": "Now, the process of song learning happens at a particular stage in the birds’ development, and what you may not know is that a young bird seems to acquire this skill by listening to the songs produced by its father"
            },
            {
              "number": 34,
              "prompt": "- songs learned by birds exposed to mercury are less _______",
              "answer": [
                "complex"
              ],
              "wordLimit": 1,
              "explanation": "/ complicated if young male birds are exposed to mercury, if they eat food contaminated with mercury, then the songs they produce aren’t as complex as those produced by other birds."
            },
            {
              "number": 35,
              "prompt": "- this may have a negative effect on birds’ _______",
              "answer": [
                "reproduction"
              ],
              "wordLimit": 1,
              "explanation": "/ breeding it can affect their chances of reproduction."
            },
            {
              "number": 36,
              "prompt": "- allow more _______ for the experimenter",
              "answer": [
                "control"
              ],
              "wordLimit": 1,
              "explanation": "The lab-based studies have the advantage that you don’t get all the variables you would in a natural setting, so the experimenter has a much higher level of control"
            },
            {
              "number": 37,
              "prompt": "Migrating birds such as _______ containing mercury may be eaten by humans",
              "answer": [
                "duck"
              ],
              "wordLimit": 1,
              "explanation": "/ ducks because many birds are migratory, they may be transporting mercury far from contaminated sites. For example, it’s been found that ducks who’d been feeding at a contaminated site were later shot by hunters over a thousand kilometres away, and presumably eaten."
            },
            {
              "number": 38,
              "prompt": "Mercury also causes problems in learning _______",
              "answer": [
                "language"
              ],
              "wordLimit": 1,
              "explanation": "we also know that in humans, mercury causes developmental delays in the acquisition of language"
            },
            {
              "number": 39,
              "prompt": "Mercury in a mother’s body from _______ may affect the unborn child",
              "answer": [
                "food"
              ],
              "wordLimit": 1,
              "explanation": "It’s now known that an unborn child can be affected if the food eaten by its mother contains high levels of mercury"
            },
            {
              "number": 40,
              "prompt": "New regulations for mercury emissions will affect everyone’s energy _______",
              "answer": [
                "cost"
              ],
              "wordLimit": 1,
              "explanation": "/ costs / price / prices / bill / bills It’s true there are new regulations for mercury emissions from power plants, but these will need billions of dollars to implement, and increase costs for everyone."
            }
          ],
          "formTitle": "The effects of environmental change on birds",
          "id": "g31"
        }
      ]
    }
  ]
}
$c12t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 12' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 12',
  'Test 4',
  'academic',
  2004,
  $c12t4l$
{
  "audioPath": "Cambridge 12 Test 4.mp3",
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
              "text": "Name: Margaret ……….Smith……….."
            },
            {
              "kind": "static",
              "text": "About the applicant: wants a"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "job will soon start work as a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "has led cycle trips in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "interested in being a leader of a cycling trip for families is currently doing voluntary work with members of a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "club available for five months from the 1st of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "can’t eat",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "Contact details: address: 27"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Place, Dumfries postcode:",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "Interview: interview at 2.30 pm on"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "will plan a short",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "about being a tour guide",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______",
              "answer": [
                "temporary"
              ],
              "wordLimit": 1,
              "explanation": "Are you looking for a permanent job, Margaret?"
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "doctor"
              ],
              "wordLimit": 1,
              "explanation": "I’m going to be a doctor."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "Africa"
              ],
              "wordLimit": 1,
              "explanation": "Yes, I’ve led several bike tours in Africa."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "youth"
              ],
              "wordLimit": 1,
              "explanation": "I’m a volunteer worker in a youth club"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "May"
              ],
              "wordLimit": 1,
              "explanation": "I’ll be free for five months. My job is due to start on October the 2nd, and I’m available from May the 1st until late September."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "cheese"
              ],
              "wordLimit": 1,
              "explanation": "Yes, I’m allergic to cheese."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "Arbuthnot"
              ],
              "wordLimit": 1,
              "explanation": "Could you send it to 27 Arbuthnot Place - A-R-B-U-T-H-N-O-T - Place, Dumfries."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "DG"
              ],
              "wordLimit": 1,
              "explanation": "7 4PH / DG74PH And what’s the postcode, please?"
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "Tuesday"
              ],
              "wordLimit": 1,
              "explanation": "we can interview you on Tuesday next week."
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "talk"
              ],
              "wordLimit": 1,
              "explanation": "/ presentation And at the interview we’d like to find out about your experience of being a tour guide, so could you prepare a ten-minute talk about that, please?"
            }
          ],
          "formTitle": "Cycle tour leader: Applicant enquiry",
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
              "prompt": "Which is the most rapidly-growing group of residents in the Sheepmarket area?",
              "options": [
                {
                  "key": "A",
                  "text": "young professional people"
                },
                {
                  "key": "B",
                  "text": "students from the university"
                },
                {
                  "key": "C",
                  "text": "employees in the local market"
                }
              ],
              "answer": "A",
              "explanation": "now graduates embarking on careers in the worlds of fashion and design are buying up the new apartments recently built here to replace the small houses where the market workers used to live."
            },
            {
              "number": 12,
              "prompt": "The speaker recommends the side streets in the Sheepmarket for their",
              "options": [
                {
                  "key": "A",
                  "text": "international restaurants."
                },
                {
                  "key": "B",
                  "text": "historical buildings."
                },
                {
                  "key": "C",
                  "text": "arts and crafts."
                }
              ],
              "answer": "C",
              "explanation": "The narrow old side streets are great places for finding original pictures, jewellery and ceramics"
            },
            {
              "number": 13,
              "prompt": "Clothes designed by entrants for the Young Fashion competition must",
              "options": [
                {
                  "key": "A",
                  "text": "be modelled by the designers themselves."
                },
                {
                  "key": "B",
                  "text": "be inspired by aspects of contemporary culture."
                },
                {
                  "key": "C",
                  "text": "be made from locally produced materials."
                }
              ],
              "answer": "B",
              "explanation": "This year they’ve been asked to design an outfit based on ideas from the music and technology that’s part of their everyday life"
            },
            {
              "number": 14,
              "prompt": "Car parking is free in some car parks if you",
              "options": [
                {
                  "key": "A",
                  "text": "stay for less than an hour."
                },
                {
                  "key": "B",
                  "text": "buy something in the shops."
                },
                {
                  "key": "C",
                  "text": "park in the evenings or at weekends."
                }
              ],
              "answer": "B",
              "explanation": "if you can present a receipt from one of the local stores, you’ll not be charged at all."
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
              "prompt": "The Reynolds House",
              "answer": "H",
              "explanation": "The Reynolds House is one of the oldest houses in the city, and is open to the public. It’s on the north side of Crawley Road, next to the footpath that leads to the public gardens."
            },
            {
              "number": 16,
              "prompt": "The Thumb",
              "answer": "C",
              "explanation": "The Thumb’s is just what its name suggests, but it’s about 10 metres high. You’ll see it on Hill Road, across the road from the Bank."
            },
            {
              "number": 17,
              "prompt": "The Museum",
              "answer": "F",
              "explanation": "The Museum’s got a particularly fine collection of New Zealand landscapes. It’s on the east side of the Sheepmarket, on City Road. It’s on the other side of the road from the public gardens, immediately facing the junction with Hill Road."
            },
            {
              "number": 18,
              "prompt": "The Contemporary Art Gallery",
              "answer": "G",
              "explanation": "The Contemporary Art Gallery is on a little road that leads off Station Square, not far from the public gardens. The road ends at the gallery - it doesn’t go anywhere else."
            },
            {
              "number": 19,
              "prompt": "The Warner Gallery",
              "answer": "I",
              "explanation": "The Warner Gallery specialises in 19th-century art. It’s on City Road, near the junction with Crawley Road, on the same side of the road as the public gardens."
            },
            {
              "number": 20,
              "prompt": "Nucleus",
              "answer": "B",
              "explanation": "Finally, if you’re interested in purchasing high quality artwork, the place to go is Nucleus. You need to go from Crawley Road up through Station Square and east along Hill Road until you get to a small winding road turning off. Go up there and it’s on your right - if you get to City Road you’ve gone too far."
            }
          ],
          "mapImage": "Cambridge 12 Test 4 map.png",
          "id": "g15"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 21–24",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Stages of presentation Work still to be done"
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "subheader",
              "text": "Organise notes"
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "subheader",
              "text": "No further work needed"
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "subheader",
              "text": "No further work needed"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Introduce Giannetti’s book containing a _______ of adaptations",
              "answer": [
                "classification"
              ],
              "wordLimit": 1,
              "explanation": "So I thought I’d start with Giannetti, who’s professor of film and literature, and in one of his books he came up with a straightforward classification of film adaptations based on how faithful they are to the original plays and novels."
            },
            {
              "number": 22,
              "prompt": "Ask class to suggest the _______ adaptations",
              "answer": [
                "worst"
              ],
              "wordLimit": 1,
              "explanation": "I thought that next I’d ask the class to come up with the worst examples of Shakespeare adaptations that they’ve seen, and to say why."
            },
            {
              "number": 23,
              "prompt": "Present Rachel Malchow’s ideas Prepare some _______",
              "answer": [
                "slides"
              ],
              "wordLimit": 1,
              "explanation": "OK, well, I’d better do some slides instead, saying how various films relate to what she says."
            },
            {
              "number": 24,
              "prompt": "Discuss relationship between adaptations and _______ at the time of making the film",
              "answer": [
                "issues"
              ],
              "wordLimit": 1,
              "explanation": "Next I want to say something about how plays may be chosen for adaptation because they’re concerned with issues of the time when the film is made."
            }
          ],
          "formTitle": "Presentation of film adaptations of Shakespeare’s plays",
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What do the speakers say about each of the following films? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "clearly shows the historical period"
            },
            {
              "key": "B",
              "text": "contains only parts of the play"
            },
            {
              "key": "C",
              "text": "is too similar to another kind of film"
            },
            {
              "key": "D",
              "text": "turned out to be unpopular with audiences"
            },
            {
              "key": "E",
              "text": "presents the play in a different period from the original"
            },
            {
              "key": "F",
              "text": "sets the original in a different country"
            },
            {
              "key": "G",
              "text": "incorporates a variety of art forms"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Ran",
              "answer": "F",
              "explanation": "It was a very loose adaptation, using the same situation and story, but moving it to 16th century Japan instead of 16th century Britain."
            },
            {
              "number": 26,
              "prompt": "Much Ado About Nothing",
              "answer": "A",
              "explanation": "And I think filming it in Italy, where the play is set, makes you see what life was like at the time of the play."
            },
            {
              "number": 27,
              "prompt": "Romeo & Juliet",
              "answer": "E",
              "explanation": "Er, next, I thought Romeo & Juliet, the 1996 film, which moves the action into the present day."
            },
            {
              "number": 28,
              "prompt": "Hamlet",
              "answer": "C",
              "explanation": "Yes, but I’ve picked the 1996 film of Hamlet. It included every line of the text, but it’s more like a typical action hero movie"
            },
            {
              "number": 29,
              "prompt": "Prospero’s Books",
              "answer": "G",
              "explanation": "Then there’s Prospero’s Books, based on The Tempest. That was really innovative, from a stylistic point of view."
            },
            {
              "number": 30,
              "prompt": "Looking for Richard",
              "answer": "B",
              "explanation": "Yes, it did. I also want to mention Looking for Richard. Did you ever see it?"
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
              "text": "Past research focused on noise level (measured in decibels) and people’s responses."
            },
            {
              "kind": "static",
              "text": "Noise ‘maps’ show that the highest noise levels are usually found on roads do not show other sources of noise, e.g. when windows are open or people’s neighbours are in their"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "ignore variation in people’s perceptions of noise have made people realize that the noise is a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "issue that must be dealt with",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "subheader",
              "text": "Different types of noise"
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
              "kind": "subheader",
              "text": "What people want"
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
              "text": "Understanding sound as an art form"
            },
            {
              "kind": "static",
              "text": "We need to know how sound relates to"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "what can be learnt from psychology about the effects of sound whether physics can help us understand the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "of sound",
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
                "garden"
              ],
              "wordLimit": 1,
              "explanation": "/ gardens So they ignore important issues such as the noise someone might hear from the open windows or gardens of their neighbours"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "political"
              ],
              "wordLimit": 1,
              "explanation": "they’ve been useful in providing information and raising awareness that noise matters, we need to deal with it and so it’s a political matter."
            },
            {
              "number": 33,
              "prompt": "Problems caused by noise sleep disturbance increase in amount of stress effect on the _______ of schoolchildren",
              "answer": [
                "work"
              ],
              "wordLimit": 1,
              "explanation": "/ study if schoolchildren don’t have a quiet place to study, their work will suffer."
            },
            {
              "number": 34,
              "prompt": "Some noises can be considered pleasant e.g. the sound of a _______ in a town",
              "answer": [
                "fountain"
              ],
              "wordLimit": 1,
              "explanation": "Some types of sounds that most people would probably think of as nice and relaxing might well score quite highly in decibel levels - think of the sound made by a fountain in a town square, for example."
            },
            {
              "number": 35,
              "prompt": "To investigate this, researchers may use methods from _______ sciences e.g. questionnaires",
              "answer": [
                "social"
              ],
              "wordLimit": 1,
              "explanation": "Instead, many researchers are using social science techniques, studying people’s emotional response to sound by using questionnaires and so on."
            },
            {
              "number": 36,
              "prompt": "Plenty of activity in urban environments which are _______ , but also allow people to relax",
              "answer": [
                "lively"
              ],
              "wordLimit": 1,
              "explanation": "a city needs to have a sense of activity, so it needs to be lively, with sounds like the clack of high heels on a pavement or the hiss of a coffee machine, but these mustn’t be too intrusive, because at the same time we need to be able to relax."
            },
            {
              "number": 37,
              "prompt": "But architects and town planners do not get much _______ in acoustics regard sound as the responsibility of engineers",
              "answer": [
                "training"
              ],
              "wordLimit": 1,
              "explanation": "One of the major problems in achieving this will be getting architects and town planners to use the research. Apart from studying the basics of acoustics, these people receive very little training in this area."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "culture"
              ],
              "wordLimit": 1,
              "explanation": "We need to develop a complex understanding of many factors. What is the relationship between sound and culture?"
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "nature"
              ],
              "wordLimit": 1,
              "explanation": "Can we learn anything from physics about the nature of sound itself?"
            },
            {
              "number": 40,
              "prompt": "Virtual reality programs advantage: predict the effect of buildings current disadvantage: they are _______",
              "answer": [
                "silent"
              ],
              "wordLimit": 1,
              "explanation": "architects and town planners already use virtual reality - but these programs are silent."
            }
          ],
          "formTitle": "Noise in Cities",
          "id": "g31"
        }
      ]
    }
  ]
}
$c12t4l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 13' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 13',
  'Test 1',
  'academic',
  2004,
  $c13t1l$
{
  "audioPath": "Cambridge 13 Test 1.mp3",
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
              "kind": "static",
              "text": "Cookery Class Focus Other Information"
            },
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "The Food …Studio… how to"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "and cook with seasonal products small classes also offers",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "classes clients who return get a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "discount",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Bond’s Cookery"
            },
            {
              "kind": "static",
              "text": "School food that is"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "includes recipes to strengthen your",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "they have a free",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "subheader",
              "text": "Every"
            },
            {
              "kind": "subheader",
              "text": "Thursday"
            },
            {
              "kind": "static",
              "text": "The"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "mainly",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "food located near the",
              "noBullet": true
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
              "prompt": "_______",
              "answer": [
                "choose"
              ],
              "wordLimit": 1,
              "explanation": "They focus on seasonal products, and as well as teaching you how to cook them, they also show you how to choose them."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "private"
              ],
              "wordLimit": 1,
              "explanation": "And could I get a private lesson there?"
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "20"
              ],
              "wordLimit": 1,
              "explanation": "% / 20 percent And this company has a special deal for clients where they offer a discount of 20 percent if you return for a further class."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "healthy"
              ],
              "wordLimit": 1,
              "explanation": "They concentrate on teaching you to prepare healthy food, and they have quite a lot of specialist staff."
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "bones"
              ],
              "wordLimit": 1,
              "explanation": "It’s more to do with recipes that look at specific needs, like including ingredients that will help build up your bones and make them stronger, that sort of thing."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "lecture"
              ],
              "wordLimit": 1,
              "explanation": "And if you want to know more about them, every Thursday evening they have a lecture at the school."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "Arretsa"
              ],
              "wordLimit": 1,
              "explanation": "That’s got a rather strange name, it’s called The Arretsa Centre"
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "vegetarian"
              ],
              "wordLimit": 1,
              "explanation": "They do a bit of meat and fish cookery but they mostly specialise in vegetarian dishes."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "market"
              ],
              "wordLimit": 1,
              "explanation": "In fact, I think I might have seen that school today. Is it just by the market?"
            },
            {
              "number": 10,
              "prompt": "Centre a special course in skills with a _______ is sometimes available",
              "answer": [
                "knife"
              ],
              "wordLimit": 1,
              "explanation": "And they also offer a special two-hour course in how to use a knife."
            }
          ],
          "formTitle": "COOKERY CLASSES",
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
          "label": "Questions 11–13",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "Why are changes needed to traffic systems in Granford?",
              "options": [
                {
                  "key": "A",
                  "text": "The number of traffic accidents has risen."
                },
                {
                  "key": "B",
                  "text": "The amount of traffic on the roads has increased."
                },
                {
                  "key": "C",
                  "text": "The types of vehicles on the roads have changed."
                }
              ],
              "answer": "B",
              "explanation": "But it’s the overall rise in the volume of traffic of all kinds that’s concerning us."
            },
            {
              "number": 12,
              "prompt": "In a survey, local residents particularly complained about",
              "options": [
                {
                  "key": "A",
                  "text": "dangerous driving by parents."
                },
                {
                  "key": "B",
                  "text": "pollution from trucks and lorries."
                },
                {
                  "key": "C",
                  "text": "inconvenience from parked cars."
                }
              ],
              "answer": "C",
              "explanation": "People were very concerned about the lack of visibility on some roads due to cars parked along the sides of the roads."
            },
            {
              "number": 13,
              "prompt": "According to the speaker, one problem with the new regulations will be",
              "options": [
                {
                  "key": "A",
                  "text": "raising money to pay for them."
                },
                {
                  "key": "B",
                  "text": "finding a way to make people follow them."
                },
                {
                  "key": "C",
                  "text": "getting the support of the police."
                }
              ],
              "answer": "B",
              "explanation": "But, of course, it’s no good introducing new regulations if we don’t have a way of making sure that everyone obeys them"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 14–20",
          "instructions": "Label the map below. Write the correct letter, A–I, next to Questions 14–20.",
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
              "number": 14,
              "prompt": "New traffic lights",
              "answer": "E",
              "explanation": "we already have a set of traffic lights in the High Street at the junction with Station Road, but we’re planning to have another set at the other end, at the School Road junction"
            },
            {
              "number": 15,
              "prompt": "Pedestrian crossing",
              "answer": "D",
              "explanation": "we decided to locate it on the High Street, crossing the road in front of the supermarket."
            },
            {
              "number": 16,
              "prompt": "Parking allowed",
              "answer": "B",
              "explanation": "At present, parking isn’t allowed on the High Street outside the library, but we’re going to change that, and allow parking there"
            },
            {
              "number": 17,
              "prompt": "New ‘No Parking’ sign",
              "answer": "G",
              "explanation": "There’ll be a new ‘No Parking’ sign on School Road, just by the entrance to the school"
            },
            {
              "number": 18,
              "prompt": "New disabled parking spaces",
              "answer": "C",
              "explanation": "we’ve got two new disabled parking spaces on the side road up towards the bank."
            },
            {
              "number": 19,
              "prompt": "Widened pavement",
              "answer": "H",
              "explanation": "We also plan to widen the pavement on School Road. We think we can manage to get an extra half-metre on the bend just before you get to the school, on the same side of the road."
            },
            {
              "number": 20,
              "prompt": "Lorry loading/unloading restrictions",
              "answer": "I",
              "explanation": "we’ve introduced new restrictions on loading and unloading for the supermarket, so lorries will only be allowed to stop there before 8 am. That’s the supermarket on School Road"
            }
          ],
          "mapImage": "Cambridge 13 Test 1 map.png",
          "id": "g14"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Part 3",
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 21–25",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "Why is Jack interested in investigating seed germination?",
              "options": [
                {
                  "key": "A",
                  "text": "He may do a module on a related topic later on."
                },
                {
                  "key": "B",
                  "text": "He wants to have a career in plant science."
                },
                {
                  "key": "C",
                  "text": "He is thinking of choosing this topic for his dissertation."
                }
              ],
              "answer": "A",
              "explanation": "No, there’s an optional module on seed structure and function in the third year that I might do, so I thought it might be useful for that."
            },
            {
              "number": 22,
              "prompt": "Jack and Emma agree the main advantage of their present experiment is that it can be",
              "options": [
                {
                  "key": "A",
                  "text": "described very easily."
                },
                {
                  "key": "B",
                  "text": "carried out inside the laboratory."
                },
                {
                  "key": "C",
                  "text": "completed in the time available."
                }
              ],
              "answer": "C",
              "explanation": "OK. We’d need to allow time for the seeds to come up."
            },
            {
              "number": 23,
              "prompt": "What do they decide to check with their tutor?",
              "options": [
                {
                  "key": "A",
                  "text": "whether their aim is appropriate"
                },
                {
                  "key": "B",
                  "text": "whether anyone else has chosen this topic"
                },
                {
                  "key": "C",
                  "text": "whether the assignment contributes to their final grade"
                }
              ],
              "answer": "B",
              "explanation": "But we need to be sure we’re the only ones doing it."
            },
            {
              "number": 24,
              "prompt": "They agree that Graves’ book on seed germination is disappointing because",
              "options": [
                {
                  "key": "A",
                  "text": "it fails to cover recent advances in seed science."
                },
                {
                  "key": "B",
                  "text": "the content is irrelevant for them."
                },
                {
                  "key": "C",
                  "text": "its focus is very theoretical."
                }
              ],
              "answer": "C",
              "explanation": "I found it quite hard to follow - lots about the theory, which I hadn’t expected"
            },
            {
              "number": 25,
              "prompt": "What does Jack say about the article on seed germination by Lee Hall?",
              "options": [
                {
                  "key": "A",
                  "text": "The diagrams of plant development are useful."
                },
                {
                  "key": "B",
                  "text": "The analysis of seed germination statistics is thorough."
                },
                {
                  "key": "C",
                  "text": "The findings on seed germination after fires are surprising."
                }
              ],
              "answer": "B",
              "explanation": "His analysis of figures comparing the times of the fires and the proportion of seeds that germinated was done in a lot of detail - very impressive"
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 26–30",
          "instructions": "Complete the flow-chart below. Choose FIVE answers from the box, A–H.",
          "summaryTitle": "",
          "summaryText": "Stage in the experiment\nSelect seeds of different {26} and sizes.\n↓\nMeasure and record the {27} and size of each one.\n↓\nDecide on the {28} to be used.\n↓\nUse a different {29} for each seed and label it.\n↓\nAfter about 3 weeks, record the plant’s {30} .\n↓\nInvestigate the findings.",
          "wordBank": [
            {
              "key": "A",
              "text": "container"
            },
            {
              "key": "B",
              "text": "soil"
            },
            {
              "key": "C",
              "text": "weight"
            },
            {
              "key": "D",
              "text": "condition"
            },
            {
              "key": "E",
              "text": "height"
            },
            {
              "key": "F",
              "text": "colour"
            },
            {
              "key": "G",
              "text": "types"
            },
            {
              "key": "H",
              "text": "depths"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "",
              "answer": "G",
              "explanation": "So, how many sorts do we need? About four different ones?"
            },
            {
              "number": 27,
              "prompt": "",
              "answer": "C",
              "explanation": "Then, for each seed we need to find out how much it weighs"
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "H",
              "explanation": "And we also need to decide how deep we’re going to plant the seeds"
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "A",
              "explanation": "Do you think we can plant several seeds together in the same plant pot?"
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "E",
              "explanation": "Then we see if our plants have come up, and write down how tall they’ve grown."
            }
          ],
          "id": "g26"
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
              "text": "Introduction"
            },
            {
              "kind": "static",
              "text": "Recent urban developments represent massive environmental changes. It was previously thought that only a few animals were suitable for city life, e.g. the"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "- because of its general adaptability the pigeon - because walls of city buildings are similar to",
              "noBullet": true
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
              "text": "Recent research"
            },
            {
              "kind": "static",
              "text": "Emilie Snell-Rood studied small urbanised mammal specimens from museums in"
            },
            {
              "kind": "static",
              "text": "Minnesota."
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
              "kind": "question",
              "number": 36
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "Jonathan Atwell studies how animals respond to urban environments."
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
              "text": "Long-term possibilities"
            },
            {
              "kind": "static",
              "text": "Species of animals may develop which are unique to cities. However, some changes may not be"
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
                "crow"
              ],
              "wordLimit": 1,
              "explanation": "One species which is well known as being highly adaptable is the crow, and there’ve been various studies about how they manage to learn new skills"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "cliffs"
              ],
              "wordLimit": 1,
              "explanation": "the pigeon, because they’re able to perch on ledges on the walls of city buildings, just like they once perched on cliffs by the sea."
            },
            {
              "number": 33,
              "prompt": "In fact, many urban animals are adapting with unusual _______",
              "answer": [
                "speed"
              ],
              "wordLimit": 1,
              "explanation": "And one thing that researchers are finding especially interesting is the speed with which they’re doing this - we’re not talking about gradual evolution here - these animals are changing fast."
            },
            {
              "number": 34,
              "prompt": "- She found the size of their _______ had increased.",
              "answer": [
                "brain"
              ],
              "wordLimit": 1,
              "explanation": "/ brains And she found that during that time, these small mammals had experienced a jump in brain size when compared to rural mammals."
            },
            {
              "number": 35,
              "prompt": "- She suggests this may be due to the need to locate new sources of _______ and to deal with new dangers.",
              "answer": [
                "food"
              ],
              "wordLimit": 1,
              "explanation": "And Snell-Rood thinks that this change might reflect the cognitive demands of adjusting to city life - having to look in different places to find food, for example, and coping with a whole new set of dangers."
            },
            {
              "number": 36,
              "prompt": "Catarina Miranda focused on the _______ of urban and rural blackbirds.",
              "answer": [
                "behaviour"
              ],
              "wordLimit": 1,
              "explanation": "/ behaviours / behavior / behaviors there’s another biologist called Catarina Miranda who’s done some experiments with blackbirds living in urban and rural areas. And she’s been looking not at their anatomy but at their behaviour."
            },
            {
              "number": 37,
              "prompt": "- She found urban birds were often braver, but were afraid of situations that were _______",
              "answer": [
                "new"
              ],
              "wordLimit": 1,
              "explanation": "But there’s one type of situation that does seem to frighten the urban blackbirds, and that’s anything new - anything they haven’t experienced before."
            },
            {
              "number": 38,
              "prompt": "- He found that some animals respond to _______ by producing lower levels of hormones.",
              "answer": [
                "stress"
              ],
              "wordLimit": 1,
              "explanation": "He’s found that when they’re under stress, their endocrine systems react by reducing the amount of hormones such as corticosterone into their blood."
            },
            {
              "number": 39,
              "prompt": "Sarah Partan’s team found urban squirrels use their _______ to help them communicate.",
              "answer": [
                "tail"
              ],
              "wordLimit": 1,
              "explanation": "/ tails they’ve been looking at how squirrels communicate in an urban environment, and they’ve found that a routine part of their communication is carried out by waving their tails."
            },
            {
              "number": 40,
              "prompt": "_______ .",
              "answer": [
                "permanent"
              ],
              "wordLimit": 1,
              "explanation": "One possibility is that we may see completely new species developing in cities. But on the other hand, it’s possible that not all of these adaptations will be permanent"
            }
          ],
          "formTitle": "Effects of urban environments on animals",
          "id": "g31"
        }
      ]
    }
  ]
}
$c13t1l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 13' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 13',
  'Test 2',
  'academic',
  2004,
  $c13t2l$
{
  "audioPath": "Cambridge 13 Test 2.mp3",
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
              "text": "Name of club secretary: Jim …..Hunter….."
            },
            {
              "kind": "subheader",
              "text": "Membership"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Australia"
            },
            {
              "kind": "subheader",
              "text": "Recreational membership costs $108"
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
              "text": "Training rides"
            },
            {
              "kind": "static",
              "text": "Chance to improve cycling skills and fitness"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "subheader",
              "text": "Weekly sessions"
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
              "kind": "subheader",
              "text": "Further information"
            },
            {
              "kind": "subheader",
              "text": "Rides are about an hour and a half"
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
              "prompt": "Full membership costs $260; this covers cycling and _______ all over",
              "answer": [
                "races"
              ],
              "wordLimit": 1,
              "explanation": "that covers you not just for ordinary cycling but also for races both here in the city and also in other parts of Australia."
            },
            {
              "number": 2,
              "prompt": "Cost of membership includes the club fee and _______",
              "answer": [
                "insurance"
              ],
              "wordLimit": 1,
              "explanation": "both types of membership include the club fee of 20 dollars. They also provide insurance in case you have an accident"
            },
            {
              "number": 3,
              "prompt": "The club kit is made by a company called _______",
              "answer": [
                "Jerriz"
              ],
              "wordLimit": 1,
              "explanation": "You can find them online: they’re called Jerriz."
            },
            {
              "number": 4,
              "prompt": "Level B: speed about _______ kph",
              "answer": [
                "25"
              ],
              "wordLimit": 1,
              "explanation": "/ twenty-five If you can do about 25 kilometres an hour, you’d probably be level B"
            },
            {
              "number": 5,
              "prompt": "- Tuesdays at _______.30 am, meet at the 5",
              "answer": [
                "stadium"
              ],
              "wordLimit": 1,
              "explanation": "There’s one on Tuesdays, and for that one you meet at 5.30 am, and the meeting point’s the stadium"
            },
            {
              "number": 6,
              "prompt": "- Thursdays at 5.30 am, meet at the entrance to the _______",
              "answer": [
                "park"
              ],
              "wordLimit": 1,
              "explanation": "That’s on Thursdays. It starts at the same time, but they meet at the main gate to the park."
            },
            {
              "number": 7,
              "prompt": "Members often have _______ together afterwards",
              "answer": [
                "coffee"
              ],
              "wordLimit": 1,
              "explanation": "And the members often go somewhere for coffee afterwards"
            },
            {
              "number": 8,
              "prompt": "There is not always a _______ with the group on these rides",
              "answer": [
                "leader"
              ],
              "wordLimit": 1,
              "explanation": "And does each ride have a leader?"
            },
            {
              "number": 9,
              "prompt": "Check and print the _______ on the website beforehand",
              "answer": [
                "route"
              ],
              "wordLimit": 1,
              "explanation": "If you check the club website, you’ll see that the route for each ride is clearly marked. So you can just print that out"
            },
            {
              "number": 10,
              "prompt": "Bikes must have _______",
              "answer": [
                "lights"
              ],
              "wordLimit": 1,
              "explanation": "so you need to make sure your bike’s got lights."
            }
          ],
          "formTitle": "South City Cycling Club",
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
          "label": "Questions 11–16",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "How much time for volunteering does the company allow per employee?",
              "options": [
                {
                  "key": "A",
                  "text": "two hours per week"
                },
                {
                  "key": "B",
                  "text": "one day per month"
                },
                {
                  "key": "C",
                  "text": "8 hours per year"
                }
              ],
              "answer": "C",
              "explanation": "The company will pay for eight hours of your time. That can be used over one or two days all at once, or spread over several months throughout the year."
            },
            {
              "number": 12,
              "prompt": "In feedback almost all employees said that volunteering improved their",
              "options": [
                {
                  "key": "A",
                  "text": "chances of promotion."
                },
                {
                  "key": "B",
                  "text": "job satisfaction."
                },
                {
                  "key": "C",
                  "text": "relationships with colleagues."
                }
              ],
              "answer": "B",
              "explanation": "Because they felt they were doing something really useful, nearly everyone agreed that volunteering made them feel more motivated at work."
            },
            {
              "number": 13,
              "prompt": "Last year some staff helped unemployed people with their",
              "options": [
                {
                  "key": "A",
                  "text": "literacy skills."
                },
                {
                  "key": "B",
                  "text": "job applications."
                },
                {
                  "key": "C",
                  "text": "communication skills."
                }
              ],
              "answer": "C",
              "explanation": "Our staff were able to help them improve their telephone skills, such as writing down messages and speaking with confidence to potential customers, which they had found quite difficult."
            },
            {
              "number": 14,
              "prompt": "This year the company will start a new volunteering project with a local",
              "options": [
                {
                  "key": "A",
                  "text": "school."
                },
                {
                  "key": "B",
                  "text": "park."
                },
                {
                  "key": "C",
                  "text": "charity."
                }
              ],
              "answer": "B",
              "explanation": "But we’re also agreed to help out on a conservation project in Redfern Park."
            },
            {
              "number": 15,
              "prompt": "Where will the Digital Inclusion Day be held?",
              "options": [
                {
                  "key": "A",
                  "text": "at the company’s training facility"
                },
                {
                  "key": "B",
                  "text": "at a college"
                },
                {
                  "key": "C",
                  "text": "in a community centre"
                }
              ],
              "answer": "B",
              "explanation": "this year, instead of hosting the event in our own training facility, we’re using the ICT suite at Hill College"
            },
            {
              "number": 16,
              "prompt": "What should staff do if they want to take part in the Digital Inclusion Day?",
              "options": [
                {
                  "key": "A",
                  "text": "fill in a form"
                },
                {
                  "key": "B",
                  "text": "attend a training workshop"
                },
                {
                  "key": "C",
                  "text": "get permission from their manager"
                }
              ],
              "answer": "A",
              "explanation": "If you’re interested in taking part, please go to the volunteering section of our website and complete the relevant form."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. What TWO things are mentioned about the participants on the last Digital Inclusion Day?",
          "options": [
            {
              "key": "A",
              "text": "They were all over 70."
            },
            {
              "key": "B",
              "text": "They never used their computer."
            },
            {
              "key": "C",
              "text": "Their phones were mostly old-fashioned."
            },
            {
              "key": "D",
              "text": "They only used their phones for making calls."
            },
            {
              "key": "E",
              "text": "They initially showed little interest."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "What TWO things are mentioned about the participants on the last Digital Inclusion Day?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "a mobile phone, but these tended to be outdated model A few were keen to learn but most were quite dismissive at first - they couldn’t see the point of updating their skills."
            },
            {
              "number": 18,
              "prompt": "What TWO things are mentioned about the participants on the last Digital Inclusion Day?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "a mobile phone, but these tended to be outdated model A few were keen to learn but most were quite dismissive at first - they couldn’t see the point of updating their skills."
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. What TWO activities on the last Digital Inclusion Day did participants describe as useful?",
          "options": [
            {
              "key": "A",
              "text": "learning to use tables"
            },
            {
              "key": "B",
              "text": "communicating with family"
            },
            {
              "key": "C",
              "text": "shopping online"
            },
            {
              "key": "D",
              "text": "playing online games"
            },
            {
              "key": "E",
              "text": "sending emails"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "What TWO activities on the last Digital Inclusion Day did participants describe as useful?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "participants all said they felt much more confident about using social media to keep in touch with their grandchildren A lot of them also said playing online games would help them make new friends and keep their brains active."
            },
            {
              "number": 20,
              "prompt": "What TWO activities on the last Digital Inclusion Day did participants describe as useful?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "participants all said they felt much more confident about using social media to keep in touch with their grandchildren A lot of them also said playing online games would help them make new friends and keep their brains active."
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
          "label": "Questions 21–25",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "Russ says that his difficulty in planning the presentation is due to",
              "options": [
                {
                  "key": "A",
                  "text": "his lack of knowledge about the topic."
                },
                {
                  "key": "B",
                  "text": "his uncertainly about what he should try to achieve."
                },
                {
                  "key": "C",
                  "text": "the short time that he has for preparation."
                }
              ],
              "answer": "B",
              "explanation": "Should I assume the other students don’t know much, and give them a kind of general introduction, or should I try and make them share my fascination with a particular aspect?"
            },
            {
              "number": 22,
              "prompt": "Russ and his tutor agree that his approach in the presentation will be",
              "options": [
                {
                  "key": "A",
                  "text": "to concentrate on how nanotechnology is used in one field."
                },
                {
                  "key": "B",
                  "text": "to follow the chronological development of nanotechnology."
                },
                {
                  "key": "C",
                  "text": "to show the range of applications of nanotechnology."
                }
              ],
              "answer": "A",
              "explanation": "Or another way would be to focus on its impact in one particular area"
            },
            {
              "number": 23,
              "prompt": "In connection with slides, the tutor advises Russ to",
              "options": [
                {
                  "key": "A",
                  "text": "talk about things that he can find slides to illustrate."
                },
                {
                  "key": "B",
                  "text": "look for slides to illustrate the points he makes."
                },
                {
                  "key": "C",
                  "text": "consider omitting slides altogether."
                }
              ],
              "answer": "C",
              "explanation": "While it can be good to includes slides, you could end up spending too long looking for suitable ones. You might find it better to leave them out."
            },
            {
              "number": 24,
              "prompt": "They both agree that the best way for Russ to start his presentation is",
              "options": [
                {
                  "key": "A",
                  "text": "to encourage the audience to talk."
                },
                {
                  "key": "B",
                  "text": "to explain what Russ intends to do."
                },
                {
                  "key": "C",
                  "text": "to provide an example."
                }
              ],
              "answer": "C",
              "explanation": "So, maybe I should mention a particular way that nanotechnology is used, to focus people’s attention."
            },
            {
              "number": 25,
              "prompt": "What does the tutor advise Russ to do next while preparing his presentation?",
              "options": [
                {
                  "key": "A",
                  "text": "summarise the main point he wants to make"
                },
                {
                  "key": "B",
                  "text": "read the notes he has already made"
                },
                {
                  "key": "C",
                  "text": "list the topics he wants to cover"
                }
              ],
              "answer": "A",
              "explanation": "write a single short sentence that ties together the whole presentation"
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 26–30",
          "instructions": "What comments do the speakers make about each of the following aspects of Russ’s previous presentation? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "lacked a conclusion"
            },
            {
              "key": "B",
              "text": "useful in the future"
            },
            {
              "key": "C",
              "text": "not enough"
            },
            {
              "key": "D",
              "text": "sometimes distracting"
            },
            {
              "key": "E",
              "text": "showed originality"
            },
            {
              "key": "F",
              "text": "covered a wide range"
            },
            {
              "key": "G",
              "text": "not too technical"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "structure",
              "answer": "A",
              "explanation": "With regard to the structure. I felt that you ended rather abruptly, without rounding it off."
            },
            {
              "number": 27,
              "prompt": "eye contact",
              "answer": "C",
              "explanation": "And you made very little eye contact with the audience, because you were looking down at your notes most of the time. You need to be looking at the audience and only occasionally glancing at your notes."
            },
            {
              "number": 28,
              "prompt": "body language",
              "answer": "D",
              "explanation": "Your body language was a little odd. Every time you showed a slide, you turned your back on the audience so you could look at it - you should have been looking at your laptop. And you kept scratching your head, so I found myself wondering when you were next going to do that, instead of listening to what you were saying!"
            },
            {
              "number": 29,
              "prompt": "choice of words",
              "answer": "G",
              "explanation": "You used a few words that are specific to the field, but you always explained what they meant, so the audience wouldn’t have had any difficulty understanding."
            },
            {
              "number": 30,
              "prompt": "handouts",
              "answer": "B",
              "explanation": "the handouts you prepared were well thought out. They were a good summary of your presentation, which people would be able to refer to later on."
            }
          ],
          "id": "g26"
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
              "kind": "question",
              "number": 31
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": ", which does not involve recalling",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "information",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Forming episodic memories involves three steps:"
            },
            {
              "kind": "static",
              "text": "Encoding involves receiving and processing information the more"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "Given to an event, the more successfully it can be encoded to remember a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": ", it is useful to have a strategy for encoding such information",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Consolidation how memories are strengthened and stored most effective when memories can be added to a"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "Of related information the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "Of retrieval affects the strength of memories",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "Episodic memory impairments these affect people with a wide range of medical conditions games which stimulate the"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "have been found to help people with schizophrenia children with autism may have difficulty forming episodic memories - possibly because their concept of the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "may be absent memory training may help autistic children develop social skills",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "the ability to recall details, e.g. the time and _______ of past events different to semantic memory - the ability to remember general information about the",
              "answer": [
                "location"
              ],
              "wordLimit": 1,
              "explanation": "Episodic memories include various details about these events, for example, when an event happened and other information such as the location."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "world"
              ],
              "wordLimit": 1,
              "explanation": "This is the type of factual memory that we have in common with everyone else - that is your general knowledge of the world."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "personal"
              ],
              "wordLimit": 1,
              "explanation": "Unlike episodic memory, semantic memory isn’t dependent on recalling personal experiences."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "attention"
              ],
              "wordLimit": 1,
              "explanation": "The degree to which you can successfully encode information depends on the level of attention you give to an event while it’s actually happening."
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "name"
              ],
              "wordLimit": 1,
              "explanation": "if you were introduced to someone called Charlie, you might make the connection that your uncle has the same name. Future recollection of Charlie’s name is much easier if you have a strategy to help you encode it."
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "network"
              ],
              "wordLimit": 1,
              "explanation": "Consolidation is most effective when the information being stored can be linked to an existing network of information."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "frequency"
              ],
              "wordLimit": 1,
              "explanation": "Forming strong memories depends on the frequency with which you try to retrieve them."
            },
            {
              "number": 38,
              "prompt": "Retrieval memory retrieval often depends on using a prompt, e.g. the _______ Of an object near to the place where you left your car",
              "answer": [
                "colour"
              ],
              "wordLimit": 1,
              "explanation": "/ color These help episodic memory retrieval by acting as a prompt. For example, when recalling where you parked your car you may use the colour of a sign close to where you parked"
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "brain"
              ],
              "wordLimit": 1,
              "explanation": "Recent studies have shown that computer- assisted games designed to keep the brain active can help improve their episodic memory."
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "self"
              ],
              "wordLimit": 1,
              "explanation": "Episodic memories can help people connect with others, for instance by sharing intimate details about their past; something individuals with autism often have problems with. This may be caused by an absence of a sense of self."
            }
          ],
          "formTitle": "Episodic memory",
          "id": "g31"
        }
      ]
    }
  ]
}
$c13t2l$,
  true
);

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

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 13' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 13',
  'Test 4',
  'academic',
  2004,
  $c13t4l$
{
  "audioPath": "Cambridge 13 Test 4.mp3",
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
              "text": "Alex complete his training in …..2014……"
            },
            {
              "kind": "static",
              "text": "About the applicant:"
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
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "Benefits of doing training at JPNW:"
            },
            {
              "kind": "static",
              "text": "Lots of opportunities because of the size of the organisation."
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "The training experience increases people’s confidence a lot."
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
              "text": "Advice for interview:"
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
              "prompt": "At first, Alex did his training in the _______ department.",
              "answer": [
                "Finance"
              ],
              "wordLimit": 1,
              "explanation": "I did my initial training in Finance."
            },
            {
              "number": 2,
              "prompt": "Alex didn’t have a qualification from school in _______ .",
              "answer": [
                "Maths"
              ],
              "wordLimit": 1,
              "explanation": "/ Math / Mathematics I didn’t do well in my exams at school and I was really worried because I failed Maths."
            },
            {
              "number": 3,
              "prompt": "Alex thinks he should have done the diploma in _______ skills.",
              "answer": [
                "business"
              ],
              "wordLimit": 1,
              "explanation": "I took the one on IT skills but I wish I’d done that one instead."
            },
            {
              "number": 4,
              "prompt": "Age of other trainees: the youngest was _______ .",
              "answer": [
                "17"
              ],
              "wordLimit": 1,
              "explanation": "/ seventeen there was only one person younger than me, how was 17."
            },
            {
              "number": 5,
              "prompt": "Trainees receive the same amount of _______ as permanent staff.",
              "answer": [
                "holiday"
              ],
              "wordLimit": 1,
              "explanation": "/ holidays / vacation / vacations Buy you get the same number of days’ holiday as everyone else."
            },
            {
              "number": 6,
              "prompt": "Trainees go to _______ one day per month.",
              "answer": [
                "college"
              ],
              "wordLimit": 1,
              "explanation": "Yes, one day each month."
            },
            {
              "number": 7,
              "prompt": "The company is in a convenient _______ .",
              "answer": [
                "location"
              ],
              "wordLimit": 1,
              "explanation": "Yes, it’s very close to the train station so the location’s a real advantage."
            },
            {
              "number": 8,
              "prompt": "Don’t wear _______ .",
              "answer": [
                "jeans"
              ],
              "wordLimit": 1,
              "explanation": "Nothing too casual - like jeans"
            },
            {
              "number": 9,
              "prompt": "Don’t be _______ .",
              "answer": [
                "late"
              ],
              "wordLimit": 1,
              "explanation": "Erm, well I know it’s really obvious but arrive in plenty of time."
            },
            {
              "number": 10,
              "prompt": "Make sure you _______ .",
              "answer": [
                "smile"
              ],
              "wordLimit": 1,
              "explanation": "And one other useful piece of advice my manager told me before I had the interview for this job - is to smile."
            }
          ],
          "formTitle": "Alex’s Training",
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
          "label": "Questions 11–16",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "Annie recommends that when cross-country skiing, the visitors should",
              "options": [
                {
                  "key": "A",
                  "text": "get away from the regular trails."
                },
                {
                  "key": "B",
                  "text": "stop to enjoy views of the scenery."
                },
                {
                  "key": "C",
                  "text": "go at a slow speed at the beginning."
                }
              ],
              "answer": "A",
              "explanation": "There are marked trails, but you can also leave these and go off on your own and that’s an experience not to be missed."
            },
            {
              "number": 12,
              "prompt": "What does Annie tell the group about this afternoon’s dog-sled trip?",
              "options": [
                {
                  "key": "A",
                  "text": "Those who want to can take part in a race."
                },
                {
                  "key": "B",
                  "text": "Anyone has the chance to drive a team of dogs."
                },
                {
                  "key": "C",
                  "text": "One group member will be chosen to lead the trail."
                }
              ],
              "answer": "B",
              "explanation": "If you want, you can have your own team for the afternoon and learn how to drive them"
            },
            {
              "number": 13,
              "prompt": "What does Annie say about the team relay event?",
              "options": [
                {
                  "key": "A",
                  "text": "All participants receive a medal."
                },
                {
                  "key": "B",
                  "text": "The course is 4 km long."
                },
                {
                  "key": "C",
                  "text": "Each team is led by a teacher."
                }
              ],
              "answer": "A",
              "explanation": "there’s a medal for everyone who takes part."
            },
            {
              "number": 14,
              "prompt": "On the snow-shoe trip, the visitors will",
              "options": [
                {
                  "key": "A",
                  "text": "visit an old gold mine."
                },
                {
                  "key": "B",
                  "text": "learn about unusual flowers."
                },
                {
                  "key": "C",
                  "text": "climb to the top of a mountain."
                }
              ],
              "answer": "C",
              "explanation": "It’s a long ascent, though not too steep, and walkers generally take a couple of days to get to the summit and return."
            },
            {
              "number": 15,
              "prompt": "The cost of accommodation in the mountain hut includes",
              "options": [
                {
                  "key": "A",
                  "text": "a supply of drinking water."
                },
                {
                  "key": "B",
                  "text": "transport of visitors’ luggage."
                },
                {
                  "key": "C",
                  "text": "cooked meals."
                }
              ],
              "answer": "A",
              "explanation": "It’s got cooking facilities, firewood and water for drinking."
            },
            {
              "number": 16,
              "prompt": "If there is a storm while the visitors are in the hut, they should",
              "options": [
                {
                  "key": "A",
                  "text": "contact the bus driver."
                },
                {
                  "key": "B",
                  "text": "wait until the weather improves."
                },
                {
                  "key": "C",
                  "text": "use the emergency locator beacon."
                }
              ],
              "answer": "B",
              "explanation": "In that case, stay in the hut - generally the storms don’t last long."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "What information does Annie give about skiing on each of the following mountain trails? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "It has a good place to stop and rest."
            },
            {
              "key": "B",
              "text": "It is suitable for all abilities."
            },
            {
              "key": "C",
              "text": "It involves crossing a river."
            },
            {
              "key": "D",
              "text": "It demands a lot of skill."
            },
            {
              "key": "E",
              "text": "It may be closed in bad weather."
            },
            {
              "key": "F",
              "text": "It has some very narrow sections."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Highland Trail",
              "answer": "B",
              "explanation": "This trail’s been designed to give first-timers an experience they’ll enjoy regardless of their age or skill, but it’s also ideal for experts to practise their technique."
            },
            {
              "number": 18,
              "prompt": "Pine Trail",
              "answer": "D",
              "explanation": "But if you’ve fully mastered the techniques needed for hills, it’s great fun."
            },
            {
              "number": 19,
              "prompt": "Stony Trail",
              "answer": "A",
              "explanation": "There’s a shelter half-way where you can sit and take a break and enjoy the afternoon sunshine."
            },
            {
              "number": 20,
              "prompt": "Loser’s Trail",
              "answer": "E",
              "explanation": "check with us before you set out to make sure the trail’s open that day."
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
          "label": "Questions 21–26",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "What was Jack’s attitude to nutritional food labels before this project?",
              "options": [
                {
                  "key": "A",
                  "text": "He didn’t read everything on them."
                },
                {
                  "key": "B",
                  "text": "He didn’t think they were important."
                },
                {
                  "key": "C",
                  "text": "He thought they were too complicated."
                }
              ],
              "answer": "A",
              "explanation": "I’ve never really been concerned enough to check how healthy a product is."
            },
            {
              "number": 22,
              "prompt": "Alice says that before doing this project,",
              "options": [
                {
                  "key": "A",
                  "text": "she was unaware of what certain foods contained."
                },
                {
                  "key": "B",
                  "text": "she was too lazy to read food labels."
                },
                {
                  "key": "C",
                  "text": "she was only interested in the number of calories."
                }
              ],
              "answer": "A",
              "explanation": "I tended to believe claims on packaging like ‘low in fat’. But I now realise that the ‘healthy’ yoghurt I’ve bought for years is full of sugar and that it’s actually quite high in calories."
            },
            {
              "number": 23,
              "prompt": "When discussing supermarket brands of pizza, Jack agrees with Alice that",
              "options": [
                {
                  "key": "A",
                  "text": "the list of ingredients is shocking."
                },
                {
                  "key": "B",
                  "text": "he will hesitate before buying pizza again."
                },
                {
                  "key": "C",
                  "text": "the nutritional label is misleading."
                }
              ],
              "answer": "C",
              "explanation": "Yes, because unless you read the label really carefully, you wouldn’t know that the nutritional values given are for half a pizza."
            },
            {
              "number": 24,
              "prompt": "Jack prefers the daily value system to other labelling systems because it is",
              "options": [
                {
                  "key": "A",
                  "text": "more accessible."
                },
                {
                  "key": "B",
                  "text": "more logical."
                },
                {
                  "key": "C",
                  "text": "more comprehensive."
                }
              ],
              "answer": "C",
              "explanation": "I’m not sure it’s the easiest for people to use but at least you get the full story."
            },
            {
              "number": 25,
              "prompt": "What surprised both students about one flavour of crisps?",
              "options": [
                {
                  "key": "A",
                  "text": "The percentage of artificial additives given was incorrect."
                },
                {
                  "key": "B",
                  "text": "The products did not contain any meat."
                },
                {
                  "key": "C",
                  "text": "The labels did not list all the ingredients."
                }
              ],
              "answer": "B",
              "explanation": "Yeah. I don’t understand how they can get away with calling them chicken flavour when they only contain artificial additives."
            },
            {
              "number": 26,
              "prompt": "What do the students think about research into the impact of nutritional food labelling?",
              "options": [
                {
                  "key": "A",
                  "text": "It did not produce clear results."
                },
                {
                  "key": "B",
                  "text": "It focused on the wrong people."
                },
                {
                  "key": "C",
                  "text": "It made unrealistic recommendations."
                }
              ],
              "answer": "A",
              "explanation": "Those findings weren’t that conclusive"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 27–28",
          "instructions": "Choose TWO letters, A–E. Which TWO things surprised the students about the traffic-light system for nutritional labels?",
          "options": [
            {
              "key": "A",
              "text": "its widespread use"
            },
            {
              "key": "B",
              "text": "the fact that it is voluntary for supermarkets"
            },
            {
              "key": "C",
              "text": "how little research was done before its introduction"
            },
            {
              "key": "D",
              "text": "its unpopularity with food manufacturers"
            },
            {
              "key": "E",
              "text": "the way that certain colours are used"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Which TWO things surprised the students about the traffic-light system for nutritional labels?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Buy it’s not been adopted universally what I couldn’t get over is the fact that it was brought in without enough consultation"
            },
            {
              "number": 28,
              "prompt": "Which TWO things surprised the students about the traffic-light system for nutritional labels?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Buy it’s not been adopted universally what I couldn’t get over is the fact that it was brought in without enough consultation"
            }
          ],
          "id": "g27"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 29–30",
          "instructions": "Choose TWO letters, A–E. Which TWO things are true about the participants in the study on the traffic-light system?",
          "options": [
            {
              "key": "A",
              "text": "They had low literacy levels."
            },
            {
              "key": "B",
              "text": "They were regular consumers of packaged food."
            },
            {
              "key": "C",
              "text": "They were selected randomly."
            },
            {
              "key": "D",
              "text": "They were from all socio-economic groups."
            },
            {
              "key": "E",
              "text": "They were interviewed face-to-face."
            }
          ],
          "questions": [
            {
              "number": 29,
              "prompt": "Which TWO things are true about the participants in the study on the traffic-light system?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Yeah. But it’s good to get feedback from all socio-economic groups. But if they hadn’t interviewed participants face-to-face, they could have used a much bigger sample size."
            },
            {
              "number": 30,
              "prompt": "Which TWO things are true about the participants in the study on the traffic-light system?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Yeah. But it’s good to get feedback from all socio-economic groups. But if they hadn’t interviewed participants face-to-face, they could have used a much bigger sample size."
            }
          ],
          "id": "g29"
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
              "text": "Coffee in the Arab world"
            },
            {
              "kind": "static",
              "text": "These was small-scale trade in wild coffee from Ethiopia."
            },
            {
              "kind": "static",
              "text": "1522: Coffee was approved in the Ottoman court as a type of medicine."
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Coffee arrives in Europe (17th century)"
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
              "text": "Coffee and European colonization"
            },
            {
              "kind": "static",
              "text": "European powers established coffee plantations in their colonies."
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
              "text": "Coffee in the 19th century"
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
              "prompt": "1623: In Constantinople, the ruler ordered the _______ of every coffee house.",
              "answer": [
                "destruction"
              ],
              "wordLimit": 1,
              "explanation": "in 1623 the ruler of Constantinople demanded the destruction of all the coffee houses in the city"
            },
            {
              "number": 32,
              "prompt": "Coffee shops were compared to _______ .",
              "answer": [
                "universities"
              ],
              "wordLimit": 1,
              "explanation": "/ university coffee shops became places where ordinary people, nearly always men, could meet to exchange ideas. Because of this, some people said that these places performed a similar function to universities."
            },
            {
              "number": 33,
              "prompt": "They played an important part in social and _______ changes.",
              "answer": [
                "political"
              ],
              "wordLimit": 1,
              "explanation": "many social movements and political developments had their origins in coffee house discussions."
            },
            {
              "number": 34,
              "prompt": "Types of coffee were often named according to the _______ they came from.",
              "answer": [
                "port"
              ],
              "wordLimit": 1,
              "explanation": "/ ports it’s interesting that the names given to these different types, like Mocha or Java coffee, were often taken from the port they were shipped to Europe from."
            },
            {
              "number": 35,
              "prompt": "In Brazil and the Caribbean, most cultivation depended on _______ .",
              "answer": [
                "slaves"
              ],
              "wordLimit": 1,
              "explanation": "/ slavery In Brazil and the various Caribbean colonies, coffee was grown in huge plantations and the workers there were almost all slaves."
            },
            {
              "number": 36,
              "prompt": "In Java, coffee was used as a form of _______ .",
              "answer": [
                "taxation"
              ],
              "wordLimit": 1,
              "explanation": "in Java, which had been colonized by the Dutch, the peasants grew coffee and passed a proportion of this on to the Dutch, so it was used as a means of taxation."
            },
            {
              "number": 37,
              "prompt": "Coffee became almost as important as _______ .",
              "answer": [
                "sugar"
              ],
              "wordLimit": 1,
              "explanation": "Coffee was grown in ever-increasing quantities to satisfy the growing demand from Europe, and it became nearly as important as sugar production"
            },
            {
              "number": 38,
              "prompt": "The move towards the consumption of _______ in Britain did not also take place in the USA.",
              "answer": [
                "tea"
              ],
              "wordLimit": 1,
              "explanation": "when the USA gained independence from Britain in 1766, they identified this drink with Britain, and coffee remained the preferred drink in the USA"
            },
            {
              "number": 39,
              "prompt": "Prices dropped because of improvements in _______ .",
              "answer": [
                "transportation"
              ],
              "wordLimit": 1,
              "explanation": "This was partly because new types of transportation had been developed which were cheaper and more efficient."
            },
            {
              "number": 40,
              "prompt": "Industrial workers found coffee helped them to work at _______ .",
              "answer": [
                "night"
              ],
              "wordLimit": 1,
              "explanation": "sometimes this meant their work didn’t stop when it got dark; they might have to continue throughout the night."
            }
          ],
          "formTitle": "The history of coffee",
          "id": "g31"
        }
      ]
    }
  ]
}
$c13t4l$,
  true
);

