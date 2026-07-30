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
