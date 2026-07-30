DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 10' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 10',
  'Test 3',
  'academic',
  2004,
  $c10t3l$
{
  "audioPath": "Cambridge 10 Test 3.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the form below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Enrolment Form"
            },
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "static",
              "text": "Parent or guardian: Carol ……….Smith………."
            },
            {
              "kind": "subheader",
              "text": "Personal Details"
            },
            {
              "kind": "subheader",
              "text": "Child’s name: Kate"
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
              "text": "Phone: 3345 9865"
            },
            {
              "kind": "subheader",
              "text": "Childcare Information"
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
              "kind": "subheader",
              "text": "Fees"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Age: _______",
              "answer": [
                "4"
              ],
              "wordLimit": 1,
              "explanation": "I’ll put four down because that’s how old she’ll be when she starts."
            },
            {
              "number": 2,
              "prompt": "Address: _______ Road, Woodside, 4032",
              "answer": [
                "46"
              ],
              "wordLimit": 1,
              "explanation": "Wombat It’s 46 Wombat Road, that’s W-O-M-B-A-T. Woodside 4032."
            },
            {
              "number": 3,
              "prompt": "Days enrolled for: Monday and _______",
              "answer": [
                "Thursday"
              ],
              "wordLimit": 1,
              "explanation": "Oh dear. I suppose Thursday would be all right because she has swimming on Friday."
            },
            {
              "number": 4,
              "prompt": "Start time: _______ am",
              "answer": [
                "8.30",
                "8"
              ],
              "wordLimit": 1,
              "explanation": ":30 I need to get to work in the city by 9:00 so I’ll drop her off at 8:30."
            },
            {
              "number": 5,
              "prompt": "Childcare group: the _______ group",
              "answer": [
                "red"
              ],
              "wordLimit": 1,
              "explanation": "Well, I’ll put her in the red group and we can always change her to the green one if there are any problems."
            },
            {
              "number": 6,
              "prompt": "Which meal/s are required each day? _______",
              "answer": [
                "lunch"
              ],
              "wordLimit": 1,
              "explanation": "Yes, she’ll only need lunch."
            },
            {
              "number": 7,
              "prompt": "Medical conditions: needs _______",
              "answer": [
                "glasses"
              ],
              "wordLimit": 1,
              "explanation": "No. But she does need to wear glasses."
            },
            {
              "number": 8,
              "prompt": "Emergency contact: Jenny _______ Phone: 3346 7523",
              "answer": [
                "BALL"
              ],
              "wordLimit": 1,
              "explanation": "OK. That’d better be my sister … Jenny Ball"
            },
            {
              "number": 9,
              "prompt": "Relationship to child: _______",
              "answer": [
                "aunt"
              ],
              "wordLimit": 1,
              "explanation": "Great. So she is the child’s aunt?"
            },
            {
              "number": 10,
              "prompt": "Will pay each _______",
              "answer": [
                "month"
              ],
              "wordLimit": 1,
              "explanation": "You can choose to pay at the end of each term or we do offer a slightly discounted rate if you pay every month."
            }
          ],
          "formTitle": "Early Learning Childcare Centre",
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
          "instructions": "Choose TWO letters, A–E. Which TWO things does Alice say about the Dolphin Conservation Trust?",
          "options": [
            {
              "key": "A",
              "text": "Children make up most of the membership."
            },
            {
              "key": "B",
              "text": "It’s the country’s largest conservation organisation."
            },
            {
              "key": "C",
              "text": "It helps finance campaigns for changes in fishing practices."
            },
            {
              "key": "D",
              "text": "It employs several dolphin experts full-time."
            },
            {
              "key": "E",
              "text": "Volunteers help in various ways."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO things does Alice say about the Dolphin Conservation Trust?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "The charity uses its money to support campaigns - for example, for changes in fishing policy and so forth. Of course, many people give their services on a voluntary basis and we now have volunteers working in observation, office work and other things."
            },
            {
              "number": 12,
              "prompt": "Which TWO things does Alice say about the Dolphin Conservation Trust?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "The charity uses its money to support campaigns - for example, for changes in fishing policy and so forth. Of course, many people give their services on a voluntary basis and we now have volunteers working in observation, office work and other things."
            }
          ],
          "id": "g11"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 13–15",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 13,
              "prompt": "Why is Alice so pleased the Trust has won the Charity Commission award?",
              "options": [
                {
                  "key": "A",
                  "text": "It has brought in extra money."
                },
                {
                  "key": "B",
                  "text": "It made the work of the trust better known."
                },
                {
                  "key": "C",
                  "text": "It has attracted more members."
                }
              ],
              "answer": "B",
              "explanation": "Although it’s not meant an enormous amount of money for us, it has made our activities even more widely publicised and understood."
            },
            {
              "number": 14,
              "prompt": "Alice says oil exploration causes problems to dolphins because of",
              "options": [
                {
                  "key": "A",
                  "text": "noise."
                },
                {
                  "key": "B",
                  "text": "oil leaks."
                },
                {
                  "key": "C",
                  "text": "movement of ships."
                }
              ],
              "answer": "A",
              "explanation": "We’re campaigning against this because, although there’ll be little pollution from oil, exploration creates a lot of underwater noise."
            },
            {
              "number": 15,
              "prompt": "Alice became interested in dolphins when",
              "options": [
                {
                  "key": "A",
                  "text": "she saw one swimming near her home."
                },
                {
                  "key": "B",
                  "text": "she heard a speaker at her school."
                },
                {
                  "key": "C",
                  "text": "she read a book about them."
                }
              ],
              "answer": "C",
              "explanation": "Then I came across this story about a family of dolphins who had to leave their home in the Moray Firth because of the oil companies and about a child who campaigned to save them. I couldn’t put the book down - I was hooked."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "Which dolphin does Alice make each of the following comments about? Choose the correct letter, A–D, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Moondancer"
            },
            {
              "key": "B",
              "text": "Echo"
            },
            {
              "key": "C",
              "text": "Kiwi"
            },
            {
              "key": "D",
              "text": "Samson"
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "It has not been seen this year.",
              "answer": "B",
              "explanation": "Unfortunately, Echo is being rather elusive this year and hasn’t yet been sighted by our observers but we remain optimistic that he’ll be out there soon"
            },
            {
              "number": 17,
              "prompt": "It is photographed more than the others.",
              "answer": "C",
              "explanation": "All the others have been out in force - Samson and Moondancer are often photographed together but it is Kiwi who’s our real ‘character’ as she seems to love coming up close for the cameras and we’ve captured her on film hundreds of times."
            },
            {
              "number": 18,
              "prompt": "It is always very energetic.",
              "answer": "D",
              "explanation": "They all have their own personalities - Moondancer is very elegant and curves out and into the water very smoothly, whereas Samson has a lot of energy - he’s always leaping out of the water with great vigour."
            },
            {
              "number": 19,
              "prompt": "It is the newest one in the scheme.",
              "answer": "D",
              "explanation": "You’d probably expect him to be the youngest - he’s not quite - that’s Kiwi - but Samson’s the latest of our dolphins to be chosen for the scheme."
            },
            {
              "number": 20,
              "prompt": "It has an unusual shape.",
              "answer": "A",
              "explanation": "Echo and Moondancer are noisy too, but Moondancer’s easy to find because she has a particularly large fin on her back, which makes her easy to identify."
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
              "prompt": "What helped Rob to prepare to play the character of a doctor?",
              "options": [
                {
                  "key": "A",
                  "text": "the stories his grandfather told him"
                },
                {
                  "key": "B",
                  "text": "the times when he watched his grandfather working"
                },
                {
                  "key": "C",
                  "text": "the way he imagined his grandfather at work"
                }
              ],
              "answer": "C",
              "explanation": "I’d … I’d visualise what he must have been like in the past, when he was sitting in his consulting room listening to his patients."
            },
            {
              "number": 22,
              "prompt": "In the play’s first scene, the boredom of village life was suggested by",
              "options": [
                {
                  "key": "A",
                  "text": "repetition of words and phrases."
                },
                {
                  "key": "B",
                  "text": "scenery painted in dull colours."
                },
                {
                  "key": "C",
                  "text": "long pauses within conversations."
                }
              ],
              "answer": "A",
              "explanation": "And then people kept saying the same thing over and over, like ‘Cold, isn’t it?’"
            },
            {
              "number": 23,
              "prompt": "What has Rob learned about himself through working in a group?",
              "options": [
                {
                  "key": "A",
                  "text": "He likes to have clear guidelines."
                },
                {
                  "key": "B",
                  "text": "He copes well with stress."
                },
                {
                  "key": "C",
                  "text": "He thinks he is a good leader."
                }
              ],
              "answer": "A",
              "explanation": "Sophia did. That was OK - she helped us work out exactly what to do, for the production. And that made me feel better, I suppose."
            },
            {
              "number": 24,
              "prompt": "To support the production, research material was used which described",
              "options": [
                {
                  "key": "A",
                  "text": "political developments."
                },
                {
                  "key": "B",
                  "text": "changing social attitudes."
                },
                {
                  "key": "C",
                  "text": "economic transformations."
                }
              ],
              "answer": "B",
              "explanation": "Well, she found these articles from the 1950s about how relationships between children and their parents, or between the public and people like bank managers or the police were shifting."
            },
            {
              "number": 25,
              "prompt": "What problem did the students overcome in the final rehearsal?",
              "options": [
                {
                  "key": "A",
                  "text": "one person forgetting their words"
                },
                {
                  "key": "B",
                  "text": "an equipment failure"
                },
                {
                  "key": "C",
                  "text": "the injury of one character"
                }
              ],
              "answer": "B",
              "explanation": "Yes, and he had this really long speech, with the stage all dark except for one spotlight - and then that stuck somehow so it was shining on the wrong side of the stage … but anyway we got that fixed, thank goodness."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 26–30",
          "instructions": "What action is needed for the following stages in doing the ‘year abroad’ option? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "be on time"
            },
            {
              "key": "B",
              "text": "get a letter of recommendation"
            },
            {
              "key": "C",
              "text": "plan for the final year"
            },
            {
              "key": "D",
              "text": "make sure the institution’s focus is relevant"
            },
            {
              "key": "E",
              "text": "show ability in Theatre Studies"
            },
            {
              "key": "F",
              "text": "make travel arrangements and bookings"
            },
            {
              "key": "G",
              "text": "ask for help"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "in the second year of the course",
              "answer": "E",
              "explanation": "Yes, so next year when you are in the second year of the course, you need to work really hard in all your theatre studies modules. Only students with good marks get places - you have to prove that you know your subject really well."
            },
            {
              "number": 27,
              "prompt": "when first choosing where to go",
              "answer": "D",
              "explanation": "Well, I decided I wanted a programme that would fit in with what I wanted to do after I graduate, so I looked for a university with emphasis on acting rather than directing for example. It depends on you."
            },
            {
              "number": 28,
              "prompt": "when sending in your choices",
              "answer": "A",
              "explanation": "I had a friend who missed the deadline and didn’t get her first choice, so you do need to get a move on at that stage."
            },
            {
              "number": 29,
              "prompt": "when writing your personal statement",
              "answer": "G",
              "explanation": "Right. I’ll get some of the final year students to give me some tips … maybe see if I can read what they wrote."
            },
            {
              "number": 30,
              "prompt": "when doing the year abroad",
              "answer": "C",
              "explanation": "And while you’re abroad don’t make the mistake I made. I got so involved I forgot all about making arrangements for when I came back here for the final year. Make sure you stay in touch so they know your choices for the optional modules."
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
              "text": "Self-regulatory focus theory"
            },
            {
              "kind": "static",
              "text": "People’s focus is to approach pleasure or avoid pain"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Prevention goals emphasise avoiding punishment"
            },
            {
              "kind": "subheader",
              "text": "Factors that affect people’s focus"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "The"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "Factor we are more likely to focus on promotion goals when with a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "we are more likely to focus on prevention goals with our boss",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "How people’s focus affects them"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Prevention Focus: People think about their ‘ought’ self and their obligations"
            },
            {
              "kind": "subheader",
              "text": "Leaders"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "Transformational Leaders: pay special attention to the"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "of their followers passionately communicate a clear",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "inspire promotion focus in followers",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "subheader",
              "text": "Conclusion"
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "Prevention Focus is good for work such as a surgeon"
            },
            {
              "kind": "static",
              "text": "Leaders’ actions affect which focus people use"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Promotion goals focus on _______",
              "answer": [
                "achievement"
              ],
              "wordLimit": 1,
              "explanation": "/ achievements Promotion goals in different life situations emphasise achievement."
            },
            {
              "number": 32,
              "prompt": "The Chronic Factor comes from one’s _______",
              "answer": [
                "personality"
              ],
              "wordLimit": 1,
              "explanation": "/ character This factor is connected to a person’s personality and says that each person has a basic tendency to either focus more on promotion goals or focus more on prevention goals as part of his or her personality."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "Situational"
              ],
              "wordLimit": 1,
              "explanation": "Second, there is a situational factor which means that the context we are in can make us more likely to focus on one set of goals or the other."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "friend"
              ],
              "wordLimit": 1,
              "explanation": "For example, we are more likely to be thinking about pleasure and to have promotion goals when we are spending time with a friend."
            },
            {
              "number": 35,
              "prompt": "Promotion Focus: People think about an ideal version of themselves, their _______ and their gains.",
              "answer": [
                "aspirations"
              ],
              "wordLimit": 1,
              "explanation": "/ ambitions For example, when focusing on promotion goals, people consider their ideal self, their aspirations and gains."
            },
            {
              "number": 36,
              "prompt": "Leadership behaviour and _______ affects people’s focus",
              "answer": [
                "style"
              ],
              "wordLimit": 1,
              "explanation": "Now that I have talked about the two focuses and how they affect people, I want to look at the idea that the way leaders behave, or their style of leading, can affect the focus that followers adopt in a specific situation."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "development"
              ],
              "wordLimit": 1,
              "explanation": "Transformational leaders, when interacting with their followers, focus on their development."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "vision"
              ],
              "wordLimit": 1,
              "explanation": "Their speech is passionate and conveys a definitive vision."
            },
            {
              "number": 39,
              "prompt": "Transactional Leaders: create _______ to make expectations clear emphasise the results of a mistake inspire prevention focus in followers",
              "answer": [
                "structures"
              ],
              "wordLimit": 1,
              "explanation": "In contrast, transactional leaders focus on developing clear structures that tell their followers exactly what is expected of them."
            },
            {
              "number": 40,
              "prompt": "Promotion Focus is good for jobs requiring _______",
              "answer": [
                "innovation"
              ],
              "wordLimit": 1,
              "explanation": "/ innovations For a designer who works in a field where a lot of innovation is needed, a promotion focus is probably better."
            }
          ],
          "formTitle": "‘Self-regulatory focus theory’ and leadership",
          "id": "g31"
        }
      ]
    }
  ]
}
$c10t3l$,
  true
);
