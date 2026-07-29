-- Cambridge Listening — Part 5 of 6: books 18 & 19 (8 tests).
-- Paste this whole file into the Supabase SQL editor and Run.

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

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 18',
  'Test 2',
  'academic',
  2004,
  $c18t2l$
{
  "audioPath": "Cambridge 18 Test 2.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–5",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Benefits"
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
              "kind": "static",
              "text": "Person specification must be prepared to work well in a team must care about maintaining a high standard of"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "must have a qualification in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______ provided for all staff",
              "answer": [
                "training"
              ],
              "wordLimit": 1,
              "explanation": "For example, all employees get training - even temporary staff."
            },
            {
              "number": 2,
              "prompt": "_______ during weekdays at all Milo’s Restaurants",
              "answer": [
                "discount"
              ],
              "wordLimit": 1,
              "explanation": "But another benefit of working for a big company like this is that you can get a discount at any of their restaurants."
            },
            {
              "number": 3,
              "prompt": "_______ provided after midnight",
              "answer": [
                "taxi"
              ],
              "wordLimit": 1,
              "explanation": "But if you have to do a late shift and finish work after midnight, the company will pay for you to get a taxi home."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "service"
              ],
              "wordLimit": 1,
              "explanation": "e had to make sure we gave a really high level of service."
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "English"
              ],
              "wordLimit": 1,
              "explanation": "So the only other thing that’s required is good communication skills, so you’ll need to have a certificate in English."
            }
          ],
          "formTitle": "Working at Milo’s Restaurants",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 6–10",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "subheader",
              "text": "Street"
            },
            {
              "kind": "subheader",
              "text": "Breakfast supervisor"
            },
            {
              "kind": "static",
              "text": "Checking portions, etc. are correct"
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
              "kind": "static",
              "text": "Start work at 5.30 a.m."
            },
            {
              "kind": "subheader",
              "text": "City Road Junior chef"
            },
            {
              "kind": "subheader",
              "text": "Supporting senior chefs"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "subheader",
              "text": "Annual salary £23,000"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 6,
              "prompt": "include Pay and conditions _______",
              "answer": [
                "Wivenhoe"
              ],
              "wordLimit": 1,
              "explanation": "The first one is in Wivenhoe Street."
            },
            {
              "number": 7,
              "prompt": "Making sure _______ is clean",
              "answer": [
                "equipment"
              ],
              "wordLimit": 1,
              "explanation": "Obviously checking that all the portions are correct, etc., and then things like checking all the procedures for cleaning the equipment are being followed."
            },
            {
              "number": 8,
              "prompt": "Starting salary £ _______ per hour",
              "answer": [
                "9.75"
              ],
              "wordLimit": 1,
              "explanation": "Well, to begin with, you’d be getting £9.75 but that goes up to £11.25 after three months."
            },
            {
              "number": 9,
              "prompt": "Maintaining stock and organising _______",
              "answer": [
                "deliveries"
              ],
              "wordLimit": 1,
              "explanation": "And you’d be responsible for making sure there’s enough stock each week - and sorting out all the deliveries."
            },
            {
              "number": 10,
              "prompt": "No work on a _______ once a month",
              "answer": [
                "Sunday"
              ],
              "wordLimit": 1,
              "explanation": "But you do get one Sunday off every four weeks."
            }
          ],
          "formTitle": "Location Job title Responsibilities",
          "id": "g6"
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
          "instructions": "Choose TWO letters, A–E. What are the TWO main reasons why this site has been chosen for the housing development?",
          "options": [
            {
              "key": "A",
              "text": "It has suitable geographical features."
            },
            {
              "key": "B",
              "text": "There is easy access to local facilities."
            },
            {
              "key": "C",
              "text": "It has good connections with the airport."
            },
            {
              "key": "D",
              "text": "The land is of little agricultural value."
            },
            {
              "key": "E",
              "text": "It will be convenient for workers."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "What are the TWO main reasons why this site has been chosen for the housing development?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "But because of the new industrial centre in Nunston, there’s a lot of demand for housing for employees in the region, as many employees are having to commute long distances at present. We were more interested in the fact that there’s an excellent hospital just 15 kilometres away, and a large secondary school even closer than that."
            },
            {
              "number": 12,
              "prompt": "What are the TWO main reasons why this site has been chosen for the housing development?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "But because of the new industrial centre in Nunston, there’s a lot of demand for housing for employees in the region, as many employees are having to commute long distances at present. We were more interested in the fact that there’s an excellent hospital just 15 kilometres away, and a large secondary school even closer than that."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO aspects of the planned housing development have people given positive feedback about?",
          "options": [
            {
              "key": "A",
              "text": "the facilities for cyclists"
            },
            {
              "key": "B",
              "text": "the impact on the environment"
            },
            {
              "key": "C",
              "text": "the encouragement of good relations between residents"
            },
            {
              "key": "D",
              "text": "the low cost of all the accommodation"
            },
            {
              "key": "E",
              "text": "the rural location"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO aspects of the planned housing development have people given positive feedback about?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "blended in well with the natural features of the landscape, with provision made for protecting trees and wildlife on the site. the design and facilities of the development make it seem a place where people of all ages can live together happily."
            },
            {
              "number": 14,
              "prompt": "Which TWO aspects of the planned housing development have people given positive feedback about?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "blended in well with the natural features of the landscape, with provision made for protecting trees and wildlife on the site. the design and facilities of the development make it seem a place where people of all ages can live together happily."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Label the map below. Write the correct letter, A–H, next to Questions 15–20.",
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
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "School",
              "answer": "G",
              "explanation": "If you look at the South Entrance at the bottom of the map, there’s a road from there that goes right up through the development. The school will be on that road, at the corner of the second turning to the left."
            },
            {
              "number": 16,
              "prompt": "Sports centre",
              "answer": "C",
              "explanation": "A large sports centre is planned with facilities for indoor and outdoor activities. This will be on the western side of the development, just below the road that branches off from London Road."
            },
            {
              "number": 17,
              "prompt": "Clinic",
              "answer": "D",
              "explanation": "The clinic will be just below this, to the right of a street of houses."
            },
            {
              "number": 18,
              "prompt": "Community centre",
              "answer": "B",
              "explanation": "On the northeast side of the development, there’ll be a row of specially designed houses specifically for residents over 65, and the community centre will be adjoining this."
            },
            {
              "number": 19,
              "prompt": "Supermarket",
              "answer": "H",
              "explanation": "There’ll be a supermarket between the two entrances to the development. We’re planning to leave the three large trees near London Road, and it’ll be just to the south of these."
            },
            {
              "number": 20,
              "prompt": "Playground",
              "answer": "A",
              "explanation": "If you look at the road that goes up from the South Entrance, you’ll see it curves round to the left at the top, and the playground will be in that curve, with nice views of the lake."
            }
          ],
          "mapImage": "Cambridge 18 Test 2 map.png",
          "id": "g15"
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
              "prompt": "Why do the students think the Laki eruption of 1783 is so important?",
              "options": [
                {
                  "key": "A",
                  "text": "It was the most severe eruption in modern times."
                },
                {
                  "key": "B",
                  "text": "It led to the formal study of volcanoes."
                },
                {
                  "key": "C",
                  "text": "It had a profound effect on society."
                }
              ],
              "answer": "C",
              "explanation": "But what I found more significant was how it impacted directly and indirectly on political events, as well as having massive social and economic consequences."
            },
            {
              "number": 22,
              "prompt": "What surprised Adam about observations made at the time?",
              "options": [
                {
                  "key": "A",
                  "text": "the number of places producing them"
                },
                {
                  "key": "B",
                  "text": "the contradictions in them"
                },
                {
                  "key": "C",
                  "text": "the lack of scientific data to support them"
                }
              ],
              "answer": "A",
              "explanation": "Yeah. I was surprised there were so many weather stations established by that time - so, you know, you can see how the weather changed, often by the hour."
            },
            {
              "number": 23,
              "prompt": "According to Michelle, what did the contemporary sources say about the Laki haze?",
              "options": [
                {
                  "key": "A",
                  "text": "People thought it was similar to ordinary fog."
                },
                {
                  "key": "B",
                  "text": "It was associated with health issues."
                },
                {
                  "key": "C",
                  "text": "It completely blocked out the sun for weeks."
                }
              ],
              "answer": "B",
              "explanation": "Reports from the period blamed the haze for an increase in headaches, respiratory issues and asthma attacks."
            },
            {
              "number": 24,
              "prompt": "Adam corrects Michelle when she claims that Benjamin Franklin",
              "options": [
                {
                  "key": "A",
                  "text": "came to the wrong conclusion about the cause of the haze."
                },
                {
                  "key": "B",
                  "text": "was the first to identify the reason for the haze."
                },
                {
                  "key": "C",
                  "text": "supported the opinions of other observers about the haze."
                }
              ],
              "answer": "B",
              "explanation": "It was Benjamin Franklin who realised that before anyone else."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO issues following the Laki eruption surprised the students?",
          "options": [
            {
              "key": "A",
              "text": "how widespread the effects were"
            },
            {
              "key": "B",
              "text": "how long-lasting the effects were"
            },
            {
              "key": "C",
              "text": "the number of deaths it caused"
            },
            {
              "key": "D",
              "text": "the speed at which the volcanic ash cloud spread"
            },
            {
              "key": "E",
              "text": "how people ignored the warning signs"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO issues following the Laki eruption surprised the students?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "not that the effects would go on for so long. Or that two years after the eruption, strange weather events were being reported as far away as North America and North Africa."
            },
            {
              "number": 26,
              "prompt": "Which TWO issues following the Laki eruption surprised the students?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "not that the effects would go on for so long. Or that two years after the eruption, strange weather events were being reported as far away as North America and North Africa."
            }
          ],
          "id": "g25"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "What comment do the students make about the impact of the Laki eruption on the following countries? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "This country suffered the most severe loss of life."
            },
            {
              "key": "B",
              "text": "The impact on agriculture was predictable."
            },
            {
              "key": "C",
              "text": "There was a significant increase in deaths of young people."
            },
            {
              "key": "D",
              "text": "Animals suffered from a sickness."
            },
            {
              "key": "E",
              "text": "This country saw the highest rise in food prices in the world."
            },
            {
              "key": "F",
              "text": "It caused a particularly harsh winter."
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Iceland",
              "answer": "D",
              "explanation": "One of the most dramatic things there was the effect on livestock as they grazed in the fields. They were poisoned because they ate vegetation that had been contaminated with fluorine as a result of the volcanic fallout."
            },
            {
              "number": 28,
              "prompt": "Egypt",
              "answer": "A",
              "explanation": "It’s so far from where the eruption happened and yet the famine there led to more people dying than any other country."
            },
            {
              "number": 29,
              "prompt": "UK",
              "answer": "C",
              "explanation": "According to one report it was about double the usual number and included an unusually high percentage of people under the age of 25."
            },
            {
              "number": 30,
              "prompt": "USA",
              "answer": "F",
              "explanation": "Yes, and there was ice floating down the Mississippi, which was unprecedented."
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
              "text": "Reason for choice of subject"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "subheader",
              "text": "Pockets in men’s clothes"
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
              "text": "The wearer could use the pockets for small items."
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Pockets in women’s clothes"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Women were very concerned about pickpockets."
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
              "kind": "static",
              "text": "Pockets, of various sizes, stayed inside clothing for many decades."
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
              "prompt": "They are _______ but can be overlooked by consumers and designers.",
              "answer": [
                "convenient"
              ],
              "wordLimit": 1,
              "explanation": "even though we often carry bags or briefcases as well, nothing is quite as convenient as being able to pop your phone or credit card into your pocket."
            },
            {
              "number": 32,
              "prompt": "Men started to wear _______ in the 18th century.",
              "answer": [
                "suits"
              ],
              "wordLimit": 1,
              "explanation": "that was the time when suits became popular."
            },
            {
              "number": 33,
              "prompt": "A _______ sewed pockets into the lining of the garments.",
              "answer": [
                "tailor"
              ],
              "wordLimit": 1,
              "explanation": "all three garments were lined with material and pockets were sewn into this cloth by whichever tailor the customer used"
            },
            {
              "number": 34,
              "prompt": "Bigger pockets might be made for men who belonged to a certain type of _______",
              "answer": [
                "profession"
              ],
              "wordLimit": 1,
              "explanation": "they were often larger but plainer if the wearer was someone with a profession who needed to carry medical instruments"
            },
            {
              "number": 35,
              "prompt": "Women’s pockets were less _______ than men’s.",
              "answer": [
                "visible"
              ],
              "wordLimit": 1,
              "explanation": "For one thing, they weren’t nearly as visible or as easy to reach as men’s."
            },
            {
              "number": 36,
              "prompt": "Pockets were produced in pairs using _______ to link them together.",
              "answer": [
                "string"
              ],
              "wordLimit": 1,
              "explanation": "/ strings So - what they did was to have a pair of pockets made that were tied together with string."
            },
            {
              "number": 37,
              "prompt": "Pockets hung from the women’s _______ under skirts and petticoats.",
              "answer": [
                "waist"
              ],
              "wordLimit": 1,
              "explanation": "/ waists Women tied the pockets around their waist so that they hung beneath their clothes."
            },
            {
              "number": 38,
              "prompt": "Items such as _______ could be reached through a gap in the material.",
              "answer": [
                "perfume"
              ],
              "wordLimit": 1,
              "explanation": "They would have an opening in the folds of their skirts through which they could reach whatever they needed, like their perfume."
            },
            {
              "number": 39,
              "prompt": "When dresses changed shape, hidden pockets had a negative effect on the _______ of women.",
              "answer": [
                "image"
              ],
              "wordLimit": 1,
              "explanation": "That’s when dresses became tighter and less bulky, and the pairs of pockets became very noticeable - they stood out too much and detracted from the woman’s image."
            },
            {
              "number": 40,
              "prompt": "Bags called ‘pouches’ became popular, before women carried a _______",
              "answer": [
                "handbag"
              ],
              "wordLimit": 1,
              "explanation": "they inevitably led on to the handbag of more modern times"
            }
          ],
          "formTitle": "Pockets",
          "id": "g31"
        }
      ]
    }
  ]
}
$c18t2l$,
  true
);

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

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 18',
  'Test 4',
  'academic',
  2004,
  $c18t4l$
{
  "audioPath": "Cambridge 18 Test 4.mp3",
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
              "kind": "static",
              "text": "Work involves dealing with enquiries making"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "and reorganising them maintaining the internal",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "general administration",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Requirements"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "(essential) a calm and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "manner good IT skills",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Other information a"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "job - further opportunities may be available hours: 7.45 a.m. to",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "p.m. Monday to Friday",
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
              "prompt": "Role _______",
              "answer": [
                "receptionist"
              ],
              "wordLimit": 1,
              "explanation": "So this is a position for a receptionist - I believe you’ve done that sort of work before?"
            },
            {
              "number": 2,
              "prompt": "Location Fordham _______ Centre",
              "answer": [
                "Medical"
              ],
              "wordLimit": 1,
              "explanation": "Well, this job’s in Fordham, so not too far away for you, and it’s at the medical centre there."
            },
            {
              "number": 3,
              "prompt": "_______ Road, Fordham",
              "answer": [
                "Chastons"
              ],
              "wordLimit": 1,
              "explanation": "It’s quite near the station, on Chastons Road."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "appointments"
              ],
              "wordLimit": 1,
              "explanation": "Yes, and you’d also be involved in making appointments, whether face to face or on the phone."
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "database"
              ],
              "wordLimit": 1,
              "explanation": "And another of your duties would be keeping the centre’s database up-to- date."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "experience"
              ],
              "wordLimit": 1,
              "explanation": "Now when the details came in, I immediately thought of you because one thing they do require is someone with experience"
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "confident"
              ],
              "wordLimit": 1,
              "explanation": "stay calm, and at the same time be confident when interacting with the public."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "temporary"
              ],
              "wordLimit": 1,
              "explanation": "Well, they’re looking for someone from the beginning of next month, but I should tell you that this isn’t a permanent job, it’s temporary, so the contract would be just to the end of September."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "1.15",
                "1"
              ],
              "wordLimit": 1,
              "explanation": ":15 One fifteen."
            },
            {
              "number": 10,
              "prompt": "_______ is available onsite",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "Oh, one thing … is there parking available for staff at the centre?"
            }
          ],
          "formTitle": "Job details from employment agency",
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
              "prompt": "The museum building was originally",
              "options": [
                {
                  "key": "A",
                  "text": "a factory."
                },
                {
                  "key": "B",
                  "text": "a private home."
                },
                {
                  "key": "C",
                  "text": "a hall of residence."
                }
              ],
              "answer": "B",
              "explanation": "So, where we’re standing at the moment is the entrance to a large building that was constructed in 1880 as the home of a local businessman."
            },
            {
              "number": 12,
              "prompt": "The university uses part of the museum building as",
              "options": [
                {
                  "key": "A",
                  "text": "teaching rooms."
                },
                {
                  "key": "B",
                  "text": "a research library."
                },
                {
                  "key": "C",
                  "text": "administration offices."
                }
              ],
              "answer": "A",
              "explanation": "The museum’s owned by the university, and apart from two rooms that are our offices, the university uses the main part of the building. You may see students going into the building for lessons, but it’s not open to museum visitors, I’m afraid."
            },
            {
              "number": 13,
              "prompt": "What does the guide say about the entrance fee?",
              "options": [
                {
                  "key": "A",
                  "text": "Visitors decide whether or not they wish to pay."
                },
                {
                  "key": "B",
                  "text": "Only children and students receive a discount."
                },
                {
                  "key": "C",
                  "text": "The museum charges extra for special exhibitions."
                }
              ],
              "answer": "A",
              "explanation": "We do have a donation box just over there so feel free to give whatever amount you consider appropriate."
            },
            {
              "number": 14,
              "prompt": "What are visitors advised to leave in the cloakroom?",
              "options": [
                {
                  "key": "A",
                  "text": "cameras"
                },
                {
                  "key": "B",
                  "text": "coats"
                },
                {
                  "key": "C",
                  "text": "bags"
                }
              ],
              "answer": "C",
              "explanation": "You might be more comfortable not carrying around heavy rucksacks, though keep your coats and jackets on as it’s quite cold in the museum garden today."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "What information does the speaker give about each of the following areas of the museum? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Parents must supervise their children."
            },
            {
              "key": "B",
              "text": "There are new things to see."
            },
            {
              "key": "C",
              "text": "It is closed today."
            },
            {
              "key": "D",
              "text": "This is only for school groups."
            },
            {
              "key": "E",
              "text": "There is a quiz for visitors."
            },
            {
              "key": "F",
              "text": "It features something created by students."
            },
            {
              "key": "G",
              "text": "An expert is here today."
            },
            {
              "key": "H",
              "text": "There is a one-way system."
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Four Seasons",
              "answer": "F",
              "explanation": "It was designed especially for the museum by a group of young people on a film studies course, and it’s beautiful."
            },
            {
              "number": 16,
              "prompt": "Farmhouse Kitchen",
              "answer": "G",
              "explanation": "And this morning, a specialist cheesemaker will be giving demonstrations of how it’s produced."
            },
            {
              "number": 17,
              "prompt": "A Year on the Farm",
              "answer": "E",
              "explanation": "If you’re feeling competitive, you can take our memory test in which you answer questions about things you’ve seen in the museum."
            },
            {
              "number": 18,
              "prompt": "Wagon Walk",
              "answer": "A",
              "explanation": "The carts are old and fragile, so we ask you to keep your children close to you and ensure they don’t climb on the carts."
            },
            {
              "number": 19,
              "prompt": "Bees are Magic",
              "answer": "C",
              "explanation": "In the far corner of the garden is Bees are Magic, but we’re redeveloping this area so you can’t visit that at the moment."
            },
            {
              "number": 20,
              "prompt": "The Pond",
              "answer": "B",
              "explanation": "There are baby ducks that are only a few days old, as well as tiny frogs."
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
          "instructions": "Choose TWO letters, A–E. Which TWO educational skills were shown in the video of children doing origami?",
          "options": [
            {
              "key": "A",
              "text": "solving problems"
            },
            {
              "key": "B",
              "text": "following instructions"
            },
            {
              "key": "C",
              "text": "working cooperatively"
            },
            {
              "key": "D",
              "text": "learning through play"
            },
            {
              "key": "E",
              "text": "developing hand-eye coordination"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO educational skills were shown in the video of children doing origami?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "On the video you could see them really listening hard to make sure they did all the steps in the right order to make the bird. One thing that really stood out for me was that the children were all having fun while being taught something new."
            },
            {
              "number": 22,
              "prompt": "Which TWO educational skills were shown in the video of children doing origami?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "On the video you could see them really listening hard to make sure they did all the steps in the right order to make the bird. One thing that really stood out for me was that the children were all having fun while being taught something new."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 23–27",
          "instructions": "Which comment do the students make about each of the following children in the video? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "demonstrated independence"
            },
            {
              "key": "B",
              "text": "asked for teacher support"
            },
            {
              "key": "C",
              "text": "developed a competitive attitude"
            },
            {
              "key": "D",
              "text": "seemed to find the activity calming"
            },
            {
              "key": "E",
              "text": "seemed pleased with the results"
            },
            {
              "key": "F",
              "text": "seemed confused"
            },
            {
              "key": "G",
              "text": "seemed to find the activity easy"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Sid",
              "answer": "D",
              "explanation": "it helped him to settle down and start concentrating."
            },
            {
              "number": 24,
              "prompt": "Jack",
              "answer": "A",
              "explanation": "You could see him trying out different things rather than asking the teacher for help."
            },
            {
              "number": 25,
              "prompt": "Naomi",
              "answer": "C",
              "explanation": "She seemed to be losing interest at one point but then she decided she wanted her mouse to be the best and that motivated her to try harder."
            },
            {
              "number": 26,
              "prompt": "Anya",
              "answer": "G",
              "explanation": "She listened so carefully and then produced the perfect bird with very little effort."
            },
            {
              "number": 27,
              "prompt": "Zara",
              "answer": "F",
              "explanation": "She seemed unsure about what she was supposed to do."
            }
          ],
          "id": "g23"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 28–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 28,
              "prompt": "Before starting an origami activity in class, the students think it is important for the teacher to",
              "options": [
                {
                  "key": "A",
                  "text": "make models that demonstrate the different stages."
                },
                {
                  "key": "B",
                  "text": "check children understand the terminology involved."
                },
                {
                  "key": "C",
                  "text": "tell children not to worry if they find the activity difficult."
                }
              ],
              "answer": "A",
              "explanation": "I think it would have taken me ages to prepare examples, showing each of the steps involved in making the bird. But that was a really good idea."
            },
            {
              "number": 29,
              "prompt": "The students agree that some teachers might be unwilling to use origami in class because",
              "options": [
                {
                  "key": "A",
                  "text": "they may not think that crafts are important."
                },
                {
                  "key": "B",
                  "text": "they may not have the necessary skills."
                },
                {
                  "key": "C",
                  "text": "they may worry that it will take up too much time."
                }
              ],
              "answer": "B",
              "explanation": "I bet it’s because so many teachers are clumsy like me."
            },
            {
              "number": 30,
              "prompt": "Why do the students decide to use origami in their maths teaching practice?",
              "options": [
                {
                  "key": "A",
                  "text": "to correct a particular misunderstanding"
                },
                {
                  "key": "B",
                  "text": "to set a challenge"
                },
                {
                  "key": "C",
                  "text": "to introduce a new concept"
                }
              ],
              "answer": "C",
              "explanation": "I think it would also work really well for presenting fractions, which is coming up soon."
            }
          ],
          "id": "g28"
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
              "text": "His novel, Les Misérables"
            },
            {
              "kind": "static",
              "text": "It has been adapted for theatre and cinema."
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "subheader",
              "text": "His early career"
            },
            {
              "kind": "static",
              "text": "In Paris, his career was successful and he led the Romantic movement."
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "Napoleon III disliked his views and exiled him."
            },
            {
              "kind": "subheader",
              "text": "His exile from France"
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
              "text": "His house on Guernsey"
            },
            {
              "kind": "static",
              "text": "Victor Hugo lived in this house until the end of the Empire in France."
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
              "text": "The library still contains many of his favourite books."
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "1927."
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "We know more about its overall _______ than about its author.",
              "answer": [
                "plot"
              ],
              "wordLimit": 1,
              "explanation": "So, some of us, I’m sure, have a pretty general idea of the plot, but we know much less about the author."
            },
            {
              "number": 32,
              "prompt": "He spoke publicly about social issues, such as _______ and education.",
              "answer": [
                "poverty"
              ],
              "wordLimit": 1,
              "explanation": "However, as well as being a literary genius, he also gave many speeches about issues like the level of poverty in his society."
            },
            {
              "number": 33,
              "prompt": "Victor Hugo had to live elsewhere in _______",
              "answer": [
                "Europe"
              ],
              "wordLimit": 1,
              "explanation": "So Victor Hugo was forced to reside in other parts of Europe."
            },
            {
              "number": 34,
              "prompt": "He used his income from the sale of some _______ he had written to buy a house on Guernsey.",
              "answer": [
                "poetry"
              ],
              "wordLimit": 1,
              "explanation": "This was a property that he bought using the money he’d made in France from the publication of a collection of his poetry."
            },
            {
              "number": 35,
              "prompt": "The ground floor contains portraits, _______ and tapestries that he valued.",
              "answer": [
                "drawings"
              ],
              "wordLimit": 1,
              "explanation": "He lived in the house with his family … and portraits of its members still hang in rooms on the ground floor, along with drawings that he did during his travels that he felt were important to him."
            },
            {
              "number": 36,
              "prompt": "He bought cheap _______ made of wood and turned this into beautiful wall carvings.",
              "answer": [
                "furniture"
              ],
              "wordLimit": 1,
              "explanation": "The walls are covered in dark wood panelling that Victor Hugo created himself using wooden furniture that he bought in the market."
            },
            {
              "number": 37,
              "prompt": "The first floor consists of furnished areas with wallpaper and _______ that have a Chinese design.",
              "answer": [
                "lamps"
              ],
              "wordLimit": 1,
              "explanation": "There’s a strong Chinese influence in these areas in things like the wallpaper pattern and the lamps - which he would have made himself by copying original versions."
            },
            {
              "number": 38,
              "prompt": "He wrote in a room at the top of the house that had a view of the _______",
              "answer": [
                "harbour"
              ],
              "wordLimit": 1,
              "explanation": "/ harbor And then, at the very top of the house, there’s a room called the Lookout - called that because it looks out over the harbour."
            },
            {
              "number": 39,
              "prompt": "He entertained other writers as well as poor _______ in his house.",
              "answer": [
                "children"
              ],
              "wordLimit": 1,
              "explanation": "While living in his house on Guernsey, he entertained many other famous writers, but he also invited a large group of local children from the deprived areas of the island to dinner once a week."
            },
            {
              "number": 40,
              "prompt": "Victor Hugo’s _______ gave ownership of the house to the city of Paris in",
              "answer": [
                "relatives"
              ],
              "wordLimit": 1,
              "explanation": "In 1927, the house was owned by his relatives, and they decided to donate it to the city of Paris."
            }
          ],
          "formTitle": "Victor Hugo",
          "id": "g31"
        }
      ]
    }
  ]
}
$c18t4l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 19',
  'Test 1',
  'academic',
  2004,
  $c19t1l$
{
  "audioPath": "Cambridge 19 Test 1.mp3",
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
              "text": "The park"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "Habitats: wetland, grassland and woodland"
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "Wildlife includes birds, insects and animals"
            },
            {
              "kind": "static",
              "text": "Subjects studied in educational visits include"
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
              "kind": "static",
              "text": "Benefits of outdoor educational visits"
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
              "text": "Practical issues"
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
              "prompt": "Area: _______ hectares",
              "answer": [
                "69"
              ],
              "wordLimit": 1,
              "explanation": "Of course. Altogether the park covers 170 acres, that’s 69 hectares."
            },
            {
              "number": 2,
              "prompt": "Wetland: lakes, ponds and a _______",
              "answer": [
                "stream"
              ],
              "wordLimit": 1,
              "explanation": "the gravel pits filled with water, forming the two large lakes. There are also several smaller ones, ponds and a stream that flows through the park."
            },
            {
              "number": 3,
              "prompt": "Science: Children look at _______ about plants, etc.",
              "answer": [
                "data"
              ],
              "wordLimit": 1,
              "explanation": "Well, one focus is on science, where we help children to discover and study plants, trees and insects. They also collect and analyse data about the things they see."
            },
            {
              "number": 4,
              "prompt": "Geography: includes learning to use a _______ and compass History: changes in land use",
              "answer": [
                "map"
              ],
              "wordLimit": 1,
              "explanation": "Another focus is on geography. The park is a great environment to learn and practice reading a map and using a compass to navigate around the park."
            },
            {
              "number": 5,
              "prompt": "Leisure and tourism: mostly concentrates on the park’s _______",
              "answer": [
                "visitors"
              ],
              "wordLimit": 1,
              "explanation": "That focuses on your visitors, I would imagine."
            },
            {
              "number": 6,
              "prompt": "Music: Children make _______ with natural materials, and experiment with rhythm and speed.",
              "answer": [
                "sounds"
              ],
              "wordLimit": 1,
              "explanation": "here the children experiment with natural materials to create sounds and explore rhythm and tempo."
            },
            {
              "number": 7,
              "prompt": "They give children a feeling of _______ that they may not have elsewhere.",
              "answer": [
                "freedom"
              ],
              "wordLimit": 1,
              "explanation": "I would imagine they get a sense of freedom that might not be a normal part of their lives."
            },
            {
              "number": 8,
              "prompt": "Children learn new _______ and gain self-confidence.",
              "answer": [
                "skills"
              ],
              "wordLimit": 1,
              "explanation": "And very often the children discover that they can do things they didn’t know they could do, and they develop new skills."
            },
            {
              "number": 9,
              "prompt": "Cost per child: £ _______",
              "answer": [
                "4.95"
              ],
              "wordLimit": 1,
              "explanation": "If there are over 30, it costs £4.95 for each child who attends on the day."
            },
            {
              "number": 10,
              "prompt": "Adults, such as _______ , free",
              "answer": [
                "leaders"
              ],
              "wordLimit": 1,
              "explanation": "There’s no charge for leaders and other adults-as many as you want to bring."
            }
          ],
          "formTitle": "Hinchingbrooke Country Park",
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
              "prompt": "During the visit to Malatte, in France, members especially enjoyed",
              "options": [
                {
                  "key": "A",
                  "text": "going to a theme park."
                },
                {
                  "key": "B",
                  "text": "experiencing a river trip."
                },
                {
                  "key": "C",
                  "text": "visiting a cheese factory."
                }
              ],
              "answer": "B",
              "explanation": "but we all had a great time on the final boat trip down the river-that was the real highlight."
            },
            {
              "number": 12,
              "prompt": "What will happen in Stanthorpe to mark the 25th anniversary of the Twinning Association?",
              "options": [
                {
                  "key": "A",
                  "text": "A tree will be planted."
                },
                {
                  "key": "B",
                  "text": "A garden seat will be bought."
                },
                {
                  "key": "C",
                  "text": "A footbridge will be built."
                }
              ],
              "answer": "A",
              "explanation": "we’ve decided to plant a poplar tree in the museum gardens."
            },
            {
              "number": 13,
              "prompt": "Which event raised most funds this year?",
              "options": [
                {
                  "key": "A",
                  "text": "the film show"
                },
                {
                  "key": "B",
                  "text": "the pancake evening"
                },
                {
                  "key": "C",
                  "text": "the cookery demonstration"
                }
              ],
              "answer": "B",
              "explanation": "Our pancake evening was well attended and made record profits."
            },
            {
              "number": 14,
              "prompt": "For the first evening with the French visitors host families are advised to",
              "options": [
                {
                  "key": "A",
                  "text": "take them for a walk round the town."
                },
                {
                  "key": "B",
                  "text": "go to a local restaurant."
                },
                {
                  "key": "C",
                  "text": "have a meal at home."
                }
              ],
              "answer": "C",
              "explanation": "Don’t try to do too much that first evening as they’ll be tired, so have dinner in the house or garden rather than eating out."
            },
            {
              "number": 15,
              "prompt": "On Saturday evening there will be the chance to",
              "options": [
                {
                  "key": "A",
                  "text": "listen to a concert."
                },
                {
                  "key": "B",
                  "text": "watch a match."
                },
                {
                  "key": "C",
                  "text": "take part in a competition."
                }
              ],
              "answer": "A",
              "explanation": "we’ll have Toby Sharp and his band performing English and Scottish country songs."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "Label the map below. Write the correct letter, A–H, next to Questions 16–20.",
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
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "Farm shop",
              "answer": "G",
              "explanation": "There’s an excellent farm shop in the grounds where our visitors can buy local produce - it’s in the old stables, which is the first building you come to"
            },
            {
              "number": 17,
              "prompt": "Disabled entry",
              "answer": "C",
              "explanation": "I know that one or two of our visitors may not be all that mobile."
            },
            {
              "number": 18,
              "prompt": "Adventure playground",
              "answer": "B",
              "explanation": "Children will probably be most interested in the adventure playground. That’s at the northern end of the larger lake, in a bend on the path that leads to the lake."
            },
            {
              "number": 19,
              "prompt": "Kitchen gardens",
              "answer": "D",
              "explanation": "The kitchen gardens are rectangular and surrounded by a wall. They’re to the north-east of the house, quite near the smaller lake."
            },
            {
              "number": 20,
              "prompt": "The Temple of the Four Winds",
              "answer": "A",
              "explanation": "Then when the path forks, take the right-hand path. Go up there with the woods on your left and the temple is right at the end."
            }
          ],
          "mapImage": "Cambridge 19 Test 1 map.png",
          "id": "g16"
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
          "instructions": "Choose TWO letters, A–E. Which TWO things did Colin find most satisfying about his bread reuse project?",
          "options": [
            {
              "key": "A",
              "text": "receiving support from local restaurants"
            },
            {
              "key": "B",
              "text": "finding a good way to prevent waste"
            },
            {
              "key": "C",
              "text": "overcoming problems in a basic process"
            },
            {
              "key": "D",
              "text": "experimenting with designs and colours"
            },
            {
              "key": "E",
              "text": "learning how to apply 3-D printing"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO things did Colin find most satisfying about his bread reuse project?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "It must’ve been a great feeling to make something appetising out of bits of old bread that would’ve been thrown away otherwise. in this project, I had time to play around with different patterns for the biscuits and finding how I could add fruit and vegetables to make them a more appetising colour, and I was really pleased with what I managed to produce."
            },
            {
              "number": 22,
              "prompt": "Which TWO things did Colin find most satisfying about his bread reuse project?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "It must’ve been a great feeling to make something appetising out of bits of old bread that would’ve been thrown away otherwise. in this project, I had time to play around with different patterns for the biscuits and finding how I could add fruit and vegetables to make them a more appetising colour, and I was really pleased with what I managed to produce."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO ways do the students agree that touch-sensitive sensors for food labels could be developed in future?",
          "options": [
            {
              "key": "A",
              "text": "for use on medical products"
            },
            {
              "key": "B",
              "text": "to show that food is no longer fit to eat"
            },
            {
              "key": "C",
              "text": "for use with drinks as well as foods"
            },
            {
              "key": "D",
              "text": "to provide applications for blind people"
            },
            {
              "key": "E",
              "text": "to indicate the weight of certain foods"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO ways do the students agree that touch-sensitive sensors for food labels could be developed in future?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "But actually, I thought it might be really good for drug storage in hospitals and pharmacies. coming back to food, maybe it’d be possible to use it for other things besides freshness. Like how many kilograms a joint of meat is, for example."
            },
            {
              "number": 24,
              "prompt": "Which TWO ways do the students agree that touch-sensitive sensors for food labels could be developed in future?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "But actually, I thought it might be really good for drug storage in hospitals and pharmacies. coming back to food, maybe it’d be possible to use it for other things besides freshness. Like how many kilograms a joint of meat is, for example."
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What is the students’ opinion about each of the following food trends? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "This is only relevant to young people."
            },
            {
              "key": "B",
              "text": "This may have disappointing results."
            },
            {
              "key": "C",
              "text": "This already seems to be widespread."
            },
            {
              "key": "D",
              "text": "Retailers should do more to encourage this."
            },
            {
              "key": "E",
              "text": "More financial support is needed for this."
            },
            {
              "key": "F",
              "text": "Most people know little about this."
            },
            {
              "key": "G",
              "text": "There should be stricter regulations about this."
            },
            {
              "key": "H",
              "text": "This could be dangerous."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Use of local products",
              "answer": "D",
              "explanation": "Oh things like more focus on local products? That seems so obvious, but the shops are still full of imported foods."
            },
            {
              "number": 26,
              "prompt": "Reduction in unnecessary packaging",
              "answer": "G",
              "explanation": "One thing everyone’s aware of is the need for a reduction in unnecessary packaging-but just about everything you buy in supermarkets is still covered in plastic. The government needs to do something about it."
            },
            {
              "number": 27,
              "prompt": "Gluten-free and lactose-free food",
              "answer": "C",
              "explanation": "Do you think there’ll be more interest in gluten and lactose-free food?"
            },
            {
              "number": 28,
              "prompt": "Use of branded products related to celebrity chefs",
              "answer": "B",
              "explanation": "One thing I ’ve noticed is the number of branded products related to celebrity chefs - people watch them cooking on TV and then buy things like spice mixes or frozen foods with the chef’s name on. I bought something like that once, but I won’t again."
            },
            {
              "number": 29,
              "prompt": "Development of 'ghost kitchens’ for takeaway food",
              "answer": "F",
              "explanation": "Did the article mention ‘ghost kitchens’ used to produce takeaway food?"
            },
            {
              "number": 30,
              "prompt": "Use of mushrooms for common health concerns",
              "answer": "H",
              "explanation": "Did you know more and more people are using all sorts of different mushrooms now, to treat different health concerns? Things like heart problems?"
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
              "text": "an important Neolithic archaeological site in the northwest of Ireland"
            },
            {
              "kind": "subheader",
              "text": "Discovery"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "."
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
              "text": "- carbon dating later proved the site was Neolithic."
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Neolithic farmers"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Neolithic innovations include:"
            },
            {
              "kind": "subheader",
              "text": "- cooking indoors"
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
              "kind": "static",
              "text": "Reasons for the decline in farming a decline in"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "quality an increase in",
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
              "prompt": "In the 1930s, a local teacher realised that stones beneath the bog surface were once _______",
              "answer": [
                "walls"
              ],
              "wordLimit": 1,
              "explanation": "when local people were digging in the bog, they were constantly hitting against what seemed to be rows of stones. He realised that these must be walls and that they must be thousands of years old for them to predate the bog which subsequently grew over them."
            },
            {
              "number": 32,
              "prompt": "His _______ became an archaeologist and undertook an investigation of the site:",
              "answer": [
                "son"
              ],
              "wordLimit": 1,
              "explanation": "Patrick Caulfield’s son Seamus, who had become an archaeologist by then, began to explore further."
            },
            {
              "number": 33,
              "prompt": "- a traditional method used by local people to dig for _______ was used to identify where stones were located",
              "answer": [
                "fuel"
              ],
              "wordLimit": 1,
              "explanation": "He inserted iron probes into the bog to map the formation of the stones, a traditional method which local people had always used for finding fuel buried in the bog for thousands of years."
            },
            {
              "number": 34,
              "prompt": "Items are well preserved in the bog because of a lack of _______ .",
              "answer": [
                "oxygen"
              ],
              "wordLimit": 1,
              "explanation": "Objects remain so well preserved in these conditions because of the acidity of the peat and the deficiency of oxygen"
            },
            {
              "number": 35,
              "prompt": "Houses were _______ in shape and had a hole in the roof.",
              "answer": [
                "rectangular"
              ],
              "wordLimit": 1,
              "explanation": "able to build bigger houses. These weren’t round as people often assume, but rectangular with a small hole"
            },
            {
              "number": 36,
              "prompt": "- pots used for storage and to make _______ .",
              "answer": [
                "lamps"
              ],
              "wordLimit": 1,
              "explanation": "The pots were used for many things; as well as for storing food, pots were filled with a small amount of fat and when this was set alight, they served as lamps."
            },
            {
              "number": 37,
              "prompt": "Each field at Céide was large enough to support a big _______ .",
              "answer": [
                "family"
              ],
              "wordLimit": 1,
              "explanation": "Evidence from the Céide Fields suggests that each plot of land was of a suitable size to sustain an extended family."
            },
            {
              "number": 38,
              "prompt": "The fields were probably used to restrict the grazing of animals - no evidence of structures to house them during _______ .",
              "answer": [
                "winter"
              ],
              "wordLimit": 1,
              "explanation": "This must have been a year-round activity as no structures have been found which would have been used to shelter animals in the winter."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "soil"
              ],
              "wordLimit": 1,
              "explanation": "The soil would have become less productive and led to the abandonment of farming."
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "rain"
              ],
              "wordLimit": 1,
              "explanation": "but this began to change and the conditions became wetter as there was a lot more rain"
            }
          ],
          "formTitle": "Céide Fields",
          "id": "g31"
        }
      ]
    }
  ]
}
$c19t1l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 19',
  'Test 2',
  'academic',
  2004,
  $c19t2l$
{
  "audioPath": "Cambridge 19 Test 2.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the form below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
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
              "kind": "subheader",
              "text": "First floor, Room T347"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "question",
              "number": 6
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Coordinator: Gary _______",
              "answer": [
                "MATHIESON"
              ],
              "wordLimit": 1,
              "explanation": "It’s M-A-T-H-I-E-S-O-N."
            },
            {
              "number": 2,
              "prompt": "Level: _______",
              "answer": [
                "beginners"
              ],
              "wordLimit": 1,
              "explanation": "When I first spoke to Gary on the phone, he said it was a class for beginners"
            },
            {
              "number": 3,
              "prompt": "Place: the _______",
              "answer": [
                "college"
              ],
              "wordLimit": 1,
              "explanation": "he decided to book a room at the college in town. I prefer going there"
            },
            {
              "number": 4,
              "prompt": "_______ Street",
              "answer": [
                "New"
              ],
              "wordLimit": 1,
              "explanation": "It’s just beyond there at the bottom of New Street near the city roundabout."
            },
            {
              "number": 5,
              "prompt": "Time: Thursday morning at _______",
              "answer": [
                "11"
              ],
              "wordLimit": 1,
              "explanation": "/ eleven We meet on Thursdays. It used to be 10.30 and that suited me well, but now we meet at 11."
            },
            {
              "number": 6,
              "prompt": "Recommended website: ‘The perfect _______ ’",
              "answer": [
                "instrument"
              ],
              "wordLimit": 1,
              "explanation": "Well, you can always buy a second-hand one. There’s a website called ‘The perfect instrument’ that sells all kinds of guitars, violins and so on."
            }
          ],
          "formTitle": "Guitar Group",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formTitle": "A typical 45-minute guitar lesson",
          "formContent": [
            {
              "kind": "subheader",
              "text": "5 minutes"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "subheader",
              "text": "10 minutes"
            },
            {
              "kind": "static",
              "text": "Activity: strumming chords using our thumbs"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "15 minutes"
            },
            {
              "kind": "static",
              "text": "Activity: playing songs"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "subheader",
              "text": "10 minutes"
            },
            {
              "kind": "static",
              "text": "Activity: playing single notes and simple tunes"
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "subheader",
              "text": "5 minutes"
            },
            {
              "kind": "static",
              "text": "Activity: noting things to practise at home"
            }
          ],
          "questions": [
            {
              "number": 7,
              "prompt": "Activity: tuning guitars, using an app or by _______",
              "answer": [
                "ear"
              ],
              "wordLimit": 1,
              "explanation": "Some people have an app they use, but others do it by ear."
            },
            {
              "number": 8,
              "prompt": "Notes: keeping time while the teacher is _______",
              "answer": [
                "Clapping"
              ],
              "wordLimit": 1,
              "explanation": "Sometimes we all just start laughing because we’re so bad at keeping time, so Gary starts clapping to help us."
            },
            {
              "number": 9,
              "prompt": "Notes: often listening to a _______ of a song",
              "answer": [
                "recording"
              ],
              "wordLimit": 1,
              "explanation": "He often brings a recording of the song and plays it to us first."
            },
            {
              "number": 10,
              "prompt": "Notes: playing together, then _______",
              "answer": [
                "alone"
              ],
              "wordLimit": 1,
              "explanation": "The only trouble is that he sometimes gets us to play one at a time - you know, alone."
            }
          ],
          "id": "g7"
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
              "prompt": "What made David leave London and move to Northsea?",
              "options": [
                {
                  "key": "A",
                  "text": "He was eager to develop a hobby."
                },
                {
                  "key": "B",
                  "text": "He wanted to work shorter hours."
                },
                {
                  "key": "C",
                  "text": "He found his job in website design unsatisfying"
                }
              ],
              "answer": "A",
              "explanation": "I never really planned to be a lifeboat volunteer when I came to live in Northsea. I’d been working in London as a website designer, but although that was interesting, I didn’t like city life. I’d been really keen on boats as a teenager, and I thought if I went to live by the sea, I might be able to pursue that interest a bit more in my free time."
            },
            {
              "number": 12,
              "prompt": "The Lifeboat Institution in Northsea was built with money provided by",
              "options": [
                {
                  "key": "A",
                  "text": "a local organisation."
                },
                {
                  "key": "B",
                  "text": "a local resident."
                },
                {
                  "key": "C",
                  "text": "the local council."
                }
              ],
              "answer": "B",
              "explanation": "It was built 15 years ago with funds provided by a generous member of the public, who’d lived here all her life."
            },
            {
              "number": 13,
              "prompt": "In his health assessment, the doctor was concerned about the fact that David",
              "options": [
                {
                  "key": "A",
                  "text": "might be colour blind."
                },
                {
                  "key": "B",
                  "text": "was rather short-sighted."
                },
                {
                  "key": "C",
                  "text": "had undergone eye surgery."
                }
              ],
              "answer": "A",
              "explanation": "They gave me tests for colour blindness and they thought I might have a problem there, but it turned out I was OK."
            },
            {
              "number": 14,
              "prompt": "After arriving at the lifeboat station, they aim to launch the boat within",
              "options": [
                {
                  "key": "A",
                  "text": "five minutes."
                },
                {
                  "key": "B",
                  "text": "six to eight minutes."
                },
                {
                  "key": "C",
                  "text": "eight and a half minutes."
                }
              ],
              "answer": "B",
              "explanation": "When the coastguard gets an alert, all the volunteers are contacted and rush to the lifeboat station. Our target’s to get there in five minutes, then we try to get the boat off the dock and out to sea in another six to eight minutes."
            },
            {
              "number": 15,
              "prompt": "As a ‘helmsman’, David has the responsibility of deciding",
              "options": [
                {
                  "key": "A",
                  "text": "who will be the members of his crew."
                },
                {
                  "key": "B",
                  "text": "what equipment it will be necessary to take."
                },
                {
                  "key": "C",
                  "text": "if the lifeboat should be launched."
                }
              ],
              "answer": "C",
              "explanation": "I’ve recently qualified as what’s called a ’helmsman’, which means I have the ultimate responsibility for the lifeboat."
            },
            {
              "number": 16,
              "prompt": "As well as going out on the lifeboat, David",
              "options": [
                {
                  "key": "A",
                  "text": "gives talks on safety at sea."
                },
                {
                  "key": "B",
                  "text": "helps with fundraising."
                },
                {
                  "key": "C",
                  "text": "recruits new volunteers."
                }
              ],
              "answer": "A",
              "explanation": "As well as going out on the lifeboat, my work involves other things too. A lot of people underestimate how windy conditions can change at sea, so I speak to youth groups and sailing clubs in the area about the sorts of problems that sailors and swimmers can have if the weather suddenly gets bad."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. Which TWO things does David say about the lifeboat volunteer training?",
          "options": [
            {
              "key": "A",
              "text": "The residential course developed his leadership skills."
            },
            {
              "key": "B",
              "text": "The training in use of ropes and knots was quite brief."
            },
            {
              "key": "C",
              "text": "The training exercises have built up his mental strength."
            },
            {
              "key": "D",
              "text": "The casualty care activities were particularly challenging for him."
            },
            {
              "key": "E",
              "text": "The wave tank activities provided practice in survival techniques."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Which TWO things does David say about the lifeboat volunteer training?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "The training we get is a continuous process, focusing on technical competence and safe handling techniques, and it’s given me the confidence to deal with extreme situations without panicking. There’s a wave-tank where we could experience an overturned lifeboat scenario-so we could get experience at what to do if the boat turned over in a storm at night, for example."
            },
            {
              "number": 18,
              "prompt": "Which TWO things does David say about the lifeboat volunteer training?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "The training we get is a continuous process, focusing on technical competence and safe handling techniques, and it’s given me the confidence to deal with extreme situations without panicking. There’s a wave-tank where we could experience an overturned lifeboat scenario-so we could get experience at what to do if the boat turned over in a storm at night, for example."
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO things does David find most motivating about the work he does?",
          "options": [
            {
              "key": "A",
              "text": "working as part of a team"
            },
            {
              "key": "B",
              "text": "experiences when working in winter"
            },
            {
              "key": "C",
              "text": "being thanked by those he has helped"
            },
            {
              "key": "D",
              "text": "the fact that it keeps him fit"
            },
            {
              "key": "E",
              "text": "the chance to develop new equipment"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO things does David find most motivating about the work he does?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "But the work’s hugely motivating. It’s not just about saving lives-I’ve learned a lot about the technology involved. My background in IT’s been useful here, and I can use my expertise to help other volunteers. They’re a great group-we’re like a family really, which helps when you’re dragging yourself out of bed on a cold stormy night. But actually, it’s the colder months that can be the most rewarding time. That’s when the incidents tend to be more serious, and you realise that you can make a huge difference to the outcome."
            },
            {
              "number": 20,
              "prompt": "Which TWO things does David find most motivating about the work he does?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "But the work’s hugely motivating. It’s not just about saving lives-I’ve learned a lot about the technology involved. My background in IT’s been useful here, and I can use my expertise to help other volunteers. They’re a great group-we’re like a family really, which helps when you’re dragging yourself out of bed on a cold stormy night. But actually, it’s the colder months that can be the most rewarding time. That’s when the incidents tend to be more serious, and you realise that you can make a huge difference to the outcome."
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
              "prompt": "At first, Don thought the topic of recycling footwear might be too",
              "options": [
                {
                  "key": "A",
                  "text": "limited in scope."
                },
                {
                  "key": "B",
                  "text": "hard to research."
                },
                {
                  "key": "C",
                  "text": "boring for listeners."
                }
              ],
              "answer": "A",
              "explanation": "Well, before I started reading it, I thought recycling footwear, well, although it’s quite interesting, perhaps there isn’t enough to say about it"
            },
            {
              "number": 22,
              "prompt": "When discussing trainers, Bella and Don disagree about",
              "options": [
                {
                  "key": "A",
                  "text": "how popular they are among young people."
                },
                {
                  "key": "B",
                  "text": "how suitable they are for school."
                },
                {
                  "key": "C",
                  "text": "how quickly they wear out."
                }
              ],
              "answer": "B",
              "explanation": "I guess they are very hard-wearing, but don’t they look a bit casual for school uniform? I don’t think they’re right for that."
            },
            {
              "number": 23,
              "prompt": "Bella says that she sometimes recycles shoes because",
              "options": [
                {
                  "key": "A",
                  "text": "they no longer fit."
                },
                {
                  "key": "B",
                  "text": "she no longer likes them."
                },
                {
                  "key": "C",
                  "text": "they are no longer in fashion."
                }
              ],
              "answer": "B",
              "explanation": "I must admit, I’ve recycled some perfectly good shoes, that haven’t gone out of fashion and still fit, just because they don’t look great on me any more. That’s awful isn’t it?"
            },
            {
              "number": 24,
              "prompt": "What did the article say that confused Don?",
              "options": [
                {
                  "key": "A",
                  "text": "Public consumption of footwear has risen."
                },
                {
                  "key": "B",
                  "text": "Less footwear is recycled now than in the past."
                },
                {
                  "key": "C",
                  "text": "People dispose of more footwear than they used to."
                }
              ],
              "answer": "B",
              "explanation": "No. But then it said that the amount of recycled footwear has fallen: it’s 6 percent now compared to a previous level of 11 percent. That doesn’t seem to make sense."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 25–28",
          "instructions": "What reasons did the recycling manager give for rejecting footwear, according tothe students? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "one shoe was missing"
            },
            {
              "key": "B",
              "text": "the colour of one shoe had faded"
            },
            {
              "key": "C",
              "text": "one shoe had a hole in it"
            },
            {
              "key": "D",
              "text": "the shoes were brand new"
            },
            {
              "key": "E",
              "text": "he shoes were too dirty"
            },
            {
              "key": "F",
              "text": "the stitching on the shoes was broken"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "the high-heeled shoes",
              "answer": "E",
              "explanation": "but in a very wet field so the heels were too stained with mud and grass to re-sell them."
            },
            {
              "number": 26,
              "prompt": "the ankle boots",
              "answer": "B",
              "explanation": "One of the shoes was a much lighter shade than the other one"
            },
            {
              "number": 27,
              "prompt": "the baby shoes",
              "answer": "A",
              "explanation": "You’d think it would have been easy to find the other, but it wasn’t."
            },
            {
              "number": 28,
              "prompt": "the trainers",
              "answer": "C",
              "explanation": "One of the soles was so worn under the foot that you could put your finger through it."
            }
          ],
          "id": "g25"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 29–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 29,
              "prompt": "Why did the project to make ‘new’ shoes out of old shoes fail?",
              "options": [
                {
                  "key": "A",
                  "text": "People believed the 'new' pairs of shoes were unhygienic."
                },
                {
                  "key": "B",
                  "text": "There were not enough good parts to use in the old shoes."
                },
                {
                  "key": "C",
                  "text": "The shoes in the ‘new’ pairs were not completely alike."
                }
              ],
              "answer": "C",
              "explanation": "It was because the pairs of shoes weren’t identical."
            },
            {
              "number": 30,
              "prompt": "Bella and Don agree that they can present their topic",
              "options": [
                {
                  "key": "A",
                  "text": "from a new angle."
                },
                {
                  "key": "B",
                  "text": "with relevant images."
                },
                {
                  "key": "C",
                  "text": "in a straightforward way."
                }
              ],
              "answer": "A",
              "explanation": "we can show that by taking a very different approach to it."
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
              "text": "- more than 1,000 species, 0.05-1.2 millimetres long"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "subheader",
              "text": "Physical appearance"
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
              "text": "- absence of respiratory organs"
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
              "text": "Habitat"
            },
            {
              "kind": "static",
              "text": "- often found at the bottom of a lake or on plants"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "subheader",
              "text": "Cryptobiosis"
            },
            {
              "kind": "static",
              "text": "- In dry conditions, they roll into a ball called a ‘tun’."
            },
            {
              "kind": "static",
              "text": "- They stay alive with a much lower metabolism than usual."
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
              "text": "Feeding"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "subheader",
              "text": "- may eat other tardigrades"
            },
            {
              "kind": "subheader",
              "text": "Conservation status"
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "- also known as water ‘bears’ (due to how they _______ ) and ‘moss piglets’",
              "answer": [
                "move"
              ],
              "wordLimit": 1,
              "explanation": "‘bear’ because of the way they move."
            },
            {
              "number": 32,
              "prompt": "- a _______ round body and four pairs of legs",
              "answer": [
                "short"
              ],
              "wordLimit": 1,
              "explanation": "They have a body which is short, and also rounded- a bit like a barrel- and the body comprises four segments. Each segment has a pair of legs"
            },
            {
              "number": 33,
              "prompt": "- claws or _______ for gripping",
              "answer": [
                "discs"
              ],
              "wordLimit": 1,
              "explanation": "/ disks I should also say that some species don’t have any claws: what they have are discs"
            },
            {
              "number": 34,
              "prompt": "- body filled with a liquid that carries both _______ and blood",
              "answer": [
                "oxygen"
              ],
              "wordLimit": 1,
              "explanation": "Instead, oxygen and also blood are transported in a fluid that fills the cavity of the body."
            },
            {
              "number": 35,
              "prompt": "- mouth shaped like a _______ with teeth called stylets",
              "answer": [
                "tube"
              ],
              "wordLimit": 1,
              "explanation": "The tardigrade’s mouth is a kind of tube that can open outwards to reveal teeth-like structures known as ‘stylets’."
            },
            {
              "number": 36,
              "prompt": "- very resilient and can exist in very low or high _______",
              "answer": [
                "temperatures"
              ],
              "wordLimit": 1,
              "explanation": "they’re also able to withstand temperatures as low as minus ~200 degrees centigrade, or highs of more than 148 degrees centigrade"
            },
            {
              "number": 37,
              "prompt": "- A type of _______ ensures their DNA is not damaged.",
              "answer": [
                "protein"
              ],
              "wordLimit": 1,
              "explanation": "tardigrades produce a protein that protects their DNA."
            },
            {
              "number": 38,
              "prompt": "- Research is underway to find out how many days they can stay alive in _______",
              "answer": [
                "space"
              ],
              "wordLimit": 1,
              "explanation": "There are currently several tests taking place in space, to determine how long tardigrades might be able to survive there."
            },
            {
              "number": 39,
              "prompt": "- consume liquids, e.g., those found in moss or _______",
              "answer": [
                "seaweed"
              ],
              "wordLimit": 1,
              "explanation": "They suck the juices from moss, or extract fluid from seaweed"
            },
            {
              "number": 40,
              "prompt": "- They are not considered to be _______ .",
              "answer": [
                "endangered"
              ],
              "wordLimit": 1,
              "explanation": "Conservation of Nature and are not on any endangered list."
            }
          ],
          "formTitle": "Tardigrades",
          "id": "g31"
        }
      ]
    }
  ]
}
$c19t2l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 19',
  'Test 3',
  'academic',
  2004,
  $c19t3l$
{
  "audioPath": "Cambridge 19 Test 3.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Where to go"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Fish market"
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
              "text": "Organic shop"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "- below a restaurant in the large, grey building"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "question",
              "number": 6
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "- Kite Place - near the _______",
              "answer": [
                "harbour"
              ],
              "wordLimit": 1,
              "explanation": "/ harbor Well, there are plenty of places to buy food in Kite Place- it’s the area by the harbour."
            },
            {
              "number": 2,
              "prompt": "- cross the _______ and turn right",
              "answer": [
                "bridge"
              ],
              "wordLimit": 1,
              "explanation": "It’s at the far end of Kite Place, so you have to go over the bridge and then it’s on the right."
            },
            {
              "number": 3,
              "prompt": "- best to go before _______ pm, earlier than closing time",
              "answer": [
                "3.30",
                "3"
              ],
              "wordLimit": 1,
              "explanation": ":30 / three thirty / half 3 / three As long as you get there by 3.30. you should be fine. It’s only 11 now, so plenty of time."
            },
            {
              "number": 4,
              "prompt": "- called _______",
              "answer": [
                "Rose"
              ],
              "wordLimit": 1,
              "explanation": "/ rose it’s the name of a flower. I know, it’s ’Rose’."
            },
            {
              "number": 5,
              "prompt": "- look for the large _______ outside",
              "answer": [
                "sign"
              ],
              "wordLimit": 1,
              "explanation": "You can’t miss it-there’s also a big sign on the pavement so you can look for that."
            },
            {
              "number": 6,
              "prompt": "Supermarket take a _______ minibus, number 289",
              "answer": [
                "purple"
              ],
              "wordLimit": 1,
              "explanation": "Yeah- you should be able to get everything you need, but there’s a minibus that goes to the supermarket if you need it. It’s purple and the number is 289."
            }
          ],
          "formTitle": "Local food shops",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "To buy Other ideas"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Organic shop beans and a"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "for dessert spices and",
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
              "number": 7,
              "prompt": "Fish market a dozen prawns a handful of _______ (type of seaweed)",
              "answer": [
                "samphire"
              ],
              "wordLimit": 1,
              "explanation": "It’s S-A-M-P-H-l-R-E."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "melon"
              ],
              "wordLimit": 1,
              "explanation": "I’m not sure- they’re not always ripe. I’d prefer a melon- it’s bigger too."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "coconut"
              ],
              "wordLimit": 1,
              "explanation": "The owner also sells a lot of spices there that you can put in a curry, and things like coconut."
            },
            {
              "number": 10,
              "prompt": "Bakery a brown loaf a _______ tart",
              "answer": [
                "strawberry"
              ],
              "wordLimit": 1,
              "explanation": "they have a whole range of tarts and the best are the strawberry ones."
            }
          ],
          "formTitle": "Shopping",
          "id": "g7"
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
          "instructions": "What information is given about each of the following festival workshops? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "involves painting and drawing"
            },
            {
              "key": "B",
              "text": "will be led by a prize-winning author"
            },
            {
              "key": "C",
              "text": "is aimed at children with a disability"
            },
            {
              "key": "D",
              "text": "involves a drama activity"
            },
            {
              "key": "E",
              "text": "focuses on new relationships"
            },
            {
              "key": "F",
              "text": "is aimed at a specific age group"
            },
            {
              "key": "G",
              "text": "explores an unhappy feeling"
            },
            {
              "key": "H",
              "text": "raises awareness of a particular culture"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Superheroes",
              "answer": "C",
              "explanation": "there’s a very special event called Superheroes. This is a chance for deaf children to share their reading experience"
            },
            {
              "number": 12,
              "prompt": "Just do it",
              "answer": "D",
              "explanation": "‘Just do it’ is a practical workshop led by the well-known illustrator Mark Keane. He’ll take participants on a magical journey to faraway lands with an opportunity for aspiring actors to do some role play."
            },
            {
              "number": 13,
              "prompt": "Count on me",
              "answer": "F",
              "explanation": "‘Count on me’ is an inspiring and entertaining look at the issues of friendship for 13-14-year-olds."
            },
            {
              "number": 14,
              "prompt": "Speak up",
              "answer": "G",
              "explanation": "‘Speak up’ is part of a series of workshops on the subject of mental health. This is a creative writing workshop encouraging children to describe situations where young people experience loneliness."
            },
            {
              "number": 15,
              "prompt": "Jump for joy",
              "answer": "B",
              "explanation": "‘Jump for joy’, as many of you will know, is the heart-warming, best-selling story by Nina Karan about a young girl’s trip to visit her relatives in India. It recently received the gold medal at the Waterford Awards."
            },
            {
              "number": 16,
              "prompt": "Sticks and stones",
              "answer": "H",
              "explanation": "‘Sticks and stones’ is the beautifully illustrated picture book for young readers about a community who organise an African-Caribbean festival to help local children learn about their Jamaican roots."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. Which TWO reasons does the speaker give for recommending Alive and Kicking",
          "options": [
            {
              "key": "A",
              "text": "It will appeal to both boys and girls."
            },
            {
              "key": "B",
              "text": "The author is well known."
            },
            {
              "key": "C",
              "text": "It has colourful illustrations."
            },
            {
              "key": "D",
              "text": "It is funny."
            },
            {
              "key": "E",
              "text": "It deals with an important topic."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Which TWO reasons does the speaker give for recommending Alive and Kicking",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Usually, books like this are quite sad, but this one actually made me cry with laughter. It deals with the serious issue of immigration"
            },
            {
              "number": 18,
              "prompt": "Which TWO reasons does the speaker give for recommending Alive and Kicking",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Usually, books like this are quite sad, but this one actually made me cry with laughter. It deals with the serious issue of immigration"
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO pieces of advice does the speaker give to parents about reading?",
          "options": [
            {
              "key": "A",
              "text": "Encourage children to write down new vocabulary."
            },
            {
              "key": "B",
              "text": "Allow children to listen to audio books."
            },
            {
              "key": "C",
              "text": "Get recommendations from librarians."
            },
            {
              "key": "D",
              "text": "Give children a choice about what they read."
            },
            {
              "key": "E",
              "text": "Only read aloud to children until they can read independently."
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO pieces of advice does the speaker give to parents about reading?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "If you don’t have time for this, then let them listen to audio books. You can introduce new authors and genres to them. Librarians should be able to help you with this."
            },
            {
              "number": 20,
              "prompt": "Which TWO pieces of advice does the speaker give to parents about reading?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "If you don’t have time for this, then let them listen to audio books. You can introduce new authors and genres to them. Librarians should be able to help you with this."
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
              "prompt": "How does Clare feel about the students in her Year 12 science class?",
              "options": [
                {
                  "key": "A",
                  "text": "worried that they are not making progress"
                },
                {
                  "key": "B",
                  "text": "challenged by their poor behaviour in class"
                },
                {
                  "key": "C",
                  "text": "frustrated at their lack of interest in the subject"
                }
              ],
              "answer": "C",
              "explanation": "Not brilliant. I’m really struggling with my Year 12 science class."
            },
            {
              "number": 22,
              "prompt": "How does Jake react to Clare’s suggestion about an experiment based on children’s diet?",
              "options": [
                {
                  "key": "A",
                  "text": "He is concerned that the results might not be meaningful."
                },
                {
                  "key": "B",
                  "text": "He feels some of the data might be difficult to obtain."
                },
                {
                  "key": "C",
                  "text": "He suspects that the conclusions might be upsetting."
                }
              ],
              "answer": "B",
              "explanation": "I have to design an experiment for them to do. I was wondering about something on the children’s diets"
            },
            {
              "number": 23,
              "prompt": "What problem do they agree may be involved in an experiment involving animals?",
              "options": [
                {
                  "key": "A",
                  "text": "Any results may not apply to humans."
                },
                {
                  "key": "B",
                  "text": "It may be complicated to get permission."
                },
                {
                  "key": "C",
                  "text": "Students may not be happy about animal experiments."
                }
              ],
              "answer": "A",
              "explanation": "But if we found out that, say, a particular diet affects the health of animals, the same thing wouldn’t necessarily be true for people, would it?"
            },
            {
              "number": 24,
              "prompt": "What question do they decide the experiment should address?",
              "options": [
                {
                  "key": "A",
                  "text": "Are mice capable of controlling their food intake?"
                },
                {
                  "key": "B",
                  "text": "Does an increase in sugar lead to health problems?"
                },
                {
                  "key": "C",
                  "text": "How much do supplements of different kinds affect health?"
                }
              ],
              "answer": "A",
              "explanation": "In fact, maybe the focus could be on whether mice can control their own diet."
            },
            {
              "number": 25,
              "prompt": "Clare might also consider doing another experiment involving",
              "options": [
                {
                  "key": "A",
                  "text": "other types of food supplement."
                },
                {
                  "key": "B",
                  "text": "different genetic strains of mice."
                },
                {
                  "key": "C",
                  "text": "varying amounts of exercise."
                }
              ],
              "answer": "C",
              "explanation": "Like, you could give some of the mice the chance to be more active, running on a wheel or something, and the others just sit around and don’t do much."
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 26–30",
          "instructions": "Complete the flow-chart below. Choose FIVE answers from the box, A–H.",
          "summaryTitle": "",
          "summaryText": "⭣\nDivide the mice into two groups, each with a different {27} .\n⭣\nPut each group in a separate cage.\nFeed group A commercial mouse food.\nFeed group B the same, but also sugar contained in {28} .\n⭣\nTake measurements using an electronic scale.\nPlace them in a weighing chamber to prevent {29} .\n\n⭣\nDo all necessary {30} .",
          "wordBank": [
            {
              "key": "A",
              "text": "size"
            },
            {
              "key": "B",
              "text": "escape"
            },
            {
              "key": "C",
              "text": "age"
            },
            {
              "key": "D",
              "text": "water"
            },
            {
              "key": "E",
              "text": "cereal"
            },
            {
              "key": "F",
              "text": "calculations"
            },
            {
              "key": "G",
              "text": "changes"
            },
            {
              "key": "H",
              "text": "colour"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "",
              "answer": "C",
              "explanation": "I’d say about 12. And all young ones, not a mixture of old and young."
            },
            {
              "number": 27,
              "prompt": "",
              "answer": "H",
              "explanation": "You could use food colouring, that wouldn’t hurt them."
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "E",
              "explanation": "I might be better to give them something like cereal with it."
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "B",
              "explanation": "So you need something called a weighing chamber to stop the mice from running away."
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "F",
              "explanation": "So once we’ve measured the weight gain of each mouse we can work out the average for each group, as well as the standard deviation."
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
              "kind": "subheader",
              "text": "Effects of microplastics"
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
              "text": "They may not affect human health, but they are already banned in skin cleaning products and"
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
              "kind": "static",
              "text": "Microplastics in the soil - a study by Anglia Ruskin University"
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
              "text": "The study found that microplastics caused:"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "loss in earthworms fewer seeds to germinate a rise in the level of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "in the soil.",
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
              "prompt": "Where microplastics come from fibres from some _______ during washing the breakdown of large pieces of plastic waste from industry the action of vehicle tyres on roads",
              "answer": [
                "clothing"
              ],
              "wordLimit": 1,
              "explanation": "Threads and microfibres detach from synthetic clothing every time they’re put in a washing machine"
            },
            {
              "number": 32,
              "prompt": "They cause injuries to the _______ of wildlife and affect their digestive systems.",
              "answer": [
                "mouths"
              ],
              "wordLimit": 1,
              "explanation": "There is evidence that microplastics harm small creatures in a variety of ways, such as by damaging their mouths, or by impairing their ability to feed, for example when microplastics get lodged in their digestive system."
            },
            {
              "number": 33,
              "prompt": "They enter the food chain, e.g., in bottled and tap water, _______ and seafood.",
              "answer": [
                "salt"
              ],
              "wordLimit": 1,
              "explanation": "Surprisingly perhaps, it is likely that humans consume microplastics, as these have been detected in a wide range of food and drink products, including bottled water, as well as in water that comes direct from the tap. What’s more, salt and many kinds of seafood have also been found to contain microplastics."
            },
            {
              "number": 34,
              "prompt": "_______ in some countries.",
              "answer": [
                "toothpaste"
              ],
              "wordLimit": 1,
              "explanation": "In many countries, including here in the UK, there is legislation which prevents manufacturers from adding plastic microbeads to shower gels, facial cleansers and toothpaste."
            },
            {
              "number": 35,
              "prompt": "Microplastics enter the soil through the air, rain and _______ .",
              "answer": [
                "fertilizers"
              ],
              "wordLimit": 1,
              "explanation": "/ fertilisers but we do know they are carried in the air and deposited in the soil by rain. What’s more, many of the fertilisers used by both farmers and gardeners contain microplastics."
            },
            {
              "number": 36,
              "prompt": "Earthworms are important because they add _______ to the soil.",
              "answer": [
                "nutrients"
              ],
              "wordLimit": 1,
              "explanation": "A team from the Anglia Ruskin University in Cambridge has carried out a study of the effects of microplastics on the digestive tracts of earthworms. These worms, which live in topsoil, are an essential component of our agricultural system. By feeding on soil, they mix nutrients into it, thereby making it more fertile."
            },
            {
              "number": 37,
              "prompt": "The study aimed to find whether microplastics in earthworms affect the _______ of plants.",
              "answer": [
                "growth"
              ],
              "wordLimit": 1,
              "explanation": "The researchers set out to discover whether the introduction of microplastics into the soil- and the subsequent ingestion of these by earthworms- would impact soil quality and ultimately inhibit plant growth."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "weight"
              ],
              "wordLimit": 1,
              "explanation": "The result was that the worms lost weight rapidly."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "acid"
              ],
              "wordLimit": 1,
              "explanation": "The team also discovered that there was an increase in the amount of acid found in the soil"
            },
            {
              "number": 40,
              "prompt": "The study concluded: soil should be seen as an important natural process. changes to soil damage both ecosystems and _______",
              "answer": [
                "society"
              ],
              "wordLimit": 1,
              "explanation": "That is, when soil becomes impoverished by the presence of microplastics, not only ecosystems but also the whole of society are negatively impacted."
            }
          ],
          "formTitle": "Microplastics",
          "id": "g31"
        }
      ]
    }
  ]
}
$c19t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 19',
  'Test 4',
  'academic',
  2004,
  $c19t4l$
{
  "audioPath": "Cambridge 19 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "See Tiffany in HR: to give"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "number to collect",
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
              "kind": "question",
              "number": 6
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Name of supervisor _______",
              "answer": [
                "KAEDEN"
              ],
              "wordLimit": 1,
              "explanation": "Hello Charlotte. I’m Kaeden, one of the supervisors. Welcome to the team."
            },
            {
              "number": 2,
              "prompt": "Where to leave coat and bag: use _______ in staffroom",
              "answer": [
                "locker"
              ],
              "wordLimit": 1,
              "explanation": "/ lockers So, after you’ve finished at the front desk, I’ll take you to the staffroom. Put your coat and rucksack in one of the lockers there. Take whichever one is free."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "passport"
              ],
              "wordLimit": 1,
              "explanation": "I was told to bring my passport with me. HR need to take a note of the number in it."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "uniform"
              ],
              "wordLimit": 1,
              "explanation": "OK. Tiffany will give you a uniform. They have lots in different sizes, so you just tell her what you need."
            },
            {
              "number": 5,
              "prompt": "Location of HR office: on _______ floor",
              "answer": [
                "third"
              ],
              "wordLimit": 1,
              "explanation": "/ 3rd The staffroom’s on the first floor, and HR are a couple of floors above that, on the third floor. There’s a staircase outside the staffroom."
            },
            {
              "number": 6,
              "prompt": "Supervisor's mobile number: _______",
              "answer": [
                "0412665903"
              ],
              "wordLimit": 1,
              "explanation": "It’s oh-four-one-two double-six-five nine-oh-three."
            }
          ],
          "formTitle": "First day at work",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Task 1 Task 2 Notes"
            },
            {
              "kind": "static",
              "text": "Bakery section Check sell by dates Change price labels"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "subheader",
              "text": "Sushi takeaway counter"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "Wipe preparation area and clean the sink"
            },
            {
              "kind": "subheader",
              "text": "Do not clean any knives"
            },
            {
              "kind": "subheader",
              "text": "Meat and fish counters"
            },
            {
              "kind": "static",
              "text": "Clean the serving area, including the weighing scales"
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
              "number": 7,
              "prompt": "Use _______ labels",
              "answer": [
                "yellow"
              ],
              "wordLimit": 1,
              "explanation": "When something needs a new price label, put a yellow one on the package, next to the original price."
            },
            {
              "number": 8,
              "prompt": "Re-stock with _______ boxes if needed",
              "answer": [
                "plastic"
              ],
              "wordLimit": 1,
              "explanation": "Beneath those is where we keep the plastic boxes -we run out of those really quickly, so you should bring more from the storeroom."
            },
            {
              "number": 9,
              "prompt": "Collect _______ for the fish from the cold- room",
              "answer": [
                "ice"
              ],
              "wordLimit": 1,
              "explanation": "The fish is laid on ice, but when that starts to melt, you’ll need to get more from the cold-room."
            },
            {
              "number": 10,
              "prompt": "Must wear special _______",
              "answer": [
                "gloves"
              ],
              "wordLimit": 1,
              "explanation": "But make sure you put on thermal gloves when you take anything out of the cold-room."
            }
          ],
          "formTitle": "Responsibilities",
          "id": "g7"
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
          "instructions": "Choose TWO letters, A–E. Which TWO problems with some training programmes for new runners does Liz mention?",
          "options": [
            {
              "key": "A",
              "text": "There is a risk of serious injury."
            },
            {
              "key": "B",
              "text": "They are unsuitable for certain age groups."
            },
            {
              "key": "C",
              "text": "They are unsuitable for people with health issues."
            },
            {
              "key": "D",
              "text": "It is difficult to stay motivated."
            },
            {
              "key": "E",
              "text": "There is a lack of individual support."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO problems with some training programmes for new runners does Liz mention?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "However, they don’t work for everyone-especially if you suffer from something like a heart condition or asthma, because they’re aimed at people with average fitness and running ability. Another thing is that everyone is different- and if you have any specific questions related to your needs, there’s no one to provide any answers."
            },
            {
              "number": 12,
              "prompt": "Which TWO problems with some training programmes for new runners does Liz mention?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "However, they don’t work for everyone-especially if you suffer from something like a heart condition or asthma, because they’re aimed at people with average fitness and running ability. Another thing is that everyone is different- and if you have any specific questions related to your needs, there’s no one to provide any answers."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO tips does Liz recommend for new runners?",
          "options": [
            {
              "key": "A",
              "text": "doing two runs a week"
            },
            {
              "key": "B",
              "text": "running in the evening"
            },
            {
              "key": "C",
              "text": "going on runs with a friend"
            },
            {
              "key": "D",
              "text": "listening to music during runs"
            },
            {
              "key": "E",
              "text": "running very slowly"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO tips does Liz recommend for new runners?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "I don’t think the time of day is especially important- some people are better in the evening, while others are morning people- but you need to be consistent, so aim to train regularly- twice a week is enough to begin with. Listening to music can be very helpful- it takes your mind off things and helps your body get into a rhythm."
            },
            {
              "number": 14,
              "prompt": "Which TWO tips does Liz recommend for new runners?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "I don’t think the time of day is especially important- some people are better in the evening, while others are morning people- but you need to be consistent, so aim to train regularly- twice a week is enough to begin with. Listening to music can be very helpful- it takes your mind off things and helps your body get into a rhythm."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–18",
          "instructions": "What reason prevented each of the following members of the Compton Park Runners Club from joining until recently? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "a lack of confidence"
            },
            {
              "key": "B",
              "text": "a dislike of running"
            },
            {
              "key": "C",
              "text": "a lack of time"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Ceri",
              "answer": "A",
              "explanation": "Ceri, for example, joined the club two years ago at the age of 40. She’d always enjoyed running at school but wasn’t sure if she’d be able to do it. She was worried about being left behind and being the slowest runner."
            },
            {
              "number": 16,
              "prompt": "James",
              "answer": "B",
              "explanation": "James had always hated the idea of running but a friend encouraged him to come along for a taster session and he hasn’t looked back. He never misses a training session despite having a really demanding job"
            },
            {
              "number": 17,
              "prompt": "Leo",
              "answer": "C",
              "explanation": "Leo was worried about having to commit himself to training sessions every week and wasn’t sure he’d be able to fit training into his busy schedule."
            },
            {
              "number": 18,
              "prompt": "Mark",
              "answer": "A",
              "explanation": "Mark is quite typical of our new members. He’s never considered himself to be a sporty person and it was only when he retired that he decided to take up the challenge of trying to run 5 kilometres. It took him months to find the courage to contact us but felt reassured immediately as there were other people his age who were only just taking up running for the first time."
            }
          ],
          "id": "g15"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 19–20",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 19,
              "prompt": "What does Liz say about running her first marathon?",
              "options": [
                {
                  "key": "A",
                  "text": "It had always been her ambition."
                },
                {
                  "key": "B",
                  "text": "Her husband persuaded her to do it."
                },
                {
                  "key": "C",
                  "text": "She nearly gave up before the end."
                }
              ],
              "answer": "C",
              "explanation": "I managed to complete it in four hours, but I felt like giving up halfway through -it was only the support of the spectators that kept me going."
            },
            {
              "number": 20,
              "prompt": "Liz says new runners should sign up for a race",
              "options": [
                {
                  "key": "A",
                  "text": "every six months."
                },
                {
                  "key": "B",
                  "text": "within a few weeks of taking up running."
                },
                {
                  "key": "C",
                  "text": "after completing several practice runs."
                }
              ],
              "answer": "B",
              "explanation": "But after you’ve been training for a few weeks, it’s worth putting your name down for a 5K- some people find they only need a few practice runs before taking part in a race, but I’d give yourself a couple of months at least."
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
              "prompt": "Kieran thinks the packing advice given by Jane’s grandfather is",
              "options": [
                {
                  "key": "A",
                  "text": "common sense."
                },
                {
                  "key": "B",
                  "text": "hard to follow."
                },
                {
                  "key": "C",
                  "text": "over-protective."
                }
              ],
              "answer": "A",
              "explanation": "He says you have to support the spine otherwise the paper can come away from the cover."
            },
            {
              "number": 22,
              "prompt": "How does Jane feel about the books her grandfather has given her?",
              "options": [
                {
                  "key": "A",
                  "text": "They are not worth keeping."
                },
                {
                  "key": "B",
                  "text": "They should go to a collector."
                },
                {
                  "key": "C",
                  "text": "They have sentimental value for her."
                }
              ],
              "answer": "C",
              "explanation": "I should dump them really if they’re going to deteriorate further, but I’d feel bad. They’ll always remind me of him."
            },
            {
              "number": 23,
              "prompt": "Jane and Kieran agree that hardback books should be",
              "options": [
                {
                  "key": "A",
                  "text": "put out on display."
                },
                {
                  "key": "B",
                  "text": "given as gifts to visitors."
                },
                {
                  "key": "C",
                  "text": "more attractively designed."
                }
              ],
              "answer": "A",
              "explanation": "I agree-and book covers can be a work of art in themselves. Some are really eye-catching."
            },
            {
              "number": 24,
              "prompt": "While talking about taking a book from a shelf, Jane",
              "options": [
                {
                  "key": "A",
                  "text": "describes the mistakes other people make doing it."
                },
                {
                  "key": "B",
                  "text": "reflects on a significant childhood experience."
                },
                {
                  "key": "C",
                  "text": "explains why some books are easier to remove than others."
                }
              ],
              "answer": "B",
              "explanation": "He watched me pull a heavy book off the shelf when I was small, and it fell on the floor and broke apart."
            },
            {
              "number": 25,
              "prompt": "What do Jane and Kieran suggest about new books?",
              "options": [
                {
                  "key": "A",
                  "text": "Their parents liked buying them as presents."
                },
                {
                  "key": "B",
                  "text": "They would like to buy more of them."
                },
                {
                  "key": "C",
                  "text": "Not everyone can afford them."
                }
              ],
              "answer": "C",
              "explanation": "I guess we’re lucky we can buy them."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 26–30",
          "instructions": "Where does Jane’s grandfather keep each of the following types of books in his shop? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "near the entrance"
            },
            {
              "key": "B",
              "text": "in the attic"
            },
            {
              "key": "C",
              "text": "at the back of the shop"
            },
            {
              "key": "D",
              "text": "on a high shelf"
            },
            {
              "key": "E",
              "text": "near the stairs"
            },
            {
              "key": "F",
              "text": "in a specially designed space"
            },
            {
              "key": "G",
              "text": "within the cafe"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "rare books",
              "answer": "D",
              "explanation": "But he likes people to know that he has them. So, he puts them out in the shop but makes sure you need a ladder to get them."
            },
            {
              "number": 27,
              "prompt": "children’s books",
              "answer": "F",
              "explanation": "Not exactly- he’s got a dedicated area on the ground floor with cushions"
            },
            {
              "number": 28,
              "prompt": "unwanted books",
              "answer": "A",
              "explanation": "He hardly ever throws anything away -he just leaves unwanted books by the front door for customers to take."
            },
            {
              "number": 29,
              "prompt": "requested books",
              "answer": "C",
              "explanation": "Yeah-and books people or institutions have requested, they all go at the far end."
            },
            {
              "number": 30,
              "prompt": "coursebooks",
              "answer": "G",
              "explanation": "he’s moved them downstairs to attract the students. They’re actually part of the coffee shop, on low shelves all around it."
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
              "kind": "static",
              "text": "Reforestation projects should:"
            },
            {
              "kind": "subheader",
              "text": "- include a range of tree species"
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
              "kind": "question",
              "number": 33
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Large-scale reforestation projects"
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
              "text": "Lampang Province, Northern Thailand"
            },
            {
              "kind": "static",
              "text": "- A forest was restored in an area damaged by mining."
            },
            {
              "kind": "static",
              "text": "- A variety of native fig trees were planted, which are important for"
            },
            {
              "kind": "subheader",
              "text": "+ supporting many wildlife species"
            },
            {
              "kind": "static",
              "text": "+ increasing the"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "of recovery by attracting animals and birds, e.g.,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "were soon attracted to the area.",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Involving local communities"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "- The mangrove reforestation project:"
            },
            {
              "kind": "static",
              "text": "+ provided employment for local people"
            },
            {
              "kind": "subheader",
              "text": "+ restored a healthy ecosystem"
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "- not include invasive species because of possible _______ with native species",
              "answer": [
                "competition"
              ],
              "wordLimit": 1,
              "explanation": "Invasive species are a significant contributor to the current global biodiversity crisis and are often in competition with native species and may threaten their long-term survival."
            },
            {
              "number": 32,
              "prompt": "- aim to capture carbon, protect the environment and provide sustainable sources of _______ for local people",
              "answer": [
                "food"
              ],
              "wordLimit": 1,
              "explanation": "Restoring biodiversity that will maximise carbon capture is key when reforesting an area, but ideally any reforestation project should have several goals. These could include selecting trees that can contribute to wildlife conservation, improve the availability of food for the local community and maintain the stability of soil systems."
            },
            {
              "number": 33,
              "prompt": "- use tree seeds with a high genetic diversity to increase resistance to _______ and climate change",
              "answer": [
                "disease"
              ],
              "wordLimit": 1,
              "explanation": "Using seeds with low genetic diversity generally lowers the resilience of restored forests, which can make them vulnerable to disease and unable to adapt to climate change."
            },
            {
              "number": 34,
              "prompt": "- plant trees on previously forested land which is in a bad condition, not select land which is being used for _______",
              "answer": [
                "agriculture"
              ],
              "wordLimit": 1,
              "explanation": "Reforesting areas which are currently exploited for agriculture should be avoided as this often leads to other areas being deforested."
            },
            {
              "number": 35,
              "prompt": "- Base planning decisions on information from accurate _______",
              "answer": [
                "maps"
              ],
              "wordLimit": 1,
              "explanation": "Making the right decisions about where to plant trees depends on having the right information. Having detailed and up-to-date maps identifying high-prioritv areas for intervention is essential."
            },
            {
              "number": 36,
              "prompt": "- Drones are useful for identifying areas in Brazil which are endangered by keeping _______ and illegal logging.",
              "answer": [
                "cattle"
              ],
              "wordLimit": 1,
              "explanation": "Drone technology is a useful tool in helping to prioritise and monitor areas of degraded forest for restoration. In Brazil, it’s being used to identify and quantify how parts of the Amazon are being devastated by human activities such as rearing cattle and illegal logging."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "speed"
              ],
              "wordLimit": 1,
              "explanation": "They are central to tropical reforestation projects as they accelerate the speed of the recovery process by attracting animals and birds which act as natural seed dispersers."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "monkeys"
              ],
              "wordLimit": 1,
              "explanation": "At this site, for example, after only three rainy seasons, monkeys started visiting to eat the fig fruits, naturally dispersing seeds through defecation."
            },
            {
              "number": 39,
              "prompt": "- Destruction of mangrove forests in Madagascar made it difficult for people to make a living from _______",
              "answer": [
                "fishing"
              ],
              "wordLimit": 1,
              "explanation": "Destruction of the mangrove forests had a terrible impact on plant and animal life, and also badly affected the fishing industry, which was a major source of employment for local people living in coastal areas."
            },
            {
              "number": 40,
              "prompt": "+ protects against the higher risk of _______",
              "answer": [
                "flooding"
              ],
              "wordLimit": 1,
              "explanation": "The mangroves also act as a defence against the increased threat of flooding caused by climate change."
            }
          ],
          "formTitle": "Tree planting",
          "id": "g31"
        }
      ]
    }
  ]
}
$c19t4l$,
  true
);

