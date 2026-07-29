DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 21',
  'Test 4',
  'academic',
  2004,
  $c21t4l$
{
  "audioPath": "Cambridge 21 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the form below. Write ONE WORD ONLY for each answer.",
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
              "text": "Purpose of today's trip: has visited the"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "looking for a new",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "collecting",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "(after repair)",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "Opinions about shopping in the town centre"
            },
            {
              "kind": "static",
              "text": "Finds the service in shops is excellent"
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
              "text": "Opinions about new out-of-town Shopping Centre"
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
              "prompt": "Name: Martyn _______",
              "answer": [
                "Leigh"
              ],
              "wordLimit": 1,
              "explanation": "MAN: Martyn Leigh. Martyn’s with a Y. WOMAN: And is your family name spelt L-double-E? MAN: It’s L-E-I-G-H"
            },
            {
              "number": 2,
              "prompt": "Today's journey to Broadbeach town centre: used his _______",
              "answer": [
                "motorbike"
              ],
              "wordLimit": 1,
              "explanation": "Well, normally I catch the bus, but I’m on my motorbike today because I’m going to work later"
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "hairdresser"
              ],
              "wordLimit": 1,
              "explanation": "I’ve just been to the hairdresser. You see, I have a job interview at the council in a few days"
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "suit"
              ],
              "wordLimit": 1,
              "explanation": "And now I’m on my way to buy a suit that I can wear to the interview"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "laptop"
              ],
              "wordLimit": 1,
              "explanation": "Well, I’ve got to go and pick up my laptop. It broke a couple of days ago so I took it to the shop to get it fixed. They had to order a spare part, but apparently it’s ready for collection now"
            },
            {
              "number": 6,
              "prompt": "Preferred day for shopping: _______",
              "answer": [
                "Monday"
              ],
              "wordLimit": 1,
              "explanation": "Well it’s more a question of when I’m free. If I’m free on a Monday, that’s when I choose to come into town. The shops are less busy then, which I always prefer"
            },
            {
              "number": 7,
              "prompt": "Thinks there are too many places selling _______",
              "answer": [
                "coffee"
              ],
              "wordLimit": 1,
              "explanation": "WOMAN: And what about recent changes? What do you like and dislike about them? For example, there are a lot of new coffee shops now, are you enjoying them? MAN: No, there are too many of them. It’s a shame as those places could be occupied by other kinds of shops"
            },
            {
              "number": 8,
              "prompt": "Would like more places to buy _______",
              "answer": [
                "books"
              ],
              "wordLimit": 1,
              "explanation": "Well, I think we have enough clothing shops. But there’s only one place that sells books at the moment. It’d be nice to have a choice, you know"
            },
            {
              "number": 9,
              "prompt": "Likes the _______ best",
              "answer": [
                "plants"
              ],
              "wordLimit": 1,
              "explanation": "But my favourite thing is the plants they’ve put around the building"
            },
            {
              "number": 10,
              "prompt": "Believes the _______ is unnecessary",
              "answer": [
                "cinema"
              ],
              "wordLimit": 1,
              "explanation": "Like the new cinema? MAN: Nah, not yet. I can’t see any advantage in having it there because the one in town is actually bigger"
            }
          ],
          "formTitle": "Survey about shopping in Broadbeach",
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
          "instructions": "Choose TWO letters, A–E. In which TWO areas of the business exhibition did James Craig promote his company last year?",
          "options": [
            {
              "key": "A",
              "text": "the Digital Marketing Centre"
            },
            {
              "key": "B",
              "text": "the TalkCon Zone"
            },
            {
              "key": "C",
              "text": "the Breakout area"
            },
            {
              "key": "D",
              "text": "the Business Village"
            },
            {
              "key": "E",
              "text": "the Business Connections Zone"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "In which TWO areas of the business exhibition did James Craig promote his company last year?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "We also used the Breakout area where people could sit down and relax, and try out our products, and due to popular request we used that again last year. Last year we also sponsored the innovative Business Connections Zone where people could leave their contact details on a board to contact other companies, and that also effectively raised our corporate profile"
            },
            {
              "number": 12,
              "prompt": "In which TWO areas of the business exhibition did James Craig promote his company last year?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "We also used the Breakout area where people could sit down and relax, and try out our products, and due to popular request we used that again last year. Last year we also sponsored the innovative Business Connections Zone where people could leave their contact details on a board to contact other companies, and that also effectively raised our corporate profile"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO facts are given about discounts on popular brands available to exhibitors?",
          "options": [
            {
              "key": "A",
              "text": "They are available to all members of exhibiting companies."
            },
            {
              "key": "B",
              "text": "They can be used for both food and clothing."
            },
            {
              "key": "C",
              "text": "They only apply if people spend at least £400."
            },
            {
              "key": "D",
              "text": "They can be used by family members."
            },
            {
              "key": "E",
              "text": "The percentage saved is always the same."
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO facts are given about discounts on popular brands available to exhibitors?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "As well as a unique chance to publicise your company, businesses who exhibit with us can claim discounts on a number of popular brands, including major high street fashion and jewellery outlets, as well as grocery chains. Discounts available range from 3.5% up to an amazing 15%, so you can save a lot of money. In fact, the average saving made by each exhibitor came to over £400! The scheme is available to every member of your organisation so this is a benefit that really does have something for you all"
            },
            {
              "number": 14,
              "prompt": "Which TWO facts are given about discounts on popular brands available to exhibitors?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "As well as a unique chance to publicise your company, businesses who exhibit with us can claim discounts on a number of popular brands, including major high street fashion and jewellery outlets, as well as grocery chains. Discounts available range from 3.5% up to an amazing 15%, so you can save a lot of money. In fact, the average saving made by each exhibitor came to over £400! The scheme is available to every member of your organisation so this is a benefit that really does have something for you all"
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which topic will each of the following speakers focus on? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Supporting job seekers"
            },
            {
              "key": "B",
              "text": "Dealing with personal problems"
            },
            {
              "key": "C",
              "text": "Effects of an unexpectedly rapid expansion"
            },
            {
              "key": "D",
              "text": "A global range of business experiences"
            },
            {
              "key": "E",
              "text": "Coping with financial set-backs"
            },
            {
              "key": "F",
              "text": "Developing a company in response to changing markets"
            },
            {
              "key": "G",
              "text": "Combining business success with contributions to charities"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Jim Clowrie",
              "answer": "C",
              "explanation": "Jim Clowrie started off selling vegetables from a small plot, then opened a small café. Rather to his surprise this became a bit of a sensation, and in a remarkably short time he had opened an amazing 76 restaurants worldwide"
            },
            {
              "number": 16,
              "prompt": "David France",
              "answer": "G",
              "explanation": "David France will be giving an inspirational talk about how as a business- minded teenager he managed to set up his own company, and even to be the first person under 18 to get a business bank account. David’s company has gone from strength to strength but he isn’t just interested in making money - he also makes regular donations to organisations helping those in need both in the UK and elsewhere in the world"
            },
            {
              "number": 17,
              "prompt": "Oliver Stanton",
              "answer": "D",
              "explanation": "Oliver Stanton was born and educated in the UK, and then went to Malaysia where he set up a rubber-wood furniture business. He then built log houses in the mountains in Japan before moving to Hong Kong to set up a digital marketing business. After that he moved back to the UK with his wife Saiphin, and together they opened a Thai café. He’ll be telling you about what he discovered during his travels around the world about business practices in different cultures"
            },
            {
              "number": 18,
              "prompt": "Francesca Heptonstall",
              "answer": "A",
              "explanation": "Her main business interest is in technology, but she’s also passionate about helping people gain employment and organises an annual jobs fair, so she’ll be concentrating on this in her talk"
            },
            {
              "number": 19,
              "prompt": "Salman Khan",
              "answer": "F",
              "explanation": "Salman Khan is the Chief Executive of QBF Enterprises, and has turned around this business from a major publishing business to one of the UK’s largest digital marketing service providers. He’ll be talking about the need for flexibility to cope with new directions in today’s business world"
            },
            {
              "number": 20,
              "prompt": "Annie Craven",
              "answer": "B",
              "explanation": "Her session will offer an interactive look at different obstacles in people’s own lives, not just in business. She also looks at how you can overcome them, whether you’re starting out in business or at the top of your game"
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
          "type": "multiple_choice",
          "label": "Questions 21–23",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "Which aspect of their presentation are Mia and Leo both concerned about?",
              "options": [
                {
                  "key": "A",
                  "text": "meeting the deadline"
                },
                {
                  "key": "B",
                  "text": "finding suitable examples"
                },
                {
                  "key": "C",
                  "text": "including original ideas"
                }
              ],
              "answer": "B",
              "explanation": "But we mustn’t be too general, we’ve got to support our points by referring to specific cases. So that’ll need a lot of work. MIA: I’m afraid so"
            },
            {
              "number": 22,
              "prompt": "The students decide to focus their assignment on housing for",
              "options": [
                {
                  "key": "A",
                  "text": "family groups."
                },
                {
                  "key": "B",
                  "text": "old people."
                },
                {
                  "key": "C",
                  "text": "single people."
                }
              ],
              "answer": "A",
              "explanation": "MIA: Good. We’d better decide now what type of housing we’re going to focus on. How about housing for different generations living together? LEO: We could do. Or accommodation for one person? MIA: I think someone else is doing that. I was wondering about housing for the elderly? That’s likely to become more important. LEO: Yeah that’s true. But I think your suggestion about intergenerational living might be more interesting - let’s go with that"
            },
            {
              "number": 23,
              "prompt": "The students agree that demand for accommodation in urban areas should be met by",
              "options": [
                {
                  "key": "A",
                  "text": "repurposing offices and factories."
                },
                {
                  "key": "B",
                  "text": "constructing tall buildings."
                },
                {
                  "key": "C",
                  "text": "developing creative ideas for smaller homes."
                }
              ],
              "answer": "B",
              "explanation": "But I think the solution is to design multi-storey apartment blocks. MIA: Building up rather than out, yes"
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 24–30",
          "instructions": "What opinion is given about each of the following developments? Choose the correct letter, A–I, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "This could cause unnecessary anxiety."
            },
            {
              "key": "B",
              "text": "This would be especially beneficial for city residents."
            },
            {
              "key": "C",
              "text": "This would be challenging for young people."
            },
            {
              "key": "D",
              "text": "This would have environmental benefits."
            },
            {
              "key": "E",
              "text": "This could encourage creativity."
            },
            {
              "key": "F",
              "text": "This could lead to social problems."
            },
            {
              "key": "G",
              "text": "This could enable retired people to share a project."
            },
            {
              "key": "H",
              "text": "This would help some people but cause problems for others."
            },
            {
              "key": "I",
              "text": "This would suit both existing and new members of a household."
            }
          ],
          "questions": [
            {
              "number": 24,
              "prompt": "use of roof space for gardens",
              "answer": "B",
              "explanation": "In fact it doesn’t have to be high-rise, you can do it on a one-storey building in a suburb, but it would greatly improve how you feel if you live in an urban high-rise"
            },
            {
              "number": 25,
              "prompt": "shared working spaces",
              "answer": "E",
              "explanation": "Yes, so they aren’t having to travel to an office but can still interact with others. That’s often how new ideas get generated - by chatting to someone from a different profession"
            },
            {
              "number": 26,
              "prompt": "moveable internal walls",
              "answer": "I",
              "explanation": "I read about a type of design where the internal walls of an apartment are moveable, so the space can be adapted over time as people’s needs change. Like when children leave school and start working but still continue to live with their parents for many years? Or when an elderly relative moves in with the family it would mean they could still have their own space, specially designed for their needs"
            },
            {
              "number": 27,
              "prompt": "smart mirrors in bathrooms",
              "answer": "A",
              "explanation": "Nor am I. People might worry about conditions which aren’t serious at all"
            },
            {
              "number": 28,
              "prompt": "bike sheds with charging points",
              "answer": "D",
              "explanation": "Yes. That would encourage more people to cycle, instead of using their car. Much better for the planet"
            },
            {
              "number": 29,
              "prompt": "restriction of cars to certain areas",
              "answer": "H",
              "explanation": "LEO: I read about one housing development where cars had to be left just outside it, so the centre was all a pedestrianised area. Great for families with children. MIA: Maybe. But what if you’re disabled or elderly, and can’t walk far? It wouldn’t be so good for people like that"
            },
            {
              "number": 30,
              "prompt": "communal vegetable plots",
              "answer": "G",
              "explanation": "I saw a scheme for communal vegetable plots, where neighbours could decide what to grow together. That’d be a great way for older people to get to know one another, especially if they’re no longer going out to work"
            }
          ],
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
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Background"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Current post-surgical strategies focus mainly on pain relief."
            },
            {
              "kind": "subheader",
              "text": "Recent research"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "- improved hospital patients' sense of wellbeing."
            },
            {
              "kind": "static",
              "text": "- reduced the length of their stay."
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
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Medical records confirmed that patients who were played music in hospital needed less"
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
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Surgery impacts patients because they may experience discomfort or unwelcome changes to their _______ .",
              "answer": [
                "routine"
              ],
              "wordLimit": 1,
              "explanation": "They may also be negatively affected by having their routine disturbed, you know, like if they can’t do the things they normally do, or have to devote a lot of time to appointments such as physiotherapy, to aid their recovery"
            },
            {
              "number": 32,
              "prompt": "A study reviewed data from about 100 _______ and found that listening to music",
              "answer": [
                "trials"
              ],
              "wordLimit": 1,
              "explanation": "They identified nearly a hundred trials involving a total of seven thousand patients who were played recorded music as part of their post-operative care"
            },
            {
              "number": 33,
              "prompt": "The patients in the study all listened to music with a _______ effect.",
              "answer": [
                "calming"
              ],
              "wordLimit": 1,
              "explanation": "However, a common factor was that the chosen music had a calming quality"
            },
            {
              "number": 34,
              "prompt": "The music was mostly played through music _______ .",
              "answer": [
                "pillows"
              ],
              "wordLimit": 1,
              "explanation": "More often though, the mode of delivery was by what are known as music pillows"
            },
            {
              "number": 35,
              "prompt": "Patients reported an absence or low levels of _______ .",
              "answer": [
                "anxiety"
              ],
              "wordLimit": 1,
              "explanation": "When asked to report their experience of listening to music, surgical patients said that either they had no feelings of anxiety at any point, or those feelings were only slight"
            },
            {
              "number": 36,
              "prompt": "_______ than those who weren't played music.",
              "answer": [
                "medication"
              ],
              "wordLimit": 1,
              "explanation": "And in every case, those who were given music to listen to didn’t need as much medication to ease their pain as those patients who weren’t played music"
            },
            {
              "number": 37,
              "prompt": "The best results were achieved when patients were played music while they were _______",
              "answer": [
                "awake"
              ],
              "wordLimit": 1,
              "explanation": "And it even worked when patients were played music under general anaesthetic, although the positive effects were greater when patients were awake"
            },
            {
              "number": 38,
              "prompt": "The study concluded that playing music was effective because it served as a _______",
              "answer": [
                "distraction"
              ],
              "wordLimit": 1,
              "explanation": "A lot of people listen to music in daily life as a way to relax and forget their problems, but the researchers came to the conclusion that it worked on patients by distraction"
            },
            {
              "number": 39,
              "prompt": "The researchers recommend playing either music or sounds from _______ to all surgical patients.",
              "answer": [
                "nature"
              ],
              "wordLimit": 1,
              "explanation": "They say patients should be able to choose what they’d like to listen to, and if they prefer, recordings taken from nature can be just as good as music"
            },
            {
              "number": 40,
              "prompt": "A future study will investigate the best _______ for the music.",
              "answer": [
                "volume"
              ],
              "wordLimit": 1,
              "explanation": "Clearly, there’s more to learn about this area, and the team now plan to focus their next research on the most appropriate volume to play the music at"
            }
          ],
          "formTitle": "Music therapy for surgical patients",
          "id": "g31"
        }
      ]
    }
  ]
}
$c21t4l$,
  true
);
