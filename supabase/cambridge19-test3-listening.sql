DELETE FROM public.tests
WHERE skill = 'listening' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'listening',
  'Cambridge IELTS 19',
  'Test 3',
  'academic',
  2004,
  $c19t3l$
{
  "audioPath": "Cambridge 19 Test 3.mp3",
  "sections": [
    {
      "id": "p1",
      "title": "Part 1",
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the notes below. Write ONE WORD AND/OR A NUMBER for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Where to go"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Fish market"
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
              "text": "Organic shop"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "- below a restaurant in the large, grey building"
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
              "prompt": "- Kite Place - near the _______",
              "answer": [
                "harbour"
              ],
              "wordLimit": 1,
              "explanation": "/ harbor Well, there are plenty of places to buy food in Kite Place- it’s the area by the harbour."
            },
            {
              "number": 2,
              "prompt": "- cross the _______ and turn right",
              "answer": [
                "bridge"
              ],
              "wordLimit": 1,
              "explanation": "It’s at the far end of Kite Place, so you have to go over the bridge and then it’s on the right."
            },
            {
              "number": 3,
              "prompt": "- best to go before _______ pm, earlier than closing time",
              "answer": [
                "3.30",
                "3"
              ],
              "wordLimit": 1,
              "explanation": ":30 / three thirty / half 3 / three As long as you get there by 3.30. you should be fine. It’s only 11 now, so plenty of time."
            },
            {
              "number": 4,
              "prompt": "- called _______",
              "answer": [
                "Rose"
              ],
              "wordLimit": 1,
              "explanation": "/ rose it’s the name of a flower. I know, it’s ’Rose’."
            },
            {
              "number": 5,
              "prompt": "- look for the large _______ outside",
              "answer": [
                "sign"
              ],
              "wordLimit": 1,
              "explanation": "You can’t miss it-there’s also a big sign on the pavement so you can look for that."
            },
            {
              "number": 6,
              "prompt": "Supermarket take a _______ minibus, number 289",
              "answer": [
                "purple"
              ],
              "wordLimit": 1,
              "explanation": "Yeah- you should be able to get everything you need, but there’s a minibus that goes to the supermarket if you need it. It’s purple and the number is 289."
            }
          ],
          "formTitle": "Local food shops",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–10",
          "instructions": "Complete the table below. Write ONE WORD ONLY for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "To buy Other ideas"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "Organic shop beans and a"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "for dessert spices and",
              "noBullet": true
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
              "prompt": "Fish market a dozen prawns a handful of _______ (type of seaweed)",
              "answer": [
                "samphire"
              ],
              "wordLimit": 1,
              "explanation": "It’s S-A-M-P-H-l-R-E."
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "melon"
              ],
              "wordLimit": 1,
              "explanation": "I’m not sure- they’re not always ripe. I’d prefer a melon- it’s bigger too."
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "coconut"
              ],
              "wordLimit": 1,
              "explanation": "The owner also sells a lot of spices there that you can put in a curry, and things like coconut."
            },
            {
              "number": 10,
              "prompt": "Bakery a brown loaf a _______ tart",
              "answer": [
                "strawberry"
              ],
              "wordLimit": 1,
              "explanation": "they have a whole range of tarts and the best are the strawberry ones."
            }
          ],
          "formTitle": "Shopping",
          "id": "g7"
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
          "instructions": "What information is given about each of the following festival workshops? Choose the correct letter, A–H, for each.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "involves painting and drawing"
            },
            {
              "key": "B",
              "text": "will be led by a prize-winning author"
            },
            {
              "key": "C",
              "text": "is aimed at children with a disability"
            },
            {
              "key": "D",
              "text": "involves a drama activity"
            },
            {
              "key": "E",
              "text": "focuses on new relationships"
            },
            {
              "key": "F",
              "text": "is aimed at a specific age group"
            },
            {
              "key": "G",
              "text": "explores an unhappy feeling"
            },
            {
              "key": "H",
              "text": "raises awareness of a particular culture"
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "Superheroes",
              "answer": "C",
              "explanation": "there’s a very special event called Superheroes. This is a chance for deaf children to share their reading experience"
            },
            {
              "number": 12,
              "prompt": "Just do it",
              "answer": "D",
              "explanation": "‘Just do it’ is a practical workshop led by the well-known illustrator Mark Keane. He’ll take participants on a magical journey to faraway lands with an opportunity for aspiring actors to do some role play."
            },
            {
              "number": 13,
              "prompt": "Count on me",
              "answer": "F",
              "explanation": "‘Count on me’ is an inspiring and entertaining look at the issues of friendship for 13-14-year-olds."
            },
            {
              "number": 14,
              "prompt": "Speak up",
              "answer": "G",
              "explanation": "‘Speak up’ is part of a series of workshops on the subject of mental health. This is a creative writing workshop encouraging children to describe situations where young people experience loneliness."
            },
            {
              "number": 15,
              "prompt": "Jump for joy",
              "answer": "B",
              "explanation": "‘Jump for joy’, as many of you will know, is the heart-warming, best-selling story by Nina Karan about a young girl’s trip to visit her relatives in India. It recently received the gold medal at the Waterford Awards."
            },
            {
              "number": 16,
              "prompt": "Sticks and stones",
              "answer": "H",
              "explanation": "‘Sticks and stones’ is the beautifully illustrated picture book for young readers about a community who organise an African-Caribbean festival to help local children learn about their Jamaican roots."
            }
          ],
          "id": "g11"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 17–18",
          "instructions": "Choose TWO letters, A–E. Which TWO reasons does the speaker give for recommending Alive and Kicking",
          "options": [
            {
              "key": "A",
              "text": "It will appeal to both boys and girls."
            },
            {
              "key": "B",
              "text": "The author is well known."
            },
            {
              "key": "C",
              "text": "It has colourful illustrations."
            },
            {
              "key": "D",
              "text": "It is funny."
            },
            {
              "key": "E",
              "text": "It deals with an important topic."
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "Which TWO reasons does the speaker give for recommending Alive and Kicking",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Usually, books like this are quite sad, but this one actually made me cry with laughter. It deals with the serious issue of immigration"
            },
            {
              "number": 18,
              "prompt": "Which TWO reasons does the speaker give for recommending Alive and Kicking",
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Usually, books like this are quite sad, but this one actually made me cry with laughter. It deals with the serious issue of immigration"
            }
          ],
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 19–20",
          "instructions": "Choose TWO letters, A–E. Which TWO pieces of advice does the speaker give to parents about reading?",
          "options": [
            {
              "key": "A",
              "text": "Encourage children to write down new vocabulary."
            },
            {
              "key": "B",
              "text": "Allow children to listen to audio books."
            },
            {
              "key": "C",
              "text": "Get recommendations from librarians."
            },
            {
              "key": "D",
              "text": "Give children a choice about what they read."
            },
            {
              "key": "E",
              "text": "Only read aloud to children until they can read independently."
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Which TWO pieces of advice does the speaker give to parents about reading?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "If you don’t have time for this, then let them listen to audio books. You can introduce new authors and genres to them. Librarians should be able to help you with this."
            },
            {
              "number": 20,
              "prompt": "Which TWO pieces of advice does the speaker give to parents about reading?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "If you don’t have time for this, then let them listen to audio books. You can introduce new authors and genres to them. Librarians should be able to help you with this."
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
              "prompt": "How does Clare feel about the students in her Year 12 science class?",
              "options": [
                {
                  "key": "A",
                  "text": "worried that they are not making progress"
                },
                {
                  "key": "B",
                  "text": "challenged by their poor behaviour in class"
                },
                {
                  "key": "C",
                  "text": "frustrated at their lack of interest in the subject"
                }
              ],
              "answer": "C",
              "explanation": "Not brilliant. I’m really struggling with my Year 12 science class."
            },
            {
              "number": 22,
              "prompt": "How does Jake react to Clare’s suggestion about an experiment based on children’s diet?",
              "options": [
                {
                  "key": "A",
                  "text": "He is concerned that the results might not be meaningful."
                },
                {
                  "key": "B",
                  "text": "He feels some of the data might be difficult to obtain."
                },
                {
                  "key": "C",
                  "text": "He suspects that the conclusions might be upsetting."
                }
              ],
              "answer": "B",
              "explanation": "I have to design an experiment for them to do. I was wondering about something on the children’s diets"
            },
            {
              "number": 23,
              "prompt": "What problem do they agree may be involved in an experiment involving animals?",
              "options": [
                {
                  "key": "A",
                  "text": "Any results may not apply to humans."
                },
                {
                  "key": "B",
                  "text": "It may be complicated to get permission."
                },
                {
                  "key": "C",
                  "text": "Students may not be happy about animal experiments."
                }
              ],
              "answer": "A",
              "explanation": "But if we found out that, say, a particular diet affects the health of animals, the same thing wouldn’t necessarily be true for people, would it?"
            },
            {
              "number": 24,
              "prompt": "What question do they decide the experiment should address?",
              "options": [
                {
                  "key": "A",
                  "text": "Are mice capable of controlling their food intake?"
                },
                {
                  "key": "B",
                  "text": "Does an increase in sugar lead to health problems?"
                },
                {
                  "key": "C",
                  "text": "How much do supplements of different kinds affect health?"
                }
              ],
              "answer": "A",
              "explanation": "In fact, maybe the focus could be on whether mice can control their own diet."
            },
            {
              "number": 25,
              "prompt": "Clare might also consider doing another experiment involving",
              "options": [
                {
                  "key": "A",
                  "text": "other types of food supplement."
                },
                {
                  "key": "B",
                  "text": "different genetic strains of mice."
                },
                {
                  "key": "C",
                  "text": "varying amounts of exercise."
                }
              ],
              "answer": "C",
              "explanation": "Like, you could give some of the mice the chance to be more active, running on a wheel or something, and the others just sit around and don’t do much."
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 26–30",
          "instructions": "Complete the flow-chart below. Choose FIVE answers from the box, A–H.",
          "summaryTitle": "",
          "summaryText": "⭣\nDivide the mice into two groups, each with a different {27} .\n⭣\nPut each group in a separate cage.\nFeed group A commercial mouse food.\nFeed group B the same, but also sugar contained in {28} .\n⭣\nTake measurements using an electronic scale.\nPlace them in a weighing chamber to prevent {29} .\n\n⭣\nDo all necessary {30} .",
          "wordBank": [
            {
              "key": "A",
              "text": "size"
            },
            {
              "key": "B",
              "text": "escape"
            },
            {
              "key": "C",
              "text": "age"
            },
            {
              "key": "D",
              "text": "water"
            },
            {
              "key": "E",
              "text": "cereal"
            },
            {
              "key": "F",
              "text": "calculations"
            },
            {
              "key": "G",
              "text": "changes"
            },
            {
              "key": "H",
              "text": "colour"
            }
          ],
          "questions": [
            {
              "number": 26,
              "prompt": "",
              "answer": "C",
              "explanation": "I’d say about 12. And all young ones, not a mixture of old and young."
            },
            {
              "number": 27,
              "prompt": "",
              "answer": "H",
              "explanation": "You could use food colouring, that wouldn’t hurt them."
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "E",
              "explanation": "I might be better to give them something like cereal with it."
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "B",
              "explanation": "So you need something called a weighing chamber to stop the mice from running away."
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "F",
              "explanation": "So once we’ve measured the weight gain of each mouse we can work out the average for each group, as well as the standard deviation."
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
              "kind": "question",
              "number": 31
            },
            {
              "kind": "subheader",
              "text": "Effects of microplastics"
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
              "text": "They may not affect human health, but they are already banned in skin cleaning products and"
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
              "text": "Microplastics in the soil - a study by Anglia Ruskin University"
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
              "text": "The study found that microplastics caused:"
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "loss in earthworms fewer seeds to germinate a rise in the level of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "in the soil.",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Where microplastics come from fibres from some _______ during washing the breakdown of large pieces of plastic waste from industry the action of vehicle tyres on roads",
              "answer": [
                "clothing"
              ],
              "wordLimit": 1,
              "explanation": "Threads and microfibres detach from synthetic clothing every time they’re put in a washing machine"
            },
            {
              "number": 32,
              "prompt": "They cause injuries to the _______ of wildlife and affect their digestive systems.",
              "answer": [
                "mouths"
              ],
              "wordLimit": 1,
              "explanation": "There is evidence that microplastics harm small creatures in a variety of ways, such as by damaging their mouths, or by impairing their ability to feed, for example when microplastics get lodged in their digestive system."
            },
            {
              "number": 33,
              "prompt": "They enter the food chain, e.g., in bottled and tap water, _______ and seafood.",
              "answer": [
                "salt"
              ],
              "wordLimit": 1,
              "explanation": "Surprisingly perhaps, it is likely that humans consume microplastics, as these have been detected in a wide range of food and drink products, including bottled water, as well as in water that comes direct from the tap. What’s more, salt and many kinds of seafood have also been found to contain microplastics."
            },
            {
              "number": 34,
              "prompt": "_______ in some countries.",
              "answer": [
                "toothpaste"
              ],
              "wordLimit": 1,
              "explanation": "In many countries, including here in the UK, there is legislation which prevents manufacturers from adding plastic microbeads to shower gels, facial cleansers and toothpaste."
            },
            {
              "number": 35,
              "prompt": "Microplastics enter the soil through the air, rain and _______ .",
              "answer": [
                "fertilizers"
              ],
              "wordLimit": 1,
              "explanation": "/ fertilisers but we do know they are carried in the air and deposited in the soil by rain. What’s more, many of the fertilisers used by both farmers and gardeners contain microplastics."
            },
            {
              "number": 36,
              "prompt": "Earthworms are important because they add _______ to the soil.",
              "answer": [
                "nutrients"
              ],
              "wordLimit": 1,
              "explanation": "A team from the Anglia Ruskin University in Cambridge has carried out a study of the effects of microplastics on the digestive tracts of earthworms. These worms, which live in topsoil, are an essential component of our agricultural system. By feeding on soil, they mix nutrients into it, thereby making it more fertile."
            },
            {
              "number": 37,
              "prompt": "The study aimed to find whether microplastics in earthworms affect the _______ of plants.",
              "answer": [
                "growth"
              ],
              "wordLimit": 1,
              "explanation": "The researchers set out to discover whether the introduction of microplastics into the soil- and the subsequent ingestion of these by earthworms- would impact soil quality and ultimately inhibit plant growth."
            },
            {
              "number": 38,
              "prompt": "_______",
              "answer": [
                "weight"
              ],
              "wordLimit": 1,
              "explanation": "The result was that the worms lost weight rapidly."
            },
            {
              "number": 39,
              "prompt": "_______",
              "answer": [
                "acid"
              ],
              "wordLimit": 1,
              "explanation": "The team also discovered that there was an increase in the amount of acid found in the soil"
            },
            {
              "number": 40,
              "prompt": "The study concluded: soil should be seen as an important natural process. changes to soil damage both ecosystems and _______",
              "answer": [
                "society"
              ],
              "wordLimit": 1,
              "explanation": "That is, when soil becomes impoverished by the presence of microplastics, not only ecosystems but also the whole of society are negatively impacted."
            }
          ],
          "formTitle": "Microplastics",
          "id": "g31"
        }
      ]
    }
  ]
}
$c19t3l$,
  true
);
