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
