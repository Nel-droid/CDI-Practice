DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 18',
  'Test 1',
  'academic',
  2004,
  $c18t1l$
{
  "audioPath": "Cambridge 18 Test 1.mp3",
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
              "text": "Name: Sadie Jones"
            },
            {
              "kind": "subheader",
              "text": "Year of birth: 1991"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Travelling by bus"
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
              "kind": "static",
              "text": "Complaints about bus service:"
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
              "kind": "subheader",
              "text": "Travelling by car"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "Travelling by bicycle"
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
              "prompt": "Postcode: _______",
              "answer": [
                "DW"
              ],
              "wordLimit": 1,
              "explanation": "30 7YZ / DW307YZ It’s DW30 7YZ."
            },
            {
              "number": 2,
              "prompt": "Date of bus journey: _______",
              "answer": [
                "24"
              ],
              "wordLimit": 1,
              "explanation": "April / April 24 / 24th April / April 24th / 24/04 / 04/24 It’s the 24th of April, isn’t it?"
            },
            {
              "number": 3,
              "prompt": "Reason for trip: shopping and visit to the _______",
              "answer": [
                "dentist"
              ],
              "wordLimit": 1,
              "explanation": "I did some shopping but the main reason I came here was to go to the dentist."
            },
            {
              "number": 4,
              "prompt": "Travelled by bus because cost of _______ too high",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "I stopped driving in ages ago because parking was so difficult to find and it costs so much."
            },
            {
              "number": 5,
              "prompt": "Got on bus at _______ Street",
              "answer": [
                "Claxby"
              ],
              "wordLimit": 1,
              "explanation": "At the bus stop on Claxby Street."
            },
            {
              "number": 6,
              "prompt": "- bus today was _______",
              "answer": [
                "late"
              ],
              "wordLimit": 1,
              "explanation": "Well, as I said, it’s very convenient and quick when it’s on time, but this morning it was late."
            },
            {
              "number": 7,
              "prompt": "- frequency of buses in the _______",
              "answer": [
                "evening"
              ],
              "wordLimit": 1,
              "explanation": "I suppose I mainly use the bus during the day, but any time I’ve been in town in the evening - for dinner or at the cinema - I’ve noticed you have to wait a long time for a bus - there aren’t that many."
            },
            {
              "number": 8,
              "prompt": "Goes to the _______ by car",
              "answer": [
                "supermarket"
              ],
              "wordLimit": 1,
              "explanation": "Mainly just to go to the supermarket."
            },
            {
              "number": 9,
              "prompt": "Dislikes travelling by bike in the city centre because of the _______",
              "answer": [
                "pollution"
              ],
              "wordLimit": 1,
              "explanation": "I’m not keen on cycling there because of all the pollution."
            },
            {
              "number": 10,
              "prompt": "Doesn’t own a bike because of a lack of _______",
              "answer": [
                "storage"
              ],
              "wordLimit": 1,
              "explanation": "Well, I live in a flat - on the second floor and it doesn’t have any storage - so we’d have to leave it in the hall outside the flat."
            }
          ],
          "formTitle": "Transport survey",
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
              "prompt": "Why does the speaker apologise about the seats?",
              "options": [
                {
                  "key": "A",
                  "text": "They are too small."
                },
                {
                  "key": "B",
                  "text": "There are not enough of them."
                },
                {
                  "key": "C",
                  "text": "Some of them are very close together."
                }
              ],
              "answer": "C",
              "explanation": "we have brought in extra seats so that no one has to stand, but it does mean that the people at the back of the room may be a bit squashed."
            },
            {
              "number": 12,
              "prompt": "What does the speaker say about the age of volunteers?",
              "options": [
                {
                  "key": "A",
                  "text": "The age of volunteers is less important than other factors."
                },
                {
                  "key": "B",
                  "text": "Young volunteers are less reliable than older ones."
                },
                {
                  "key": "C",
                  "text": "Most volunteers are about 60 years old."
                }
              ],
              "answer": "A",
              "explanation": "Well, you can be as young as 16 or you can be 60 or over; it all depends on what type of voluntary work you want to do. Other considerations, such as reliability, are crucial in voluntary work and age isn’t related to these, in our experience."
            },
            {
              "number": 13,
              "prompt": "What does the speaker say about training?",
              "options": [
                {
                  "key": "A",
                  "text": "It is continuous."
                },
                {
                  "key": "B",
                  "text": "It is conducted by a manager."
                },
                {
                  "key": "C",
                  "text": "It takes place online."
                }
              ],
              "answer": "A",
              "explanation": "What’s more, training doesn’t end when you start working for us - it takes place before, during and after periods of work."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 14–15",
          "instructions": "Choose TWO letters, A–E. Which TWO issues does the speaker ask the audience to consider before they apply to be volunteers? === PAGE 4 ===",
          "options": [
            {
              "key": "A",
              "text": "their financial situation"
            },
            {
              "key": "B",
              "text": "their level of commitment"
            },
            {
              "key": "C",
              "text": "their work experience"
            },
            {
              "key": "D",
              "text": "their ambition"
            },
            {
              "key": "E",
              "text": "their availability"
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "Which TWO issues does the speaker ask the audience to consider before they apply to be volunteers? === PAGE 4 ===",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "What we value is dedication it is critical that you have enough hours in the day"
            },
            {
              "number": 15,
              "prompt": "Which TWO issues does the speaker ask the audience to consider before they apply to be volunteers? === PAGE 4 ===",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "What we value is dedication it is critical that you have enough hours in the day"
            }
          ],
          "id": "g14"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "What does the speaker suggest would be helpful for each of the following areas of voluntary work? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "experience on stage"
            },
            {
              "key": "B",
              "text": "original, new ideas"
            },
            {
              "key": "C",
              "text": "parenting skills"
            },
            {
              "key": "D",
              "text": "an understanding of food and diet"
            },
            {
              "key": "E",
              "text": "retail experience"
            },
            {
              "key": "F",
              "text": "a good memory"
            },
            {
              "key": "G",
              "text": "a good level of fitness"
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "Fundraising",
              "answer": "B",
              "explanation": "If you have the creativity to come up with an imaginative or novel way of fundraising, we’d be delighted"
            },
            {
              "number": 17,
              "prompt": "Litter collection",
              "answer": "G",
              "explanation": "One outdoor activity that we need volunteers for is litter collection and for this it’s useful if you can walk for long periods, sometimes uphill."
            },
            {
              "number": 18,
              "prompt": "‘Playmates’",
              "answer": "D",
              "explanation": "it’s good if you know something about nutrition and can give clear instructions."
            },
            {
              "number": 19,
              "prompt": "Story club",
              "answer": "A",
              "explanation": "If that doesn’t appeal to you, maybe you would be interested in helping out at our story club for disabled children, especially if you have done some acting."
            },
            {
              "number": 20,
              "prompt": "First aid",
              "answer": "F",
              "explanation": "Initially, though, your priority will be to take in a lot of information and not forget any important steps or details."
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
          "label": "Questions 21–26",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "What problem did Chantal have at the start of the talk?",
              "options": [
                {
                  "key": "A",
                  "text": "Her view of the speaker was blocked."
                },
                {
                  "key": "B",
                  "text": "She was unable to find an empty seat."
                },
                {
                  "key": "C",
                  "text": "The students next to her were talking."
                }
              ],
              "answer": "A",
              "explanation": "It’s hard to see through people’s heads, isn’t it?"
            },
            {
              "number": 22,
              "prompt": "What were Hugo and Chantal surprised to hear about the job market?",
              "options": [
                {
                  "key": "A",
                  "text": "It has become more competitive than it used to be."
                },
                {
                  "key": "B",
                  "text": "There is more variety in it than they had realised."
                },
                {
                  "key": "C",
                  "text": "Some areas of it are more exciting than others."
                }
              ],
              "answer": "B",
              "explanation": "Yeah, but it looks like there’s a whole range of … areas of work that we hadn’t even thought of - like fashion journalism, for instance."
            },
            {
              "number": 23,
              "prompt": "Hugo and Chantal agree that the speaker’s message was",
              "options": [
                {
                  "key": "A",
                  "text": "unfair to them at times."
                },
                {
                  "key": "B",
                  "text": "hard for them to follow."
                },
                {
                  "key": "C",
                  "text": "critical of the industry."
                }
              ],
              "answer": "A",
              "explanation": "Yeah - and we’re only first years, after all. We’ve got a lot to learn."
            },
            {
              "number": 24,
              "prompt": "What do Hugo and Chantal criticise about their school careers advice?",
              "options": [
                {
                  "key": "A",
                  "text": "when they received the advice"
                },
                {
                  "key": "B",
                  "text": "how much advice was given"
                },
                {
                  "key": "C",
                  "text": "who gave the advice"
                }
              ],
              "answer": "C",
              "explanation": "Well, we had numerous talks on careers, which was good, but none of them were very inspiring. They could have asked more people like today’s speaker to talk to us."
            },
            {
              "number": 25,
              "prompt": "When discussing their future, Hugo and Chantal disagree on",
              "options": [
                {
                  "key": "A",
                  "text": "which is the best career in fashion."
                },
                {
                  "key": "B",
                  "text": "when to choose a career in fashion."
                },
                {
                  "key": "C",
                  "text": "why they would like a career in fashion."
                }
              ],
              "answer": "B",
              "explanation": "Well. I promised myself that I’d go through this course and keep an open mind till the end."
            },
            {
              "number": 26,
              "prompt": "How does Hugo feel about being an unpaid assistant?",
              "options": [
                {
                  "key": "A",
                  "text": "He is realistic about the practice."
                },
                {
                  "key": "B",
                  "text": "He feels the practice is dishonest."
                },
                {
                  "key": "C",
                  "text": "He thinks others want to change the practice."
                }
              ],
              "answer": "A",
              "explanation": "I’m prepared for that, aren’t you?"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 27–28",
          "instructions": "Choose TWO letters, A–E. Which TWO mistakes did the speaker admit she made in her first job?",
          "options": [
            {
              "key": "A",
              "text": "being dishonest to her employer"
            },
            {
              "key": "B",
              "text": "paying too much attention to how she looked"
            },
            {
              "key": "C",
              "text": "expecting to become well known"
            },
            {
              "key": "D",
              "text": "trying to earn a lot of money"
            },
            {
              "key": "E",
              "text": "openly disliking her client"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Which TWO mistakes did the speaker admit she made in her first job?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "And then he was so mean, telling her she was more interested in her own appearance than his! Well, as she said, she should have hidden her negative feelings about him, but she didn’t."
            },
            {
              "number": 28,
              "prompt": "Which TWO mistakes did the speaker admit she made in her first job?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "And then he was so mean, telling her she was more interested in her own appearance than his! Well, as she said, she should have hidden her negative feelings about him, but she didn’t."
            }
          ],
          "id": "g27"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 29–30",
          "instructions": "Choose TWO letters, A–E. Which TWO pieces of retail information do Hugo and Chantal agree would be useful?",
          "options": [
            {
              "key": "A",
              "text": "the reasons people return fashion items"
            },
            {
              "key": "B",
              "text": "how much time people have to shop for clothes"
            },
            {
              "key": "C",
              "text": "fashion designs people want but can’t find"
            },
            {
              "key": "D",
              "text": "the best time of year for fashion buying"
            },
            {
              "key": "E",
              "text": "the most popular fashion sizes"
            }
          ],
          "questions": [
            {
              "number": 29,
              "prompt": "Which TWO pieces of retail information do Hugo and Chantal agree would be useful?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "However, it would be useful to know if there’s a gap in the market - you know, an item that no one’s stocking but that consumers are looking for. Yeah. Imagine you worked in an expensive shop and you found out the garments sold there were being returned because they … fell apart in the wash!"
            },
            {
              "number": 30,
              "prompt": "Which TWO pieces of retail information do Hugo and Chantal agree would be useful?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "However, it would be useful to know if there’s a gap in the market - you know, an item that no one’s stocking but that consumers are looking for. Yeah. Imagine you worked in an expensive shop and you found out the garments sold there were being returned because they … fell apart in the wash!"
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
              "kind": "static",
              "text": "Reasons for overpopulation at Majete National Park strict enforcement of anti-poaching laws successful breeding"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "The translocation process a suitable group of elephants from the same"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "was selected vets and park staff made use of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "to help guide the elephants into an open plain elephants were immobilised with tranquilisers",
              "noBullet": true
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
              "kind": "static",
              "text": "- tracking devices were fitted to the matriarchs"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "Advantages of translocation at Nkhotakota Wildlife Park"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "opportunities a reduction in the number of poachers and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "an example of conservation that other parks can follow an increase in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "as a contributor to GDP",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Problems caused by elephant overpopulation greater competition, causing hunger for elephants damage to _______ in the park",
              "answer": [
                "fences"
              ],
              "wordLimit": 1,
              "explanation": "Elephants were routinely knocking down fences around the park, which then had to be repaired at a significant cost."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "family"
              ],
              "wordLimit": 1,
              "explanation": "Elephants were moved in groups of between eight and twenty, all belonging to one family."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "helicopters"
              ],
              "wordLimit": 1,
              "explanation": "A team of vets and park rangers flew over the park in helicopters and targeted a group, which were rounded up and directed to a designated open plain."
            },
            {
              "number": 34,
              "prompt": "- this process had to be completed quickly to reduce _______",
              "answer": [
                "stress"
              ],
              "wordLimit": 1,
              "explanation": "This also had to be done as quickly as possible so as to minimise the stress caused."
            },
            {
              "number": 35,
              "prompt": "- elephants had to be turned on their _______ to avoid damage to their lungs",
              "answer": [
                "sides"
              ],
              "wordLimit": 1,
              "explanation": "So all the elephants had to be placed on their sides."
            },
            {
              "number": 36,
              "prompt": "- elephants’ _______ had to be monitored constantly",
              "answer": [
                "breathing"
              ],
              "wordLimit": 1,
              "explanation": "It was very important to keep an eye on their breathing - if there were fewer than six breaths per minute, the elephant would need urgent medical attention."
            },
            {
              "number": 37,
              "prompt": "- data including the size of their tusks and _______ was taken elephants were taken by truck to their new reserve",
              "answer": [
                "feet"
              ],
              "wordLimit": 1,
              "explanation": "Measurements were taken of each elephant’s tusks - elephants with large tusks would be at greater risk from poachers - and also of their feet."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "employment"
              ],
              "wordLimit": 1,
              "explanation": "Employment prospects have improved enormously, contributing to rising living standards for the whole community."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "weapons"
              ],
              "wordLimit": 1,
              "explanation": "In fact, many of them volunteered to give up their weapons, as they were no longer of any use to them."
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "tourism"
              ],
              "wordLimit": 1,
              "explanation": "All this has been a big draw for tourism, which contributes five times more than the illegal wildlife trade to GDP, and this is mainly because of the elephants."
            }
          ],
          "formTitle": "Elephant translocation",
          "id": "g31"
        }
      ]
    }
  ]
}
$c18t1l$,
  true
);
