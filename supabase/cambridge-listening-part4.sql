-- Cambridge Listening — Part 4 of 6: books 16 & 17 (8 tests).
-- Paste this whole file into the Supabase SQL editor and Run.

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

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 16',
  'Test 3',
  'academic',
  2004,
  $c16t3l$
{
  "audioPath": "Cambridge 16 Test 3.mp3",
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
              "text": "The course focuses on skills and safety"
            },
            {
              "kind": "static",
              "text": "Charlie would be placed in Level 5."
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Instructors"
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
              "text": "Classes"
            },
            {
              "kind": "static",
              "text": "The size of the classes is limited."
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
              "text": "Day 1"
            },
            {
              "kind": "static",
              "text": "Charlie should arrive at 9.20 am on the first day."
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
              "kind": "subheader",
              "text": "Cost"
            },
            {
              "kind": "static",
              "text": "The course costs $10 per week."
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "First of all, children at this level are taken to practise in a _______ .",
              "answer": [
                "park"
              ],
              "wordLimit": 1,
              "explanation": "They start off practising on the site here, and we aim to get them riding on the road, but first they’re taken to ride in the park, away from the traffic."
            },
            {
              "number": 2,
              "prompt": "Instructors wear _______ shirts.",
              "answer": [
                "blue"
              ],
              "wordLimit": 1,
              "explanation": "Then the instructors themselves are in blue shirts, and one of these is responsible for each class."
            },
            {
              "number": 3,
              "prompt": "A _______ is required and training is given.",
              "answer": [
                "reference"
              ],
              "wordLimit": 1,
              "explanation": "In order to be accepted, all our instructors have to submit a reference from someone who’s seen them work with children"
            },
            {
              "number": 4,
              "prompt": "There are quiet times during the morning for a _______ or a game.",
              "answer": [
                "story"
              ],
              "wordLimit": 1,
              "explanation": "They’re out riding most of the time but they have quiet times too, where their instructor might tell them a story that’s got something to do with cycling, or get them to play a game together."
            },
            {
              "number": 5,
              "prompt": "Classes are held even if there is _______ .",
              "answer": [
                "rain"
              ],
              "wordLimit": 1,
              "explanation": "Now, what happens if there’s rain? Do the classes still run?"
            },
            {
              "number": 6,
              "prompt": "What to bring a change of clothing a _______ shoes (not sandals)",
              "answer": [
                "snack"
              ],
              "wordLimit": 1,
              "explanation": "And a snack for break time."
            },
            {
              "number": 7,
              "prompt": "Charlie’s _______",
              "answer": [
                "medication"
              ],
              "wordLimit": 1,
              "explanation": "And just at present Charlie has to take medication every few hours, so I’ll make sure he has that."
            },
            {
              "number": 8,
              "prompt": "Before the class, his _______ will be checked.",
              "answer": [
                "helmet"
              ],
              "wordLimit": 1,
              "explanation": "The most important is that we have a very careful check to make sure that every child’s helmet fits properly."
            },
            {
              "number": 9,
              "prompt": "He should then go to the _______ to meet his class instructor.",
              "answer": [
                "tent"
              ],
              "wordLimit": 1,
              "explanation": "Then after that, all the instructors will be waiting to meet their classes, and they’ll meet up in the tent"
            },
            {
              "number": 10,
              "prompt": "_______ [10]",
              "answer": [
                "199"
              ],
              "wordLimit": 1,
              "explanation": "One hundred ninety-nine dollars"
            }
          ],
          "formTitle": "JUNIOR CYCLE CAMP",
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
          "instructions": "Choose TWO letters, A–E. According to Megan, what are the TWO main advantages of working in the agriculture and horticulture sectors?",
          "options": [
            {
              "key": "A",
              "text": "the active lifestyle"
            },
            {
              "key": "B",
              "text": "the above-average salaries"
            },
            {
              "key": "C",
              "text": "the flexible working opportunities"
            },
            {
              "key": "D",
              "text": "the opportunities for overseas travel"
            },
            {
              "key": "E",
              "text": "the chance to be in a natural environment"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "According to Megan, what are the TWO main advantages of working in the agriculture and horticulture sectors?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "For a start, they often offer opportunities for those who don’t want to be stuck with a 40-hour week, but need to juggle work with other responsibilities such as child care But there are certainly health benefits, especially in jobs where you’re not sitting all day looking at a screen"
            },
            {
              "number": 12,
              "prompt": "According to Megan, what are the TWO main advantages of working in the agriculture and horticulture sectors?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "For a start, they often offer opportunities for those who don’t want to be stuck with a 40-hour week, but need to juggle work with other responsibilities such as child care But there are certainly health benefits, especially in jobs where you’re not sitting all day looking at a screen"
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 13–14",
          "instructions": "Choose TWO letters, A–E. Which TWO of the following are likely to be disadvantages for people working outdoors?",
          "options": [
            {
              "key": "A",
              "text": "the increasing risk of accidents"
            },
            {
              "key": "B",
              "text": "being in a very quiet location"
            },
            {
              "key": "C",
              "text": "difficult weather conditions at times"
            },
            {
              "key": "D",
              "text": "the cost of housing"
            },
            {
              "key": "E",
              "text": "the level of physical fitness required"
            }
          ],
          "questions": [
            {
              "number": 13,
              "prompt": "Which TWO of the following are likely to be disadvantages for people working outdoors?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "but can be extremely unpleasant when it’s cold and windy But if you like a lively city environment surrounded by lots of people, these jobs are probably not for you - they’re often in pretty remote areas."
            },
            {
              "number": 14,
              "prompt": "Which TWO of the following are likely to be disadvantages for people working outdoors?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "but can be extremely unpleasant when it’s cold and windy But if you like a lively city environment surrounded by lots of people, these jobs are probably not for you - they’re often in pretty remote areas."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "What information does Megan give about each of the following job opportunities? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "not a permanent job"
            },
            {
              "key": "B",
              "text": "involves leading a team"
            },
            {
              "key": "C",
              "text": "experience not essential"
            },
            {
              "key": "D",
              "text": "intensive work but also fun"
            },
            {
              "key": "E",
              "text": "chance to earn more through overtime"
            },
            {
              "key": "F",
              "text": "chance for rapid promotion"
            },
            {
              "key": "G",
              "text": "accommodation available"
            },
            {
              "key": "H",
              "text": "local travel involved"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "Fresh food commercial manager",
              "answer": "D",
              "explanation": "They operate in a very fast-paced environment with low profit margins - the staff there work hard, but they play hard as well, so if you’ve a sociable personality this may be for you."
            },
            {
              "number": 16,
              "prompt": "Agronomist",
              "answer": "F",
              "explanation": "There are good opportunities for the right person to quickly make their way up the career ladder"
            },
            {
              "number": 17,
              "prompt": "Fresh produce buyer",
              "answer": "A",
              "explanation": "A leading supermarket is looking for a fresh produce buyer who is available for a 12-month maternity cover contract."
            },
            {
              "number": 18,
              "prompt": "Garden centre sales manager",
              "answer": "H",
              "explanation": "We have also received a request for a sales manager for a chain of garden centres. You will be visiting centres in the region to ensure their high levels of customer service are maintained."
            },
            {
              "number": 19,
              "prompt": "Tree technician",
              "answer": "C",
              "explanation": "A year’s experience would be preferred but the company might be prepared to consider someone who has just completed an appropriate training course."
            },
            {
              "number": 20,
              "prompt": "Farm worker",
              "answer": "G",
              "explanation": "Perks of the job include the possibility of renting a small cottage on the estate, and the chance to earn a competitive salary. A driving licence and tractor driving experience are essential."
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
          "instructions": "Choose TWO letters, A–E. Which TWO points does Adam make about his experiment on artificial sweeteners?",
          "options": [
            {
              "key": "A",
              "text": "The results were what he had predicted."
            },
            {
              "key": "B",
              "text": "The experiment was simple to set up"
            },
            {
              "key": "C",
              "text": "A large sample of people was tested."
            },
            {
              "key": "D",
              "text": "The subjects were unaware of what they were drinking."
            },
            {
              "key": "E",
              "text": "The test was repeated several times for each person."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO points does Adam make about his experiment on artificial sweeteners?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "It took me ages to decide exactly how I’d organise it, especially how I could make sure that people didn’t know which drink I was giving them. It was hard to keep track of it all, especially as I had so many people doing it"
            },
            {
              "number": 22,
              "prompt": "Which TWO points does Adam make about his experiment on artificial sweeteners?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "It took me ages to decide exactly how I’d organise it, especially how I could make sure that people didn’t know which drink I was giving them. It was hard to keep track of it all, especially as I had so many people doing it"
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO problems did Rosie have when measuring the fat content of nuts?",
          "options": [
            {
              "key": "A",
              "text": "She used the wrong sort of nuts."
            },
            {
              "key": "B",
              "text": "She used an unsuitable chemical."
            },
            {
              "key": "C",
              "text": "She did not grind the nuts finely enough."
            },
            {
              "key": "D",
              "text": "The information on the nut package was incorrect."
            },
            {
              "key": "E",
              "text": "The weighing scales may have been unsuitable."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO problems did Rosie have when measuring the fat content of nuts?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "I think I should probably have ground up the nuts more than I did. It’s possible that the scales for weighing the fat weren’t accurate enough, too."
            },
            {
              "number": 24,
              "prompt": "Which TWO problems did Rosie have when measuring the fat content of nuts?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "I think I should probably have ground up the nuts more than I did. It’s possible that the scales for weighing the fat weren’t accurate enough, too."
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
              "prompt": "Adam suggests that restaurants could reduce obesity if their menus",
              "options": [
                {
                  "key": "A",
                  "text": "offered fewer options."
                },
                {
                  "key": "B",
                  "text": "had more low-calorie foods."
                },
                {
                  "key": "C",
                  "text": "were organised in a particular way."
                }
              ],
              "answer": "C",
              "explanation": "So, if you put the low-calorie items at the beginning and end of the menu, people will probably go for the food with fewer calories, without even realising what they’re doing."
            },
            {
              "number": 26,
              "prompt": "The students agree that food manufacturers deliberately",
              "options": [
                {
                  "key": "A",
                  "text": "make calorie counts hard to understand."
                },
                {
                  "key": "B",
                  "text": "fail to provide accurate calorie counts."
                },
                {
                  "key": "C",
                  "text": "use ineffective methods to reduce calories."
                }
              ],
              "answer": "A",
              "explanation": "Well, when manufacturers put calorie counts of a food on the label, they’re sometimes really confusing and I suspect they do it on purpose."
            },
            {
              "number": 27,
              "prompt": "What does Rosie say about levels of exercise in England?",
              "options": [
                {
                  "key": "A",
                  "text": "The amount recommended is much too low."
                },
                {
                  "key": "B",
                  "text": "Most people overestimate how much they do."
                },
                {
                  "key": "C",
                  "text": "Women now exercise more than they used to."
                }
              ],
              "answer": "B",
              "explanation": "Now when you ask them, about 40% of men and 30% of women say they do this, but when you objectively measure the amount of walking they do with motion sensors, you find that only 6% of men and 4% of women do the recommended amount of exercise."
            },
            {
              "number": 28,
              "prompt": "Adam refers to the location and width of stairs in a train station to illustrate",
              "options": [
                {
                  "key": "A",
                  "text": "practical changes that can influence people’s behaviour."
                },
                {
                  "key": "B",
                  "text": "methods of helping people who have mobility problems."
                },
                {
                  "key": "C",
                  "text": "ways of preventing accidents by controlling crowd movement."
                }
              ],
              "answer": "A",
              "explanation": "if people reach the stairs before they reach the escalator when they’re leaving the station, they’re more likely to take the stairs. And if you increase the width of the stairs, you’ll get more people using them at the same time. It’s an unconscious process and influenced by minor modifications in their environment."
            },
            {
              "number": 29,
              "prompt": "What do the students agree about including reference to exercise in their presentation?",
              "options": [
                {
                  "key": "A",
                  "text": "They should probably leave it out."
                },
                {
                  "key": "B",
                  "text": "They need to do more research on it."
                },
                {
                  "key": "C",
                  "text": "They should discuss this with their tutor."
                }
              ],
              "answer": "A",
              "explanation": "But actually, I’m not sure if we should be talking about exercise in our presentation."
            },
            {
              "number": 30,
              "prompt": "What are the students going to do next for their presentation?",
              "options": [
                {
                  "key": "A",
                  "text": "prepare some slides for it"
                },
                {
                  "key": "B",
                  "text": "find out how long they have for it"
                },
                {
                  "key": "C",
                  "text": "decide on its content and organisation"
                }
              ],
              "answer": "C",
              "explanation": "Let’s think about what we’re going to include and what will go where."
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
              "text": "Interest in knitting"
            },
            {
              "kind": "static",
              "text": "Knitting has a long history around the world."
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
              "text": "The number of knitting classes is now increasing."
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "Benefits of knitting gives support in times of"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "difficulty requires only",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "skills and little money to start reduces stress in a busy life",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Early knitting"
            },
            {
              "kind": "static",
              "text": "The origins are not known."
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
              "text": "Wool became the most popular yarn for spinning."
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
              "prompt": "We imagine someone like a _______ knitting.",
              "answer": [
                "grandmother"
              ],
              "wordLimit": 1,
              "explanation": "When someone says the word ‘knitting’ we might well picture an elderly person - a grandmother perhaps - sitting by the fire knitting garments for themselves or other members of the family."
            },
            {
              "number": 32,
              "prompt": "A _______ ago, knitting was expected to disappear.",
              "answer": [
                "decade"
              ],
              "wordLimit": 1,
              "explanation": "during the previous decade, it was one of the skills that was predicted to vanish from everyday life."
            },
            {
              "number": 33,
              "prompt": "People are buying more _______ for knitting nowadays.",
              "answer": [
                "equipment"
              ],
              "wordLimit": 1,
              "explanation": "With that trend, we’re also seeing an increase in the sales figures for knitting equipment."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "economic"
              ],
              "wordLimit": 1,
              "explanation": "it’s still true today that knitting can be helpful if you’re experiencing economic hardship."
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "basic"
              ],
              "wordLimit": 1,
              "explanation": "And the results of knitting your own clothes can be very rewarding, even though the skills you need to get going are really quite basic and the financial outlay is minimal."
            },
            {
              "number": 36,
              "prompt": "Findings show early knitted items to be _______ in shape.",
              "answer": [
                "round"
              ],
              "wordLimit": 1,
              "explanation": "One of the interesting things about knitting is that the earliest pieces of clothing that have been found suggest that most of the items produced were round rather than flat."
            },
            {
              "number": 37,
              "prompt": "The first needles were made of natural materials such as wood and _______",
              "answer": [
                "bone"
              ],
              "wordLimit": 1,
              "explanation": "What’s more, the very first needles people used were hand carved out of wood and other natural materials, like bone"
            },
            {
              "number": 38,
              "prompt": "Early yarns felt _______ to touch.",
              "answer": [
                "rough"
              ],
              "wordLimit": 1,
              "explanation": "these were often very rough on the skin."
            },
            {
              "number": 39,
              "prompt": "Geographical areas had their own _______ of knitting.",
              "answer": [
                "style"
              ],
              "wordLimit": 1,
              "explanation": "Another interesting fact about knitting is that because it was practised in so many parts of the world for so many purposes, regional differences in style developed."
            },
            {
              "number": 40,
              "prompt": "Everyday tasks like looking after _______ were done while knitting.",
              "answer": [
                "sheep"
              ],
              "wordLimit": 1,
              "explanation": "while watching over sheep, walking to market or riding in boats."
            }
          ],
          "formTitle": "Hand knitting",
          "id": "g31"
        }
      ]
    }
  ]
}
$c16t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 16',
  'Test 4',
  'academic',
  2004,
  $c16t4l$
{
  "audioPath": "Cambridge 16 Test 4.mp3",
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
              "text": "Owner’s names: Jack Fitzgerald and Shirley Fitzgerald"
            },
            {
              "kind": "static",
              "text": "Granary Cottage available for week beginning"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "May cost for the week: £",
              "noBullet": true
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
              "text": "Cottage cost for the week: £480 building was originally a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "walk through doors from living room into a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "several",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "spaces at the front bathroom has a shower central heating and stove that burns",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "views of old",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "from living room view of hilltop",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "from the bedroom",
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
                "28th"
              ],
              "wordLimit": 1,
              "explanation": "It’s free the week beginning the 28th, though, for seven nights. In fact, that’s the only time you could have it in May."
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "550"
              ],
              "wordLimit": 1,
              "explanation": "That’s the beginning of high season, so it’d be £550 for the week."
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "Chervil"
              ],
              "wordLimit": 1,
              "explanation": "Well, we’ve just finished converting another building into a cottage, which we’re calling Chervil Cottage."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "garage"
              ],
              "wordLimit": 1,
              "explanation": "The building was built as a garage."
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "garden"
              ],
              "wordLimit": 1,
              "explanation": "Does it have a garden?"
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "parking"
              ],
              "wordLimit": 1,
              "explanation": "The front door opens onto the old farmyard, and parking isn’t a problem - there’s plenty of room at the front for that."
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "wood"
              ],
              "wordLimit": 1,
              "explanation": "There’s central heating, and if you want to light a fire, there’s a stove. We can provide all the wood you need for it."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "bridge"
              ],
              "wordLimit": 1,
              "explanation": "There’s a famous stone bridge - it’s one of the oldest in the region, and you can see it from the living room. It isn’t far away."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "monument"
              ],
              "wordLimit": 1,
              "explanation": "The bedroom window looks in the opposite direction, and has a lovely view of the hills and the monument at the top."
            },
            {
              "number": 10,
              "prompt": "Payment deposit: £144 deadline for final payment: end of _______",
              "answer": [
                "March"
              ],
              "wordLimit": 1,
              "explanation": "You’re coming in May, so the last day of March, please."
            }
          ],
          "formTitle": "Holiday rental",
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
              "prompt": "A survey found people’s main concern about traffic in the area was",
              "options": [
                {
                  "key": "A",
                  "text": "cuts to public transport."
                },
                {
                  "key": "B",
                  "text": "poor maintenance of roads."
                },
                {
                  "key": "C",
                  "text": "changes in the type of traffic."
                }
              ],
              "answer": "C",
              "explanation": "but a significant number of people complained about the increasing number of heavy vehicles using our local roads to avoid traffic elsewhere."
            },
            {
              "number": 12,
              "prompt": "Which change will shortly be made to the cycle path next to the river?",
              "options": [
                {
                  "key": "A",
                  "text": "It will be widened."
                },
                {
                  "key": "B",
                  "text": "It will be extended."
                },
                {
                  "key": "C",
                  "text": "It will be resurfaced."
                }
              ],
              "answer": "A",
              "explanation": "but overtaking can be a problem so we’re going to add a bit on the side to make it wider"
            },
            {
              "number": 13,
              "prompt": "Plans for a pedestrian crossing have been postponed because",
              "options": [
                {
                  "key": "A",
                  "text": "the Post Office has moved."
                },
                {
                  "key": "B",
                  "text": "the proposed location is unsafe."
                },
                {
                  "key": "C",
                  "text": "funding is not available at present."
                }
              ],
              "answer": "B",
              "explanation": "but the Highways Department have told us that it would be dangerous to have a pedestrian crossing where we’d originally planned it as there’s a bend in the road there."
            },
            {
              "number": 14,
              "prompt": "On Station Road, notices have been erected",
              "options": [
                {
                  "key": "A",
                  "text": "telling cyclists not to leave their bikes outside the station ticket office."
                },
                {
                  "key": "B",
                  "text": "asking motorists to switch off engines when waiting at the level crossing."
                },
                {
                  "key": "C",
                  "text": "warning pedestrians to leave enough time when crossing the railway line."
                }
              ],
              "answer": "B",
              "explanation": "On Station Road near the station and level crossing, drivers can face quite long waits if the level crossing’s closed, and we’ve now got signs up requesting them not to leave their engines running at that time."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Label the map below. Write the correct letter, A–I, next to Questions 15–20.",
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
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "New car park",
              "answer": "C",
              "explanation": "this is quite dangerous for pedestrians so we’re suggesting a new car park on the opposite side of the Community Hall, right next to it."
            },
            {
              "number": 16,
              "prompt": "New cricket pitch",
              "answer": "F",
              "explanation": "As we’ve now purchased additional space to the east of the recreation ground, beyond the trees"
            },
            {
              "number": 17,
              "prompt": "Children’s playground",
              "answer": "A",
              "explanation": "We’ve got plans for a children’s playground which will be accessible by a footpath from the Community Hall and will be alongside the river"
            },
            {
              "number": 18,
              "prompt": "Skateboard ramp",
              "answer": "I",
              "explanation": "The skateboard ramp is very popular with both younger and older children - we had considered moving this up towards the river, but in the end we decided to have it in the southeast corner near the road."
            },
            {
              "number": 19,
              "prompt": "Pavilion",
              "answer": "E",
              "explanation": "The pavilion is very well used at present by both football players and cricketers. It will stay where it is now - to the left of the line of trees and near to the river"
            },
            {
              "number": 20,
              "prompt": "Notice board",
              "answer": "H",
              "explanation": "And finally, we’ll be getting a new notice board for local information, and that will be directly on people’s right as they go from the road into the recreation ground."
            }
          ],
          "mapImage": "Cambridge 16 Test 4 map.png",
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
          "instructions": "Choose TWO letters, A–E. Which TWO benefits of city bike-sharing schemes do the students agree are the most important?",
          "options": [
            {
              "key": "A",
              "text": "reducing noise pollution"
            },
            {
              "key": "B",
              "text": "reducing traffic congestion"
            },
            {
              "key": "C",
              "text": "improving air quality"
            },
            {
              "key": "D",
              "text": "encouraging health and fitness"
            },
            {
              "key": "E",
              "text": "making cycling affordable"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO benefits of city bike-sharing schemes do the students agree are the most important?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "I mean, doesn’t the impact of reduced emissions on air pollution have a more significant effect on people’s health? Certainly, in some cities bike- sharing had made a big contribution to that. And also helped to cut the number of cars on the road significantly."
            },
            {
              "number": 22,
              "prompt": "Which TWO benefits of city bike-sharing schemes do the students agree are the most important?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "I mean, doesn’t the impact of reduced emissions on air pollution have a more significant effect on people’s health? Certainly, in some cities bike- sharing had made a big contribution to that. And also helped to cut the number of cars on the road significantly."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO things do the students think are necessary for successful bike-sharing schemes?",
          "options": [
            {
              "key": "A",
              "text": "Bikes should have a GPS system."
            },
            {
              "key": "B",
              "text": "The app should be easy to use."
            },
            {
              "key": "C",
              "text": "Public awareness should be raised."
            },
            {
              "key": "D",
              "text": "Only one scheme should be available."
            },
            {
              "key": "E",
              "text": "There should be a large network of cycle lanes."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO things do the students think are necessary for successful bike-sharing schemes?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "But some technical things are really important - like a fully functional app - so people can make payments and book bikes easily What does matter though - is having a big publicity campaign."
            },
            {
              "number": 24,
              "prompt": "Which TWO things do the students think are necessary for successful bike-sharing schemes?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "But some technical things are really important - like a fully functional app - so people can make payments and book bikes easily What does matter though - is having a big publicity campaign."
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What is the speakers’ opinion of the bike-sharing schemes in each of the following cities? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "They agree it has been disappointing."
            },
            {
              "key": "B",
              "text": "They think it should be cheaper."
            },
            {
              "key": "C",
              "text": "They are surprised it has been so successful."
            },
            {
              "key": "D",
              "text": "They agree that more investment is required."
            },
            {
              "key": "E",
              "text": "They think the system has been well designed."
            },
            {
              "key": "F",
              "text": "They disagree about the reasons for its success."
            },
            {
              "key": "G",
              "text": "They think it has expanded too quickly."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Amsterdam",
              "answer": "C",
              "explanation": "In a way it’s strange that there was such a demand for bike-sharing because you’d have thought most people would have used their own bikes."
            },
            {
              "number": 26,
              "prompt": "Dublin",
              "answer": "F",
              "explanation": "It must be because the public transport system’s quite limited."
            },
            {
              "number": 27,
              "prompt": "London",
              "answer": "D",
              "explanation": "Basically, not enough’s been spent on increasing the number of cycle lanes."
            },
            {
              "number": 28,
              "prompt": "Buenos Aires",
              "answer": "E",
              "explanation": "An example of good planning."
            },
            {
              "number": 29,
              "prompt": "New York",
              "answer": "B",
              "explanation": "More than it costs to take a taxi, Crazy."
            },
            {
              "number": 30,
              "prompt": "Sydney",
              "answer": "A",
              "explanation": "I would have expected it to have grown pretty quickly here."
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
              "text": "The dodo was a large flightless bird which used to inhabit the island of Mauritius."
            },
            {
              "kind": "subheader",
              "text": "History"
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
              "text": "They killed the dodo birds for their meat."
            },
            {
              "kind": "static",
              "text": "The last one was killed in 1681."
            },
            {
              "kind": "subheader",
              "text": "Description"
            },
            {
              "kind": "static",
              "text": "The only record we have is written descriptions and pictures (possibly unreliable)."
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
              "text": "."
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
              "kind": "subheader",
              "text": "Reasons for extinction"
            },
            {
              "kind": "static",
              "text": "Hunting was probably not the main cause."
            },
            {
              "kind": "static",
              "text": "Sailors brought dogs and monkeys."
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
              "prompt": "1507 - Portuguese ships transporting _______ stopped at the island to collect food and water.",
              "answer": [
                "spice"
              ],
              "wordLimit": 1,
              "explanation": "/ spices The sailors were carrying spices back to Europe"
            },
            {
              "number": 32,
              "prompt": "1638 - The Dutch established a _______ on the island.",
              "answer": [
                "colony"
              ],
              "wordLimit": 1,
              "explanation": "/ settlement However, in 1683 the Dutch arrived and set up a colony there."
            },
            {
              "number": 33,
              "prompt": "A Dutch painting suggests the dodo was very _______ .",
              "answer": [
                "fat"
              ],
              "wordLimit": 1,
              "explanation": "The best-known picture is a Dutch painting in which the bird appears to be extremely fat, but this may not be accurate - an Indian painting done at the same time shows a much thinner bird."
            },
            {
              "number": 34,
              "prompt": "The only remaining soft tissue is a dried _______ .",
              "answer": [
                "head"
              ],
              "wordLimit": 1,
              "explanation": "of these, three have disappeared, so only one example of soft tissue from the dodo survives, a dodo head."
            },
            {
              "number": 35,
              "prompt": "Recent studies of a dodo skeleton suggest the birds were capable of rapid _______",
              "answer": [
                "movement"
              ],
              "wordLimit": 1,
              "explanation": "but scientists now believe the bird’s strong knee joints would have made it capable of movement which was not slow, but actually quite fast."
            },
            {
              "number": 36,
              "prompt": "It’s thought they were able to use their small wings to maintain _______ .",
              "answer": [
                "balance"
              ],
              "wordLimit": 1,
              "explanation": "/ balancing but the scientists suggest that these were probably employed for balance while going over uneven ground."
            },
            {
              "number": 37,
              "prompt": "Their _______ was of average size.",
              "answer": [
                "brain"
              ],
              "wordLimit": 1,
              "explanation": "which suggested the bird’s brain was not small"
            },
            {
              "number": 38,
              "prompt": "Their sense of _______ enabled them to find food.",
              "answer": [
                "smell"
              ],
              "wordLimit": 1,
              "explanation": "The researchers also found that the structure of the bird’s skull suggested that one sense which was particularly well-developed was that of smell."
            },
            {
              "number": 39,
              "prompt": "_______ also escaped onto the island and ate the birds’ eggs.",
              "answer": [
                "rats"
              ],
              "wordLimit": 1,
              "explanation": "These were brought to the island deliberately, but the ships also brought another type of creature - rats, which came to land from the ships and rapidly overran the island."
            },
            {
              "number": 40,
              "prompt": "The arrival of farming meant the _______ was destroyed.",
              "answer": [
                "forest"
              ],
              "wordLimit": 1,
              "explanation": "This meant that the forest that has once covered all the island, and that had provided a perfect home for the dodo, was cut down so that crops such as sugar could be grown."
            }
          ],
          "formTitle": "THE EXTINCTION OF THE DODO BIRD",
          "id": "g31"
        }
      ]
    }
  ]
}
$c16t4l$,
  true
);

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

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 17',
  'Test 2',
  'academic',
  2004,
  $c17t2l$
{
  "audioPath": "Cambridge 17 Test 2.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the notes below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Library"
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
              "text": "Lunch club"
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
              "text": "Help for individuals needed next week"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Help with _______ books (times to be arranged)",
              "answer": [
                "collecting"
              ],
              "wordLimit": 1,
              "explanation": "So, one thing you could do is get involved in collecting them - if you’ve got a car, that is."
            },
            {
              "number": 2,
              "prompt": "Help needed to keep _______ of books up to date",
              "answer": [
                "records"
              ],
              "wordLimit": 1,
              "explanation": "Another thing is the records that we keep of the books we’re given, and those we borrow and need to return to the town library."
            },
            {
              "number": 3,
              "prompt": "Library is in the _______ Room in the village hall",
              "answer": [
                "West"
              ],
              "wordLimit": 1,
              "explanation": "No, we simply have the use of a room in the village hall, the West Room."
            },
            {
              "number": 4,
              "prompt": "Help by providing _______",
              "answer": [
                "transport"
              ],
              "wordLimit": 1,
              "explanation": "I could help with transport, if that’s of any use."
            },
            {
              "number": 5,
              "prompt": "Help with hobbies such as _______",
              "answer": [
                "art"
              ],
              "wordLimit": 1,
              "explanation": "I could get involved in one or two, particularly if there are any art groups."
            },
            {
              "number": 6,
              "prompt": "Taking Mrs Carroll to _______",
              "answer": [
                "hospital"
              ],
              "wordLimit": 1,
              "explanation": "She needs a lift to the hospital next week, and we’re struggling to find someone."
            },
            {
              "number": 7,
              "prompt": "Work in the _______ at Mr Selsbury’s house",
              "answer": [
                "garden"
              ],
              "wordLimit": 1,
              "explanation": "We’re got some people to decorate his kitchen, but if you could do some weeding in his garden, that would be wonderful."
            }
          ],
          "formTitle": "Opportunities for voluntary work in Southoe village",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 8–10",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Date Event Location Help needed"
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
              "number": 8,
              "prompt": "19 Oct _______ Village hall providing refreshments",
              "answer": [
                "quiz"
              ],
              "wordLimit": 1,
              "explanation": "So next month, on the 19th of October, we’re holding a quiz - a couple of residents are great at planning unusual ones, and we always fill the village hall."
            },
            {
              "number": 9,
              "prompt": "18 Nov dance Village hall checking _______",
              "answer": [
                "tickets"
              ],
              "wordLimit": 1,
              "explanation": "Well, we sell tickets in advance"
            },
            {
              "number": 10,
              "prompt": "31 Dec New Year’s Eve party Mountfort Hotel designing the _______",
              "answer": [
                "poster"
              ],
              "wordLimit": 1,
              "explanation": "The one thing we haven’t got yet is a poster."
            }
          ],
          "formTitle": "Village social events",
          "id": "g8"
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
              "prompt": "Many past owners made changes to",
              "options": [
                {
                  "key": "A",
                  "text": "the gardens."
                },
                {
                  "key": "B",
                  "text": "the house."
                },
                {
                  "key": "C",
                  "text": "the farm."
                }
              ],
              "answer": "B",
              "explanation": "Almost all of them have left their mark, generally by adding new rooms, like the ballroom and conservatory, or by demolishing others."
            },
            {
              "number": 12,
              "prompt": "Sir Edward Downes built Oniton Hall because he wanted",
              "options": [
                {
                  "key": "A",
                  "text": "a place for discussing politics."
                },
                {
                  "key": "B",
                  "text": "a place to display his wealth."
                },
                {
                  "key": "C",
                  "text": "a place for artists and writers."
                }
              ],
              "answer": "C",
              "explanation": "He broke off contact with his former political allies, and hosted meeting of creative and literary people, like painters and poets."
            },
            {
              "number": 13,
              "prompt": "Visitors can learn about the work of servants in the past from",
              "options": [
                {
                  "key": "A",
                  "text": "audio guides."
                },
                {
                  "key": "B",
                  "text": "photographs."
                },
                {
                  "key": "C",
                  "text": "people in costume."
                }
              ],
              "answer": "C",
              "explanation": "Photographs of course don’t give much of an idea, so instead, as you go round the house, you’ll see volunteers dressed up as nineteenth-century servants, going about their work."
            },
            {
              "number": 14,
              "prompt": "What is new for children at Onion Hall?",
              "options": [
                {
                  "key": "A",
                  "text": "clothes for dressing up"
                },
                {
                  "key": "B",
                  "text": "mini tractors"
                },
                {
                  "key": "C",
                  "text": "the adventure playground"
                }
              ],
              "answer": "B",
              "explanation": "Our latest addition is child-sized tractors, that you can drive around the grounds."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which activity is offered at each of the following locations on the farm? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "shopping"
            },
            {
              "key": "B",
              "text": "watching cows being milked"
            },
            {
              "key": "C",
              "text": "seeing old farming equipment"
            },
            {
              "key": "D",
              "text": "eating and drinking"
            },
            {
              "key": "E",
              "text": "starting a trip"
            },
            {
              "key": "F",
              "text": "seeing rare breeds of animals"
            },
            {
              "key": "G",
              "text": "helping to look after animals"
            },
            {
              "key": "H",
              "text": "using farming tools"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "dairy",
              "answer": "D",
              "explanation": "It’s now the place to go for lunch, or afternoon tea, or just a cup of coffee and a slice of homemade cake."
            },
            {
              "number": 16,
              "prompt": "large barn",
              "answer": "C",
              "explanation": "The big stone building that dominates the farm is the large barn, and in here is our collection of agricultural tools."
            },
            {
              "number": 17,
              "prompt": "small barn",
              "answer": "G",
              "explanation": "There’s a small barn, also made of stone, where you can groom the donkeys and horses, to keep their coats clean."
            },
            {
              "number": 18,
              "prompt": "stables",
              "answer": "A",
              "explanation": "The horses no longer live in the stables, which instead is the place to go to buy gifts, books, our own jams and pickles, and clothes and blankets made of wool from our sheep."
            },
            {
              "number": 19,
              "prompt": "shed",
              "answer": "E",
              "explanation": "Outside the shed, which is the only brick building, you can climb into a horse-drawn carriage for a lovely, relaxing tour of the park and farm."
            },
            {
              "number": 20,
              "prompt": "parkland",
              "answer": "F",
              "explanation": "You’ll see types of cattle and sheep that are hardly ever found on farms these days."
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
          "instructions": "Choose TWO letters, A–E. Which TWO things do the students agree they need to include in their review of Romeo and Juliet?",
          "options": [
            {
              "key": "A",
              "text": "analysis of the text"
            },
            {
              "key": "B",
              "text": "a summary of the plot"
            },
            {
              "key": "C",
              "text": "a description of the theatre"
            },
            {
              "key": "D",
              "text": "a personal reaction"
            },
            {
              "key": "E",
              "text": "a reference to particular scenes"
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO things do the students agree they need to include in their review of Romeo and Juliet?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "And part of that means talking about the emotional impact the performance had on us. And we should definitely mention how well the director handled important bits of the play - like when Romeo climbs onto Juliet’s balcony."
            },
            {
              "number": 22,
              "prompt": "Which TWO things do the students agree they need to include in their review of Romeo and Juliet?",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "And part of that means talking about the emotional impact the performance had on us. And we should definitely mention how well the director handled important bits of the play - like when Romeo climbs onto Juliet’s balcony."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 23–27",
          "instructions": "Which opinion do the speakers give about each of the following aspects of The Emporium’s production of Romeo and Juliet? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "They both expected this to be more traditional."
            },
            {
              "key": "B",
              "text": "They both thought this was original."
            },
            {
              "key": "C",
              "text": "They agree this created the right atmosphere."
            },
            {
              "key": "D",
              "text": "They agree this was a major strength."
            },
            {
              "key": "E",
              "text": "They were both disappointed by this."
            },
            {
              "key": "F",
              "text": "They disagree about why this was an issue."
            },
            {
              "key": "G",
              "text": "They disagree about how this could be improved."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "the set",
              "answer": "D",
              "explanation": "I think it was visually really stunning. I’d say that was probably the most memorable thing about this production."
            },
            {
              "number": 24,
              "prompt": "the lighting",
              "answer": "C",
              "explanation": "It helped to change the mood of the quieter scenes."
            },
            {
              "number": 25,
              "prompt": "the costume design",
              "answer": "A",
              "explanation": "I was a bit surprised by the contemporary dress, I must say."
            },
            {
              "number": 26,
              "prompt": "the music",
              "answer": "E",
              "explanation": "I thought they were wasted because the music didn’t have much impact in Acts 2 and 3."
            },
            {
              "number": 27,
              "prompt": "the actors’ delivery",
              "answer": "F",
              "explanation": "They were speaking too fast."
            }
          ],
          "id": "g23"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 28–30",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 28,
              "prompt": "The students think the story of Romeo and Juliet is still relevant for young people today because",
              "options": [
                {
                  "key": "A",
                  "text": "it illustrates how easily conflict can start."
                },
                {
                  "key": "B",
                  "text": "it deals with problems that families experience."
                },
                {
                  "key": "C",
                  "text": "it teaches them about relationships."
                }
              ],
              "answer": "B",
              "explanation": "There are always disagreements and tension between teenagers and their parents."
            },
            {
              "number": 29,
              "prompt": "The students found watching Romeo and Juliet in another language",
              "options": [
                {
                  "key": "A",
                  "text": "frustrating."
                },
                {
                  "key": "B",
                  "text": "demanding."
                },
                {
                  "key": "C",
                  "text": "moving."
                }
              ],
              "answer": "C",
              "explanation": "The ending was pretty powerful."
            },
            {
              "number": 30,
              "prompt": "Why do the students think Shakespeare’s plays have such international appeal?",
              "options": [
                {
                  "key": "A",
                  "text": "The stories are exciting."
                },
                {
                  "key": "B",
                  "text": "There are recognisable characters."
                },
                {
                  "key": "C",
                  "text": "They can be interpreted in many ways."
                }
              ],
              "answer": "C",
              "explanation": "Yeah, and they can also be understood on different levels."
            }
          ],
          "id": "g28"
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
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "The Icelandic language has approximately"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "speakers has a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "that is still growing has not changed a lot over the last thousand years has its own words for computer-based concepts, such as web browser and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "Young speakers are big users of digital technology, such as"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "are becoming",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "very quickly are having discussions using only English while they are in the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "at school are better able to identify the content of a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "in English than",
              "noBullet": true
            },
            {
              "kind": "subheader",
              "text": "Icelandic"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "The Icelandic government has set up a fund to support the production of more digital content in the language believes that Icelandic has a secure future is worried that young Icelanders may lose their"
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "as Icelanders is worried about the consequences of children not being",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "in either Icelandic or English",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "_______",
              "answer": [
                "321,000",
                "321000"
              ],
              "wordLimit": 1,
              "explanation": "In order to illustrate its effect, I’m going to focus on the Icelandic language, which is spoken by around 321,000 people, most of whom live in Iceland - an island in the North Atlantic Ocean."
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "vocabulary"
              ],
              "wordLimit": 1,
              "explanation": "In fact, the vocabulary of Icelandic is continually increasing because when speakers need a new word for something, they tend to create one, rather than borrowing from another language."
            },
            {
              "number": 33,
              "prompt": "_______",
              "answer": [
                "podcast"
              ],
              "wordLimit": 1,
              "explanation": "Then there’s an Icelandic word for podcast - which is too hard to pronounce! And so on."
            },
            {
              "number": 34,
              "prompt": "_______",
              "answer": [
                "smartphones"
              ],
              "wordLimit": 1,
              "explanation": "Think about smartphones. They didn’t even exist until comparatively recently, but today young people use them all the time to read books, watch TV or films, play games, listen to music, and so on."
            },
            {
              "number": 35,
              "prompt": "_______",
              "answer": [
                "bilingual"
              ],
              "wordLimit": 1,
              "explanation": "Obviously, this is a good thing in many respects because it promotes their bilingual skills, but the extent of the influence of English in the virtual world is staggering and it’s all happening really fast."
            },
            {
              "number": 36,
              "prompt": "_______",
              "answer": [
                "playground"
              ],
              "wordLimit": 1,
              "explanation": "teachers have found that playground conversations in Icelandic secondary schools can be conducted entirely in English"
            },
            {
              "number": 37,
              "prompt": "_______",
              "answer": [
                "picture"
              ],
              "wordLimit": 1,
              "explanation": "while teachers of much younger children have reported situations where their classes find it easier to say what is in a picture using English, rather than Icelandic."
            },
            {
              "number": 38,
              "prompt": "Technology and internet companies write very little in Icelandic because of the small number of speakers and because of how complicated its _______ is",
              "answer": [
                "grammar"
              ],
              "wordLimit": 1,
              "explanation": "The other drawback of Icelandic is the grammar, which is significantly more complex than in most languages. At the moment, the tech giants are simply not interested in tackling this."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "identity"
              ],
              "wordLimit": 1,
              "explanation": "When you consider how much of the past is tied up in a language, will young Icelanders lose their sense of their own identity?"
            },
            {
              "number": 40,
              "prompt": "_______",
              "answer": [
                "fluent"
              ],
              "wordLimit": 1,
              "explanation": "If children are learning two languages through different routes, neither of which they are fully fluent in, will they be able to express themselves properly?"
            }
          ],
          "formTitle": "The impact of digital technology on the Icelandic language",
          "id": "g31"
        }
      ]
    }
  ]
}
$c17t2l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 17',
  'Test 3',
  'academic',
  2004,
  $c17t3l$
{
  "audioPath": "Cambridge 17 Test 3.mp3",
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
              "text": "Jack’s advice"
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
              "text": "Irish surfing locations"
            },
            {
              "kind": "subheader",
              "text": "County Clare"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "subheader",
              "text": "- There are famous cliffs nearby"
            },
            {
              "kind": "subheader",
              "text": "County Mayo"
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
              "kind": "subheader",
              "text": "Weather"
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
              "text": "Costs"
            },
            {
              "kind": "subheader",
              "text": "Equipment"
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
              "prompt": "Recommends surfing for _______ holidays in the summer",
              "answer": [
                "family"
              ],
              "wordLimit": 1,
              "explanation": "I think it’s the kind of holiday all the family can enjoy together."
            },
            {
              "number": 2,
              "prompt": "Need to be quite _______",
              "answer": [
                "fit"
              ],
              "wordLimit": 1,
              "explanation": "I’ve heard you need to be pretty fit."
            },
            {
              "number": 3,
              "prompt": "- Lahinch has some good quality _______ and surf schools",
              "answer": [
                "hotels"
              ],
              "wordLimit": 1,
              "explanation": "Are there good hotels there?"
            },
            {
              "number": 4,
              "prompt": "- Good surf school at _______ beach",
              "answer": [
                "Carrowniskey"
              ],
              "wordLimit": 1,
              "explanation": "There’s a good surf school at Carrowniskey beach."
            },
            {
              "number": 5,
              "prompt": "- Surf camp lasts for one _______",
              "answer": [
                "week"
              ],
              "wordLimit": 1,
              "explanation": "Three hours every day for a week."
            },
            {
              "number": 6,
              "prompt": "- Can also explore the local _______ by kayak",
              "answer": [
                "bay"
              ],
              "wordLimit": 1,
              "explanation": "One thing we did while the kids were surfing was to rent some kayaks to have a look around the bay which is nearby."
            },
            {
              "number": 7,
              "prompt": "Best month to go: _______",
              "answer": [
                "September"
              ],
              "wordLimit": 1,
              "explanation": "September’s my favourite month because the water is warmer then."
            },
            {
              "number": 8,
              "prompt": "Average temperature in summer: approx. _______ degrees",
              "answer": [
                "19"
              ],
              "wordLimit": 1,
              "explanation": "/ nineteen The average temperature is about 19 degrees and it usually doesn’t go above 25 degrees."
            },
            {
              "number": 9,
              "prompt": "- Wetsuit and surfboard: _______ euros per day",
              "answer": [
                "30"
              ],
              "wordLimit": 1,
              "explanation": "/ thirty You can expect to pay a daily rate of about 30 euros for the hire of a wetsuit and board"
            },
            {
              "number": 10,
              "prompt": "- Also advisable to hire _______ for warmth",
              "answer": [
                "boots"
              ],
              "wordLimit": 1,
              "explanation": "And make sure you also get boots. They keep your feet warm and it’s easier to surf with them on too."
            }
          ],
          "formTitle": "Advice on surfing holidays",
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
          "instructions": "Choose TWO letters, A–E. Which TWO facts are given about the school’s extended hours childcare service?",
          "options": [
            {
              "key": "A",
              "text": "It started recently."
            },
            {
              "key": "B",
              "text": "More children attend after school than before school."
            },
            {
              "key": "C",
              "text": "An average of 50 children attend in the mornings."
            },
            {
              "key": "D",
              "text": "A child cannot attend both the before and after school sessions."
            },
            {
              "key": "E",
              "text": "The maximum number of children who can attend is 70."
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Which TWO facts are given about the school’s extended hours childcare service?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "We are insured to provide care for up to 70 children I think we generally expect around 50-60 children for the afternoon sessions and about half that number for the breakfast sessions."
            },
            {
              "number": 12,
              "prompt": "Which TWO facts are given about the school’s extended hours childcare service?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "We are insured to provide care for up to 70 children I think we generally expect around 50-60 children for the afternoon sessions and about half that number for the breakfast sessions."
            }
          ],
          "id": "g11"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 13–15",
          "instructions": "Choose the correct letter, A, B or C.",
          "questions": [
            {
              "number": 13,
              "prompt": "How much does childcare cost for a complete afternoon session per child?",
              "options": [
                {
                  "key": "A",
                  "text": "£3.50"
                },
                {
                  "key": "B",
                  "text": "£5.70"
                },
                {
                  "key": "C",
                  "text": "£7.20"
                }
              ],
              "answer": "C",
              "explanation": "For the afternoon sessions, which run from 3.30 until 6 p.m., it’s £7.20."
            },
            {
              "number": 14,
              "prompt": "What does the manager say about food?",
              "options": [
                {
                  "key": "A",
                  "text": "Children with allergies should bring their own food."
                },
                {
                  "key": "B",
                  "text": "Children may bring healthy snacks with them."
                },
                {
                  "key": "C",
                  "text": "Children are given a proper meal at 5 p.m."
                }
              ],
              "answer": "C",
              "explanation": "At 5 p.m. children are given something more substantial, such as pasta or a casserole."
            },
            {
              "number": 15,
              "prompt": "What is different about arrangements in the school holidays?",
              "options": [
                {
                  "key": "A",
                  "text": "Children from other schools can attend."
                },
                {
                  "key": "B",
                  "text": "Older children can attend."
                },
                {
                  "key": "C",
                  "text": "A greater number of children can attend."
                }
              ],
              "answer": "A",
              "explanation": "It will also feel different because they’ll get the chance to make new friends with children from other schools - spaces are available for them because a lot of our term-time children don’t always attend during the holiday."
            }
          ],
          "id": "g13"
        },
        {
          "type": "matching",
          "label": "Questions 16–20",
          "instructions": "What information is given about each of the following activities on offer? Choose the correct letter, A–G, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "has limited availability"
            },
            {
              "key": "B",
              "text": "is no longer available"
            },
            {
              "key": "C",
              "text": "is for over 8s only"
            },
            {
              "key": "D",
              "text": "requires help from parents"
            },
            {
              "key": "E",
              "text": "involves an additional fee"
            },
            {
              "key": "F",
              "text": "is a new activity"
            },
            {
              "key": "G",
              "text": "was requested by children"
            }
          ],
          "questions": [
            {
              "number": 16,
              "prompt": "Spanish",
              "answer": "E",
              "explanation": "This is the only activity which we have to make an extra charge for - but it’s well worth it."
            },
            {
              "number": 17,
              "prompt": "Music",
              "answer": "D",
              "explanation": "We do rely on parental support for this, so if any of you sing or play an instrument and would be prepared to help out at these sessions, we’d be delighted."
            },
            {
              "number": 18,
              "prompt": "Painting",
              "answer": "G",
              "explanation": "but children kept asking if they could do some art and so we finally gave in."
            },
            {
              "number": 19,
              "prompt": "Yoga",
              "answer": "F",
              "explanation": "Yoga is something that we’ve been meaning to introduce for some time but haven’t been able to find anyone available to teach it - until now that is."
            },
            {
              "number": 20,
              "prompt": "Cooking",
              "answer": "C",
              "explanation": "Although the younger children love doing it, we found that the mess was just too much, so we’ve decided to restrict this to the over 8s, as they are better able to clean up after themselves."
            }
          ],
          "id": "g16"
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
              "prompt": "Holly has chosen the Orion Stadium placement because",
              "options": [
                {
                  "key": "A",
                  "text": "it involves children."
                },
                {
                  "key": "B",
                  "text": "it is outdoors."
                },
                {
                  "key": "C",
                  "text": "it sounds like fun."
                }
              ],
              "answer": "B",
              "explanation": "I know, but it’s the fresh air that attracts me - organising something indoors doesn’t have the same appeal, even though it might be fun."
            },
            {
              "number": 22,
              "prompt": "Which aspect of safety does Dr Green emphasise most?",
              "options": [
                {
                  "key": "A",
                  "text": "ensuring children stay in the stadium"
                },
                {
                  "key": "B",
                  "text": "checking the equipment children will use"
                },
                {
                  "key": "C",
                  "text": "removing obstacles in changing rooms"
                }
              ],
              "answer": "A",
              "explanation": "Oh I see - that’ll include keeping everyone within the boundary once they’re in their kit and on the field?"
            },
            {
              "number": 23,
              "prompt": "What does Dr Green say about the spectators?",
              "options": [
                {
                  "key": "A",
                  "text": "They can be hard to manage."
                },
                {
                  "key": "B",
                  "text": "They make useful volunteers."
                },
                {
                  "key": "C",
                  "text": "They shouldn’t take photographs."
                }
              ],
              "answer": "A",
              "explanation": "And that’s not always easy, especially when a proud parent’s trying to get a snap of their child and you want them to move elsewhere."
            },
            {
              "number": 24,
              "prompt": "What has affected the schedule in the past?",
              "options": [
                {
                  "key": "A",
                  "text": "bad weather"
                },
                {
                  "key": "B",
                  "text": "an injury"
                },
                {
                  "key": "C",
                  "text": "extra time"
                }
              ],
              "answer": "B",
              "explanation": "Yeah, and I was thinking about what to do if someone got hurt as well. I know that last year that caused a terrible delay."
            }
          ],
          "id": "g21"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What do Holly and her tutor agree is an important aspect of each of the following events management skills? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "being flexible"
            },
            {
              "key": "B",
              "text": "focusing on details"
            },
            {
              "key": "C",
              "text": "having a smart appearance"
            },
            {
              "key": "D",
              "text": "hiding your emotions"
            },
            {
              "key": "E",
              "text": "relying on experts"
            },
            {
              "key": "F",
              "text": "trusting your own views"
            },
            {
              "key": "G",
              "text": "doing one thing at a time"
            },
            {
              "key": "H",
              "text": "thinking of the future"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Communication",
              "answer": "C",
              "explanation": "Good - just remember it isn’t only about what you say. If you meet someone face-to-face and want to persuade them to be a sponsor, for example …"
            },
            {
              "number": 26,
              "prompt": "Organisation",
              "answer": "A",
              "explanation": "I guess it’s being prepared to make changes that matters"
            },
            {
              "number": 27,
              "prompt": "Time management",
              "answer": "D",
              "explanation": "Yes, but it’s how you respond as that deadline approaches!"
            },
            {
              "number": 28,
              "prompt": "Creativity",
              "answer": "B",
              "explanation": "Often your client has what we call the ‘big picture’ idea, but it’s up to the events manager to think of all the fine points that go to making it work."
            },
            {
              "number": 29,
              "prompt": "Leadership",
              "answer": "F",
              "explanation": "So, believe in what you think best."
            },
            {
              "number": 30,
              "prompt": "Networking",
              "answer": "H",
              "explanation": "I guess that will help me when I apply for a real job."
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
              "text": "Most birds are believed to migrate seasonally."
            },
            {
              "kind": "subheader",
              "text": "Hibernation theory"
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
              "kind": "static",
              "text": "This theory was later disproved by experiments on caged birds."
            },
            {
              "kind": "subheader",
              "text": "Transmutation theory"
            },
            {
              "kind": "static",
              "text": "Aristotle believed birds changed from one species into another in summer and winter."
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
              "text": "."
            },
            {
              "kind": "subheader",
              "text": "17th century"
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "subheader",
              "text": "Scientific developments"
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
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "It was believed that birds hibernated underwater or buried themselves in _______",
              "answer": [
                "mud"
              ],
              "wordLimit": 1,
              "explanation": "Another theory for the regular appearance and disappearance of birds was that they spend winter hidden in mud till the weather changed and food became abundant again."
            },
            {
              "number": 32,
              "prompt": "- In autumn he observed that redstarts experience the loss of _______ and thought they then turned into robins.",
              "answer": [
                "feathers"
              ],
              "wordLimit": 1,
              "explanation": "He observed that in the autumn, small birds called ‘redstarts’ began to lose their feathers"
            },
            {
              "number": 33,
              "prompt": "- Aristotle’s assumptions were logical because the two species of birds had a similar _______",
              "answer": [
                "shape"
              ],
              "wordLimit": 1,
              "explanation": "These assumptions are understandable given that this pair of species are similar in shape, but are a classic example of an incorrect interpretation based on correct observations."
            },
            {
              "number": 34,
              "prompt": "Charles Morton popularised the idea that birds fly to the _______ in winter.",
              "answer": [
                "moon"
              ],
              "wordLimit": 1,
              "explanation": "He wrote a surprisingly well-regarded paper claiming that birds migrate to the moon and back every year."
            },
            {
              "number": 35,
              "prompt": "In 1822, a stork was killed in Germany which had an African spear in its _______",
              "answer": [
                "neck"
              ],
              "wordLimit": 1,
              "explanation": "This particular stork made history because of the long spear in its neck which incredibly had not killed it"
            },
            {
              "number": 36,
              "prompt": "- previously there had been no _______ that storks migrate to Africa",
              "answer": [
                "evidence"
              ],
              "wordLimit": 1,
              "explanation": "This was a truly defining moment in the history of ornithology because it was the first evidence that storks spend their winters in sub-Saharan Africa."
            },
            {
              "number": 37,
              "prompt": "Little was known about the _______ and journeys of migrating birds until the practice of ringing was established.",
              "answer": [
                "destinations"
              ],
              "wordLimit": 1,
              "explanation": "Before this, very little information was available about the actual destinations of particular species and how they travelled there."
            },
            {
              "number": 38,
              "prompt": "- It was thought large birds carried small birds on some journeys because they were considered incapable of travelling across huge _______ .",
              "answer": [
                "oceans"
              ],
              "wordLimit": 1,
              "explanation": "This idea came about because it seemed impossible that small birds weighing only a few grams could fly over vast oceans."
            },
            {
              "number": 39,
              "prompt": "- Ringing depended on what is called the ‘ _______ ’ of dead birds.",
              "answer": [
                "recovery"
              ],
              "wordLimit": 1,
              "explanation": "The development of bird ringing, by a Danish schoolteacher, Hans Christian Cornelius Mortensen, made many discoveries possible. This is still common practice today and relies upon what is known as ‘recovery’"
            },
            {
              "number": 40,
              "prompt": "In 1931, the first _______ to show the migration of European birds was printed.",
              "answer": [
                "atlas"
              ],
              "wordLimit": 1,
              "explanation": "Huge amounts of data were gathered in the early part of the twentieth century and for the first time in history people understood where birds actually went to in winter. In 1931, an atlas was published showing where the most common species of European birds migrated to."
            }
          ],
          "formTitle": "Bird Migration Theory",
          "id": "g31"
        }
      ]
    }
  ]
}
$c17t3l$,
  true
);

DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 17',
  'Test 4',
  'academic',
  2004,
  $c17t4l$
{
  "audioPath": "Cambridge 17 Test 4.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–10",
          "instructions": "Complete the notes below. Write ONE WORD for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Basic cleaning package offered"
            },
            {
              "kind": "subheader",
              "text": "Cleaning all surfaces"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "Cleaning shower, sinks, toilet etc."
            },
            {
              "kind": "subheader",
              "text": "Additional services agreed"
            },
            {
              "kind": "subheader",
              "text": "Every week"
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
              "text": "Every month"
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
              "kind": "subheader",
              "text": "Other possibilities"
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
              "text": "Information on the cleaners"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "References are required."
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "Usually, each customer has one regular cleaner."
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Cleaning the _______ throughout the apartment",
              "answer": [
                "floor"
              ],
              "wordLimit": 1,
              "explanation": "/ floors No, I don’t have any, but the floor would need cleaning."
            },
            {
              "number": 2,
              "prompt": "- Cleaning the _______",
              "answer": [
                "fridge"
              ],
              "wordLimit": 1,
              "explanation": "Actually, I hardly ever use that, but can you do the fridge?"
            },
            {
              "number": 3,
              "prompt": "- Ironing clothes - _______ only",
              "answer": [
                "shirts"
              ],
              "wordLimit": 1,
              "explanation": "It wouldn’t be much, just my shirts for work that week."
            },
            {
              "number": 4,
              "prompt": "- Cleaning all the _______ from the inside",
              "answer": [
                "windows"
              ],
              "wordLimit": 1,
              "explanation": "So for example, if the inside of your windows need cleaning, we could do that."
            },
            {
              "number": 5,
              "prompt": "- Washing down the _______",
              "answer": [
                "balcony"
              ],
              "wordLimit": 1,
              "explanation": "But would you be able to do something about the balcony?"
            },
            {
              "number": 6,
              "prompt": "They can organise a plumber or an _______ if necessary.",
              "answer": [
                "electrician"
              ],
              "wordLimit": 1,
              "explanation": "And the same thing if you need an electrician."
            },
            {
              "number": 7,
              "prompt": "A special cleaning service is available for customers who are allergic to _______",
              "answer": [
                "dust"
              ],
              "wordLimit": 1,
              "explanation": "And I don’t know if this is of interest to you, but we also offer a special vacuum cleaning system which can improve the indoor air quality of your home by capturing up to 99% of all the dust in the air. So if you’re troubled by allergies, this can make a big difference."
            },
            {
              "number": 8,
              "prompt": "Before being hired, all cleaners have a background check carried out by the _______",
              "answer": [
                "police"
              ],
              "wordLimit": 1,
              "explanation": "So all our cleaners are very carefully selected. When they apply to us, they have to undergo a security check with the police to make sure they don’t have any sort of criminal background, and, of course, they have to provide references as well."
            },
            {
              "number": 9,
              "prompt": "All cleaners are given _______ for two weeks.",
              "answer": [
                "training"
              ],
              "wordLimit": 1,
              "explanation": "Then if we think they might be suitable for the job, we give them training for it. That lasts for two weeks so it’s very thorough, and at the end of it, they have a test."
            },
            {
              "number": 10,
              "prompt": "Customers send a _______ after each visit.",
              "answer": [
                "review"
              ],
              "wordLimit": 1,
              "explanation": "we ask all our clients to complete a review of their performance after every visit and to email it to us."
            }
          ],
          "formTitle": "Easy Life Cleaning Services",
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
              "prompt": "Many hotel managers are unaware that their staff often leave because of",
              "options": [
                {
                  "key": "A",
                  "text": "a lack of training."
                },
                {
                  "key": "B",
                  "text": "long hours."
                },
                {
                  "key": "C",
                  "text": "low pay."
                }
              ],
              "answer": "A",
              "explanation": "but what they don’t realise is that it’s the lack of training in many hotel jobs which is a huge factor."
            },
            {
              "number": 12,
              "prompt": "What is the impact of high staff turnover on managers?",
              "options": [
                {
                  "key": "A",
                  "text": "an increased workload"
                },
                {
                  "key": "B",
                  "text": "low morale"
                },
                {
                  "key": "C",
                  "text": "an inability to meet targets"
                }
              ],
              "answer": "A",
              "explanation": "Well, having to recruit new staff all the time can be very time-consuming, and managers may have to cover some duties while waiting for new staff to arrive."
            },
            {
              "number": 13,
              "prompt": "What mistake should managers always avoid?",
              "options": [
                {
                  "key": "A",
                  "text": "failing to treat staff equally"
                },
                {
                  "key": "B",
                  "text": "reorganising shifts without warning"
                },
                {
                  "key": "C",
                  "text": "neglecting to have enough staff during busy periods"
                }
              ],
              "answer": "A",
              "explanation": "When organising shifts, for example, make sure you never give certain staff preferential treatment. All staff should be given some choice about when they work, and everyone should have to work some evening and weekend shifts."
            },
            {
              "number": 14,
              "prompt": "What unexpected benefit did Dunwich Hotel notice after improving staff retention rates?",
              "options": [
                {
                  "key": "A",
                  "text": "a fall in customer complaints"
                },
                {
                  "key": "B",
                  "text": "an increase in loyalty club membership"
                },
                {
                  "key": "C",
                  "text": "a rise in spending per customer"
                }
              ],
              "answer": "C",
              "explanation": "Not only did the level of complaints fall, but they also noticed a significant increase in the amount each customer spent during their stay."
            }
          ],
          "id": "g11"
        },
        {
          "type": "matching",
          "label": "Questions 15–20",
          "instructions": "Which way of reducing staff turnover was used in each of the following hotels? Choose the correct letter, A–C, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "improving relationships and teamwork"
            },
            {
              "key": "B",
              "text": "offering incentives and financial benefits"
            },
            {
              "key": "C",
              "text": "providing career opportunities"
            }
          ],
          "questions": [
            {
              "number": 15,
              "prompt": "The Sun Club",
              "answer": "A",
              "explanation": "They weren’t made to feel they were partners who were contributing to the success of the business as a whole. This situation has changed. Junior staff at all levels are regularly invited to meetings where their ideas are welcomed."
            },
            {
              "number": 16,
              "prompt": "The Portland",
              "answer": "C",
              "explanation": "Their first step was to introduce a scheme for recognising talent amongst their employees."
            },
            {
              "number": 17,
              "prompt": "Bluewater Hotels",
              "answer": "B",
              "explanation": "As a reward, they’re sent on an all-expenses-paid trip abroad every year."
            },
            {
              "number": 18,
              "prompt": "Pentlow Hotels",
              "answer": "C",
              "explanation": "In order to encourage them to see that working in a hotel could be worthwhile and rewarding, with good prospects, they introduced a management programme."
            },
            {
              "number": 19,
              "prompt": "Green Planet",
              "answer": "B",
              "explanation": "To make life easier for staff, many of whom had childcare responsibilities, the hotel began issuing vouchers to help cover the cost of childcare."
            },
            {
              "number": 20,
              "prompt": "The Amesbury",
              "answer": "A",
              "explanation": "Since she joined the company, she has made a huge effort to achieve this by creating a co-operative and supportive environment. For her, the staff are part of a large family where everyone is valued."
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
          "instructions": "Choose TWO letters, A–E. Which TWO points do Thomas and Jeanne make about Thomas’s sporting activities at school?",
          "options": [
            {
              "key": "A",
              "text": "He should have felt more positive about them."
            },
            {
              "key": "B",
              "text": "The training was too challenging for him."
            },
            {
              "key": "C",
              "text": "He could have worked harder at them."
            },
            {
              "key": "D",
              "text": "His parents were disappointed in him."
            },
            {
              "key": "E",
              "text": "His fellow students admired him."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO points do Thomas and Jeanne make about Thomas’s sporting activities at school?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "Yeah - that was my goal, and all my classmates assumed I would achieve it; they thought I was brilliant. Perhaps they should have pushed me harder, though."
            },
            {
              "number": 22,
              "prompt": "Which TWO points do Thomas and Jeanne make about Thomas’s sporting activities at school?",
              "answer": [
                "C",
                "E"
              ],
              "explanation": "Yeah - that was my goal, and all my classmates assumed I would achieve it; they thought I was brilliant. Perhaps they should have pushed me harder, though."
            }
          ],
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO feelings did Thomas experience when he was in Kenya?",
          "options": [
            {
              "key": "A",
              "text": "disbelief"
            },
            {
              "key": "B",
              "text": "relief"
            },
            {
              "key": "C",
              "text": "stress"
            },
            {
              "key": "D",
              "text": "gratitude"
            },
            {
              "key": "E",
              "text": "homesickness"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO feelings did Thomas experience when he was in Kenya?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "I just kept thinking how fortunate I was. What a great chance this was! I thought ‘this can’t be happening’!"
            },
            {
              "number": 24,
              "prompt": "Which TWO feelings did Thomas experience when he was in Kenya?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "I just kept thinking how fortunate I was. What a great chance this was! I thought ‘this can’t be happening’!"
            }
          ],
          "id": "g23"
        },
        {
          "type": "matching",
          "label": "Questions 25–30",
          "instructions": "What comment do the students make about the development of each of the following items of sporting equipment? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "It could cause excessive sweating."
            },
            {
              "key": "B",
              "text": "The material was being mass produced for another purpose."
            },
            {
              "key": "C",
              "text": "People often needed to make their own."
            },
            {
              "key": "D",
              "text": "It often had to be replaced."
            },
            {
              "key": "E",
              "text": "The material was expensive."
            },
            {
              "key": "F",
              "text": "It was unpopular among spectators."
            },
            {
              "key": "G",
              "text": "It caused injuries."
            },
            {
              "key": "H",
              "text": "No one ring it liked it at first."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "the table tennis bat",
              "answer": "B",
              "explanation": "In about the 1920s, a factory was making rolls of the rubber in bulk for something like horse harnesses."
            },
            {
              "number": 26,
              "prompt": "the cricket helmet",
              "answer": "F",
              "explanation": "I’m just looking on the internet … and it says that when the first cricket helmet came in, in 1978, the Australian batsman who first wore it was booed and jeered by people watching because it was so ugly!"
            },
            {
              "number": 27,
              "prompt": "the cycle helmet",
              "answer": "A",
              "explanation": "It says serious cyclists ended up with wet hair from all the hard exercise."
            },
            {
              "number": 28,
              "prompt": "the golf club",
              "answer": "D",
              "explanation": "I remember my great grandfather telling me that because a club was made entirely of wood, it would easily break and players had to get another."
            },
            {
              "number": 29,
              "prompt": "the hockey stick",
              "answer": "C",
              "explanation": "What it does say here, though, is that when the game started you had to produce a stick yourself."
            },
            {
              "number": 30,
              "prompt": "the football",
              "answer": "G",
              "explanation": "You can imagine the damage to player’s necks when the ball was headed."
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
              "text": "What is maple syrup? made from the sap of the maple tree added to food or used in cooking colour described as"
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "very",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "compared to refined sugar",
              "noBullet": true
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
              "text": "Today’s maple syrup"
            },
            {
              "kind": "subheader",
              "text": "The trees"
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "The changing temperature and movement of water within the tree produces the sap."
            },
            {
              "kind": "subheader",
              "text": "The production"
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
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "The syrup is ready for use."
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
                "golden"
              ],
              "wordLimit": 1,
              "explanation": "Maple syrup is a thick, golden"
            },
            {
              "number": 32,
              "prompt": "_______",
              "answer": [
                "healthy"
              ],
              "wordLimit": 1,
              "explanation": "it provides a healthy alternative to refined sugar."
            },
            {
              "number": 33,
              "prompt": "The maple tree has many species needs sunny days and cool nights maple leaf has been on the Canadian flag since 1964 needs moist soil but does not need fertiliser as well best growing conditions and _______ are in Canada and North America",
              "answer": [
                "climate"
              ],
              "wordLimit": 1,
              "explanation": "In these areas, the climate suits the trees perfectly."
            },
            {
              "number": 34,
              "prompt": "Early maple sugar producers made holes in the tree trunks used hot _______ to heat the sap used tree bark to make containers for collection sweetened food and drink with sugar",
              "answer": [
                "rock"
              ],
              "wordLimit": 1,
              "explanation": "/ rocks they boiled the liquid by placing pieces of rock that had become scorching hot from the sun into the sap."
            },
            {
              "number": 35,
              "prompt": "Tree trunks may not have the correct _______ until they have been growing for 40 years.",
              "answer": [
                "diameter"
              ],
              "wordLimit": 1,
              "explanation": "The trees have to be well looked after and they cannot be used to make syrup until the trunks reach a diameter of around 25 centimetres. This can take anything up to 40 years."
            },
            {
              "number": 36,
              "prompt": "A tap drilled into the trunk and a _______ carries the sap into a bucket.",
              "answer": [
                "tube"
              ],
              "wordLimit": 1,
              "explanation": "When the tree is ready, it can be tapped and this involves drilling a small hole into the trunk and inserting a tube into it that ends in a bucket."
            },
            {
              "number": 37,
              "prompt": "Large pans of sap called evaporators are heated by means of a _______ .",
              "answer": [
                "fire"
              ],
              "wordLimit": 1,
              "explanation": "These are basically extremely large pans - the sap is poured into these, a fire is built and the pans are then heated until the sap boils."
            },
            {
              "number": 38,
              "prompt": "A lot of _______ is produced during the evaporation process.",
              "answer": [
                "steam"
              ],
              "wordLimit": 1,
              "explanation": "The evaporation process creates large quantities of steam"
            },
            {
              "number": 39,
              "prompt": "‘Sugar sand’ is removed because it makes the syrup look _______ and affects the taste.",
              "answer": [
                "cloudy"
              ],
              "wordLimit": 1,
              "explanation": "After this process, something called ‘sugar sand’ has to be filtered out as this builds up during the boiling and gives the syrup a cloudy appearance and a slightly gritty taste."
            },
            {
              "number": 40,
              "prompt": "A huge quantity of sap is needed to make a _______ of maple syrup.",
              "answer": [
                "litre"
              ],
              "wordLimit": 1,
              "explanation": "/ liter It takes 40 litres of sap to produce one litre of maple syrup so you can get an idea of how much is needed!"
            }
          ],
          "formTitle": "Maple syrup",
          "id": "g31"
        }
      ]
    }
  ]
}
$c17t4l$,
  true
);

