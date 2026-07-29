DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 20',
  'Test 3',
  'academic',
  2004,
  $c20t3l$
{
  "audioPath": "Cambridge 20 Test 3.mp3",
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
              "kind": "static",
              "text": "Name of company Information about costs Additional notes"
            },
            {
              "kind": "subheader",
              "text": "Peak Rentals"
            },
            {
              "kind": "subheader",
              "text": "Prices range from $105 to $"
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
              "text": "Delivers in 1-2 days"
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
              "text": "Oliver"
            },
            {
              "kind": "subheader",
              "text": "Mid-range prices"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "Also offers a cleaning service"
            },
            {
              "kind": "subheader",
              "text": "Larch Furniture"
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
              "kind": "subheader",
              "text": "Rentals"
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
              "prompt": "_______ per room per month.",
              "answer": [
                "239"
              ],
              "wordLimit": 1,
              "explanation": "It says the monthly price per room starts at $105 and goes up to $239"
            },
            {
              "number": 2,
              "prompt": "The furniture is very _______",
              "answer": [
                "modern"
              ],
              "wordLimit": 1,
              "explanation": "People have mentioned that the furniture from Peak Rentals is more modern than any of the other companies"
            },
            {
              "number": 3,
              "prompt": "Special offer: free _______ with every living room set",
              "answer": [
                "lamp"
              ],
              "wordLimit": 1,
              "explanation": "Oh, and the brochure says that there’s a special offer at the moment. If you rent living room furniture, I believe that’s a set of chairs and a TV table, you’ll also get a lamp at no extra cost"
            },
            {
              "number": 4,
              "prompt": "_______ and",
              "answer": [
                "Aaron"
              ],
              "wordLimit": 1,
              "explanation": "Then you could try Aaron and Oliver"
            },
            {
              "number": 5,
              "prompt": "12% monthly free for _______",
              "answer": [
                "damage"
              ],
              "wordLimit": 1,
              "explanation": "But if you chose them you need to be aware that they charge an extra 12% every month in case of damage"
            },
            {
              "number": 6,
              "prompt": "Offers cheapest prices for renting furniture and _______ items",
              "answer": [
                "electronic"
              ],
              "wordLimit": 1,
              "explanation": "There’s another company called Larch Furniture. It’s quite new, and it has the lowest prices in town. That’s for both furniture and also electronic equipment"
            },
            {
              "number": 7,
              "prompt": "Must have own _______",
              "answer": [
                "insurance"
              ],
              "wordLimit": 1,
              "explanation": "First of all you have to take out insurance on the furniture and you need to organize that yourself"
            },
            {
              "number": 8,
              "prompt": "Minimum contract length: six months _______",
              "answer": [
                "space"
              ],
              "wordLimit": 1,
              "explanation": "I just thought of another furniture rental company. It’s called Space Rentals, and it’s located very near to the house"
            },
            {
              "number": 9,
              "prompt": "See the _______ for the most up-to-date prices",
              "answer": [
                "app"
              ],
              "wordLimit": 1,
              "explanation": "I don’t have any information about their charges, so it’s best to use their app to find out what it would cost you to use them"
            },
            {
              "number": 10,
              "prompt": "_______ are allowed within 7 days of delivery",
              "answer": [
                "exchanges"
              ],
              "wordLimit": 1,
              "explanation": "One good thing about that company is that if you don’t like the furniture once it’s delivered, you can request exchanges, as long as you do that within a week of receiving it"
            }
          ],
          "formTitle": "Furniture Rental Companies",
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
          "label": "Questions 11–16",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 11,
              "prompt": "Who was responsible for starting the community project?",
              "options": [
                {
                  "key": "A",
                  "text": "The castle owners"
                },
                {
                  "key": "B",
                  "text": "A national charity"
                },
                {
                  "key": "C",
                  "text": "The local council"
                }
              ],
              "answer": "B",
              "explanation": "but I was asked to join the project by NHA, a charity which sets up projects like this up and down the country"
            },
            {
              "number": 12,
              "prompt": "How was the gold coin found?",
              "options": [
                {
                  "key": "A",
                  "text": "Heavy rain had removed some of the soil"
                },
                {
                  "key": "B",
                  "text": "The ground was dug up by wild rabbits"
                },
                {
                  "key": "C",
                  "text": "A person with a metal detector searched the area"
                }
              ],
              "answer": "A",
              "explanation": "a walker found it on the ground after a rainstorm washed away some of the earth and sand"
            },
            {
              "number": 13,
              "prompt": "What led the archaeologists to believe there was an ancient village on this site?",
              "options": [
                {
                  "key": "A",
                  "text": "The lucky discovery of old records"
                },
                {
                  "key": "B",
                  "text": "The bases of several structures visible in the grass"
                },
                {
                  "key": "C",
                  "text": "The unusual stones found near the castle"
                }
              ],
              "answer": "A",
              "explanation": "Just by chance, the team found some old maps and documents in our library, which showed 500-year-old drawings of ruined buildings on the grassy area between the outer stone walls of the castle and the river"
            },
            {
              "number": 14,
              "prompt": "What are the team still hoping to find?",
              "options": [
                {
                  "key": "A",
                  "text": "Everyday pottery"
                },
                {
                  "key": "B",
                  "text": "Animal bones"
                },
                {
                  "key": "C",
                  "text": "Pieces of jewellery"
                }
              ],
              "answer": "C",
              "explanation": "Normally you’d expect to find brooches and other jewellery, but we’re still waiting to uncover any such items"
            },
            {
              "number": 15,
              "prompt": "What was found on the other side of the river to the castle?",
              "options": [
                {
                  "key": "A",
                  "text": "The remains of a large palace"
                },
                {
                  "key": "B",
                  "text": "The outline of fields"
                },
                {
                  "key": "C",
                  "text": "A number of small huts"
                }
              ],
              "answer": "B",
              "explanation": "we’ve also found evidence of human activity on the other side of the river. No other houses or huts so far, but we can see the borders of an ancient field system"
            },
            {
              "number": 16,
              "prompt": "What do the team plan to do after work ends this summer?",
              "options": [
                {
                  "key": "A",
                  "text": "Prepare a display for a museum"
                },
                {
                  "key": "B",
                  "text": "Take part in a television programme"
                },
                {
                  "key": "C",
                  "text": "Start to organise school visits"
                }
              ],
              "answer": "C",
              "explanation": "In the meantime, we’re putting on a series of guided tours for school groups this autumn"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "Label the map below. Write the correct letter, A–G, next to Questions 17–20.",
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
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "bridge foundations",
              "answer": "B",
              "explanation": "To reach the bridge, take the main path ahead of you, go straight on, and keep going till the path bends to the left. You’ll see a smaller track leading off to the right."
            },
            {
              "number": 18,
              "prompt": "rubbish pit",
              "answer": "A",
              "explanation": "You might be interested to see the rubbish pit. This is very near the castle walls in the north-west corner of the site"
            },
            {
              "number": 19,
              "prompt": "meeting hall",
              "answer": "G",
              "explanation": "It is the largest structure in the central area of the site next to the current excavation area"
            },
            {
              "number": 20,
              "prompt": "fish pond",
              "answer": "E",
              "explanation": "To get there from here, you turn right at the first information board you come to and follow the path into the trees. Before you come out of the trees, you’ll see it on your right"
            }
          ],
          "mapImage": "Cambridge 20 Test 3 map.png",
          "id": "g17"
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
              "prompt": "Finn was pleased to discover that their topic",
              "options": [
                {
                  "key": "A",
                  "text": "was not familiar to their module leader."
                },
                {
                  "key": "B",
                  "text": "had not been chosen by other students."
                },
                {
                  "key": "C",
                  "text": "did not prove to be difficult to research."
                }
              ],
              "answer": "B",
              "explanation": "No one else on the course is doing the same as us"
            },
            {
              "number": 22,
              "prompt": "Maya says a mistaken belief about theatre programmes is that",
              "options": [
                {
                  "key": "A",
                  "text": "theatres pay companies to produce them."
                },
                {
                  "key": "B",
                  "text": "few theatre-goers buy them nowadays."
                },
                {
                  "key": "C",
                  "text": "they contain far more adverts than previously."
                }
              ],
              "answer": "A",
              "explanation": "Contrary to what many people think, theatres don’t hire people to do the programmes. In fact, companies buy the rights to publish programmes on the theatre’s behalf"
            },
            {
              "number": 23,
              "prompt": "Finn was surprised that, in early British theatre, programmes",
              "options": [
                {
                  "key": "A",
                  "text": "were difficult for audiences to obtain."
                },
                {
                  "key": "B",
                  "text": "were given out free of charge."
                },
                {
                  "key": "C",
                  "text": "were seen as a kind of contract."
                }
              ],
              "answer": "C",
              "explanation": "if the programme named a famous actor, that’s who the public expected to perform. And if that didn’t happen, people accused the theatre of breaking their agreement with the audience"
            },
            {
              "number": 24,
              "prompt": "Maya feels their project should include an explanation of why companies of actors",
              "options": [
                {
                  "key": "A",
                  "text": "promoted their own plays."
                },
                {
                  "key": "B",
                  "text": "performed plays outdoors."
                },
                {
                  "key": "C",
                  "text": "had to tour with their plays."
                }
              ],
              "answer": "A",
              "explanation": "I also think it’s important to mention that lots of ordinary people at that time were illiterate, so theatre programmes were of limited value in advertising plays. When a company of actors arrived in a town, they’d parade around the streets in their costumes, beating drums and announcing their upcoming performances."
            },
            {
              "number": 25,
              "prompt": "Finn and Maya both think that, compared to nineteenth-century programmes, those from the eighteenth century",
              "options": [
                {
                  "key": "A",
                  "text": "were more original."
                },
                {
                  "key": "B",
                  "text": "were more colourful."
                },
                {
                  "key": "C",
                  "text": "were more informative."
                }
              ],
              "answer": "C",
              "explanation": "But personally I think 18th century programmes were superior because they told the theatregoers so many things, including about the actors"
            },
            {
              "number": 26,
              "prompt": "Maya doesn’t fully understand why, in the twentieth century,",
              "options": [
                {
                  "key": "A",
                  "text": "very few theatre programmes were printed in the USA."
                },
                {
                  "key": "B",
                  "text": "British theatre programmes failed to develop for so long."
                },
                {
                  "key": "C",
                  "text": "theatre programmes in Britain copied fashions from the USA"
                }
              ],
              "answer": "B",
              "explanation": "What I don’t really get is that after the war they didn’t go back to being more than one sheet or change in any way for over 25 years"
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "What comment is made about the programme for each of the following shows? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Its origin is somewhat controversial"
            },
            {
              "key": "B",
              "text": "It is historically significant for a country"
            },
            {
              "key": "C",
              "text": "It was effective at attracting audiences"
            },
            {
              "key": "D",
              "text": "It is included in a recent project"
            },
            {
              "key": "E",
              "text": "It contains insights into the show"
            },
            {
              "key": "F",
              "text": "It resembles an artwork"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Ruy Blas",
              "answer": "F",
              "explanation": "But the programme looks very decorative"
            },
            {
              "number": 28,
              "prompt": "Man of La Mancha",
              "answer": "E",
              "explanation": "I thought this was a good programme to show, not because of the pictures, but because it contains articles written by members of the theatre company, so we can learn how the production was created and the thoughts and feelings of the cast"
            },
            {
              "number": 29,
              "prompt": "The Tragedy of Jane Shore",
              "answer": "B",
              "explanation": "I’ve got a copy of a programme that’s now in a museum. It’s for The Tragedy of Jane Shore and it’s said to be the earliest surviving document to have been printed on Australia’s first printing press"
            },
            {
              "number": 30,
              "prompt": "The Sailors’ Festival",
              "answer": "D",
              "explanation": "Another programme to talk about is for The Sailors Festival. It comes from the British Library’s digitised collection of programmes that was started a few years ago"
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
              "text": "Definition"
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
              "kind": "subheader",
              "text": "Examples of Inclusive Design"
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
              "kind": "static",
              "text": "To assist the elderly:"
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
              "kind": "subheader",
              "text": "Impact of Non-Inclusive Designs"
            },
            {
              "kind": "static",
              "text": "Access:"
            },
            {
              "kind": "static",
              "text": "- Loss of independence for disabled people."
            },
            {
              "kind": "static",
              "text": "Safety:"
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
              "kind": "static",
              "text": "Comfort in the Workplace:"
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "- Designing products that can be accessed by a diverse range of people without the need for any _______",
              "answer": [
                "adaptation"
              ],
              "wordLimit": 1,
              "explanation": "It means making sure products are accessible, so that as many different types of people as possible can use them, without any type of adaptation having to be made to the original design"
            },
            {
              "number": 32,
              "prompt": "- Not the same as universal design: that is design for everyone, including catering for people with _______ problems.",
              "answer": [
                "cognitive"
              ],
              "wordLimit": 1,
              "explanation": "Universal design aims to make products that work for everyone and that includes considering the needs of people who have cognitive difficulties, which can present quite a challenge"
            },
            {
              "number": 33,
              "prompt": "- _______ which are adjustable, avoiding back or neck problems",
              "answer": [
                "desks"
              ],
              "wordLimit": 1,
              "explanation": "In workplaces it is common to see desks which can be adjusted to suit people of different heights or for wheelchair users"
            },
            {
              "number": 34,
              "prompt": "- _______ in public toilets which are easier to use",
              "answer": [
                "taps"
              ],
              "wordLimit": 1,
              "explanation": "Taps that you activate by sensor require no pressing or twisting movements. These are not only more hygienic, they’re also easier for people with dexterity or mobility issues"
            },
            {
              "number": 35,
              "prompt": "- Designers avoid using _______ in interfaces",
              "answer": [
                "blue"
              ],
              "wordLimit": 1,
              "explanation": "we also become worse at distinguishing between similar colours, in particular shades of blue, which is why software designers rarely create interfaces with this colour"
            },
            {
              "number": 36,
              "prompt": "- People can make commands using a mouse, keyboard, or their _______",
              "answer": [
                "voice"
              ],
              "wordLimit": 1,
              "explanation": "So voice access is now a routine way of making commands"
            },
            {
              "number": 37,
              "prompt": "- Seatbelts are especially problematic for _______ women.",
              "answer": [
                "pregnant"
              ],
              "wordLimit": 1,
              "explanation": "This has safety implications for all women, particularly those who are pregnant, as the seatbelts worn by the dummy are not adapted to accommodate them"
            },
            {
              "number": 38,
              "prompt": "- PPE jackets are often unsuitable because of the size of women’s _______",
              "answer": [
                "shoulders"
              ],
              "wordLimit": 1,
              "explanation": "the problem with this is that women can be tall and still have much smaller shoulders than the average man"
            },
            {
              "number": 39,
              "prompt": "- PPE for female _______ officers dealing with emergencies is the worst.",
              "answer": [
                "police"
              ],
              "wordLimit": 1,
              "explanation": "The report found that 95% of women said that their PPE often hampered their work and that this problem was worst in the emergency services, particularly the police"
            },
            {
              "number": 40,
              "prompt": "- The _______ in offices is often too low for women.",
              "answer": [
                "temperature"
              ],
              "wordLimit": 1,
              "explanation": "There is a standard setting for air conditioning to be at a temperature of 21 degrees designed to suit men and in most modern offices it is not possible to turn the air conditioning up or down. This means that many offices which mainly employ women are wasting energy by having the air conditioning set too high"
            }
          ],
          "formTitle": "Inclusive Design",
          "id": "g31"
        }
      ]
    }
  ]
}
$c20t3l$,
  true
);
