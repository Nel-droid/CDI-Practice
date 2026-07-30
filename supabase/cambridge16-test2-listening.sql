DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 16',
  'Test 2',
  'academic',
  2004,
  $c16t2l$
{
  "audioPath": "Cambridge 16 Test 2.mp3",
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
              "text": "Name of company: Picturerep"
            },
            {
              "kind": "subheader",
              "text": "Requirements"
            },
            {
              "kind": "static",
              "text": "Maximum size of photos is 30 cm, minimum size 4 cm."
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Cost"
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
              "text": "Services included in the price"
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
              "text": "Special restore service (costs extra)"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "."
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "Other information"
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
              "prompt": "Photos must not be in a _______ or an album.",
              "answer": [
                "frame"
              ],
              "wordLimit": 1,
              "explanation": "And some of them are in a frame"
            },
            {
              "number": 2,
              "prompt": "The cost for 360 photos is £ _______ (including one disk).",
              "answer": [
                "195"
              ],
              "wordLimit": 1,
              "explanation": "We charge £195 for 300 to 400 photos for the basic service."
            },
            {
              "number": 3,
              "prompt": "Before the complete order is sent, _______ is required.",
              "answer": [
                "payment"
              ],
              "wordLimit": 1,
              "explanation": "Then we’ll let you know how much it is, and once we’ve received the payment, we’ll send the parcel off to you."
            },
            {
              "number": 4,
              "prompt": "Photos can be placed in a folder, e.g. with the name _______ .",
              "answer": [
                "Grandparents"
              ],
              "wordLimit": 1,
              "explanation": "So I could have one called ‘Grandparents’ for instance?"
            },
            {
              "number": 5,
              "prompt": "The _______ and contrast can be improved if necessary.",
              "answer": [
                "colour"
              ],
              "wordLimit": 1,
              "explanation": "/ color we can sometimes touch up the colour a bit"
            },
            {
              "number": 6,
              "prompt": "Photos which are very fragile will be scanned by _______ .",
              "answer": [
                "hand"
              ],
              "wordLimit": 1,
              "explanation": "No, if any look particularly fragile, we’d do them by hand."
            },
            {
              "number": 7,
              "prompt": "It may be possible to remove an object from a photo, or change the _______",
              "answer": [
                "background"
              ],
              "wordLimit": 1,
              "explanation": "so if you want to remove an object from a photo, or maybe alter the background, we can do that."
            },
            {
              "number": 8,
              "prompt": "A photo which is not correctly in _______ cannot be fixed.",
              "answer": [
                "focus"
              ],
              "wordLimit": 1,
              "explanation": "I’ve got a few that aren’t properly in focus."
            },
            {
              "number": 9,
              "prompt": "Orders are completed within _______ .",
              "answer": [
                "ten"
              ],
              "wordLimit": 1,
              "explanation": "/ 10 days We aim to get the copying done in ten days."
            },
            {
              "number": 10,
              "prompt": "Send the photos in a box (not _______ ).",
              "answer": [
                "plastic"
              ],
              "wordLimit": 1,
              "explanation": "We’ve found that plastic ones sometimes break in the post."
            }
          ],
          "formTitle": "Copying photos to digital format",
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
              "prompt": "Dartfield House school used to be",
              "options": [
                {
                  "key": "A",
                  "text": "a tourist information centre."
                },
                {
                  "key": "B",
                  "text": "a private home."
                },
                {
                  "key": "C",
                  "text": "a local council building."
                }
              ],
              "answer": "C",
              "explanation": "His heir chose to sell it to the local council, who turned it into offices."
            },
            {
              "number": 12,
              "prompt": "What is planned with regard to the lower school?",
              "options": [
                {
                  "key": "A",
                  "text": "All buildings on the main site will be improved."
                },
                {
                  "key": "B",
                  "text": "The lower school site will be used for new homes."
                },
                {
                  "key": "C",
                  "text": "Additional school buildings will be constructed on the lower school site."
                }
              ],
              "answer": "B",
              "explanation": "Developers will construct houses on the existing lower school site."
            },
            {
              "number": 13,
              "prompt": "The catering has been changed because of",
              "options": [
                {
                  "key": "A",
                  "text": "long queuing times."
                },
                {
                  "key": "B",
                  "text": "changes to the school timetable."
                },
                {
                  "key": "C",
                  "text": "dissatisfaction with the menus."
                }
              ],
              "answer": "A",
              "explanation": "But there’s only one serving point, so most pupils have to wait a considerable time to be served."
            },
            {
              "number": 14,
              "prompt": "Parents are asked to",
              "options": [
                {
                  "key": "A",
                  "text": "help their children to decide in advance which serving point to use."
                },
                {
                  "key": "B",
                  "text": "make sure their children have enough money for food."
                },
                {
                  "key": "C",
                  "text": "advise their children on healthy food to eat."
                }
              ],
              "answer": "A",
              "explanation": "is to discuss with your children each morning which type of food they want to eat that day"
            },
            {
              "number": 15,
              "prompt": "What does the speaker say about the existing canteen?",
              "options": [
                {
                  "key": "A",
                  "text": "Food will still be served there."
                },
                {
                  "key": "B",
                  "text": "Only staff will have access to it."
                },
                {
                  "key": "C",
                  "text": "Pupils can take their food into it."
                }
              ],
              "answer": "C",
              "explanation": "We’ll still have tables and chairs in there, and pupils can eat food from the Food Hall or lunch they’ve brought from home."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 16–18",
          "instructions": "What comment does the speaker make about each of the following serving points in the Food Hall? Choose the correct letter, A–D, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "pupils help to plan menus"
            },
            {
              "key": "B",
              "text": "only vegetarian food"
            },
            {
              "key": "C",
              "text": "different food every week"
            },
            {
              "key": "D",
              "text": "daily change in menu"
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "World Adventures",
              "answer": "D",
              "explanation": "One serving point we call World Adventures. This will serve a different country’s cuisine each day, maybe Chinese one day and Lebanese the next."
            },
            {
              "number": 17,
              "prompt": "Street Life",
              "answer": "A",
              "explanation": "Street Life is also international, with food from three particular cultures. We’ll ask pupils to make suggestions, so perhaps sometimes there’ll be food from Thailand, Ethiopia and Mexico, and then one of them will be replaced by Jamaican food for a week or two."
            },
            {
              "number": 18,
              "prompt": "Speedy Italian",
              "answer": "B",
              "explanation": "The Speedy Italian serving point will cater particularly for the many pupils who don’t eat meat or fish"
            }
          ],
          "id": "g16"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO optional after-school lessons are new?",
          "options": [
            {
              "key": "A",
              "text": "swimming"
            },
            {
              "key": "B",
              "text": "piano"
            },
            {
              "key": "C",
              "text": "acting"
            },
            {
              "key": "D",
              "text": "cycling"
            },
            {
              "key": "E",
              "text": "theatre sound and lighting"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO optional after-school lessons are new?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "And a former pupil has given a magnificent grand piano to the school, so a few pupils will be able to learn at the school instead of going to the local college, as many of them do at the moment. As you know, we have a well- equipped performance centre, and we’re going to start drama classes in there, too."
            },
            {
              "number": 20,
              "prompt": "Which TWO optional after-school lessons are new?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "And a former pupil has given a magnificent grand piano to the school, so a few pupils will be able to learn at the school instead of going to the local college, as many of them do at the moment. As you know, we have a well- equipped performance centre, and we’re going to start drama classes in there, too."
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
              "prompt": "Luke read that one reason why we often forget dreams is that",
              "options": [
                {
                  "key": "A",
                  "text": "our memories cannot cope with too much information."
                },
                {
                  "key": "B",
                  "text": "we might other wise be confused about what is real."
                },
                {
                  "key": "C",
                  "text": "we do not think they are important."
                }
              ],
              "answer": "B",
              "explanation": "we might get mixed up about what actually happened and what we dreamed."
            },
            {
              "number": 22,
              "prompt": "What do Luke and Susie agree about dreams predicting the future?",
              "options": [
                {
                  "key": "A",
                  "text": "It may just be due to chance."
                },
                {
                  "key": "B",
                  "text": "It only happens with certain types of event."
                },
                {
                  "key": "C",
                  "text": "It happens more often than some people think."
                }
              ],
              "answer": "A",
              "explanation": "but the explanation I’ve read is that for each dream that comes true, we have thousands that don’t"
            },
            {
              "number": 23,
              "prompt": "Susie says that a study on pre-school children having a short nap in the day",
              "options": [
                {
                  "key": "A",
                  "text": "had controversial results."
                },
                {
                  "key": "B",
                  "text": "used faulty researh methodology."
                },
                {
                  "key": "C",
                  "text": "failed to reach any clear conclusions."
                }
              ],
              "answer": "C",
              "explanation": "But they didn’t really find an answer. They spent a lot of time working out the most appropriate methodology, but the results didn’t seem to show any obvious patterns."
            },
            {
              "number": 24,
              "prompt": "In their last assignment, both students had problems with",
              "options": [
                {
                  "key": "A",
                  "text": "statistical analysis."
                },
                {
                  "key": "B",
                  "text": "making an action plan."
                },
                {
                  "key": "C",
                  "text": "self-assessment"
                }
              ],
              "answer": "C",
              "explanation": "Last time I had problems with the final stage, where we had to describe and justify how successful we thought we’d been."
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 25–30",
          "instructions": "Complete the flow-chart below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Decide on research question:"
            },
            {
              "kind": "static",
              "text": "Is there a relationship between hours of sleep and number of dreams?"
            },
            {
              "kind": "subheader",
              "text": "↓"
            },
            {
              "kind": "static",
              "text": "Decide on sample:"
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "subheader",
              "text": "↓"
            },
            {
              "kind": "static",
              "text": "Decide on methodology:"
            },
            {
              "kind": "subheader",
              "text": "Self-reporting"
            },
            {
              "kind": "subheader",
              "text": "↓"
            },
            {
              "kind": "static",
              "text": "Decide on procedure:"
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "subheader",
              "text": "↓"
            },
            {
              "kind": "question",
              "number": 27
            },
            {
              "kind": "question",
              "number": 28
            },
            {
              "kind": "subheader",
              "text": "↓"
            },
            {
              "kind": "subheader",
              "text": "Analyse the results"
            },
            {
              "kind": "question",
              "number": 29
            },
            {
              "kind": "subheader",
              "text": "↓"
            },
            {
              "kind": "question",
              "number": 30
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Twelve students from the _______ department",
              "answer": [
                "history"
              ],
              "wordLimit": 1,
              "explanation": "Let’s use people from a different department. What about history?"
            },
            {
              "number": 26,
              "prompt": "Answers on _______",
              "answer": [
                "paper"
              ],
              "wordLimit": 1,
              "explanation": "But in this case, paper might be better as they’ll be doing it straight after they wake up … in fact while they’re still half-asleep."
            },
            {
              "number": 27,
              "prompt": "Check ethical guidelines for working with _______",
              "answer": [
                "humans"
              ],
              "wordLimit": 1,
              "explanation": "/ people Right. And we’ll have to check the ethical guidelines for this sort of research."
            },
            {
              "number": 28,
              "prompt": "Ensure that risk is assessed and _______ is kept to a minimum",
              "answer": [
                "stress"
              ],
              "wordLimit": 1,
              "explanation": "There’s a whole section on risk assessment, and another section on making sure they aren’t put under any unnecessary stress."
            },
            {
              "number": 29,
              "prompt": "Calculate the correlation and make a _______",
              "answer": [
                "graph"
              ],
              "wordLimit": 1,
              "explanation": "Then when we’ve collected all our data we have to analyse it and calculate the correlation between our two variables, that’s time sleeping and number of dreams and then present our results visually in a graph."
            },
            {
              "number": 30,
              "prompt": "_______ the research",
              "answer": [
                "evaluate"
              ],
              "wordLimit": 1,
              "explanation": "And the final thing is to think about our research and evaluate it."
            }
          ],
          "formTitle": "Assignment plan",
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
              "text": "Recent findings:"
            },
            {
              "kind": "static",
              "text": "All forms of dance produce various hormones associated with feelings of happiness."
            },
            {
              "kind": "static",
              "text": "Dancing with others has a more positive impact than dancing alone."
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
              "kind": "static",
              "text": "Benefits of dance for older people: accessible for people with low levels of"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "reduces the risk of heart disease better",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "reduces the risk of accidents improves",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "function by making it work faster improves participants’ general well-being gives people more",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "to take exercise can lessen the feeling of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": ", very common in older people",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Benefits of Zumba:"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "The American Journal of Health Behavior study showed that:"
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
              "prompt": "An experiment on university students suggested that dance increases _______",
              "answer": [
                "creativity"
              ],
              "wordLimit": 1,
              "explanation": "The result showed that those who chose to dance showed much more creativity when doing problem-solving tasks."
            },
            {
              "number": 32,
              "prompt": "For those with mental illness, dance could be used as a form of _______ .",
              "answer": [
                "therapy"
              ],
              "wordLimit": 1,
              "explanation": "Doctor Lovatt at the University of Hertfordshire believes dance could be a very useful way to help people suffering from mental health problems. He thinks dance should be prescribed ad therapy to help people overcome issues such as depression."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "fitness"
              ],
              "wordLimit": 1,
              "explanation": "Anyone can have a go, even those whose standard of fitness is quite low."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "balance"
              ],
              "wordLimit": 1,
              "explanation": "And there’s plenty of evidence which suggests that dancing lowers the risk of falls, which could result in a broken hip, for example, by helping people to improve their balance."
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "brain"
              ],
              "wordLimit": 1,
              "explanation": "For older people, this kind of activity is especially important because it forces their brain to process things more quickly and to retain more information."
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "motivation"
              ],
              "wordLimit": 1,
              "explanation": "Participants report feeling less tired and having greater motivation to be more active and do daily activities such as gardening or walking to the shops or a park."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "isolation"
              ],
              "wordLimit": 1,
              "explanation": "This helps to develop new relationships and can reduce older people’s sense of isolation, which is a huge problem in many countries."
            },
            {
              "number": 38,
              "prompt": "A study at The University of Wisconsin showed that doing Zumba for 40 minutes uses up as many _______ as other quite intense forms of exercise.",
              "answer": [
                "calories"
              ],
              "wordLimit": 1,
              "explanation": "John Porcari, a professor of exercise and sport science at the University of Wisconsin, analysed a group of women who were Zumba regulars and found that a class lasting 40 minutes burns about 370 calories. This is similar to moderately intense exercises like step aerobics or kickboxing."
            },
            {
              "number": 39,
              "prompt": "- women suffering from _______ benefited from doing Zumba.",
              "answer": [
                "obesity"
              ],
              "wordLimit": 1,
              "explanation": "A study in the American Journal of Health Behavior showed that when women with obesity did Zumba three times a week for 16 weeks"
            },
            {
              "number": 40,
              "prompt": "- Zumba became a _______ for the participants.",
              "answer": [
                "habit"
              ],
              "wordLimit": 1,
              "explanation": "they lost an average of 1.2 kilos and lowered their percentage of body fat by 1%. More importantly, the women enjoyed the class so much that they made it a habit and continued to attend classes at least once a week"
            }
          ],
          "formTitle": "Health benefits of dance",
          "id": "g31"
        }
      ]
    }
  ]
}
$c16t2l$,
  true
);
