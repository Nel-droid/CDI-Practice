DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 15',
  'Test 4',
  'academic',
  2004,
  $c15t4l$
{
  "audioPath": "Cambridge 15 Test 4.mp3",
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
              "text": "Customer details"
            },
            {
              "kind": "subheader",
              "text": "Name: Sophie Bird"
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
              "text": "Journey information"
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
              "text": "When ticket was purchased: Yesterday"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "subheader",
              "text": "Satisfaction with journey"
            },
            {
              "kind": "subheader",
              "text": "Most satisfied with: the wifi"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Satisfaction with station facilities"
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
              "prompt": "Occupation: _______",
              "answer": [
                "journalist"
              ],
              "wordLimit": 1,
              "explanation": "I’m a journalist."
            },
            {
              "number": 2,
              "prompt": "Reason for travel today: _______",
              "answer": [
                "shopping"
              ],
              "wordLimit": 1,
              "explanation": "I came here to do some shopping."
            },
            {
              "number": 3,
              "prompt": "Name of station returning to: _______",
              "answer": [
                "Staunfirth"
              ],
              "wordLimit": 1,
              "explanation": "Staunfirth, where I live."
            },
            {
              "number": 4,
              "prompt": "Type of ticket purchased: Standard _______ ticket",
              "answer": [
                "return"
              ],
              "wordLimit": 1,
              "explanation": "No, I just got a normal return ticket."
            },
            {
              "number": 5,
              "prompt": "Cost of ticket: £ _______",
              "answer": [
                "23.70"
              ],
              "wordLimit": 1,
              "explanation": "I paid £23.70."
            },
            {
              "number": 6,
              "prompt": "Where ticket was bought: _______",
              "answer": [
                "online"
              ],
              "wordLimit": 1,
              "explanation": "I got an e-ticket online."
            },
            {
              "number": 7,
              "prompt": "Least satisfied with: the _______ this morning.",
              "answer": [
                "delay"
              ],
              "wordLimit": 1,
              "explanation": "the trains run on time and are pretty reliable but today there was a delay"
            },
            {
              "number": 8,
              "prompt": "Most satisfied with: how much _______ was provided",
              "answer": [
                "information"
              ],
              "wordLimit": 1,
              "explanation": "I think the best thing is that they’ve improved the amount of information about train times etc. that’s given to passengers"
            },
            {
              "number": 9,
              "prompt": "Least satisfied with: lack of seats, particularly on the _______",
              "answer": [
                "platform"
              ],
              "wordLimit": 1,
              "explanation": "/ platforms But one thing is that there aren’t enough places to sit down, especially on the platforms."
            },
            {
              "number": 10,
              "prompt": "Neither satisfied nor dissatisfied with: the _______ available",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "What about the parking at the station?"
            }
          ],
          "formTitle": "Customer Satisfaction Survey",
          "id": "g1"
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
          "instructions": "Label the map below. Write the correct letter, A–H, next to Questions 11–16.",
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
              "number": 11,
              "prompt": "café",
              "answer": "D",
              "explanation": "looking out over the lake and next to the old museum."
            },
            {
              "number": 12,
              "prompt": "toilets",
              "answer": "C",
              "explanation": "near the adventure playground, in the corner of your map."
            },
            {
              "number": 13,
              "prompt": "formal gardens",
              "answer": "G",
              "explanation": "but we’re now used the space near the south gate - between the park boundary and the path that goes past the lake towards the old museum."
            },
            {
              "number": 14,
              "prompt": "outdoor gym",
              "answer": "H",
              "explanation": "It’s by the glass houses, just to the right of the path from the south gate. You have to look for it as it’s a bit hidden in the trees."
            },
            {
              "number": 15,
              "prompt": "skateboard ramp",
              "answer": "A",
              "explanation": "It’s near the old museum, at the end of a little path that leads off from the main path between the lake and the museum."
            },
            {
              "number": 16,
              "prompt": "wild flowers",
              "answer": "E",
              "explanation": "It’s on a bend in the path that goes round the east side of the lake, just south of the adventure playground."
            }
          ],
          "mapImage": "Cambridge 15 Test 4 map.png",
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. What does the speakers say about the adventure playground?",
          "options": [
            {
              "key": "A",
              "text": "Children must be supervised."
            },
            {
              "key": "B",
              "text": "It costs more in winter."
            },
            {
              "key": "C",
              "text": "Some activities are only for younger children."
            },
            {
              "key": "D",
              "text": "No payment is required."
            },
            {
              "key": "E",
              "text": "It was recently expanded."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "What does the speakers say about the adventure playground?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "entrance is completely free. we do ask adults not to leave them on their own there."
            },
            {
              "number": 18,
              "prompt": "What does the speakers say about the adventure playground?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "entrance is completely free. we do ask adults not to leave them on their own there."
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. What does the speaker say about the glass houses?",
          "options": [
            {
              "key": "A",
              "text": "They are closed at weekends."
            },
            {
              "key": "B",
              "text": "Volunteers are needed to work there."
            },
            {
              "key": "C",
              "text": "They were badly damaged by fire."
            },
            {
              "key": "D",
              "text": "More money is needed to repair some of the glass."
            },
            {
              "key": "E",
              "text": "Visitors can see palm trees from tropical regions."
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "What does the speaker say about the glass houses?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "A huge amount of work has been done on them to repair the damage following the disastrous fire that recently destroyed their western side. At present the glass houses are open from 10am to 3pm Mondays to Thursdays, and it’s hoped to extend this to the weekend soon."
            },
            {
              "number": 20,
              "prompt": "What does the speaker say about the glass houses?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "A huge amount of work has been done on them to repair the damage following the disastrous fire that recently destroyed their western side. At present the glass houses are open from 10am to 3pm Mondays to Thursdays, and it’s hoped to extend this to the weekend soon."
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
              "prompt": "What did Annie discover from reading about icehouses?",
              "options": [
                {
                  "key": "A",
                  "text": "why they were first created"
                },
                {
                  "key": "B",
                  "text": "how the ice was kept frozen"
                },
                {
                  "key": "C",
                  "text": "where they were located"
                }
              ],
              "answer": "B",
              "explanation": "But I didn’t realise that insulating the blocks with straw or sawdust meant they didn’t melt for months."
            },
            {
              "number": 22,
              "prompt": "What point does Annie make about refrigeration in ancient Rome?",
              "options": [
                {
                  "key": "A",
                  "text": "It became a commercial business."
                },
                {
                  "key": "B",
                  "text": "It used snow from nearby."
                },
                {
                  "key": "C",
                  "text": "It took a long time to become popular."
                }
              ],
              "answer": "A",
              "explanation": "Both the ice and the snow were then sold."
            },
            {
              "number": 23,
              "prompt": "In connection with modern refrigerator, both Annie and Jack are worried about",
              "options": [
                {
                  "key": "A",
                  "text": "the complexity of the technology."
                },
                {
                  "key": "B",
                  "text": "the fact that some are disposed of irresponsibly."
                },
                {
                  "key": "C",
                  "text": "the large number that quickly break down."
                }
              ],
              "answer": "B",
              "explanation": "It’s hard to see how they can be stopped unfortunately."
            },
            {
              "number": 24,
              "prompt": "What do Jack and Annie agree regarding domestic fridges?",
              "options": [
                {
                  "key": "A",
                  "text": "They are generally good value for money."
                },
                {
                  "key": "B",
                  "text": "There are plenty of useful variations."
                },
                {
                  "key": "C",
                  "text": "They are more useful than other domestic appliances."
                }
              ],
              "answer": "A",
              "explanation": "So if you divide the cost by the number of years you can use a fridge, they’re not expensive, compared with some household appliances."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "Who is going to do research into each topic? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Annie"
            },
            {
              "key": "B",
              "text": "Jack"
            },
            {
              "key": "C",
              "text": "both Annie and Jack"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "the goods that are refrigerated",
              "answer": "A",
              "explanation": "the range of goods that are refrigerated nowadays?"
            },
            {
              "number": 26,
              "prompt": "the effects on health",
              "answer": "A",
              "explanation": "What about the effects of refrigeration on people’s health?"
            },
            {
              "number": 27,
              "prompt": "the impact on food producers",
              "answer": "B",
              "explanation": "Oh, all right then, I’ll do you a favour."
            },
            {
              "number": 28,
              "prompt": "the impact on cities",
              "answer": "B",
              "explanation": "I think we should also look at how refrigeration has helped whole cities"
            },
            {
              "number": 29,
              "prompt": "refrigerated transport",
              "answer": "A",
              "explanation": "Then there’s transport, and the difference that refrigerated trucks have made. I wouldn’t mind having a go at that."
            },
            {
              "number": 30,
              "prompt": "domestic fridges",
              "answer": "C",
              "explanation": "Shall we have a separate section on domestic fridges?"
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
              "kind": "subheader",
              "text": "19th century"
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
              "kind": "subheader",
              "text": "MAIN AREAS OF CHANGE"
            },
            {
              "kind": "subheader",
              "text": "Manufacturing"
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
              "kind": "subheader",
              "text": "Transport"
            },
            {
              "kind": "static",
              "text": "The railways took the place of canals."
            },
            {
              "kind": "static",
              "text": "Because of the new transport:"
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
              "kind": "subheader",
              "text": "Retailing"
            },
            {
              "kind": "static",
              "text": "The first department stores were opened."
            },
            {
              "kind": "static",
              "text": "The displays of goods were more visible:"
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
              "prompt": "For the first time, people’s possessions were used to measure Britain’s _______",
              "answer": [
                "wealth"
              ],
              "wordLimit": 1,
              "explanation": "In fact, it was in the 19th century that the quantity and quality of people’s possessions was used as an indication of the wealth of the country."
            },
            {
              "number": 32,
              "prompt": "Developments in production of goods and in _______ greatly changed lives.",
              "answer": [
                "technology"
              ],
              "wordLimit": 1,
              "explanation": "when improvements in how goods were made as well as in technology triggered massive social changes that transformed life for just about everybody in several key areas."
            },
            {
              "number": 33,
              "prompt": "The Industrial Revolution would not have happened without the new types of _______ that were used then.",
              "answer": [
                "power"
              ],
              "wordLimit": 1,
              "explanation": "And it’s true that the Industrial Revolution couldn’t have taken place at all if it weren’t for these new sources of power."
            },
            {
              "number": 34,
              "prompt": "The leading industry was _______ (its products became widely available).",
              "answer": [
                "textile"
              ],
              "wordLimit": 1,
              "explanation": "/ textiles The most advanced industry for much of the 19th century was textiles."
            },
            {
              "number": 35,
              "prompt": "New _______ made factories necessary and so more people moved into towns.",
              "answer": [
                "machines"
              ],
              "wordLimit": 1,
              "explanation": "But enormous new machines were now being created that could produce the goods faster and on a larger scale, and these required a lot more space."
            },
            {
              "number": 36,
              "prompt": "- greater access to _______ Made people more aware of what they could buy in shops.",
              "answer": [
                "newspapers"
              ],
              "wordLimit": 1,
              "explanation": "they included newspapers"
            },
            {
              "number": 37,
              "prompt": "- when shopping, people were not limited to buying _______ goods.",
              "answer": [
                "local"
              ],
              "wordLimit": 1,
              "explanation": "goods could now be sold all over the country, instead of just in the local market."
            },
            {
              "number": 38,
              "prompt": "- inside stores because of better _______ .",
              "answer": [
                "lighting"
              ],
              "wordLimit": 1,
              "explanation": "improved lighting inside greatly increased the visibility of the goods for sale."
            },
            {
              "number": 39,
              "prompt": "- outside stores, because _______ were bigger.",
              "answer": [
                "windows"
              ],
              "wordLimit": 1,
              "explanation": "which made it possible for windows to be much larger than previously."
            },
            {
              "number": 40,
              "prompt": "_______ that was persuasive became much more common.",
              "answer": [
                "Advertising"
              ],
              "wordLimit": 1,
              "explanation": "now there was an explosion in advertising trying to persuade people to go shopping."
            }
          ],
          "formTitle": "How the Industrial Revolution affected life in Britain",
          "id": "g31"
        }
      ]
    }
  ]
}
$c15t4l$,
  true
);
