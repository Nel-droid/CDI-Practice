DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 16',
  'Test 1',
  'academic',
  2004,
  $c16t1l$
{
  "audioPath": "Cambridge 16 Test 1.mp3",
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
              "text": "Tiny Engineers (ages 4-5)"
            },
            {
              "kind": "subheader",
              "text": "Activities"
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
              "kind": "subheader",
              "text": "Junior Engineers (ages 6-8)"
            },
            {
              "kind": "static",
              "text": "Activities:"
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
              "kind": "question",
              "number": 7
            },
            {
              "kind": "subheader",
              "text": "Cost for a five-week block: £50"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "Location"
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
              "prompt": "Create a cover for an _______ so they can drop it from a height without breaking it.",
              "answer": [
                "egg"
              ],
              "wordLimit": 1,
              "explanation": "For example, they work together to design a special cover that goes round an egg, so that when it’s inside they can drop it from a height and it doesn’t break"
            },
            {
              "number": 2,
              "prompt": "Take part in a competition to build the tallest _______ .",
              "answer": [
                "tower"
              ],
              "wordLimit": 1,
              "explanation": "Well, they have a competition to see who can make the highest tower."
            },
            {
              "number": 3,
              "prompt": "Make a _______ powered by a balloon.",
              "answer": [
                "car"
              ],
              "wordLimit": 1,
              "explanation": "For example, one thing they do is to design and build a car that’s attached to a balloon, and the force of the air in that actually powers the car and makes it move along."
            },
            {
              "number": 4,
              "prompt": "Build model cars, trucks and _______ and learn how to program them so they can move.",
              "answer": [
                "animals"
              ],
              "wordLimit": 1,
              "explanation": "but also how to construct animals using the same sorts of material and technique"
            },
            {
              "number": 5,
              "prompt": "Take part in a competition to build the longest _______ using card and wood.",
              "answer": [
                "bridge"
              ],
              "wordLimit": 1,
              "explanation": "Yes, with the Junior Engineers, it’s to use recycled materials like card and wood to build a bridge, and the longest one gets a prize."
            },
            {
              "number": 6,
              "prompt": "Create a short _______ with special software.",
              "answer": [
                "movie"
              ],
              "wordLimit": 1,
              "explanation": "/ film Then they have something a bit different, which is to think up an idea for a five-minute movie and then film it, using special animation software."
            },
            {
              "number": 7,
              "prompt": "Build, _______ and program a humanoid robot.",
              "answer": [
                "decorate"
              ],
              "wordLimit": 1,
              "explanation": "And then they also build a robot in the shape of a human, and they decorate it and program it so that it can move its arms and legs."
            },
            {
              "number": 8,
              "prompt": "Held on _______ from 10 am to 11 am",
              "answer": [
                "Wednesdays"
              ],
              "wordLimit": 1,
              "explanation": "They used to be, but we found it didn’t give our staff enough time to clear up after the first workshop, so we moved them to Wednesdays."
            },
            {
              "number": 9,
              "prompt": "Building 10A, _______ Industrial Estate, Grasford",
              "answer": [
                "Fradstone"
              ],
              "wordLimit": 1,
              "explanation": "They’re in building 10A - there’s a big sign on the door, you can’t miss it, and that’s in Fradstone Industrial Estate."
            },
            {
              "number": 10,
              "prompt": "Plenty of _______ is available.",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "And will I have any parking problems there?"
            }
          ],
          "formTitle": "Children’s Engineering Workshops",
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
              "prompt": "Stevenson’s was founded in",
              "options": [
                {
                  "key": "A",
                  "text": "1923."
                },
                {
                  "key": "B",
                  "text": "1924."
                },
                {
                  "key": "C",
                  "text": "1926."
                }
              ],
              "answer": "C",
              "explanation": "He set up this company when he finished his apprenticeship, in 1926"
            },
            {
              "number": 12,
              "prompt": "Originally, Stevenson’s manufactured goods for",
              "options": [
                {
                  "key": "A",
                  "text": "the healthcare industry."
                },
                {
                  "key": "B",
                  "text": "the automotive industry."
                },
                {
                  "key": "C",
                  "text": "the machine tools industry."
                }
              ],
              "answer": "A",
              "explanation": "Stevenson was given the opportunity to make goods for hospitals and other players in the healthcare industry, so that’s what we did for the first five years."
            },
            {
              "number": 13,
              "prompt": "What does the speaker say about the company premises?",
              "options": [
                {
                  "key": "A",
                  "text": "The company has recently moved."
                },
                {
                  "key": "B",
                  "text": "The company has no plans to move."
                },
                {
                  "key": "C",
                  "text": "The company is going to move shortly."
                }
              ],
              "answer": "B",
              "explanation": "so moving to a new location has never been necessary."
            },
            {
              "number": 14,
              "prompt": "The programme for the work experience group includes",
              "options": [
                {
                  "key": "A",
                  "text": "time to do research."
                },
                {
                  "key": "B",
                  "text": "meetings with a teacher."
                },
                {
                  "key": "C",
                  "text": "talks by staff."
                }
              ],
              "answer": "C",
              "explanation": "Most mornings you’ll have a presentation from one of the managers"
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Label the map below. Write the correct letter, A–J, next to Questions 15–20.",
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
            },
            {
              "key": "I",
              "text": "I"
            },
            {
              "key": "J",
              "text": "J"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "coffee room",
              "answer": "H",
              "explanation": "if you go along that, the door facing you at the end is the entrance to the coffee room. This looks out onto the main road on one side, and some trees on the other"
            },
            {
              "number": 16,
              "prompt": "warehouse",
              "answer": "C",
              "explanation": "Next to it is the warehouse, which can be accessed by lorries going up the road to the turning area at the end. You can get to the warehouse by crossing to the far side of the courtyard, and then the door is on your right."
            },
            {
              "number": 17,
              "prompt": "staff canteen",
              "answer": "G",
              "explanation": "Somewhere you’ll be keen to find is the staff canteen. This is right next to reception. I can confidently say that the food’s very good, but the view isn’t. The windows on one side look onto a corridor and courtyard, which aren’t very attractive at all, and on the other onto the access road, which isn’t much better."
            },
            {
              "number": 18,
              "prompt": "meeting room",
              "answer": "B",
              "explanation": "You’ll be using the meeting room quite often, and you’ll find it by walking along the corridor to the left of the courtyard, and continuing along it to the end. The meeting room is the last one on the right, and I’m afraid there’s no natural daylight in the room."
            },
            {
              "number": 19,
              "prompt": "human resources",
              "answer": "I",
              "explanation": "The human resources department is all the front of this building, so you head to the left along the corridor from reception, and it’s the second room you come to. It looks out onto the main road."
            },
            {
              "number": 20,
              "prompt": "boardroom",
              "answer": "A",
              "explanation": "And finally, the boardroom, where you’ll be meeting sometimes. That has quite a pleasant view, as it looks out on to the trees. Go along the corridor past the courtyard, right to the end. The boardroom is on the left, next to the factory."
            }
          ],
          "mapImage": "Cambridge 16 Test 1 map.png",
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
          "instructions": "Choose TWO letters, A–E. Which TWO parts of the introductory stage to their art projects do Jess and Tom agree were useful?",
          "options": [
            {
              "key": "A",
              "text": "the Bird Park visit"
            },
            {
              "key": "B",
              "text": "the workshop sessions"
            },
            {
              "key": "C",
              "text": "the Natural History Museum visit"
            },
            {
              "key": "D",
              "text": "the projects done in previous years"
            },
            {
              "key": "E",
              "text": "the handouts with research sources"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO parts of the introductory stage to their art projects do Jess and Tom agree were useful?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "When they gave us all those handouts with details of books and websites to look at, I was really put off, but the more I read, the more interested I got. Much less use than the trip to the Natural History Museum."
            },
            {
              "number": 22,
              "prompt": "Which TWO parts of the introductory stage to their art projects do Jess and Tom agree were useful?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "When they gave us all those handouts with details of books and websites to look at, I was really put off, but the more I read, the more interested I got. Much less use than the trip to the Natural History Museum."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. In which TWO ways do both Jess and Tom decide to change their proposals?",
          "options": [
            {
              "key": "A",
              "text": "by giving a rationale for their action plans"
            },
            {
              "key": "B",
              "text": "by being less specific about the outcome"
            },
            {
              "key": "C",
              "text": "by adding a video diary presentation"
            },
            {
              "key": "D",
              "text": "by providing a timeline and a mind map"
            },
            {
              "key": "E",
              "text": "by making their notes more evaluative"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "In which TWO ways do both Jess and Tom decide to change their proposals?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "I haven’t actually evaluated anything. So I’ll have to fix that Someone told me it’s best not to be too precise about your actual outcome at this stage, so you have more scope to explore your ideas later on. So I’m going to do back to my proposal to make it a bit more vague."
            },
            {
              "number": 24,
              "prompt": "In which TWO ways do both Jess and Tom decide to change their proposals?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "I haven’t actually evaluated anything. So I’ll have to fix that Someone told me it’s best not to be too precise about your actual outcome at this stage, so you have more scope to explore your ideas later on. So I’m going to do back to my proposal to make it a bit more vague."
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "Which personal meaning do the students decide to give to each of the following pictures? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "a childhood memory"
            },
            {
              "key": "B",
              "text": "hope for the future"
            },
            {
              "key": "C",
              "text": "fast movement"
            },
            {
              "key": "D",
              "text": "a potential threat"
            },
            {
              "key": "E",
              "text": "the power of colour"
            },
            {
              "key": "F",
              "text": "the continuity of life"
            },
            {
              "key": "G",
              "text": "protection of nature"
            },
            {
              "key": "H",
              "text": "a confused attitude to nature"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Falcon (Landseer)",
              "answer": "D",
              "explanation": "You could talk about the possible danger suggested by the bird’s look."
            },
            {
              "number": 26,
              "prompt": "Fish hawk (Audubon)",
              "answer": "C",
              "explanation": "Well actually I think I’ll concentrate on the impression of rapid motion it gives."
            },
            {
              "number": 27,
              "prompt": "Kingfisher (van Gogh)",
              "answer": "A",
              "explanation": "I’ve actually chosen it because I saw a real kingfisher once when I was litter, I was out walking with my grandfather, and I’ve never forgotten it."
            },
            {
              "number": 28,
              "prompt": "Portrait of William Wells",
              "answer": "H",
              "explanation": "To me it’s about how ambiguous people are in the way they exploit the natural world."
            },
            {
              "number": 29,
              "prompt": "Vairumati (Gauguin)",
              "answer": "F",
              "explanation": "Apparently, it’s a reference to the never-ending cycle of existence."
            },
            {
              "number": 30,
              "prompt": "Portrait of Giovanni de Medici",
              "answer": "G",
              "explanation": "I chose a portrait of a little boy, Giovanni de Medici. He’s holding a tiny bird in one fist. I like the way he’s holding it carefully so he doesn’t hurt it."
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
              "text": "Ancient Stoics"
            },
            {
              "kind": "static",
              "text": "Stoicism was founded over 2,000 years ago in Greece."
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "subheader",
              "text": "Stoic principles"
            },
            {
              "kind": "static",
              "text": "Happiness could be achieved by leading a virtuous life."
            },
            {
              "kind": "static",
              "text": "Controlling emotions was essential."
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
              "kind": "subheader",
              "text": "The influence of Stoicism"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "The French artist Delacroix was a Stoic."
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "Some of today’s political leaders are inspired by the Stoics."
            },
            {
              "kind": "subheader",
              "text": "Cognitive Behaviour Therapy (CBT)"
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
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "Relevance of Stoicism"
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "It teaches people that having a strong character is more important than anything else."
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Stoicism is still relevant today because of its _______ appeal.",
              "answer": [
                "practical"
              ],
              "wordLimit": 1,
              "explanation": "Specifically, I am referring to Stoicism, which, in my opinion, is the most practical of all philosophies and therefore the most appealing."
            },
            {
              "number": 32,
              "prompt": "The Stoics’ ideas are surprisingly well known, despite not being intended for _______",
              "answer": [
                "publication"
              ],
              "wordLimit": 1,
              "explanation": "Amazingly, we still have access to these ideas, despite the fact that the most famous Stoics never wrote anything down for publication."
            },
            {
              "number": 33,
              "prompt": "Epictetus said that external events cannot be controlled but the _______ people make in response can be controlled.",
              "answer": [
                "choices"
              ],
              "wordLimit": 1,
              "explanation": "In the words of Epictetus: “external events I cannot control, but the choices I make with regard to them, I do control”."
            },
            {
              "number": 34,
              "prompt": "A Stoic is someone who has a different view on experiences which others would consider as _______ .",
              "answer": [
                "negative"
              ],
              "wordLimit": 1,
              "explanation": "The modern day philosopher and writer Nassim Nicholas Taleb defines a Stoic as someone who has a different perspective on experience which most of us would see as wholly negative"
            },
            {
              "number": 35,
              "prompt": "George Washington organised a _______ about Cato to motivate his men.",
              "answer": [
                "play"
              ],
              "wordLimit": 1,
              "explanation": "George Washington was introduced to Stoicism by his neighbours at age seventeen, and later, put on a play based on the life of Cato to inspire his men."
            },
            {
              "number": 36,
              "prompt": "Adam Smith’s ideas on _______ were influenced by Stoicism.",
              "answer": [
                "capitalism"
              ],
              "wordLimit": 1,
              "explanation": "The economist Adam Smith’s theories on capitalism were significantly influenced by the Stoicism that he studied as a schoolboy, under a teacher who had translated Marcus Aurelius’ works."
            },
            {
              "number": 37,
              "prompt": "- the treatment for _______ is based on ideas from Stoicism",
              "answer": [
                "depression"
              ],
              "wordLimit": 1,
              "explanation": "who invented Cognitive Behaviour Therapy"
            },
            {
              "number": 38,
              "prompt": "- people learn to base their thinking on _______ .",
              "answer": [
                "logic"
              ],
              "wordLimit": 1,
              "explanation": "It’s most commonly used to treat depression. The idea is that we can take control of our lives by challenging the irrational belief that create our faulty thinking, symptoms and behaviours by using logic instead."
            },
            {
              "number": 39,
              "prompt": "In business, people benefit from Stoicism by identifying obstacles as _______",
              "answer": [
                "opportunity"
              ],
              "wordLimit": 1,
              "explanation": "Stoic principles can build the resilience and state of mind required to overcome setbacks because Stoics teach turning obstacles into opportunity."
            },
            {
              "number": 40,
              "prompt": "It requires a lot of _______ but Stoicism can help people to lead a good life.",
              "answer": [
                "practice"
              ],
              "wordLimit": 1,
              "explanation": "/ practise I would argue that study Stoicism is as relevant today as it was 2,000 years ago, thanks to its brilliant insights into how to lead a good life."
            }
          ],
          "formTitle": "Stoicism",
          "id": "g31"
        }
      ]
    }
  ]
}
$c16t1l$,
  true
);
