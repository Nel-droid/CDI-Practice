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
