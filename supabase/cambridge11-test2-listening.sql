DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 11' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 11',
  'Test 2',
  'academic',
  2004,
  $c11t2l$
{
  "audioPath": "Cambridge 11 Test 2.mp3",
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
              "text": "Example"
            },
            {
              "kind": "subheader",
              "text": "Name: Roger ………..Brown…………"
            },
            {
              "kind": "subheader",
              "text": "Age: 18"
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
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "Hobbies: does a lot of"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": ", and is interested in the",
              "noBullet": true
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
              "prompt": "Currently staying in a _______ during the week",
              "answer": [
                "hostel"
              ],
              "wordLimit": 1,
              "explanation": "At the moment I’m looking for a flat to rent here, so I’m in a hostel from Monday to Friday."
            },
            {
              "number": 2,
              "prompt": "Postal address: 17, _______ Street, Stamford, Lincs",
              "answer": [
                "Buckleigh"
              ],
              "wordLimit": 1,
              "explanation": "That’s 17, Buckleigh Street - B-U-C-K-L-E-I-G-H Street, Stamford, Lincolnshire, though you don’t really need the country."
            },
            {
              "number": 3,
              "prompt": "Postcode: _______",
              "answer": [
                "PE"
              ],
              "wordLimit": 1,
              "explanation": "9 7QT PE9 7QT"
            },
            {
              "number": 4,
              "prompt": "Occupation: student and part-time job as a _______",
              "answer": [
                "waiter"
              ],
              "wordLimit": 1,
              "explanation": "I’ve just finished a short-term contract as a courier, and now I’m working as a waiter in one of the big hotels."
            },
            {
              "number": 5,
              "prompt": "Studying _______ (major subject) and history (minor subject)",
              "answer": [
                "politics"
              ],
              "wordLimit": 1,
              "explanation": "My ambition is to go into parliament eventually, so my major subject is politics."
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "cycling"
              ],
              "wordLimit": 1,
              "explanation": "I spend quite a lot of time cycling"
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "cinema"
              ],
              "wordLimit": 1,
              "explanation": "For relaxation I’m also keen on the cinema"
            },
            {
              "number": 8,
              "prompt": "On Youth Council, wants to work with young people who are _______",
              "answer": [
                "disabled"
              ],
              "wordLimit": 1,
              "explanation": "Well, my sister is blind, so I’m particularly interested in working with disabled young people, to try and improve the quality of their lives."
            },
            {
              "number": 9,
              "prompt": "Will come to talk to the Elections Officer next Monday at _______ pm",
              "answer": [
                "4"
              ],
              "wordLimit": 1,
              "explanation": ":30 / 4.30 / half past four Well, would 4.30 be OK? My last class finishes at 4, so I’d have plenty of time to get to your office."
            },
            {
              "number": 10,
              "prompt": "Mobile number: _______",
              "answer": [
                "07788"
              ],
              "wordLimit": 1,
              "explanation": "136711 Yes, my mobile number’s 07788 136711."
            }
          ],
          "formTitle": "Enquiry about joining Youth Council",
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
          "instructions": "Choose TWO letters, A–E. Which TWO changes have been made so far during the refurbishment of the theatre?",
          "options": [
            {
              "key": "A",
              "text": "Some rooms now have a different use."
            },
            {
              "key": "B",
              "text": "A different type of seating has been installed."
            },
            {
              "key": "C",
              "text": "An elevator has been installed."
            },
            {
              "key": "D",
              "text": "The outside of the building has been repaired."
            },
            {
              "key": "E",
              "text": "Extra seats have been added."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO changes have been made so far during the refurbishment of the theatre?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "We’ve replaced them with larger seats, with more legroom. This means fewer seats in total, but we’ve taken the opportunity to install seats that can easily be moved We’ve also turned a few storerooms over to other purposes like using them for meetings."
            },
            {
              "number": 12,
              "prompt": "Which TWO changes have been made so far during the refurbishment of the theatre?",
              "answer": [
                "A",
                "B"
              ],
              "explanation": "We’ve replaced them with larger seats, with more legroom. This means fewer seats in total, but we’ve taken the opportunity to install seats that can easily be moved We’ve also turned a few storerooms over to other purposes like using them for meetings."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO facilities does the theatre currently offer to the public?",
          "options": [
            {
              "key": "A",
              "text": "rooms for hire"
            },
            {
              "key": "B",
              "text": "backstage tours"
            },
            {
              "key": "C",
              "text": "hire of costumes"
            },
            {
              "key": "D",
              "text": "a bookshop"
            },
            {
              "key": "E",
              "text": "a café"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO facilities does the theatre currently offer to the public?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "One way is by organising backstage tours so people can be shown round the building and learn how a theatre operates. These are proving very popular. We have a bookshop, which specialises in books about drama and that attracts plenty of customers."
            },
            {
              "number": 14,
              "prompt": "Which TWO facilities does the theatre currently offer to the public?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "One way is by organising backstage tours so people can be shown round the building and learn how a theatre operates. These are proving very popular. We have a bookshop, which specialises in books about drama and that attracts plenty of customers."
            }
          ],
          "id": "g13"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 15–16",
          "instructions": "Choose TWO letters, A–E. Which TWO workshops does the theatre currently offer? === PAGE 4 ===",
          "options": [
            {
              "key": "A",
              "text": "sound"
            },
            {
              "key": "B",
              "text": "acting"
            },
            {
              "key": "C",
              "text": "making puppets"
            },
            {
              "key": "D",
              "text": "make-up"
            },
            {
              "key": "E",
              "text": "lighting"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Which TWO workshops does the theatre currently offer? === PAGE 4 ===",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "our lighting workshop has already started with great success. A surprise success is the workshop on making puppets - we happen to have someone working here who does it as a hobby, and she offered to run a workshop. It was so popular we’re now running them every month!"
            },
            {
              "number": 16,
              "prompt": "Which TWO workshops does the theatre currently offer? === PAGE 4 ===",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "our lighting workshop has already started with great success. A surprise success is the workshop on making puppets - we happen to have someone working here who does it as a hobby, and she offered to run a workshop. It was so popular we’re now running them every month!"
            }
          ],
          "id": "g15"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "Label the plan below. Write the correct letter, A–G, next to Questions 17–20.",
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
              "prompt": "box office",
              "answer": "G",
              "explanation": "although it’s part of this building, it’s next door with a separate entrance from the road."
            },
            {
              "number": 18,
              "prompt": "theatre manager’s office",
              "answer": "D",
              "explanation": "For the theatre manager’s office, you go across the foyer and through the double doors, turn right, and it’s the room at the end of the corridor, with the door on the left."
            },
            {
              "number": 19,
              "prompt": "lighting box",
              "answer": "B",
              "explanation": "The lighting box is where the computerised stage lighting is operated and it’s at the back of the building. When you’re through the double doors turn left, turn right at the water cooler, and right again at the end. It’s the second room along that corridor."
            },
            {
              "number": 20,
              "prompt": "artistic director’s offices",
              "answer": "F",
              "explanation": "The artistic director’s office is through the double doors, turn right and it’s the first room you come to on the right-hand side"
            }
          ],
          "mapImage": "Cambridge 11 Test 2 map.png",
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
              "prompt": "What do the students agree should be included in their aims?",
              "options": [
                {
                  "key": "A",
                  "text": "factors affecting where organisms live"
                },
                {
                  "key": "B",
                  "text": "the need to preserve endangered species"
                },
                {
                  "key": "C",
                  "text": "techniques for classifying different organisms"
                }
              ],
              "answer": "A",
              "explanation": "But we need something about what causes different organisms to choose particular habitats."
            },
            {
              "number": 22,
              "prompt": "What equipment did they forget to take on the Field Trip?",
              "options": [
                {
                  "key": "A",
                  "text": "string"
                },
                {
                  "key": "B",
                  "text": "a compass"
                },
                {
                  "key": "C",
                  "text": "a ruler"
                }
              ],
              "answer": "A",
              "explanation": "But not the piece of string to hold up in the air! Didn’t Mr Blake make a fuss about us leaving that behind."
            },
            {
              "number": 23,
              "prompt": "In Helen’s procedure section, Colin suggests a change in",
              "options": [
                {
                  "key": "A",
                  "text": "the order in which information is given."
                },
                {
                  "key": "B",
                  "text": "the way the information is divided up."
                },
                {
                  "key": "C",
                  "text": "the amount of information provided."
                }
              ],
              "answer": "C",
              "explanation": "Yeah. It was clear, but I don’t think we need all these details of what time we left and what time we got back and how we divided up the different research tasks."
            },
            {
              "number": 24,
              "prompt": "What do they say about the method they used to measure wave speed?",
              "options": [
                {
                  "key": "A",
                  "text": "It provided accurate results."
                },
                {
                  "key": "B",
                  "text": "It was simple to carry out."
                },
                {
                  "key": "C",
                  "text": "It required special equipment."
                }
              ],
              "answer": "B",
              "explanation": "So let’s begin with how we measured wave speed. I was surprised how straightforward that was."
            },
            {
              "number": 25,
              "prompt": "What mistake did Helen make when first drawing the map?",
              "options": [
                {
                  "key": "A",
                  "text": "She chose the wrong scale."
                },
                {
                  "key": "B",
                  "text": "She stood in the wrong place."
                },
                {
                  "key": "C",
                  "text": "She did it at the wrong time."
                }
              ],
              "answer": "B",
              "explanation": "the place I started it from was down on the beach, then I realised I should have gone up higher to get better visibility"
            },
            {
              "number": 26,
              "prompt": "What do they decide to do next with their map?",
              "options": [
                {
                  "key": "A",
                  "text": "scan it onto a computer"
                },
                {
                  "key": "B",
                  "text": "check it using photographs"
                },
                {
                  "key": "C",
                  "text": "add information from the internet"
                }
              ],
              "answer": "B",
              "explanation": "I’ll make my amendments using those, then I can scan it into our report."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 27–28",
          "instructions": "Choose TWO letters, A–E. Which TWO problems affecting organisms in the splash zone are mentioned?",
          "options": [
            {
              "key": "A",
              "text": "lack of water"
            },
            {
              "key": "B",
              "text": "strong winds"
            },
            {
              "key": "C",
              "text": "lack of food"
            },
            {
              "key": "D",
              "text": "high temperatures"
            },
            {
              "key": "E",
              "text": "large waves"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Which TWO problems affecting organisms in the splash zone are mentioned?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "But the shells prevent them from drying out because they’re in the open air for most of the time. And since they’ve exposed, they need to be able to find some sort of shelter, or cover themselves up, so they don’t get too hot."
            },
            {
              "number": 28,
              "prompt": "Which TWO problems affecting organisms in the splash zone are mentioned?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "But the shells prevent them from drying out because they’re in the open air for most of the time. And since they’ve exposed, they need to be able to find some sort of shelter, or cover themselves up, so they don’t get too hot."
            }
          ],
          "id": "g27"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 29–30",
          "instructions": "Choose TWO letters, A–E. Which TWO reasons for possible error will they include in their report?",
          "options": [
            {
              "key": "A",
              "text": "inaccurate records of the habitat of organisms"
            },
            {
              "key": "B",
              "text": "influence on behaviour of organisms by observer"
            },
            {
              "key": "C",
              "text": "incorrect identification of some organisms"
            },
            {
              "key": "D",
              "text": "making generalisations from a small sample"
            },
            {
              "key": "E",
              "text": "missing some organisms when counting"
            }
          ],
          "questions": [
            {
              "number": 29,
              "prompt": "Which TWO reasons for possible error will they include in their report?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "we might have missed some organisms - if they were hiding under a rock, for example I’m not sure we identified all the species correctly thought."
            },
            {
              "number": 30,
              "prompt": "Which TWO reasons for possible error will they include in their report?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "we might have missed some organisms - if they were hiding under a rock, for example I’m not sure we identified all the species correctly thought."
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
              "kind": "subheader",
              "text": "THE TAYLOR CONCERT HALL"
            },
            {
              "kind": "subheader",
              "text": "Introduction"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "Location and concept of the Concert Hall"
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
              "text": "The design is based on the concept of a mystery"
            },
            {
              "kind": "subheader",
              "text": "Building design"
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
              "text": "In the auditorium: the floor is built on huge pads made of"
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "the walls are made of local wood and are",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "in shape ceiling panels and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "on walls allow adjustment of acoustics",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Evaluation"
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "The designer of a public building may need to consider the building’s function physical and _______ context symbolic meaning",
              "answer": [
                "social"
              ],
              "wordLimit": 1,
              "explanation": "this includes its physical location obviously, but it also includes the social meaning of the building how it relates to the people it’s built for"
            },
            {
              "number": 32,
              "prompt": "On the site of a disused _______",
              "answer": [
                "factory"
              ],
              "wordLimit": 1,
              "explanation": "The location chosen was a site in a run-down district that has been ignored in previous redevelopment plans. It was occupied by a factory that had been empty for some years."
            },
            {
              "number": 33,
              "prompt": "Beside a _______",
              "answer": [
                "canal"
              ],
              "wordLimit": 1,
              "explanation": "The side itself was bordered to the north by a canal"
            },
            {
              "number": 34,
              "prompt": "It’s approached by a _______ for pedestrians",
              "answer": [
                "bridge"
              ],
              "wordLimit": 1,
              "explanation": "As people approach the entrance, they therefore have to cross over a bridge."
            },
            {
              "number": 35,
              "prompt": "The building is the shape of a _______",
              "answer": [
                "box"
              ],
              "wordLimit": 1,
              "explanation": "the initial impression he wanted to create from the shape of the building as a whole was that of a box."
            },
            {
              "number": 36,
              "prompt": "One exterior wall acts as a large _______",
              "answer": [
                "screen"
              ],
              "wordLimit": 1,
              "explanation": "And this flat wall also has another purpose. At night-time, projectors are switched on and it functions as a huge screen, onto which images are projected."
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "rubber"
              ],
              "wordLimit": 1,
              "explanation": "The floor’s supported by ten massive pads. These are constructed from rubber"
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "curved"
              ],
              "wordLimit": 1,
              "explanation": "they are not straight, they are curved."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "curtains"
              ],
              "wordLimit": 1,
              "explanation": "the walls also have curtains which can be opened or closed to change the acoustics."
            },
            {
              "number": 40,
              "prompt": "Some critics say the _______ style of the building is inappropriate",
              "answer": [
                "international"
              ],
              "wordLimit": 1,
              "explanation": "However, the evaluation of some critics has been less enthusiastic. In spite of Harrison’s efforts to use local materials, they criticise the style of the design as being international rather than local"
            }
          ],
          "formTitle": "DESIGNING A PUBLIC BUILDING:",
          "id": "g31"
        }
      ]
    }
  ]
}
$c11t2l$,
  true
);
