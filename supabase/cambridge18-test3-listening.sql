DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 18',
  'Test 3',
  'academic',
  2004,
  $c18t3l$
{
  "audioPath": "Cambridge 18 Test 3.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–4",
          "instructions": "Complete the form below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "membership form"
            },
            {
              "kind": "subheader",
              "text": "Name: Dan Green"
            },
            {
              "kind": "subheader",
              "text": "Email address: dan1068@market.com"
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
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Home address: 52 _______ Street, Peacetown",
              "answer": [
                "Marrowfield"
              ],
              "wordLimit": 1,
              "explanation": "It’s 52 Marrowfield Street."
            },
            {
              "number": 2,
              "prompt": "Heard about us: from a _______",
              "answer": [
                "relative"
              ],
              "wordLimit": 1,
              "explanation": "I usually do that, but this time, well, I was talking to a relative the other day and he suggested it."
            },
            {
              "number": 3,
              "prompt": "Reasons for joining: to enter competitions to _______",
              "answer": [
                "socialise"
              ],
              "wordLimit": 1,
              "explanation": "/ socialize Well, I also like to socialise with other photographers."
            },
            {
              "number": 4,
              "prompt": "Type of membership: _______ membership (£30)",
              "answer": [
                "full"
              ],
              "wordLimit": 1,
              "explanation": "It’s £30 a year for full membership or £20 a year if you’re an associate."
            }
          ],
          "formTitle": "Wayside Camera Club",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 5–10",
          "instructions": "Complete the table below. Write NO MORE THAN TWO WORDS for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Title of competition Instructions Feedback to Dan"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "‘Beautiful Sunsets’"
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
              "text": "‘"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "’ Scene must show",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "The photograph was too",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "."
            }
          ],
          "questions": [
            {
              "number": 5,
              "prompt": "‘ _______ ’ A scene in the home The picture’s composition was not good.",
              "answer": [
                "Domestic"
              ],
              "wordLimit": 2,
              "explanation": "Life Well, the theme was entitled ‘Domestic Life’."
            },
            {
              "number": 6,
              "prompt": "Scene must show some _______",
              "answer": [
                "clouds"
              ],
              "wordLimit": 2,
              "explanation": "The instructions were to capture the clouds as well - it couldn’t just be blue sky and a setting sun."
            },
            {
              "number": 7,
              "prompt": "The _______ was wrong.",
              "answer": [
                "timing"
              ],
              "wordLimit": 2,
              "explanation": "So the timing wasn’t right."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "Animal"
              ],
              "wordLimit": 2,
              "explanation": "Magic And then the third competition I entered was called ‘Animal Magic’."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "movement"
              ],
              "wordLimit": 2,
              "explanation": "/ animal movement That’s what we had to show - there had to be some movement in the scene."
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "dark"
              ],
              "wordLimit": 2,
              "explanation": "I suspected that it was a bit dark, which is what I was told."
            }
          ],
          "formTitle": "Photography competitions",
          "id": "g5"
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
          "instructions": "Choose TWO letters, A–E. Which TWO warnings does Dan give about picking mushrooms?",
          "options": [
            {
              "key": "A",
              "text": "Don’t pick more than one variety of mushroom at a time."
            },
            {
              "key": "B",
              "text": "Don’t pick mushrooms near busy roads."
            },
            {
              "key": "C",
              "text": "Don’t eat mushrooms given to you."
            },
            {
              "key": "D",
              "text": "Don’t eat mushrooms while picking them."
            },
            {
              "key": "E",
              "text": "Don’t pick old mushrooms."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO warnings does Dan give about picking mushrooms?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "But of course, you have to be very careful and that’s why I always say you should never consume mushrooms picked by friends or neighbours The other thing to avoid is mushrooms growing beside busy roads for obvious reasons."
            },
            {
              "number": 12,
              "prompt": "Which TWO warnings does Dan give about picking mushrooms?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "But of course, you have to be very careful and that’s why I always say you should never consume mushrooms picked by friends or neighbours The other thing to avoid is mushrooms growing beside busy roads for obvious reasons."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO ideas about wild mushrooms does Dan say are correct?",
          "options": [
            {
              "key": "A",
              "text": "Mushrooms should always be peeled before eating."
            },
            {
              "key": "B",
              "text": "Mushrooms eaten by animals may be unsafe."
            },
            {
              "key": "C",
              "text": "Cooking destroys toxins in mushrooms."
            },
            {
              "key": "D",
              "text": "Brightly coloured mushrooms can be edible."
            },
            {
              "key": "E",
              "text": "All poisonous mushrooms have a bad smell."
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO ideas about wild mushrooms does Dan say are correct?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "Don’t listen to people who tell you that it’s only OK to eat mushrooms that are pale or dull - this is completely untrue. Some edible mushrooms are bright red, for example. Finally, just because deer or squirrels eat a particular mushroom doesn’t mean that you can."
            },
            {
              "number": 14,
              "prompt": "Which TWO ideas about wild mushrooms does Dan say are correct?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "Don’t listen to people who tell you that it’s only OK to eat mushrooms that are pale or dull - this is completely untrue. Some edible mushrooms are bright red, for example. Finally, just because deer or squirrels eat a particular mushroom doesn’t mean that you can."
            }
          ],
          "id": "g13"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 15–20",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 15,
              "prompt": "What advice does Dan give about picking mushrooms in parks?",
              "options": [
                {
                  "key": "A",
                  "text": "Choose wooded areas."
                },
                {
                  "key": "B",
                  "text": "Don’t disturb wildlife."
                },
                {
                  "key": "C",
                  "text": "Get there early."
                }
              ],
              "answer": "C",
              "explanation": "But you need to be there first thing in the morning"
            },
            {
              "number": 16,
              "prompt": "Dan says it is a good idea for beginners to",
              "options": [
                {
                  "key": "A",
                  "text": "use a mushroom app."
                },
                {
                  "key": "B",
                  "text": "join a group."
                },
                {
                  "key": "C",
                  "text": "take a reference book."
                }
              ],
              "answer": "B",
              "explanation": "If possible, you should go with a group led by an expert - you’ll stay safe and learn a lot that way."
            },
            {
              "number": 17,
              "prompt": "What does Dan say is important for conservation?",
              "options": [
                {
                  "key": "A",
                  "text": "selecting only fully grown mushrooms"
                },
                {
                  "key": "B",
                  "text": "picking a limited amount of mushrooms"
                },
                {
                  "key": "C",
                  "text": "avoiding areas where rare mushroom species grow"
                }
              ],
              "answer": "B",
              "explanation": "You should never pick all the mushrooms in one area - collect only enough for your own needs."
            },
            {
              "number": 18,
              "prompt": "According to Dan, some varieties of wild mushrooms are in decline because there is",
              "options": [
                {
                  "key": "A",
                  "text": "a huge demand for them from restaurants."
                },
                {
                  "key": "B",
                  "text": "a lack of rain in this part of the country."
                },
                {
                  "key": "C",
                  "text": "a rise in building developments locally."
                }
              ],
              "answer": "C",
              "explanation": "the biggest problem is that so many new houses have been built in this area in the last ten years."
            },
            {
              "number": 19,
              "prompt": "Dan says that when storing mushrooms, people should",
              "options": [
                {
                  "key": "A",
                  "text": "keep them in the fridge for no more than two days."
                },
                {
                  "key": "B",
                  "text": "keep them in a brown bag in a dark room."
                },
                {
                  "key": "C",
                  "text": "leave them for a period after washing them."
                }
              ],
              "answer": "A",
              "explanation": "They’ll be fine for a couple of days, but it’s best to cook them as soon as possible - after washing them really carefully first, of course."
            },
            {
              "number": 20,
              "prompt": "What does Dan say about trying new varieties of mushrooms?",
              "options": [
                {
                  "key": "A",
                  "text": "Experiment with different recipes."
                },
                {
                  "key": "B",
                  "text": "Expect some to have a strong taste."
                },
                {
                  "key": "C",
                  "text": "Cook them for a long time."
                }
              ],
              "answer": "A",
              "explanation": "They’re great in so many dishes - stir fries, risottos, pasta."
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
          "instructions": "Choose TWO letters, A–E. Which TWO opinions about the Luddites do the students express?",
          "options": [
            {
              "key": "A",
              "text": "Their actions were ineffective."
            },
            {
              "key": "B",
              "text": "They are still influential today."
            },
            {
              "key": "C",
              "text": "They have received unfair criticism."
            },
            {
              "key": "D",
              "text": "They were proved right."
            },
            {
              "key": "E",
              "text": "Their attitude is understandable."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO opinions about the Luddites do the students express?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "Yes, and ultimately, they didn’t achieve anything. Yes, that’s true - but it probably didn’t seem a positive thing at the time. I can see why the Luddites felt so threatened."
            },
            {
              "number": 22,
              "prompt": "Which TWO opinions about the Luddites do the students express?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "Yes, and ultimately, they didn’t achieve anything. Yes, that’s true - but it probably didn’t seem a positive thing at the time. I can see why the Luddites felt so threatened."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO predictions about the future of work are the students doubtful about?",
          "options": [
            {
              "key": "A",
              "text": "Work will be more rewarding."
            },
            {
              "key": "B",
              "text": "Unemployment will fall."
            },
            {
              "key": "C",
              "text": "People will want to delay retiring."
            },
            {
              "key": "D",
              "text": "Working hours will be shorter."
            },
            {
              "key": "E",
              "text": "People will change jobs more frequently."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO predictions about the future of work are the students doubtful about?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "when all the evidence shows people are spending longer than ever at work. And what about lower unemployment? I’m not so sure about that."
            },
            {
              "number": 24,
              "prompt": "Which TWO predictions about the future of work are the students doubtful about?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "when all the evidence shows people are spending longer than ever at work. And what about lower unemployment? I’m not so sure about that."
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What comment do the students make about each of the following jobs? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "These jobs are likely to be at risk."
            },
            {
              "key": "B",
              "text": "Their role has become more interesting in recent years."
            },
            {
              "key": "C",
              "text": "The number of people working in this sector has fallen dramatically."
            },
            {
              "key": "D",
              "text": "This job will require more qualifications."
            },
            {
              "key": "E",
              "text": "Higher disposable income has led to a huge increase in jobs."
            },
            {
              "key": "F",
              "text": "There is likely to be a significant rise in demand for this service."
            },
            {
              "key": "G",
              "text": "Both employment and productivity have risen."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Accountants",
              "answer": "G",
              "explanation": "You might think all the technological innovations would have put them out of a job, but in fact there are more of them than ever. They’re still really in demand and have become far more efficient."
            },
            {
              "number": 26,
              "prompt": "Hairdressers",
              "answer": "E",
              "explanation": "Yeah because people’s earning power has gone up so they can afford to spend more on personal services like that."
            },
            {
              "number": 27,
              "prompt": "Administrative staff",
              "answer": "B",
              "explanation": "Really boring compared to these days, when they’re given much more responsibility and higher status."
            },
            {
              "number": 28,
              "prompt": "Agricultural workers",
              "answer": "C",
              "explanation": "Yeah, I’d have assumed it would be more than 50%. Now it’s less than 0.2%."
            },
            {
              "number": 29,
              "prompt": "Care workers",
              "answer": "F",
              "explanation": "But now of course this sector will see huge growth."
            },
            {
              "number": 30,
              "prompt": "Bank clerks",
              "answer": "A",
              "explanation": "And technology will certainly make most of the jobs they do now redundant, I think."
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
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Problems in developing effective Space Traffic Management"
            },
            {
              "kind": "static",
              "text": "Satellites are now quite"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "and therefore more widespread (e.g. there are constellations made up of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "of satellites).",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Small pieces of debris may be difficult to identify."
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
              "text": "Solutions"
            },
            {
              "kind": "static",
              "text": "Common standards should be agreed on for the presentation of information."
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
              "prompt": "A Space Traffic Management system is a concept similar to Air Traffic Control, but for satellites rather than planes. would aim to set up legal and _______ ways of improving safety. does not actually exist at present.",
              "answer": [
                "technical"
              ],
              "wordLimit": 1,
              "explanation": "In order to do this, we’d need to have a set of legal measures, and we’d also have to develop the technical systems to enable us to prevent such accidents."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "cheap"
              ],
              "wordLimit": 1,
              "explanation": "Well, for one thing, satellites are relatively cheap these days, compared with how they were in the past, meaning that more people can afford to put them into space."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "thousands"
              ],
              "wordLimit": 1,
              "explanation": "So there’s a lot more of them out there, and people aren’t just launching single satellites but whole constellations, consisting of thousands of them designed to work together. So space is getting more crowded every day."
            },
            {
              "number": 34,
              "prompt": "At present, satellites are not required to transmit information to help with their _______",
              "answer": [
                "identification"
              ],
              "wordLimit": 1,
              "explanation": "it doesn’t have to send back any information to Earth to allow its identification."
            },
            {
              "number": 35,
              "prompt": "There are few systems for _______ satellites.",
              "answer": [
                "tracking"
              ],
              "wordLimit": 1,
              "explanation": "at present we don’t have anything like enough proper ways of tracking them."
            },
            {
              "number": 36,
              "prompt": "Operators may be unwilling to share details of satellites used for _______ or commercial reasons.",
              "answer": [
                "military"
              ],
              "wordLimit": 1,
              "explanation": "In addition, some operators may be unwilling to share information about the satellites they’ve launched. For example, a satellite may be designed for military purposes"
            },
            {
              "number": 37,
              "prompt": "It may be hard to collect details of the object’s _______ at a given time.",
              "answer": [
                "location"
              ],
              "wordLimit": 1,
              "explanation": "And even if the operators are willing to provide it, the information isn’t easy to collect. Details are needed about the object itself, as well as about its location at a particular time"
            },
            {
              "number": 38,
              "prompt": "Scientists can only make a _______ about where the satellite will go.",
              "answer": [
                "prediction"
              ],
              "wordLimit": 1,
              "explanation": "We don’t have any sensors that can constantly follow something moving so fast, so all that the scientists can do is to put forward a prediction concerning where the satellite is heading next."
            },
            {
              "number": 39,
              "prompt": "The information should be combined in one _______ .",
              "answer": [
                "database"
              ],
              "wordLimit": 1,
              "explanation": "Then, as all this information’s collected, it needs to be put together so it can be used, and that will involve creating a single database on which it can be entered."
            },
            {
              "number": 40,
              "prompt": "A coordinated system must be designed to create _______ in its users.",
              "answer": [
                "trust"
              ],
              "wordLimit": 1,
              "explanation": "but it’s also essential that this system is one that establishes trust in the people that use it, both nationally and at a global level."
            }
          ],
          "formTitle": "Space Traffic Management",
          "id": "g31"
        }
      ]
    }
  ]
}
$c18t3l$,
  true
);
