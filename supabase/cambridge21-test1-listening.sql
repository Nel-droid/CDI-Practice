DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 21',
  'Test 1',
  'academic',
  2004,
  $c21t1l$
{
  "audioPath": "Cambridge 21 Test 1.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the table below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formTitle": "Sailing courses",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Taster day"
            },
            {
              "kind": "static",
              "text": "What you learn: introduction to sailing"
            },
            {
              "kind": "static",
              "text": "Cost: £120 if booking one place"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Level 1"
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
              "text": "Cost: £200"
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
              "prompt": "Other information: small groups (maximum _______ people)",
              "answer": [
                "10",
                "ten"
              ],
              "wordLimit": 1,
              "explanation": "You’d be in a small group, usually about eight people but no more than ten - and everyone’s always very friendly"
            },
            {
              "number": 2,
              "prompt": "What you learn: basic theory, e.g. understanding the _______ and tides",
              "answer": [
                "weather"
              ],
              "wordLimit": 1,
              "explanation": "So you learn about things like the weather, which is obviously really important and also the tides, as well as learning basic sailing skills"
            },
            {
              "number": 3,
              "prompt": "Basic sailing skills including _______ information",
              "answer": [
                "safety"
              ],
              "wordLimit": 1,
              "explanation": "He or she will make sure you understand everything you need to know about safety"
            },
            {
              "number": 4,
              "prompt": "Other information: _______ available for club members",
              "answer": [
                "discount"
              ],
              "wordLimit": 1,
              "explanation": "£200. But it’s a bit cheaper if you decide to join the club. There’s a discount for members"
            },
            {
              "number": 5,
              "prompt": "All inclusive (plus a useful _______)",
              "answer": [
                "dictionary"
              ],
              "wordLimit": 1,
              "explanation": "Yes, everything’s included and you also get a really good dictionary explaining all the sailing terminology"
            },
            {
              "number": 6,
              "prompt": "A _______ at the end of the course for all participants",
              "answer": [
                "certificate"
              ],
              "wordLimit": 1,
              "explanation": "And on completion of the course you get a certificate"
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Participants must be able to swim."
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
              "number": 7,
              "prompt": "Bring suitable clothing, a _______ and toiletries (e.g. shampoo).",
              "answer": [
                "towel"
              ],
              "wordLimit": 1,
              "explanation": "MAN: And a towel? WOMAN: Yes definitely"
            },
            {
              "number": 8,
              "prompt": "There is a _______ at the club.",
              "answer": [
                "caf"
              ],
              "wordLimit": 1,
              "explanation": "é / cafe MAN: OK. What about food and drink? Do I need to bring that or is there a café at the club? WOMAN: Yes, you can get sandwiches, cakes and snacks there"
            },
            {
              "number": 9,
              "prompt": "Online training _______ are recommended.",
              "answer": [
                "videos"
              ],
              "wordLimit": 1,
              "explanation": "I recommend you watch some videos we use for training. They’re available online. I can send you the link. They’ll give you an idea of what to expect"
            },
            {
              "number": 10,
              "prompt": "_______ are available for course participants.",
              "answer": [
                "Lockers"
              ],
              "wordLimit": 1,
              "explanation": "I’m just wondering if there are lockers for people to use? WOMAN: Yes, there are plenty in the changing rooms"
            }
          ],
          "formTitle": "General information",
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
              "prompt": "What should trainees always expect to get when working on low budget short films?",
              "options": [
                {
                  "key": "A",
                  "text": "travel expenses"
                },
                {
                  "key": "B",
                  "text": "a minimum wage"
                },
                {
                  "key": "C",
                  "text": "meals"
                }
              ],
              "answer": "A",
              "explanation": "Make sure your transport costs are covered - and remember, there’s very unlikely to be any catering provided, so bring plenty of food"
            },
            {
              "number": 12,
              "prompt": "According to the speaker, on big budget films trainees may get experience of",
              "options": [
                {
                  "key": "A",
                  "text": "makeup for special effects."
                },
                {
                  "key": "B",
                  "text": "working with different ethnicities."
                },
                {
                  "key": "C",
                  "text": "creating a variety of hair styles."
                }
              ],
              "answer": "B",
              "explanation": "But you’re likely to get the opportunity to work with a range of age groups, as well as different ethnicities"
            },
            {
              "number": 13,
              "prompt": "The speaker says a problem for makeup artists is",
              "options": [
                {
                  "key": "A",
                  "text": "dealing with difficult directors."
                },
                {
                  "key": "B",
                  "text": "being shouted at by their supervisor."
                },
                {
                  "key": "C",
                  "text": "waiting around for hours doing nothing."
                }
              ],
              "answer": "A",
              "explanation": "It can be stressful but you’ll see that the top makeup artists are very professional - even when they’re having to work with directors who are impatient, or unhappy with the makeup artist’s work"
            },
            {
              "number": 14,
              "prompt": "How did the speaker feel when she met famous actors for the first time?",
              "options": [
                {
                  "key": "A",
                  "text": "very shy"
                },
                {
                  "key": "B",
                  "text": "very proud"
                },
                {
                  "key": "C",
                  "text": "very disappointed"
                }
              ],
              "answer": "A",
              "explanation": "At first, I found it overwhelming and could hardly speak. I was so in awe"
            },
            {
              "number": 15,
              "prompt": "What advice does the speaker give about makeup kits?",
              "options": [
                {
                  "key": "A",
                  "text": "Always carry a basic kit with you."
                },
                {
                  "key": "B",
                  "text": "Only buy the best products for a makeup kit."
                },
                {
                  "key": "C",
                  "text": "Ask other makeup artists to check your kit."
                }
              ],
              "answer": "A",
              "explanation": "Every makeup trainee will need a makeup kit, which they’ll be expected to have with them at all times. Just the essentials will do for the kinds of tasks you’ll be given - it won’t be anything complicated"
            },
            {
              "number": 16,
              "prompt": "What advice does the speaker give about creating a portfolio?",
              "options": [
                {
                  "key": "A",
                  "text": "Keep print and digital photos."
                },
                {
                  "key": "B",
                  "text": "Only include a small selection of photos."
                },
                {
                  "key": "C",
                  "text": "Get permission to use photos."
                }
              ],
              "answer": "C",
              "explanation": "But remember you’ll need to get approval from the makeup designer in charge of the department"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 17–20",
          "instructions": "What ability is required for each of the following duties? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "being well-organised"
            },
            {
              "key": "B",
              "text": "being flexible"
            },
            {
              "key": "C",
              "text": "working quickly"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Prepping an actor",
              "answer": "C",
              "explanation": "But sometimes you’ll need to step in and get this done without wasting any time, otherwise the makeup artist will get behind schedule"
            },
            {
              "number": 18,
              "prompt": "Continuity",
              "answer": "A",
              "explanation": "Trainees play a useful role in continuity. It will be your responsibility to take photos, log them digitally and print out a hard copy to put in each actor’s file. This information needs to be kept in good order as a reshoot can mean replicating makeup months later"
            },
            {
              "number": 19,
              "prompt": "General",
              "answer": "B",
              "explanation": "General duties mean doing anything from getting the teas and coffees to putting on a wash. Having a positive attitude and being willing to do whatever is asked of you will help you get your next film job"
            },
            {
              "number": 20,
              "prompt": "Applying makeup",
              "answer": "C",
              "explanation": "If there are dozens of extras involved you’ll need to keep up a swift pace and not spend too long on each person"
            }
          ],
          "id": "g17"
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
          "instructions": "Choose TWO letters, A–E. Which TWO features of the lecture on ocean biodiversity had the greatest impact on the students?",
          "options": [
            {
              "key": "A",
              "text": "the references to local problems"
            },
            {
              "key": "B",
              "text": "the broad focus of the examples"
            },
            {
              "key": "C",
              "text": "the practical suggestions for solutions"
            },
            {
              "key": "D",
              "text": "the type of issues discussed"
            },
            {
              "key": "E",
              "text": "the implications for government policy"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO features of the lecture on ocean biodiversity had the greatest impact on the students?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "LUCY: Yeah. I learned a lot from her about ocean biodiversity. I’ve already done some reading on it, and I did an assignment on some of the problems associated with it last year, but I especially liked the way her lecture focused on more long-term issues. PHIL: Yes, things that aren’t currently receiving widespread attention but are likely to be important in the future. That impressed me too PHIL: Mm. But that’s just at a national level. The examples she gave were at a more global level, and they really made it clear to me just how wide-ranging the threats to ocean biodiversity are. LUCY: Yes, me too"
            },
            {
              "number": 22,
              "prompt": "Which TWO features of the lecture on ocean biodiversity had the greatest impact on the students?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "LUCY: Yeah. I learned a lot from her about ocean biodiversity. I’ve already done some reading on it, and I did an assignment on some of the problems associated with it last year, but I especially liked the way her lecture focused on more long-term issues. PHIL: Yes, things that aren’t currently receiving widespread attention but are likely to be important in the future. That impressed me too PHIL: Mm. But that’s just at a national level. The examples she gave were at a more global level, and they really made it clear to me just how wide-ranging the threats to ocean biodiversity are. LUCY: Yes, me too"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO details about the research project particularly impressed the students?",
          "options": [
            {
              "key": "A",
              "text": "the team's previous successes"
            },
            {
              "key": "B",
              "text": "its wide geographical scale"
            },
            {
              "key": "C",
              "text": "the use of new technology"
            },
            {
              "key": "D",
              "text": "the extensive statistical evidence"
            },
            {
              "key": "E",
              "text": "the large range of specialists involved"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO details about the research project particularly impressed the students?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "PHIL: The research project she described was impressive, wasn’t it? I’d have thought it was quite unusual to have so many experts working together. LUCY: Yeah, and from such different backgrounds PHIL: Mm. And the description of improvements in systems used for tracking marine animals and things like robots were really interesting. LUCY: Yes, and her description of how robotics can be used to investigate threats to biodiversity"
            },
            {
              "number": 24,
              "prompt": "Which TWO details about the research project particularly impressed the students?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "PHIL: The research project she described was impressive, wasn’t it? I’d have thought it was quite unusual to have so many experts working together. LUCY: Yeah, and from such different backgrounds PHIL: Mm. And the description of improvements in systems used for tracking marine animals and things like robots were really interesting. LUCY: Yes, and her description of how robotics can be used to investigate threats to biodiversity"
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What is the students' opinion of each of the following resources related to ocean biodiversity? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "This is aimed at a very specialist audience."
            },
            {
              "key": "B",
              "text": "This is now rather outdated."
            },
            {
              "key": "C",
              "text": "This was an effective description of a new danger."
            },
            {
              "key": "D",
              "text": "This suggests possible ways to improve the situation."
            },
            {
              "key": "E",
              "text": "This does not give a balanced account."
            },
            {
              "key": "F",
              "text": "This is too predictable to be useful."
            },
            {
              "key": "G",
              "text": "This gives insufficient evidence for its claims."
            },
            {
              "key": "H",
              "text": "This gives a clear explanation of the problems."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Article on invasive lionfish",
              "answer": "G",
              "explanation": "Well, the writer went on about how dangerous they were in environmental terms, which is probably true, but he didn’t really provide much information to explain why"
            },
            {
              "number": 26,
              "prompt": "Documentary on microplastics",
              "answer": "B",
              "explanation": "PHIL: I watched the documentary on microplastics, at least I started to, but then I found it was made ten years ago so I gave up. LUCY: I watched to the end but you’re right, it was showing its age"
            },
            {
              "number": 27,
              "prompt": "Podcast on ocean pollution",
              "answer": "F",
              "explanation": "LUCY: Mm. I didn’t get anything out of it though. Most of it was stating the obvious. PHIL: Yes, it mentioned pesticides and plastic and things, and it clearly made the point that they were a bad thing, but everybody knows that anyway"
            },
            {
              "number": 28,
              "prompt": "Book on coastal ecosystems",
              "answer": "H",
              "explanation": "LUCY: The one by John Harper? Yes, I found it hard going at first, it went into a lot of detail about things like the effects of offshore windfarms and fish farms, but actually I ended up with a much better understanding of the issues. PHIL: Yes, I agree and I thought it was a well-written summary of those. And the diagrams helped a lot too"
            },
            {
              "number": 29,
              "prompt": "Article on metal toxicity",
              "answer": "A",
              "explanation": "LUCY: The article on metal toxicity was way above my head, I didn’t know anything about how metals from industrial emissions react in the ocean and I still don’t understand it. PHIL: I gave up reading after the first chapter - I just couldn’t follow it"
            },
            {
              "number": 30,
              "prompt": "Podcast on floating marine cities",
              "answer": "E",
              "explanation": "That podcast on floating marine cities was interesting, though it presented a rather one-sided picture, I thought. PHIL: Yes, it focused on how this would benefit people and ignored the effects on the environment"
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
              "kind": "subheader",
              "text": "Natural rubber"
            },
            {
              "kind": "static",
              "text": "This mainly comes from the Pará rubber tree, now cultivated in South-East Asia. The supply is limited because the growth of the tree is"
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": ". production cannot easily be adjusted because of increasing or decreasing",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": ". the tree only grows near the"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": ". extracting the latex (rubber) is labour-intensive it is very difficult to",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "rubber after production.",
              "noBullet": true
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
              "text": "An alternative source of natural rubber"
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
              "prompt": "Three resources which are essential for industrial civilisation _______ fossil fuels rubber",
              "answer": [
                "metal"
              ],
              "wordLimit": 1,
              "explanation": "(s) There are three types of natural resource without which industry could not exist. One of these is metal - without that we’d have no machines and no transportation. Another is fossil fuels, which we need to power those machines. But there’s a third resource that’s essential to connect the different parts of a machine together with belts and pipes and shock absorbers, and that is rubber"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "slow"
              ],
              "wordLimit": 1,
              "explanation": "It can take eight to ten years for a tree to start producing rubber, so cultivating them’s a slow process"
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "demand"
              ],
              "wordLimit": 1,
              "explanation": "With most crops, farmers don’t have to think very far ahead, so they can easily change what crop they produce, or how much of a crop they produce, if they find the demand for that crop is rising or falling"
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "equator"
              ],
              "wordLimit": 1,
              "explanation": "The result is that it can’t be grown in the northern or southern parts of the globe, only around the equator"
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "recycle"
              ],
              "wordLimit": 1,
              "explanation": "With other resources such as water and glass, when we’ve finished using them we can recycle them, but although this is also possible with rubber, it’s very difficult, so that also reduces the amount we have available"
            },
            {
              "number": 36,
              "prompt": "New threats include lack of genetic diversity, leading to danger of disease caused by a _______",
              "answer": [
                "fungus"
              ],
              "wordLimit": 1,
              "explanation": "The most dangerous threat is a fungus, which destroyed large numbers of rubber trees in Brazil, and which could cause devastation to plantations worldwide"
            },
            {
              "number": 37,
              "prompt": ". a shift to the cultivation of palm oil extreme _______ events.",
              "answer": [
                "weather"
              ],
              "wordLimit": 1,
              "explanation": "And finally, in recent years South-East Asia, like other parts of the world, has been repeatedly hit by extreme types of weather, and this looks likely to continue in the future"
            },
            {
              "number": 38,
              "prompt": "Synthetic rubber may be used for engine parts and cooking utensils is less _______ than natural rubber is unsuitable for many purposes e.g. the tyres of aircraft.",
              "answer": [
                "strong"
              ],
              "wordLimit": 1,
              "explanation": "But compared with natural rubber, it’s not anything like as strong, and this means it can’t replace natural rubber in other products"
            },
            {
              "number": 39,
              "prompt": "A wild flower (a type of dandelion) has rubber in its _______ .",
              "answer": [
                "roots"
              ],
              "wordLimit": 1,
              "explanation": "But when it’s pulled up and its roots cut open, they’re found to contain rubber"
            },
            {
              "number": 40,
              "prompt": "It can be grown in many locations and does not require good _______ .",
              "answer": [
                "soil"
              ],
              "wordLimit": 1,
              "explanation": "They’ll grow in all sorts of places, and they don’t need rich soil"
            }
          ],
          "formTitle": "Sources of rubber",
          "id": "g31"
        }
      ]
    }
  ]
}
$c21t1l$,
  true
);
