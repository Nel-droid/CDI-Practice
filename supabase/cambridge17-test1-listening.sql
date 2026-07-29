DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 17',
  'Test 1',
  'academic',
  2004,
  $c17t1l$
{
  "audioPath": "Cambridge 17 Test 1.mp3",
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
              "text": "Regular activities"
            },
            {
              "kind": "static",
              "text": "Beach making sure the beach does not have"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "on it no",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "Nature reserve maintaining paths nesting boxes for birds installed next task is taking action to attract"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "to the place identifying types of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "building a new",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "subheader",
              "text": "Forthcoming events"
            },
            {
              "kind": "static",
              "text": "Saturday meet at Dunsmore Beach car park walk across the sands and reach the"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "take a picnic wear appropriate",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Woodwork session suitable for"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "to participate in making",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "out of wood",
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
                "litter"
              ],
              "wordLimit": 1,
              "explanation": "One of the regular ones is trying to keep the beach free of litter."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "dogs"
              ],
              "wordLimit": 1,
              "explanation": "I’d be happy to help with that. Is it OK to take dogs?"
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "insects"
              ],
              "wordLimit": 1,
              "explanation": "next we’re going to work on encouraging insects"
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "butterflies"
              ],
              "wordLimit": 1,
              "explanation": "Oh, and we’re also running a project to identify the different species of butterflies that visit the reserve."
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "wall"
              ],
              "wordLimit": 1,
              "explanation": "Another job we’re doing at the reserve is replacing the wall on the southern side"
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "island"
              ],
              "wordLimit": 1,
              "explanation": "that’s when the sands are dry enough for us to walk to the island without getting wet."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "boots"
              ],
              "wordLimit": 1,
              "explanation": "And of course it’ll be wet walking across and back, so make sure your boots are waterproof."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "beginners"
              ],
              "wordLimit": 1,
              "explanation": "Is it OK for beginners to take part?"
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "spoons"
              ],
              "wordLimit": 1,
              "explanation": "You’ll be starting with wooden spoons, and of course learning how to use the tools."
            },
            {
              "number": 10,
              "prompt": "17th, from _______ a.m. to 3 p.m. cost of session (no camping): £10",
              "answer": [
                "35"
              ],
              "wordLimit": 1,
              "explanation": "/ thirty five There’s a charge of £35, including lunch, or £40 if you want to camp in the wood."
            }
          ],
          "formTitle": "Buckworth Conservation Group",
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
              "prompt": "What is the maximum number of people who can stand on each side of the boat?",
              "options": [
                {
                  "key": "A",
                  "text": "9"
                },
                {
                  "key": "B",
                  "text": "15"
                },
                {
                  "key": "C",
                  "text": "18"
                }
              ],
              "answer": "A",
              "explanation": "But please note if there are more than nine people on either side of the boat, we’ll move some of you over, otherwise all eighteen of us will end up in the sea!"
            },
            {
              "number": 12,
              "prompt": "What colour are the tour boats?",
              "options": [
                {
                  "key": "A",
                  "text": "dark red"
                },
                {
                  "key": "B",
                  "text": "jet black"
                },
                {
                  "key": "C",
                  "text": "light green"
                }
              ],
              "answer": "C",
              "explanation": "They used to be jet black, but our new ones now have these comfortable dark red seats and a light-green exterior in order to stand out from others and help promote our company."
            },
            {
              "number": 13,
              "prompt": "Which lunchbox is suitable for someone who doesn’t eat meat or fish?",
              "options": [
                {
                  "key": "A",
                  "text": "Lunchbox 1"
                },
                {
                  "key": "B",
                  "text": "Lunch box 2"
                },
                {
                  "key": "C",
                  "text": "Lunch box 3"
                }
              ],
              "answer": "B",
              "explanation": "Lunchbox 2 contains a cheddar cheese roll and Lunchbox 3 is salad-based and also contains eggs and tuna."
            },
            {
              "number": 14,
              "prompt": "What should people do with their litter?",
              "options": [
                {
                  "key": "A",
                  "text": "take it home"
                },
                {
                  "key": "B",
                  "text": "hand it to a member of staff"
                },
                {
                  "key": "C",
                  "text": "put it in the bins provided on the boat"
                }
              ],
              "answer": "B",
              "explanation": "but Jess, myself or Ray, our other guide, will collect it from you after lunch and put it all in a large plastic sack."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 15–16",
          "instructions": "Choose TWO letters, A–E. Which TWO features of the lighthouse does Lou mention?",
          "options": [
            {
              "key": "A",
              "text": "why it was built"
            },
            {
              "key": "B",
              "text": "who built it"
            },
            {
              "key": "C",
              "text": "how long it took to build"
            },
            {
              "key": "D",
              "text": "who staffed it"
            },
            {
              "key": "E",
              "text": "what it was built with"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Which TWO features of the lighthouse does Lou mention?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "It was built in 1838 to protect sailors as a number of shipwrecks had led to significant loss of life These workers were mainly prison convicts until the middle of that century when ordinary families willing to live in such circumstances took over."
            },
            {
              "number": 16,
              "prompt": "Which TWO features of the lighthouse does Lou mention?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "It was built in 1838 to protect sailors as a number of shipwrecks had led to significant loss of life These workers were mainly prison convicts until the middle of that century when ordinary families willing to live in such circumstances took over."
            }
          ],
          "id": "g15"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. Which TWO types of creature might come close to the boat?",
          "options": [
            {
              "key": "A",
              "text": "sea eagles"
            },
            {
              "key": "B",
              "text": "fur seals"
            },
            {
              "key": "C",
              "text": "dolphins"
            },
            {
              "key": "D",
              "text": "whales"
            },
            {
              "key": "E",
              "text": "penguins"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Which TWO types of creature might come close to the boat?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "When we get to the rocky area inhabited by fur seals, we’ll stop and watch them swimming around the coast. They’re inquisitive creatures so don’t be surprised if one pops up right in front of you. Dolphins, on the other hand, can sometimes approach on their own or in groups as they ride the waves beside us."
            },
            {
              "number": 18,
              "prompt": "Which TWO types of creature might come close to the boat?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "When we get to the rocky area inhabited by fur seals, we’ll stop and watch them swimming around the coast. They’re inquisitive creatures so don’t be surprised if one pops up right in front of you. Dolphins, on the other hand, can sometimes approach on their own or in groups as they ride the waves beside us."
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO points does Lou make about the caves?",
          "options": [
            {
              "key": "A",
              "text": "Only large tourist boats can visit them."
            },
            {
              "key": "B",
              "text": "The entrances to them are often blocked."
            },
            {
              "key": "C",
              "text": "It is too dangerous for individuals to go near them."
            },
            {
              "key": "D",
              "text": "Someone will explain what is inside them."
            },
            {
              "key": "E",
              "text": "They cannot be reached on foot."
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO points does Lou make about the caves?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "They can only be approached by sea past some incredible rock formations and from there we’ll be able to see the openings to the caves, and at that point we’ll talk to you about what lies beyond."
            },
            {
              "number": 20,
              "prompt": "Which TWO points does Lou make about the caves?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "They can only be approached by sea past some incredible rock formations and from there we’ll be able to see the openings to the caves, and at that point we’ll talk to you about what lies beyond."
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
          "label": "Questions 21–26",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 21,
              "prompt": "What problem did both Diana and Tim have when arranging their work experience?",
              "options": [
                {
                  "key": "A",
                  "text": "make initial contact with suitable farms"
                },
                {
                  "key": "B",
                  "text": "organising transport to and from the farm"
                },
                {
                  "key": "C",
                  "text": "finding a placement for the required length of time"
                }
              ],
              "answer": "A",
              "explanation": "My farm was great, but arranging the work experience was hard."
            },
            {
              "number": 22,
              "prompt": "Tim was pleased to be able to help",
              "options": [
                {
                  "key": "A",
                  "text": "a lamb that had a broken leg."
                },
                {
                  "key": "B",
                  "text": "a sheep that was having difficult giving birth."
                },
                {
                  "key": "C",
                  "text": "a newly born lamb that was having trouble feeding."
                }
              ],
              "answer": "B",
              "explanation": "I was up most of one night helping a sheep deliver a lamb …"
            },
            {
              "number": 23,
              "prompt": "Diana says the sheep on her farm",
              "options": [
                {
                  "key": "A",
                  "text": "were of various different varieties."
                },
                {
                  "key": "B",
                  "text": "were mainly reared for their meat."
                },
                {
                  "key": "C",
                  "text": "had better quality wool than sheep on the hills."
                }
              ],
              "answer": "B",
              "explanation": "So were they bred for their meat?"
            },
            {
              "number": 24,
              "prompt": "What did the students learn about adding supplements to chicken feed?",
              "options": [
                {
                  "key": "A",
                  "text": "These should only be given if specially needed."
                },
                {
                  "key": "B",
                  "text": "It is worth paying extra for the most effective ones."
                },
                {
                  "key": "C",
                  "text": "The amount given at one time should be limited."
                }
              ],
              "answer": "A",
              "explanation": "And he didn’t give them as a matter of routine, just at times when the chickens seemed to particularly require them."
            },
            {
              "number": 25,
              "prompt": "What happened when Diana was working with dairy cows?",
              "options": [
                {
                  "key": "A",
                  "text": "She identified some cows incorrectly."
                },
                {
                  "key": "B",
                  "text": "She accidentally threw some milk away."
                },
                {
                  "key": "C",
                  "text": "She made a mistake when storing milk."
                }
              ],
              "answer": "C",
              "explanation": "But I got mixed up, and I poured some milk from the wrong cow in with the milk for humans, so the whole lot had to be thrown away."
            },
            {
              "number": 26,
              "prompt": "What did both farmers mention about vets and farming?",
              "options": [
                {
                  "key": "A",
                  "text": "Vets are failing to cope with some aspects of animal health."
                },
                {
                  "key": "B",
                  "text": "There needs to be a fundamental change in the training of vets."
                },
                {
                  "key": "C",
                  "text": "Some jobs could be done by the farmer rather than by a vet."
                }
              ],
              "answer": "C",
              "explanation": "Well, he didn’t agree with that, but he said that actually some of the stuff the vets do, like minor operations, he’d be quite capable of doing himself."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 27–30",
          "instructions": "What opinion do the students give about each of the following modules on their veterinary science course? Choose the correct letter, A–F, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Tim found this easier than expected."
            },
            {
              "key": "B",
              "text": "Tim thought this was not very clearly organised."
            },
            {
              "key": "C",
              "text": "Diana may do some further study on this."
            },
            {
              "key": "D",
              "text": "They both found the reading required for this was difficult."
            },
            {
              "key": "E",
              "text": "Tim was shocked at something he learned on this module."
            },
            {
              "key": "F",
              "text": "They were both surprised how little is known about some aspects of this."
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Medical terminology",
              "answer": "A",
              "explanation": "TIM: I’d thought it’d be hard, but actually I found it all quite straightforward"
            },
            {
              "number": 28,
              "prompt": "Diet and nutrition",
              "answer": "E",
              "explanation": "Do you remember what they told us about pet food and the fact that there’s such limited checking into whether or not it’s contaminated? I mean in comparison with the checks on food for humans - I thought that was terrible"
            },
            {
              "number": 29,
              "prompt": "Animal disease",
              "answer": "F",
              "explanation": "I think the module that really impressed me was the animal disease one, when we looked at domesticated animals in different parts of the world, like camels and water buffalo and alpaca. The economies of so many countries depend on these, but scientists don’t know much about the diseases that affect them. TIM: Yes, I thought they’d know a lot about ways of controlling and eradicating those diseases, but that’s not the case at all"
            },
            {
              "number": 30,
              "prompt": "Wildlife medication",
              "answer": "C",
              "explanation": "DIANA: Yeah, I thought I might write my dissertation on something connected with that"
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
              "kind": "static",
              "text": "Definition a winding spiral path leading to a central area"
            },
            {
              "kind": "subheader",
              "text": "Labyrinths compared with mazes"
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
              "kind": "static",
              "text": "Labyrinths represent a journey through life"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "Early examples of the labyrinth spiral"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "The Pima, a Native American tribe, wove the symbol on baskets"
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "subheader",
              "text": "Walking labyrinths"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "subheader",
              "text": "Labyrinths nowadays"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "Used in medical and health and fitness settings and also prisons"
            },
            {
              "kind": "static",
              "text": "Popular with patients, visitors and staff in hospitals"
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
              "prompt": "Mazes are a type of _______",
              "answer": [
                "puzzle"
              ],
              "wordLimit": 1,
              "explanation": "A maze is quite different as it is a kind of puzzle with an intricate network of paths."
            },
            {
              "number": 32,
              "prompt": "- _______ is needed to navigate through a maze",
              "answer": [
                "logic"
              ],
              "wordLimit": 1,
              "explanation": "Entering a maze usually involves getting lost a few times before using logic to work out the pattern and find your way to the centre and then out again."
            },
            {
              "number": 33,
              "prompt": "- the word ‘maze’ is derived from a word meaning a feeling of _______",
              "answer": [
                "confusion"
              ],
              "wordLimit": 1,
              "explanation": "The word ‘maze’ is believed to come from a Scandinavian word for a state of confusion."
            },
            {
              "number": 34,
              "prompt": "- they have frequently been used in _______ and prayer",
              "answer": [
                "meditation"
              ],
              "wordLimit": 1,
              "explanation": "Labyrinths are thought to encourage a feeling of calm and have been used as a meditation and prayer tool in many cultures over many centuries."
            },
            {
              "number": 35,
              "prompt": "Ancient carvings on _______ have been found across many cultures",
              "answer": [
                "stone"
              ],
              "wordLimit": 1,
              "explanation": "The earliest examples of the labyrinth spiral pattern have been found carved into stone, from Sardinia to Scandinavia, from Arizona to India to Africa."
            },
            {
              "number": 36,
              "prompt": "Ancient Greeks used the symbol on _______",
              "answer": [
                "coins"
              ],
              "wordLimit": 1,
              "explanation": "In Ancient Greece, the labyrinth spiral was used on coins around four thousand years ago."
            },
            {
              "number": 37,
              "prompt": "The largest surviving example of a turf labyrinth once had a big _______ at its centre",
              "answer": [
                "tree"
              ],
              "wordLimit": 1,
              "explanation": "Eleven examples of turf labyrinths survive today, including the largest one at Saffron Walden, England, which used to have a large tree in the middle of it."
            },
            {
              "number": 38,
              "prompt": "Believed to have a beneficial impact on mental and physical health, e.g., walking a maze can reduce a person’s _______ rate",
              "answer": [
                "breathing"
              ],
              "wordLimit": 1,
              "explanation": "there are those who believe in its emotional and physical benefits, which include slower breathing and a restored sense of balance and perspective."
            },
            {
              "number": 39,
              "prompt": "- patients who can’t walk can use ‘finger labyrinths’ made from _______",
              "answer": [
                "paper"
              ],
              "wordLimit": 1,
              "explanation": "In some hospitals, patients who can’t walk can have a paper ‘finger labyrinth’ brought to their bed."
            },
            {
              "number": 40,
              "prompt": "- research has shown that Alzheimer’s sufferers experience less _______",
              "answer": [
                "anxiety"
              ],
              "wordLimit": 1,
              "explanation": "For example, one study found that walking a labyrinth provided ‘short-term calming, relaxation, and relief from anxiety’ for Alzheimer’s patients."
            }
          ],
          "formTitle": "Labyrinths",
          "id": "g31"
        }
      ]
    }
  ]
}
$c17t1l$,
  true
);
