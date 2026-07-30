DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 20',
  'Test 4',
  'academic',
  2004,
  $c20t4l$
{
  "audioPath": "Cambridge 20 Test 4.mp3",
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
              "text": "Accommodation"
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
              "text": "Recommended Trips"
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
              "text": "Science Museum"
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
              "kind": "subheader",
              "text": "Food"
            },
            {
              "kind": "static",
              "text": "Clacton Market:"
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
              "text": "Theatre Tickets"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "subheader",
              "text": "Free Activities"
            },
            {
              "kind": "static",
              "text": "Blakewell Gardens:"
            },
            {
              "kind": "subheader",
              "text": "- Roots Music Festival"
            },
            {
              "kind": "question",
              "number": 10
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______ Hotel on George Street",
              "answer": [
                "Kings"
              ],
              "wordLimit": 1,
              "explanation": "/ King's I always recommend people stay at the King’s Hotel"
            },
            {
              "number": 2,
              "prompt": "Cost of family room per night: £ _______ (approx.)",
              "answer": [
                "125"
              ],
              "wordLimit": 1,
              "explanation": "If you book a family room, it’s about £125 per night"
            },
            {
              "number": 3,
              "prompt": "A _______ tour of the city centre (starts in Carlton Square)",
              "answer": [
                "walking"
              ],
              "wordLimit": 1,
              "explanation": "I think it’s better to do a walking tour. It gives you a much better feel for the city"
            },
            {
              "number": 4,
              "prompt": "A trip by _______ to the old fort",
              "answer": [
                "boat"
              ],
              "wordLimit": 1,
              "explanation": "One thing you could do is visit the old fort. You could get there by boat"
            },
            {
              "number": 5,
              "prompt": "Best day to visit: _______",
              "answer": [
                "Tuesday"
              ],
              "wordLimit": 1,
              "explanation": "They’re here from Saturday for four nights so Tuesday would be best I think"
            },
            {
              "number": 6,
              "prompt": "See the exhibition about _______ which opens soon",
              "answer": [
                "space"
              ],
              "wordLimit": 1,
              "explanation": "There’s another one starting soon on space, which looks really good too"
            },
            {
              "number": 7,
              "prompt": "- Good for _______ food",
              "answer": [
                "vegetarian"
              ],
              "wordLimit": 1,
              "explanation": "Well, I really like all the food stalls at Clacton Market. My cousin’s vegetarian. I know it’s one of the best places for that kind of food"
            },
            {
              "number": 8,
              "prompt": "- Need to have lunch before _______ p.m.",
              "answer": [
                "2.30",
                "2"
              ],
              "wordLimit": 1,
              "explanation": ":30 You need to get there quite early, though. At the weekend, most of the stores stop serving lunch at 2.30"
            },
            {
              "number": 9,
              "prompt": "Save up to _______ % on ticket prices at bargaintickets.com",
              "answer": [
                "75"
              ],
              "wordLimit": 1,
              "explanation": "On some seats there a 75% discount"
            },
            {
              "number": 10,
              "prompt": "- Climb Telegraph Hill to see a view of the _______",
              "answer": [
                "port"
              ],
              "wordLimit": 1,
              "explanation": "You’ll be able to look right down on the port"
            }
          ],
          "formTitle": "Advice on Family Visit",
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
          "instructions": "Choose TWO letters, A–E. Which TWO things does the speaker say about visiting the football stadium with children?",
          "options": [
            {
              "key": "A",
              "text": "Children can get their photo taken with a football player"
            },
            {
              "key": "B",
              "text": "There is a competition for children today"
            },
            {
              "key": "C",
              "text": "Parents must stay with their children at all times"
            },
            {
              "key": "D",
              "text": "Children will need sunhats and drinks"
            },
            {
              "key": "E",
              "text": "The café has a special offer on meals for children"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO things does the speaker say about visiting the football stadium with children?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Please don’t let your children wander off on their own, even for a minute children are invited to do a football drawing. We pick the best one at the end of the afternoon"
            },
            {
              "number": 12,
              "prompt": "Which TWO things does the speaker say about visiting the football stadium with children?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Please don’t let your children wander off on their own, even for a minute children are invited to do a football drawing. We pick the best one at the end of the afternoon"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO features of the stadium tour are new this year?",
          "options": [
            {
              "key": "A",
              "text": "VIP tour"
            },
            {
              "key": "B",
              "text": "360 cinema experience"
            },
            {
              "key": "C",
              "text": "audio guide"
            },
            {
              "key": "D",
              "text": "dressing room tour"
            },
            {
              "key": "E",
              "text": "tours in other languages"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO features of the stadium tour are new this year?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "I should say, if you’d prefer your visit to be self-guided, please collect headphones from the reception, and then you can listen to the pre- recorded information at your own speed. We’ve only just introduced this feature and would appreciate your feedback. If you plan to return another time, you might like to book one of our VIP tours. We’ve only just started offering these and they can be booked online"
            },
            {
              "number": 14,
              "prompt": "Which TWO features of the stadium tour are new this year?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "I should say, if you’d prefer your visit to be self-guided, please collect headphones from the reception, and then you can listen to the pre- recorded information at your own speed. We’ve only just introduced this feature and would appreciate your feedback. If you plan to return another time, you might like to book one of our VIP tours. We’ve only just started offering these and they can be booked online"
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which event in the history of football in the UK took place in each of the following years? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "the introduction of pay for the players"
            },
            {
              "key": "B",
              "text": "a change to the design of the goal"
            },
            {
              "key": "C",
              "text": "the first use of lights for matches"
            },
            {
              "key": "D",
              "text": "the introduction of goalkeepers"
            },
            {
              "key": "E",
              "text": "the first international match"
            },
            {
              "key": "F",
              "text": "two changes to the rules of the game"
            },
            {
              "key": "G",
              "text": "the introduction of a fee for spectators"
            },
            {
              "key": "H",
              "text": "an agreement on the length of a game"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "1870",
              "answer": "D",
              "explanation": "1870 was also the year that football teams started to include a player whose role it was to guard the goal"
            },
            {
              "number": 16,
              "prompt": "1874",
              "answer": "F",
              "explanation": "In 1874, referees were allowed to send players off if they committed certain offences. And also in that year, teams started having to swap ends at half- time"
            },
            {
              "number": 17,
              "prompt": "1875",
              "answer": "B",
              "explanation": "In 1875, that tape was replaced with the solid crossbar that we’re familiar with today"
            },
            {
              "number": 18,
              "prompt": "1877",
              "answer": "H",
              "explanation": "in the same year all the clubs decided to set a limit of 90 minutes for each match"
            },
            {
              "number": 19,
              "prompt": "1878",
              "answer": "C",
              "explanation": "By 1878, the number of teams in the Football League increased again. In addition, referees started using whistles and electric lamps were installed on certain pitches"
            },
            {
              "number": 20,
              "prompt": "1880",
              "answer": "G",
              "explanation": "In 1880, clubs began to charge fans for admission to games"
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
          "instructions": "Choose TWO letters, A–E. Which TWO benefits for children of learning to write did both students find surprising?",
          "options": [
            {
              "key": "A",
              "text": "improved fine motor skills"
            },
            {
              "key": "B",
              "text": "improved memory"
            },
            {
              "key": "C",
              "text": "improved concentration"
            },
            {
              "key": "D",
              "text": "improved imagination"
            },
            {
              "key": "E",
              "text": "improved spatial awareness"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO benefits for children of learning to write did both students find surprising?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "What’s less obvious is how it helps develop their concentration. They have to sit still and focus on one thing. I never associated spatial awareness with handwriting either"
            },
            {
              "number": 22,
              "prompt": "Which TWO benefits for children of learning to write did both students find surprising?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "What’s less obvious is how it helps develop their concentration. They have to sit still and focus on one thing. I never associated spatial awareness with handwriting either"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. For children with dyspraxia, which TWO problems with handwriting do the students think are easiest to correct?",
          "options": [
            {
              "key": "A",
              "text": "not spacing letters correctly"
            },
            {
              "key": "B",
              "text": "not writing in a straight line"
            },
            {
              "key": "C",
              "text": "applying too much pressure when writing"
            },
            {
              "key": "D",
              "text": "confusing letter shapes"
            },
            {
              "key": "E",
              "text": "writing very slowly"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "For children with dyspraxia, which TWO problems with handwriting do the students think are easiest to correct?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "Yeah, I like the idea of using one of those pens that lights up if you press too hard. That seems like a really simple solution. One quite simple thing you can do is to use grid paper. So they write each letter in a box and that trains them to space the letters correctly."
            },
            {
              "number": 24,
              "prompt": "For children with dyspraxia, which TWO problems with handwriting do the students think are easiest to correct?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "Yeah, I like the idea of using one of those pens that lights up if you press too hard. That seems like a really simple solution. One quite simple thing you can do is to use grid paper. So they write each letter in a box and that trains them to space the letters correctly."
            }
          ],
          "id": "g23"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 25–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 25,
              "prompt": "What does the woman say about using laptops to teach writing to children with dyslexia?",
              "options": [
                {
                  "key": "A",
                  "text": "Children often lack motivation to learn that way"
                },
                {
                  "key": "B",
                  "text": "Children become fluent relatively quickly"
                },
                {
                  "key": "C",
                  "text": "Children react more positively if they make a mistake"
                }
              ],
              "answer": "C",
              "explanation": "Yeah, it’s not as frustrating for them if they get things wrong. On a keyboard, they can be more willing to have a go"
            },
            {
              "number": 26,
              "prompt": "When discussing whether to teach cursive or print writing, the woman thinks that",
              "options": [
                {
                  "key": "A",
                  "text": "cursive writing disadvantages a certain group of children"
                },
                {
                  "key": "B",
                  "text": "print writing is associated with lower academic performance"
                },
                {
                  "key": "C",
                  "text": "most teachers in the UK prefer a traditional approach to handwriting"
                }
              ],
              "answer": "A",
              "explanation": "teachers’ attitudes have changed because it’s been proved that cursive is more difficult to learn, especially for children with learning difficulties who find joining up letters really challenging"
            },
            {
              "number": 27,
              "prompt": "According to the students, what impact does poor handwriting have on exam performance?",
              "options": [
                {
                  "key": "A",
                  "text": "There is evidence to suggest grades are affected by poor handwriting"
                },
                {
                  "key": "B",
                  "text": "Neat handwriting is less important now than it used to be"
                },
                {
                  "key": "C",
                  "text": "Candidates write more slowly and produce shorter answers"
                }
              ],
              "answer": "A",
              "explanation": "I was always worried that my poor handwriting affected my exam results, and now research shows that I was right to worry."
            },
            {
              "number": 28,
              "prompt": "What prediction does the man make about the future of handwriting?",
              "options": [
                {
                  "key": "A",
                  "text": "Touch typing will be taught before writing by hand"
                },
                {
                  "key": "B",
                  "text": "Children will continue to learn to write by hand"
                },
                {
                  "key": "C",
                  "text": "People will dislike handwriting on digital devices"
                }
              ],
              "answer": "B",
              "explanation": "I can’t see that changing much. Touch typing still isn’t taught in most schools, which is a shame. But maybe that won’t be necessary in the future, because people will also be able to write by hand on digital devices. Anyway, teachers understand the value of handwriting. It’s a basic life skill"
            },
            {
              "number": 29,
              "prompt": "The woman is concerned that relying on digital devices has made it difficult for her to",
              "options": [
                {
                  "key": "A",
                  "text": "take detailed notes"
                },
                {
                  "key": "B",
                  "text": "spell and punctuate"
                },
                {
                  "key": "C",
                  "text": "read old documents"
                }
              ],
              "answer": "B",
              "explanation": "But my mum is shocked by my awful spelling and the fact that my punctuation is really inconsistent. I think you can put that down to lack of practice"
            },
            {
              "number": 30,
              "prompt": "How do the students feel about their own handwriting?",
              "options": [
                {
                  "key": "A",
                  "text": "concerned they are unable to write quickly"
                },
                {
                  "key": "B",
                  "text": "embarrassed by comments made about it"
                },
                {
                  "key": "C",
                  "text": "regretful that they have lost the habit"
                }
              ],
              "answer": "C",
              "explanation": "Nobody I know would be able to identify my handwriting now. It’s a shame."
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
              "text": "The importance of birds of prey to local communities"
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
              "kind": "static",
              "text": "They have been an important part of local culture for many years."
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "subheader",
              "text": "Falling numbers of birds of prey"
            },
            {
              "kind": "static",
              "text": "- The birds may be accidentally killed:"
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
              "text": "."
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "Ways of protecting chickens from birds of prey"
            },
            {
              "kind": "static",
              "text": "- Clearing away vegetation (unhelpful)."
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "- Frightening birds of prey by:"
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
              "prompt": "They destroy _______ and other rodents.",
              "answer": [
                "rats"
              ],
              "wordLimit": 1,
              "explanation": "a lot of damage can be caused to farmers’ crops by rodents, such as rats, which would consume the crops as they grow in the fields"
            },
            {
              "number": 32,
              "prompt": "They help prevent farmers from being bitten by _______ .",
              "answer": [
                "snakes"
              ],
              "wordLimit": 1,
              "explanation": "For example, a major danger to rural workers is snakes, whose bite may be dangerous or even fatal, and birds of prey have a major role in keeping their populations under control"
            },
            {
              "number": 33,
              "prompt": "They now support the economy by encouraging _______ in the area.",
              "answer": [
                "tourism"
              ],
              "wordLimit": 1,
              "explanation": "However, more recently, the sanctuary and its birds have also become increasingly important to the community in economic terms, because at present, after a relatively slow start, tourism has become an important source of revenue for them"
            },
            {
              "number": 34,
              "prompt": "By _______ when hunting or sleeping.",
              "answer": [
                "traffic"
              ],
              "wordLimit": 1,
              "explanation": "Fatalities occur when birds alight on roads to catch and eat their prey, and are hit by fast moving traffic"
            },
            {
              "number": 35,
              "prompt": "By electrocution from power lines, especially during times of high _______",
              "answer": [
                "rain"
              ],
              "wordLimit": 1,
              "explanation": "This is a particular danger in the heavy rain which can occur in the region in the months from December to April"
            },
            {
              "number": 36,
              "prompt": "- Local farmers may illegally shoot them or _______ them.",
              "answer": [
                "poison"
              ],
              "wordLimit": 1,
              "explanation": "farmers may shoot these birds, which is illegal but understandable, or they may poison the birds, which again is illegal and can have negative effects on the ecosystem"
            },
            {
              "number": 37,
              "prompt": "- Providing a _______ for chickens (expensive).",
              "answer": [
                "building"
              ],
              "wordLimit": 1,
              "explanation": "Another possibility would be to prevent the chickens from going outside at all and to keep them safe from predators inside a building, but this would cost far too much to be a practical solution"
            },
            {
              "number": 38,
              "prompt": "Keeping a _______ .",
              "answer": [
                "dog"
              ],
              "wordLimit": 1,
              "explanation": "Most of the farmers had at least one dog and said this was a big help at scaring away the predators"
            },
            {
              "number": 39,
              "prompt": "Making a _______ (e.g., with metal objects).",
              "answer": [
                "noise"
              ],
              "wordLimit": 1,
              "explanation": "some of the farmers also reported that during the breeding season, when the chickens were particularly vulnerable, they encouraged their children to watch over the chickens and to hit pans with a metal spoon so that the resulting noise would succeed in driving away birds that were trying to seize the young chicks"
            },
            {
              "number": 40,
              "prompt": "- A _______ of methods is usually most effective.",
              "answer": [
                "combination"
              ],
              "wordLimit": 1,
              "explanation": "None of these methods was 100% effective so as a result the village people told us that rather than just using one method, they were forced to use a combination for them to have any effect"
            }
          ],
          "formTitle": "Research in the Area Around the Chem be Bird Sanctuary",
          "id": "g31"
        }
      ]
    }
  ]
}
$c20t4l$,
  true
);
