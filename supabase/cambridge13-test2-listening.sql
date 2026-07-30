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
