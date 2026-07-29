DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 14' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 14',
  'Test 3',
  'academic',
  2004,
  $c14t3l$
{
  "audioPath": "Cambridge 14 Test 3.mp3",
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
              "text": "Customer Services Manager: …………Angela……….."
            },
            {
              "kind": "static",
              "text": "Date available weekend beginning February 4th"
            },
            {
              "kind": "static",
              "text": "Conference facilities the"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "room for talks (projector and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "available) area for coffee and an",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "free",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "throughout a standard buffet lunch costs $",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "per head",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Accommodation"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "subheader",
              "text": "Other facilities"
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
              "text": "Location"
            },
            {
              "kind": "static",
              "text": "Wilby Street (quite near the"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": ") near to restaurants and many",
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
                "Tesla"
              ],
              "wordLimit": 1,
              "explanation": "Tesla - that’s spelled T-E-S-L-A."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "microphone"
              ],
              "wordLimit": 1,
              "explanation": "How about a microphone?"
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "exhibition"
              ],
              "wordLimit": 1,
              "explanation": "we’d like to have an exhibition of our products and services there as well"
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "wifi"
              ],
              "wordLimit": 1,
              "explanation": "And I presume there’s wifi?"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "45"
              ],
              "wordLimit": 1,
              "explanation": "That’s $45 per person."
            },
            {
              "number": 6,
              "prompt": "Rooms will cost $ _______ including breakfast.",
              "answer": [
                "135"
              ],
              "wordLimit": 1,
              "explanation": "Well, for conference attendees we have a 25% reduction, so we can offer you rooms at $135."
            },
            {
              "number": 7,
              "prompt": "The hotel also has a spa and rooftop _______",
              "answer": [
                "pool"
              ],
              "wordLimit": 1,
              "explanation": "So we’ve got a spa where you can get massages and facials and so on, and there’s a pool up on the roof for the use of guests."
            },
            {
              "number": 8,
              "prompt": "There’s a free shuttle service to the _______",
              "answer": [
                "airport"
              ],
              "wordLimit": 1,
              "explanation": "Yes, it’s about 12 kilometres from the airport"
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "sea"
              ],
              "wordLimit": 1,
              "explanation": "Well, it’s downtown on Wilby Street, that’s quite a small street, and it’s not very far from the sea."
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "clubs"
              ],
              "wordLimit": 1,
              "explanation": "they can go on to one of the clubs in the area - there are a great many to choose from."
            }
          ],
          "formTitle": "Flanders Conference Hotel",
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
          "instructions": "Choose TWO letters, A–E. Which TWO activities that volunteers do are mentioned?",
          "options": [
            {
              "key": "A",
              "text": "decorating"
            },
            {
              "key": "B",
              "text": "cleaning"
            },
            {
              "key": "C",
              "text": "delivering meals"
            },
            {
              "key": "D",
              "text": "shopping"
            },
            {
              "key": "E",
              "text": "childcare"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO activities that volunteers do are mentioned?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "They might even do some painting or wallpapering Or even do some babysitting so that parents can go out for a while."
            },
            {
              "number": 12,
              "prompt": "Which TWO activities that volunteers do are mentioned?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "They might even do some painting or wallpapering Or even do some babysitting so that parents can go out for a while."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO ways that volunteers can benefit from volunteering are mentioned?",
          "options": [
            {
              "key": "A",
              "text": "learning how to be part of a team"
            },
            {
              "key": "B",
              "text": "having a sense of purpose"
            },
            {
              "key": "C",
              "text": "realising how lucky they are"
            },
            {
              "key": "D",
              "text": "improved ability at time management"
            },
            {
              "key": "E",
              "text": "boosting their employment prospects"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO ways that volunteers can benefit from volunteering are mentioned?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "volunteering may be a valuable element of their CV when they’re applying for jobs Significantly, most volunteers feel that what they’re doing gives them a purpose in their lives."
            },
            {
              "number": 14,
              "prompt": "Which TWO ways that volunteers can benefit from volunteering are mentioned?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "volunteering may be a valuable element of their CV when they’re applying for jobs Significantly, most volunteers feel that what they’re doing gives them a purpose in their lives."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "What has each of the following volunteers helped someone to do? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "overcome physical difficulties"
            },
            {
              "key": "B",
              "text": "rediscover skills not used for a long time"
            },
            {
              "key": "C",
              "text": "improve their communication skills"
            },
            {
              "key": "D",
              "text": "solve problems independently"
            },
            {
              "key": "E",
              "text": "escape isolation"
            },
            {
              "key": "F",
              "text": "remember past times"
            },
            {
              "key": "G",
              "text": "start a new hobby"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Habib",
              "answer": "F",
              "explanation": "The songs take the listeners back to their youth, and for a little while they can forget the difficulties that they face now."
            },
            {
              "number": 16,
              "prompt": "Consuela",
              "answer": "A",
              "explanation": "She has difficulty walking herself, but she doesn’t let that stop her."
            },
            {
              "number": 17,
              "prompt": "Minh",
              "answer": "E",
              "explanation": "But together they go out to the cinema, or to see friends the young man hadn’t been able to visit for a long time."
            },
            {
              "number": 18,
              "prompt": "Tanya",
              "answer": "G",
              "explanation": "Tanya showed her some soft toys she’d made, and the woman decided to try it herself."
            },
            {
              "number": 19,
              "prompt": "Alexei",
              "answer": "D",
              "explanation": "that they can do something themselves to improve their situation."
            },
            {
              "number": 20,
              "prompt": "Juba",
              "answer": "C",
              "explanation": "Juba’s worked very patiently with her, and now the girl is far better at expressing herself, and at understanding other people."
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
          "type": "completion",
          "label": "Questions 21–26",
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "question",
              "number": 22
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
              "kind": "question",
              "number": 25
            },
            {
              "kind": "question",
              "number": 26
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "It consists of around _______ students.",
              "answer": [
                "50"
              ],
              "wordLimit": 1,
              "explanation": "Well the band has students in it from all years, so they’re aged 11 to 18, and there are about 50 of them altogether."
            },
            {
              "number": 22,
              "prompt": "It is due to play in a _______ band competition.",
              "answer": [
                "regional"
              ],
              "wordLimit": 1,
              "explanation": "They aren’t really good enough to enter national band competitions, but they’re in a regional one later in the term."
            },
            {
              "number": 23,
              "prompt": "It has been invited to play in the town’s _______",
              "answer": [
                "carnival"
              ],
              "wordLimit": 1,
              "explanation": "Well, now the town council’s organising a carnival in the summer, and the band has been asked to perform."
            },
            {
              "number": 24,
              "prompt": "They have listened to a talk by a _______",
              "answer": [
                "drummer"
              ],
              "wordLimit": 1,
              "explanation": "I played a recording I came across, of a drummer talking about how playing in a band had changed his life."
            },
            {
              "number": 25,
              "prompt": "Joe will discuss a _______ with the band.",
              "answer": [
                "film"
              ],
              "wordLimit": 1,
              "explanation": "I’m planning to show them that old film from the 1940s ‘Strike Up the Band’, and talk about it with the students."
            },
            {
              "number": 26,
              "prompt": "Joe hopes the band will attend a _______ next month.",
              "answer": [
                "parade"
              ],
              "wordLimit": 1,
              "explanation": "I’m hoping I can take some of the band to a parade that’s going to take place next month."
            }
          ],
          "formTitle": "Background on school marching band",
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "What problem does Joe mention in connection with each of the following band members? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "makes a lot of mistakes in rehearsals"
            },
            {
              "key": "B",
              "text": "keeps making unhelpful suggestions"
            },
            {
              "key": "C",
              "text": "has difficulty with rhythm"
            },
            {
              "key": "D",
              "text": "misses too many rehearsals"
            },
            {
              "key": "E",
              "text": "has a health problem"
            },
            {
              "key": "F",
              "text": "doesn’t mix with other students"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "flautist",
              "answer": "D",
              "explanation": "We rehearse twice a week after school, but she’s hardly ever there."
            },
            {
              "number": 28,
              "prompt": "trumpeter",
              "answer": "B",
              "explanation": "She’s always saying what she thinks other people should do, which makes my job pretty difficult."
            },
            {
              "number": 29,
              "prompt": "trombonist",
              "answer": "E",
              "explanation": "could be an excellent musician - except that he has breathing difficulties, and he doesn’t really have enough breath for the trombone."
            },
            {
              "number": 30,
              "prompt": "percussionist",
              "answer": "F",
              "explanation": "he never seems to interact with other people, and he always rushes off as soon as the rehearsal ends."
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
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Concert 1"
            },
            {
              "kind": "static",
              "text": "Australian composer: Liza Lim studied piano and"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "before turning to composition performers and festivals around the world have given her a lot of commissions compositions show a great deal of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "and are drawn from various cultural sources her music is very expressive and also",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "festival will include her",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "called The Oresteia",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "British composers: Ralph Vaughan Williams, Frederick Delius"
            },
            {
              "kind": "subheader",
              "text": "Concert 2"
            },
            {
              "kind": "static",
              "text": "British composers: Benjamin Britten, Judith Weir"
            },
            {
              "kind": "static",
              "text": "Australian composer: Ross Edwards festival will include The Tower of Remoteness, inspired by nature"
            },
            {
              "kind": "static",
              "text": "The Tower of Remoteness is performed by piano and"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "compositions include music for children celebrates Australia’s cultural",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "subheader",
              "text": "Concert 3"
            },
            {
              "kind": "static",
              "text": "Australian composer: Carl Vine played cornet then piano studied"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "before studying music worked in Sydney as a pianist and composer became well known as composer of music for",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "festival will include his music for the 1996",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "British composers: Edward Elgar, Thomas Adès"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "_______",
              "answer": [
                "violin"
              ],
              "wordLimit": 1,
              "explanation": "also the violin."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "energy"
              ],
              "wordLimit": 1,
              "explanation": "Liza Lim’s compositions are vibrant and full of energy"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "complex"
              ],
              "wordLimit": 1,
              "explanation": "er music is very expressive, so although it is complex, it has the power of connecting with audiences and performers alike."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "opera"
              ],
              "wordLimit": 1,
              "explanation": "This is an opera in seven parts, based on the trilogy of ancient Greek tragedies by Aeschylus."
            },
            {
              "number": 35,
              "prompt": "Lim described the sounds in The Oresteia as _______",
              "answer": [
                "disturbing"
              ],
              "wordLimit": 1,
              "explanation": "the sounds she creates are also disturbing"
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "clarinet"
              ],
              "wordLimit": 1,
              "explanation": "The Tower of Remoteness is scored for piano and clarinet."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "diversity"
              ],
              "wordLimit": 1,
              "explanation": "it can be regarded as a celebration of the diversity of cultures that Australia can be proud of."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "physics"
              ],
              "wordLimit": 1,
              "explanation": "However, he went to university to study physics, before changing to composition."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "dance"
              ],
              "wordLimit": 1,
              "explanation": "Before long he had become prominent in Australia as a composer for dance, and in fact has written 25 scores of that type."
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "Olympics"
              ],
              "wordLimit": 1,
              "explanation": "In our third concert, Vine will be represented by his music for the flag hand- over ceremony of the Olympics held in 1996."
            }
          ],
          "formTitle": "Concerts in university arts festival",
          "id": "g31"
        }
      ]
    }
  ]
}
$c14t3l$,
  true
);
