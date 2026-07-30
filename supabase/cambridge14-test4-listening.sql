DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 14' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 14',
  'Test 4',
  'academic',
  2004,
  $c14t4l$
{
  "audioPath": "Cambridge 14 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Example"
            },
            {
              "kind": "subheader",
              "text": "Andrew is the ……Events…… Manager"
            },
            {
              "kind": "subheader",
              "text": "Rooms"
            },
            {
              "kind": "static",
              "text": "Adelphi Room number of people who can sit down to eat:"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "has a gallery suitable for musicians can go out and see the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "in pots on the terrace terrace has a view of a group of",
              "noBullet": true
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
              "text": "View of the lake"
            },
            {
              "kind": "subheader",
              "text": "Options"
            },
            {
              "kind": "static",
              "text": "Master of Ceremonies: can give a"
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "while people are eating will provide",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "if there are any problems",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______",
              "answer": [
                "85"
              ],
              "wordLimit": 1,
              "explanation": "That can seat eighty-five, or hold over a hundred if people are standing for a buffet."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "roses"
              ],
              "wordLimit": 1,
              "explanation": "This has a beautiful display of pots of roses at that time of the year."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "trees"
              ],
              "wordLimit": 1,
              "explanation": "From the terrace you can see the area of trees within the grounds of the hotel, or you can stroll through there to the river"
            },
            {
              "number": 4,
              "prompt": "Carlton Room number of people who can sit down to eat: 110 has a _______",
              "answer": [
                "stage"
              ],
              "wordLimit": 1,
              "explanation": "This is a bit bigger - it can hold up to a hundred and ten people - and it has the advantage of a stage"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "speech"
              ],
              "wordLimit": 1,
              "explanation": "I suppose they make a speech during the meal if we need one, do they?"
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "support"
              ],
              "wordLimit": 1,
              "explanation": "And they’re also your support"
            },
            {
              "number": 7,
              "prompt": "Accommodation: in the hotel rooms or _______",
              "answer": [
                "cabins"
              ],
              "wordLimit": 1,
              "explanation": "do you also have any other accommodation, like cabins, for example?"
            }
          ],
          "formTitle": "Enquiry about booking hotel room for event",
          "id": "g1"
        },
        {
          "type": "matching",
          "label": "Questions 8–10",
          "instructions": "What is said about using each of the following hotel facilities? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "included in cost of hiring room"
            },
            {
              "key": "B",
              "text": "available at extra charge"
            },
            {
              "key": "C",
              "text": "not available"
            }
          ],
          "questions": [
            {
              "number": 8,
              "prompt": "outdoor swimming pool",
              "answer": "C",
              "explanation": "it’ll be closed throughout September for refurbishment"
            },
            {
              "number": 9,
              "prompt": "gym",
              "answer": "A",
              "explanation": "The gym will be available, though, at no extra charge."
            },
            {
              "number": 10,
              "prompt": "tennis courts",
              "answer": "B",
              "explanation": "there is a small additional payment for those."
            }
          ],
          "id": "g8"
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
          "instructions": "What information does the speaker give about each of the following excursions? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "all downhill"
            },
            {
              "key": "B",
              "text": "suitable for beginners"
            },
            {
              "key": "C",
              "text": "only in good weather"
            },
            {
              "key": "D",
              "text": "food included"
            },
            {
              "key": "E",
              "text": "no charge"
            },
            {
              "key": "F",
              "text": "swimming possible"
            },
            {
              "key": "G",
              "text": "fully booked today"
            },
            {
              "key": "H",
              "text": "transport not included"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "dolphin watching",
              "answer": "G",
              "explanation": "Unfortunately there aren’t any places left for this afternoon’s trip"
            },
            {
              "number": 12,
              "prompt": "forest walk",
              "answer": "D",
              "explanation": "you’ll be provided with a drink and sandwiches."
            },
            {
              "number": 13,
              "prompt": "cycle trip",
              "answer": "A",
              "explanation": "it’s a 700-metre drop in just 20 kilometres so this isn’t really for inexperienced cyclists as you’ll be going pretty fast."
            },
            {
              "number": 14,
              "prompt": "local craft tour",
              "answer": "E",
              "explanation": "And the best thing about this trip is that it’s completely free."
            },
            {
              "number": 15,
              "prompt": "observatory trip",
              "answer": "F",
              "explanation": "Afterwards we’ll head down to Sunset Beach, where you can have a dip in the ocean if you want before we head off back to the hotel."
            },
            {
              "number": 16,
              "prompt": "horse riding",
              "answer": "B",
              "explanation": "or even if you’ve never been on a horse before."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. Which TWO things does the speaker say about the attraction called Musical Favourites?",
          "options": [
            {
              "key": "A",
              "text": "You pay extra for drinks."
            },
            {
              "key": "B",
              "text": "You must book it in advance."
            },
            {
              "key": "C",
              "text": "You get a reduction if you buy two tickets."
            },
            {
              "key": "D",
              "text": "You can meet the performers."
            },
            {
              "key": "E",
              "text": "You can take part in the show."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Which TWO things does the speaker say about the attraction called Musical Favourites?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "At the end the cast members come down from the stage it’s no good leaving it until the last minute."
            },
            {
              "number": 18,
              "prompt": "Which TWO things does the speaker say about the attraction called Musical Favourites?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "At the end the cast members come down from the stage it’s no good leaving it until the last minute."
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO things does the speaker say about the Castle Feast?",
          "options": [
            {
              "key": "A",
              "text": "Visitors can dance after the meal."
            },
            {
              "key": "B",
              "text": "There is a choice of food."
            },
            {
              "key": "C",
              "text": "Visitors wear historical costume."
            },
            {
              "key": "D",
              "text": "Knives and forks are not used."
            },
            {
              "key": "E",
              "text": "The entertainment includes horse races."
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO things does the speaker say about the Castle Feast?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "using your hands instead of cutlery join in as well if you want."
            },
            {
              "number": 20,
              "prompt": "Which TWO things does the speaker say about the Castle Feast?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "using your hands instead of cutlery join in as well if you want."
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
              "prompt": "What does Trevor find interesting about the purpose of children’s literature?",
              "options": [
                {
                  "key": "A",
                  "text": "the fact that authors may not realise what values they’re teaching"
                },
                {
                  "key": "B",
                  "text": "the fact that literature can be entertaining and educational at the same time"
                },
                {
                  "key": "C",
                  "text": "the fact that adults expect children to imitate characters in literature"
                }
              ],
              "answer": "A",
              "explanation": "What’s fascinating is that the writer isn’t necessarily conscious of the message they’re conveying."
            },
            {
              "number": 22,
              "prompt": "Trevor says the module about the purpose of children’s literature made him",
              "options": [
                {
                  "key": "A",
                  "text": "analyse some of the stories that his niece reads."
                },
                {
                  "key": "B",
                  "text": "wonder how far popularity reflects good qualify."
                },
                {
                  "key": "C",
                  "text": "decide to start writing some children’s stories."
                }
              ],
              "answer": "C",
              "explanation": "Actually, it inspired me to have a go at it myself, just for my own interest."
            },
            {
              "number": 23,
              "prompt": "Stephanie is interested in the Pictures module because",
              "options": [
                {
                  "key": "A",
                  "text": "she intends to become an illustrator."
                },
                {
                  "key": "B",
                  "text": "she can remember beautiful illustrations from her childhood."
                },
                {
                  "key": "C",
                  "text": "she believes illustrations are more important than words."
                }
              ],
              "answer": "A",
              "explanation": "I’ve always enjoyed drawing, so that’s the field I want to go into when I finish the course."
            },
            {
              "number": 24,
              "prompt": "Trevor and Stephanie agree that comics",
              "options": [
                {
                  "key": "A",
                  "text": "are inferior to books."
                },
                {
                  "key": "B",
                  "text": "have the potential for being useful."
                },
                {
                  "key": "C",
                  "text": "discourage children from using their imagination."
                }
              ],
              "answer": "B",
              "explanation": "There are plenty of kids who wouldn’t even try to read a book, so I think comics can serve a really useful purpose."
            },
            {
              "number": 25,
              "prompt": "With regard to books aimed at only boys or only girls, Trevor was surprised",
              "options": [
                {
                  "key": "A",
                  "text": "how long the distinction had gone unquestioned."
                },
                {
                  "key": "B",
                  "text": "how few books were aimed at both girls and boys."
                },
                {
                  "key": "C",
                  "text": "how many children enjoyed books intended for the opposite sex."
                }
              ],
              "answer": "B",
              "explanation": "I was amazed how many books were targeted at just one sex or the other."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 26–30",
          "instructions": "What comment is made about each of these stories? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "translated into many other languages"
            },
            {
              "key": "B",
              "text": "hard to read"
            },
            {
              "key": "C",
              "text": "inspired a work in a different area of art"
            },
            {
              "key": "D",
              "text": "more popular than the author’s other works"
            },
            {
              "key": "E",
              "text": "original title refers to another book"
            },
            {
              "key": "F",
              "text": "started a new genre"
            },
            {
              "key": "G",
              "text": "unlikely topic"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "Perrault’s fairy tales",
              "answer": "F",
              "explanation": "because no stories of that type had been written before, there were the first."
            },
            {
              "number": 27,
              "prompt": "The Swiss Family Robinson",
              "answer": "E",
              "explanation": "because it’s about a Swiss family who are shipwrecked, like Robinson Crusoe in the novel of a century earlier."
            },
            {
              "number": 28,
              "prompt": "The Nutcracker and the Mouse King",
              "answer": "C",
              "explanation": "Wasn’t that the basis for Tchaikovsky’s ballet The Nutcracker?"
            },
            {
              "number": 29,
              "prompt": "The Lord of the Rings",
              "answer": "B",
              "explanation": "I struggled with Tolkien’s The Lord of the Rings - there long books, and I gave up after one."
            },
            {
              "number": 30,
              "prompt": "War Horse",
              "answer": "G",
              "explanation": "Hardly what you’d expect for a children’s story."
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
              "text": "ATLIT-YAM was a village on coast of eastern Mediterranean thrived until about 7,000 BC stones homes had a courtyard had a semicircle of large stones round a"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "cause of destruction unknown - now under the sea biggest settlement from the prehistoric period found on the seabed research carried out into structures,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "and human remains",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "TRADITIOINAL AUTONOMOUS UNDERWATER VEHICLES (AUVs) used in the oil industry, e.g. to make"
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "problems: they were expensive and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": ".",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "LATEST AUVs much easier to use, relatively cheap, sophisticated"
            },
            {
              "kind": "static",
              "text": "Tests:"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "Underwater internet:"
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
              "text": "Planned research in Gulf of Baratti: to find out more about wrecks of ancient Roman ships, including"
            },
            {
              "kind": "static",
              "text": "- one carrying"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "supplies; tablets may have been used for cleaning the",
              "noBullet": true
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
              "prompt": "_______",
              "answer": [
                "spring"
              ],
              "wordLimit": 1,
              "explanation": "seven half-tonne stones standing in a semicircle around a spring, that might have been used for ceremonial purposes."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "tools"
              ],
              "wordLimit": 1,
              "explanation": "Research on the buildings, tools and the human remains has revealed how the bustling village once functioned"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "maps"
              ],
              "wordLimit": 1,
              "explanation": "Autonomous underwater vehicles, or AUVs, are used in the oil industry, for instance, to create maps of the seabed before rigs and pipelines are installed."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "heavy"
              ],
              "wordLimit": 1,
              "explanation": "Until relatively recently they were very expensive, and so heavy that they had to be launched from a large vessel with a winch."
            },
            {
              "number": 35,
              "prompt": "Marzamemi, Sicily: found ancient Roman ships carrying architectural elements made of _______",
              "answer": [
                "marble"
              ],
              "wordLimit": 1,
              "explanation": "The site is the final resting place of an ancient Roman ship, which sank in the sixth century AD while ferrying prefabricated marble elements for the construction of an early church"
            },
            {
              "number": 36,
              "prompt": "_______ is used for short distance communication, acoustic waves for long distance plans for communication with researchers by satellite",
              "answer": [
                "light"
              ],
              "wordLimit": 1,
              "explanation": "For short distances, AUVs can share date using light, while acoustic waves are used to communicate over long distances."
            },
            {
              "number": 37,
              "prompt": "AUV can send data to another AUV that has better _______ , for example",
              "answer": [
                "camera"
              ],
              "wordLimit": 1,
              "explanation": "/ cameras with a nearby AUV that carries superior cameras, and arrange for that AUV to make a closer inspection of the object."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "medical"
              ],
              "wordLimit": 1,
              "explanation": "When it sank, it was carrying medical goods, in wooden or tin receptacles."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "eyes"
              ],
              "wordLimit": 1,
              "explanation": "Its cargo gives us insight into the treatments available all those years ago, including tablets that are thought to have been dissolved to form a cleansing liquid for the eyes."
            },
            {
              "number": 40,
              "prompt": "- others carrying containers of olive oil or _______",
              "answer": [
                "wine"
              ],
              "wordLimit": 1,
              "explanation": "Some were used for transporting cargoes of olive oil, and others held wine."
            }
          ],
          "formTitle": "The hunt for sunken settlements and ancient shipwrecks",
          "id": "g31"
        }
      ]
    }
  ]
}
$c14t4l$,
  true
);
