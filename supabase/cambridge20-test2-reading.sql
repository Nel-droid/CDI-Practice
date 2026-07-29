DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 20',
  'Test 2',
  'academic',
  3600,
  $c20t2r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Manatees",
      "passage": [
        {
          "ref": "1",
          "text": "Manatees, also known as sea cows, are aquatic mammals that belong to a group of animals called Sirenia. This group also contains dugongs. Dugongs and manatees look quite alike - they are similar in size, colour and shape, and both have flexible flippers for forelimbs. However, the manatee has a broad, rounded tail, whereas the dugongs is fluked, like that of a whale. There are three species of manatees: the West Indian manatee (Trichechus manatus), the African manatee (Trichechus senegalensis) and the Amazonian manatee (Trichechus inunguis). Unlike most mammals, manatees have only six bones in their neck - most others, including humans and giraffes, have seven. This short neck allows a manatee to move its head up and down, but not side to side. To see something on its left or its right, a manatee must turn its entire body, steering with its flippers. Manatees have pectoral flippers but no back limbs, only a tail for propulsion. They do have pelvic bones, however - a leftover from their evolution from a four-legged to a fully aquatic animal. Manatees share some visual similarities to elephants. Like elephants, manatees have thick, wrinkled skin. They also have some hairs covering their bodies which help them sense vibrations in the water around them."
        },
        {
          "ref": "2",
          "text": "Seagrasses and other marine plants make up most of a manatee’s diet. Manatees spend about eight hours each day grazing and uprooting plants. They eat up to 15% of their weight in food each day. African manatees are omnivorous - studies have shown that molluscs and fish make up a small part of their diets. West Indian and Amazonian manatees are both herbivores. Manatees’ teeth are all molars - flat, rounded teeth for grinding food. Due to manatees’ abrasive aquatic plant diet, these teeth get worn down and they eventually fall out, so they continually grow new teeth that get pushed forward to replace the ones they lose. Instead of having incisors to grasp their food, manatees have lips which function like a pair of hands to help tear food away from the seafloor."
        },
        {
          "ref": "3",
          "text": "Manatees are fully aquatic, but as mammals, they need to come up to the surface to breathe. When awake, they typically surface every two to four minutes, but they can hold their breath for much longer. Adult manatees sleep underwater for 10-12 hours a day, but they come up for air every 15-"
        },
        {
          "ref": "4",
          "text": "20 minutes. Active manatees need to breathe more frequently. It’s thought that manatees use their muscular diaphragm and breathing to adjust their buoyancy. They may use diaphragm contractions to compress and store gas in folds in their large intestine to help them float. The West Indian manatee reaches about 3.5 metros long and weighs on average around 500 kilo grammes. It moves between fresh water and salt water, taking advantage of coastal mangroves and coral reefs, rivers, lakes and inland lagoons. There are two subspecies of West Indian manatee: the Antillean manatee is found in waters from the Bahamas to Brazil, whereas the Florida manatee is found in US waters, although some individuals have been recorded in the Bahamas. In winter, the Florida manatee is typically restricted to Florida. When the ambient water temperature drops below 20°C, it takes refuge in naturally and artificially warmed water, such as at the warm-water outfalls from powerplants."
        },
        {
          "ref": "5",
          "text": "The African manatee is also about 3.5 metros long and found in the sea along the west coast of Africa, from Mauritania down to Angola. The species also makes use of rivers, with the mammals seen in landlocked countries such as Mali and Niger. The Amazonian manatee is the smallest species, though it is still a big animal. It grows to about 2.5 metros long and 350 kilo grammes. Amazonian manatees favour calm, shallow waters that are above 23°C This species is found in fresh water in the Amazon Basin in Brazil, as well as in Colombia, Ecuador and Peru. All three manatee species are endangered or at a heightened risk of extinction. The African manatee and Amazonian manatee are both listed as Vulnerable by the International Union for Conservation of Nature (IUCN). It is estimated that 140,000 Amazonian manatees were killed between 1935 and 1954 for their meat, fat and skin, with the latter used to make leather. In more recent years, African manatee decline has been tied to incidental capture in fishing nets and hunting. Manatee hunting is now illegal in every country the African species is found in. The two subspecies of West Indian manatee are listed as Endangered by the IUCN. Both are also expected to undergo a decline of 20% over the next 40 years. A review of almost 1,800 cases of entanglement in fishing nets and of plastic consumption among marine mammals in US waters from 2009 to 2020 found that at least 700 cases involved manatees. The chief cause of death in Florida manatees is boat strikes. However, laws in certain parts of Florida now limit boat speeds during winter, allowing slow-moving manatees more time to respond."
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the notes below. Choose ONE WORD AND/OR A NUMBER from the passage for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "subheader",
              "text": "Movement"
            },
            {
              "kind": "static",
              "text": "- have fewer neck bones than most mammals"
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
              "text": "Feeding"
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
              "text": "Breathing"
            },
            {
              "kind": "static",
              "text": "- come to the surface for air every 2-4 minutes when awake and every 15-20 while sleeping"
            },
            {
              "kind": "question",
              "number": 6
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "- look similar to dugongs, but with a differently shaped _______",
              "answer": [
                "Tail"
              ],
              "wordLimit": 1,
              "explanation": "However, the manatee has a broad, rounded tail, whereas the dugongs is fluked, like that of a whale",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "However, the manatee has a broad, rounded tail, whereas the dugongs is fluked, like that of a whale"
              }
            },
            {
              "number": 2,
              "prompt": "- need to use their _______ to help to turn their bodies around in order to look sideways",
              "answer": [
                "Flippers"
              ],
              "wordLimit": 1,
              "explanation": "a manatee must turn its entire body, steering with its flippers",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "a manatee must turn its entire body, steering with its flippers"
              }
            },
            {
              "number": 3,
              "prompt": "- sense vibrations in the water by means of _______ on their skin",
              "answer": [
                "Hairs"
              ],
              "wordLimit": 1,
              "explanation": "They also have some hairs covering their bodies which help them sense vibrations in the water around them",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "They also have some hairs covering their bodies which help them sense vibrations in the water around them"
              }
            },
            {
              "number": 4,
              "prompt": "- eat mainly aquatic vegetation, such as _______",
              "answer": [
                "Seagrasses"
              ],
              "wordLimit": 1,
              "explanation": "Seagrasses and other marine plants make up most of a manatee’s diet",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Seagrasses and other marine plants make up most of a manatee’s diet"
              }
            },
            {
              "number": 5,
              "prompt": "- grasp and pull up plants with their _______",
              "answer": [
                "Lips"
              ],
              "wordLimit": 1,
              "explanation": "Instead of having incisors to grasp their food, manatees have lips which function like a pair of hands to help tear food away from the seafloor",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Instead of having incisors to grasp their food, manatees have lips which function like a pair of hands to help tear food"
              }
            },
            {
              "number": 6,
              "prompt": "- may regulate the _______ of their bodies by using muscles of diaphragm to store air internally",
              "answer": [
                "Buoyancy"
              ],
              "wordLimit": 1,
              "explanation": "It’s thought that manatees use their muscular diaphragm and breathing to adjust their buoyancy",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "It’s thought that manatees use their muscular diaphragm and breathing to adjust their buoyancy"
              }
            }
          ],
          "formTitle": "Appearance",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 7–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 7,
              "prompt": "West Indian manatees can be found in a variety of different aquatic habitats.",
              "answer": "TRUE",
              "explanation": "It moves between fresh water and salt water, taking advantage of coastal mangroves and coral reefs, rivers, lakes and inland lagoons",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "It moves between fresh water and salt water, taking advantage of coastal mangroves and coral reefs, rivers, lakes and in"
              }
            },
            {
              "number": 8,
              "prompt": "The Florida manatee lives in warmer waters than the Antillean manatee.",
              "answer": "NOT GIVEN",
              "explanation": "In winter, the Florida manatee is typically restricted to Florida. When the ambient water temperature drops below 20°C, it takes refuge in naturally and artificially warmed water, such as at the warm-water outfalls from powerplants",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "In winter, the Florida manatee is typically restricted to Florida. When the ambient water temperature drops below 20°C, "
              }
            },
            {
              "number": 9,
              "prompt": "The African manatee’s range is limited to coastal waters between the West African countries of Mauritania and Angola.",
              "answer": "FALSE",
              "explanation": "The African manatee is also about 3.5 metros long and found in the sea along the west coast of Africa, from Mauritania down to Angola. The species also makes use of rivers, with the mammals seen in landlocked countries such as Mali and Niger",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "The African manatee is also about 3.5 metros long and found in the sea along the west coast of Africa, from Mauritania d"
              }
            },
            {
              "number": 10,
              "prompt": "The extent of the loss of Amazonian manatees in the mid-twentieth century was only revealed many years later.",
              "answer": "NOT GIVEN",
              "explanation": "It is estimated that 140,000 Amazonian manatees were killed between 1935 and 1954 for their meat, fat and skin",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "It is estimated that 140,000 Amazonian manatees were killed between 1935 and 1954 for their meat, fat and skin"
              }
            },
            {
              "number": 11,
              "prompt": "It is predicted that West Indian manatee populations will fall in the coming decades. === PAGE 5 ===",
              "answer": "TRUE",
              "explanation": "Both are also expected to undergo a decline of 20% over the next 40 years",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "Both are also expected to undergo a decline of 20% over the next 40 years"
              }
            },
            {
              "number": 12,
              "prompt": "The risk to manatees from entanglement and plastic consumption increased significantly in the period 2009-2020.",
              "answer": "NOT GIVEN",
              "explanation": "A review of almost 1,800 cases of entanglement in fishing nets and of plastic consumption among marine mammals in US waters from 2009 to 2020 found that at least 700 cases involved manatees",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "A review of almost 1,800 cases of entanglement in fishing nets and of plastic consumption among marine mammals in US wat"
              }
            },
            {
              "number": 13,
              "prompt": "There is some legislation in place which aims to reduce the likelihood of boat strikes on manatees in Florida. === PAGE 6 ===",
              "answer": "TRUE",
              "explanation": "However, laws in certain parts of Florida now limit boat speeds during winter, allowing slow-moving manatees more time to respond",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "However, laws in certain parts of Florida now limit boat speeds during winter, allowing slow-moving manatees more time t"
              }
            }
          ],
          "id": "g7"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Procrastination",
      "passage": [
        {
          "ref": "A",
          "text": "Procrastination is the habit of delaying a necessary task, usually by focusing on less urgent, more enjoyable, and easier activities instead. We all do it from time to time. We might be composing a message to a friend who we have to let down, or putting together an important report for college or work, we’re doing our best to avoid doing the job at hand, but deep down we know that we should just be getting on with it. Unfortunately, berating ourselves won’t stop us procrastinating again. In fact, it’s one of the worst things we can do. This matters because, as my research shows, procrastination doesn’t just waste time, but is actually linked to other problems, too."
        },
        {
          "ref": "B",
          "text": "Contrary to popular belief, procrastination is not due to laziness or poor time management. Scientific studies suggest procrastination is, in fact, caused by poor mood management. This makes sense if we consider that people are more likely to put off starting or completing tasks that they are really not keen to do. If just thinking about the task threatens our sense of self-worth or makes us anxious, we will be more likely to put it off. Research involving brain imaging has found that areas of the brain linked to detection of threats and emotion regulation are actually different in people who chronically procrastinate compared to those who don’t procrastinate frequently."
        },
        {
          "ref": "C",
          "text": "Tasks that are emotionally loaded or difficult, such as preparing for exams, are prime candidates for procrastination. People with low self-esteem are more likely to procrastinate. Another group of people who tend to procrastinate are perfectionists, who worry their work will be judged harshly by others. We know that if we don’t finish that report or complete those home repairs, then what we did can’t be evaluated. When we avoid such tasks, we also avoid the negative emotions associated with them. This is rewarding, and it conditions us to use procrastination to repair our mood. If we engage in more enjoyable tasks instead, we get another mood boost. In the long run, however, procrastination isn’t an effective way of managing emotions. The ‘mood repair’ we experience is temporary. Afterwards, people tend to be left with a sense of guilt that not only increases their negative mood, but also reinforces their tendency to procrastinate."
        },
        {
          "ref": "D",
          "text": "So why is this such a problem? When most people think of the costs of procrastination, they think of the toll on productivity. For example, studies have shown that procrastination negatively impacts on student performance. But putting off reading textbooks and writing essays may affect other areas of students’ lives. In one study of over 3,000 German students over a six-month period, those who reported procrastinating over their university work were also more likely to engage in study-related misconduct, such as cheating and plagiarism. But the behaviour that procrastination was most closely linked with was using fraudulent excuses to get deadline extensions. Other research shows that employees on average spend almost a quarter of their workday procrastinating, and again this is linked with negative outcomes. In fact, in one US survey of over 22,000 employees, participants who said they regularly procrastinated had less annual income and less employment stability. For every one-point increase on a measure of chronic procrastination, annual income decreased by US$15,000."
        },
        {
          "ref": "E",
          "text": "Procrastination also correlates with serious health and well-being problems. A tendency to procrastinate is linked to poor mental health, including higher levels of depression and anxiety. Across numerous studies, I’ve found people who regularly procrastinate report a greater number of health issues, such as headaches, flu and colds, and digestive issues. They also experience higher levels of stress and poor sleep quality. They are less likely to practise healthy behaviours, such as eating a healthy diet and regularly exercising, and use destructive coping strategies to manage their stress. In one study of over 700 people, I found people prone to procrastination had a 63% greater risk ofpoor heart health after accounting for other personality traits and demographics."
        },
        {
          "ref": "F",
          "text": "Finding better ways of managing our emotions is one route out of the vicious cycle of procrastination. An important first step is to manage our environment and how we view the task. There are a number of evidence-based strategies that can help us fend off distractions that can occupy our minds when we should be focusing on the thing we should be getting on with. For example, reminding ourselves about why the task is important and valuable can increase positive feelings towards it. Forgiving ourselves and feeling compassion when we procrastinate can help break the procrastination cycle. We should admit that we feel bad, but not be overly critical of ourselves. We should remind ourselves that we’re not the first person to procrastinate, nor the last. Doing this can take the edge off the negative feelings we have about ourselves when we procrastinate. This can all make it easier to get back on track."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–16",
          "instructions": "Reading Passage 2 has six paragraphs, A–F. Which paragraph contains the following information? You may use any letter more than once.",
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
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "mention of false assumptions about why people",
              "answer": "B",
              "explanation": "Contrary to popular belief, procrastination is not due to laziness or poor time management. Scientific studies suggest procrastination is, in fact, caused by poor mood management",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Contrary to popular belief, procrastination is not due to laziness or poor time management. Scientific studies suggest p"
              }
            },
            {
              "number": 15,
              "prompt": "reference to the realisation that others also procrastinate",
              "answer": "F",
              "explanation": "We should admit that we feel bad, but not be overly critical of ourselves. We should remind ourselves that we’re not the first person to procrastinate, nor the last",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "We should admit that we feel bad, but not be overly critical of ourselves. We should remind ourselves that we’re not the"
              }
            },
            {
              "number": 16,
              "prompt": "neurological evidence of a link between procrastination",
              "answer": "B",
              "explanation": "Research involving brain imaging has found that areas of the brain linked to detection of threats and emotion regulation are actually different in people who chronically procrastinate compared to those who don’t procrastinate frequently",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Research involving brain imaging has found that areas of the brain linked to detection of threats and emotion regulation"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 17–22",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Many people think that procrastination is the result of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 17
            },
            {
              "kind": "static",
              "text": "Others believe it to be the result of an inability to organise time efficiently. But scientific studies suggest that procrastination is actually due to poor mood management. The tasks we are most likely to put off are those that could damage our self-esteem or cause us to feel",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 18
            },
            {
              "kind": "static",
              "text": ". when we think about them. Research comparing chronic procrastinators with other people even found differences in the brain regions associated with regulating emotions and identifying",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "static",
              "text": ". Emotionally loaded and difficult tasks often cause us to procrastinate. Getting ready to take",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": "might be a typical example of one such task. People who are likely to procrastinate tend to be either",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": "or those with low self-esteem. Procrastination is only a short-term measure for managing emotions. It’s often followed by a feeling of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": ", which worsens our mood and leads to more procrastination.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "procrastination is the result of _______",
              "answer": [
                "Laziness"
              ],
              "wordLimit": 1,
              "explanation": "Contrary to popular belief, procrastination is not due to laziness or poor time management",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Contrary to popular belief, procrastination is not due to laziness or poor time management"
              }
            },
            {
              "number": 18,
              "prompt": "self-esteem or cause us to feel _______",
              "answer": [
                "Anxious"
              ],
              "wordLimit": 1,
              "explanation": "If just thinking about the task threatens our sense of self-worth or makes us anxious, we will be more likely to put it off",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "If just thinking about the task threatens our sense of self-worth or makes us anxious, we will be more likely to put it "
              }
            },
            {
              "number": 19,
              "prompt": "emotions and identifying _______",
              "answer": [
                "Threats"
              ],
              "wordLimit": 1,
              "explanation": "Research involving brain imaging has found that areas of the brain linked to detection of threats and emotion regulation are actually different in people who chronically procrastinate compared to those who don’t procrastinate frequently",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Research involving brain imaging has found that areas of the brain linked to detection of threats and emotion regulation"
              }
            },
            {
              "number": 20,
              "prompt": "Getting ready to take _______",
              "answer": [
                "Exams"
              ],
              "wordLimit": 1,
              "explanation": "Tasks that are emotionally loaded or difficult, such as preparing for exams, are prime candidates for procrastination",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Tasks that are emotionally loaded or difficult, such as preparing for exams, are prime candidates for procrastination"
              }
            },
            {
              "number": 21,
              "prompt": "to procrastinate tend to be either _______",
              "answer": [
                "Perfectionists"
              ],
              "wordLimit": 1,
              "explanation": "Another group of people who tend to procrastinate are perfectionists, who worry their work will be judged harshly by others",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Another group of people who tend to procrastinate are perfectionists, who worry their work will be judged harshly by oth"
              }
            },
            {
              "number": 22,
              "prompt": "It’s often followed by a feeling of _______",
              "answer": [
                "Guilt"
              ],
              "wordLimit": 1,
              "explanation": "The ‘mood repair’ we experience is temporary. Afterwards, people tend to be left with a sense of guilt that not only increases their negative mood, but also reinforces their tendency to procrastinate",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "The ‘mood repair’ we experience is temporary. Afterwards, people tend to be left with a sense of guilt that not only inc"
              }
            }
          ],
          "formTitle": "What makes us procrastinate?",
          "id": "g17"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO comparisons between employees who often procrastinate and those who do not are mentioned in the text?",
          "options": [
            {
              "key": "A",
              "text": "Their salaries are lower."
            },
            {
              "key": "B",
              "text": "The quality of their work is inferior."
            },
            {
              "key": "C",
              "text": "They don’t keep their jobs for as long."
            },
            {
              "key": "D",
              "text": "They don’t enjoy their working lives as much."
            },
            {
              "key": "E",
              "text": "They have poorer relationships with colleagues."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO comparisons between employees who often procrastinate and those who do not are mentioned in the text?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "In fact, in one US survey of over 22,000 employees, participants who said they regularly procrastinated had less annual income and less employment stability",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "In fact, in one US survey of over 22,000 employees, participants who said they r"
              }
            },
            {
              "number": 24,
              "prompt": "Which TWO comparisons between employees who often procrastinate and those who do not are mentioned in the text?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "In fact, in one US survey of over 22,000 employees, participants who said they regularly procrastinated had less annual income and less employment stability",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "In fact, in one US survey of over 22,000 employees, participants who said they r"
              }
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO recommendations for getting out of a cycle of procrastination does the writer give?",
          "options": [
            {
              "key": "A",
              "text": "not judging ourselves harshly"
            },
            {
              "key": "B",
              "text": "setting ourselves manageable aims"
            },
            {
              "key": "C",
              "text": "rewarding ourselves for tasks achieved"
            },
            {
              "key": "D",
              "text": "prioritising tasks according to their importance"
            },
            {
              "key": "E",
              "text": "avoiding things that stop us concentrating on our tasks"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO recommendations for getting out of a cycle of procrastination does the writer give?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "There are a number of evidence-based strategies that can help us fend off distractions that can occupy our minds when we should be focusing on the thing we should be getting on with. For example, reminding ourselves about why the task is important and valuable can increase positive feelings towards it. Forgiving ourselves and feeling compassion when we procrastinate can help break the procrastination cycle.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "There are a number of evidence-based strategies that can help us fend off distra"
              }
            },
            {
              "number": 26,
              "prompt": "Which TWO recommendations for getting out of a cycle of procrastination does the writer give?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "There are a number of evidence-based strategies that can help us fend off distractions that can occupy our minds when we should be focusing on the thing we should be getting on with. For example, reminding ourselves about why the task is important and valuable can increase positive feelings towards it. Forgiving ourselves and feeling compassion when we procrastinate can help break the procrastination cycle.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "There are a number of evidence-based strategies that can help us fend off distra"
              }
            }
          ],
          "id": "g25"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Invasion of the Robot Umpires",
      "passage": [
        {
          "ref": "1",
          "text": "A few years ago, Fred DeJesus from Brooklyn, New York became the first umpire in a minor league baseball game to use something called the Automated Ball-Strike System (ABS), often referred to as the ‘rob-umpire’. Instead of making any judgments himself about a strike*, DeJesus had decisions fed to him through an earpiece, connected to a modified missile-tracking system. The contraption looked like a large black pizza box with one glowing green eye, it was mounted above the press stand."
        },
        {
          "ref": "2",
          "text": "Major League Baseball (MLB), who had commissioned the system, wanted human umpires to announce the calls, just as they would have done in the past. When the first pitch came in, a recorded voice told DeJesus it was a strike. Previously, calling a strike was a judgment call on the part of the umpire. Even if the batter does not hit the ball, a pitch that passes through the ‘strike zone’ (an imaginary zone about seventeen inches wide, stretching from the batter’s knees to the middle of his chest) is considered a strike. During that first game, when DeJesus announced calls, there was no heckling and no shouted disagreement. Nobody said a word."
        },
        {
          "ref": "3",
          "text": "For a hundred and fifty years or so, the strike zone has been the game’s animating force - countless arguments between a team’s manager and the umpire have taken place over its boundaries and whether a ball had crossed through it. The rules of play have evolved in various stages. Today, everyone knows that you may scream your disagreement in an umpire’s face, but you must never shout personal abuse at them or touch them. That’s a no-no. When the robe-umpires came, however, the arguments stopped."
        },
        {
          "ref": "4",
          "text": "During the first robe-umpire season, players complained about some strange calls. In response, MLB decided to tweak the dimensions of the zone, and the following year the consensus was that ABS is profoundly consistent. MLB says the device is near-perfect, precise to within fractions of an inch. “It’ll reduce controversy in the game, and be good for the game,” says Rob Manfred, who is Commissioner for MLB. But the question is whether controversy is worth reducing, or whether it is the sign of a human hand."
        },
        {
          "ref": "5",
          "text": "A human, at least, yells back. When I spoke with Frank Viola, a coach for a North Carolina team, he said that ABS works as designed, but that it was also unforgiving and pedantic, almost legalistic. “Manfred is a lawyer,” Viola noted. Some pitchers have complained that, compared with a humans,"
        },
        {
          "ref": "6",
          "text": "the robot’s strike zone seems too precise. Viola was once a major-league player himself. When he was pitching, he explained, umpires rewarded skill. “Throw it where you aimed, and it would be a strike, even if it was an inch or two outside. There was a dialogue between pitcher and umpire.” The executive tasked with running the experiment for MLB is Morgan Sword, who’s in charge of baseball operations. According to Sword, ABS was part of a larger project to make baseball more exciting since executives are terrified of losing younger fans, as has been the case with horse racing and boxing. He explains how they began the process by asking fans what version of baseball they found most exciting. The results showed that everyone wanted more action: more hits, more defense, more baserunning. This type of baseball essentially hasn’t existed since the 1960s, when the hundred-mile-an-hour fastball, which is difficult to hit and control, entered the game. It flattened the game into strikeouts, walks, and home runs - a type of play lacking much action. Sword’s team brainstormed potential fixes. Any rule that existed, they talked about changing - from changing the bats to changing the geometry of the field. But while all of these were ruled out as potential fixes, ABS was seen as a perfect vehicle for change. According to Sword, once you get the technology right, you can load any strike zone you want into the system. “It might be a triangle, or a blob, or something shaped like Texas. Over time, as baseball evolves, ABS can allow the zone to change with it.” “In the past twenty years, sports have moved away from judgment calls. Soccer has Video Assistant Referees (for offside decisions, for example). Tennis has Hawk-Eye (for line calls, for example). For almost a decade, baseball has used instant replay on the base paths. This is widely liked, even if the precision can sometimes cause problems. But these applications deal with something physical: bases, lines, goals. The boundaries of action are precise, delineated like the keys of a piano. This is not the case with ABS and the strike zone. Historically, a certain discretion has been appreciated.” I decided to email Alva Noe, a professor at Berkeley University and a baseball fan, for his opinion. “Hardly a day goes by that I don’t wake up and run through the reasons that this [robe-umpires] is such a terrible idea,” he replied. He later told me, “This is part of a movement to use algorithms to take the hard choices of living out of life.” Perhaps he’s right. We watch baseball to kill time, not to maximize it. Some players I have met take a dissenting stance toward the robots too, believing that accuracy is not the answer."
        },
        {
          "ref": "7",
          "text": "According to Joe Russo, who plays for a New Jersey team, “With technology, people just want everything to be perfect. That’s not reality. I think perfect would be weird. Your teams are always"
        },
        {
          "ref": "8",
          "text": "winning, work is always just great, there’s always money in your pocket, your car never breaks down. What is there to talk about?” *strike: a strike is when the batter swings at a ball and misses or when the batter does not swing at a ball that passes through the strike zone."
        }
      ],
      "groups": [
        {
          "type": "yes_no_notgiven",
          "label": "Questions 27–32",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 27,
              "prompt": "When DeJesus first used ABS, he shared decision-making about strikes with it.",
              "answer": "NO",
              "explanation": "DeJesus had decisions fed to him through an earpiece",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "DeJesus had decisions fed to him through an earpiece"
              }
            },
            {
              "number": 28,
              "prompt": "MLB considered it necessary to amend the size of the strike zone when criticisms were received from players.",
              "answer": "YES",
              "explanation": "In response, MLB decided to tweak the dimensions of the zone",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "In response, MLB decided to tweak the dimensions of the zone"
              }
            },
            {
              "number": 29,
              "prompt": "MLB is keen to justify the money spent on improving the accuracy of ABS’s calculations.",
              "answer": "NOT GIVEN",
              "explanation": "But the question is whether controversy is worth reducing, or whether it is the sign of a human hand",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "But the question is whether controversy is worth reducing, or whether it is the sign of a human hand"
              }
            },
            {
              "number": 30,
              "prompt": "The hundred-mile-an-hour fastball led to a more exciting style of play. === PAGE 15 ===",
              "answer": "NO",
              "explanation": "a type of play lacking much action",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "a type of play lacking much action"
              }
            },
            {
              "number": 31,
              "prompt": "The differing proposals for alterations to the baseball bat led to fierce debate on Sword’s team.",
              "answer": "NOT GIVEN",
              "explanation": "Sword’s team brainstormed potential fixes. Any rule that existed, they talked about changing - from changing the bats to changing the geometry of the field. But while all of these were ruled out as potential fixes, ABS was seen as a perfect vehicle for change",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Sword’s team brainstormed potential fixes. Any rule that existed, they talked about changing - from changing the bats to"
              }
            },
            {
              "number": 32,
              "prompt": "ABS makes changes to the shape of the strike zone feasible.",
              "answer": "YES",
              "explanation": "According to Sword, once you get the technology right, you can load any strike zone you want into the system. “It might be a triangle, or a blob, or something shaped like Texas. Over time, as baseball evolves, ABS can allow the zone to change with it.”",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "According to Sword, once you get the technology right, you can load any strike zone you want into the system. “It might "
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 33–37",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "had in their",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": ". The umpire’s job had, at one time, required a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "about whether a ball was a strike. A ball is considered a strike when the batter does not hit it and it crosses through a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "extending approximately from the batter’s knee to his chest. In the past,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "over strike calls were not uncommon, but today everyone accepts the complete ban on pushing or shoving the umpire. One difference, however, is that during the first game DeJesus used ABS, strike calls were met with",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "A.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 33,
              "prompt": "out decisions as they had in their _______",
              "answer": [
                "F"
              ],
              "wordLimit": 1,
              "explanation": "Major League Baseball (MLB), who had commissioned the system, wanted human umpires to announce the calls, just as they would have done in the past",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Major League Baseball (MLB), who had commissioned the system, wanted human umpires to announce the calls, just as they w"
              }
            },
            {
              "number": 34,
              "prompt": "job had, at one time, required a _______",
              "answer": [
                "D"
              ],
              "wordLimit": 1,
              "explanation": "Previously, calling a strike was a judgment call on the part of the umpire",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Previously, calling a strike was a judgment call on the part of the umpire"
              }
            },
            {
              "number": 35,
              "prompt": "hit it and it crosses through a _______",
              "answer": [
                "H"
              ],
              "wordLimit": 1,
              "explanation": "a pitch that passes through the ‘strike zone’ (an imaginary zone about seventeen inches wide, stretching from the batter’s knees to the middle of his chest) is considered a strike",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "a pitch that passes through the ‘strike zone’ (an imaginary zone about seventeen inches wide, stretching from the batter"
              }
            },
            {
              "number": 36,
              "prompt": "In the past, _______",
              "answer": [
                "B"
              ],
              "wordLimit": 1,
              "explanation": "For a hundred and fifty years or so, the strike zone has been the game’s animating force-countless arguments between a team’s manager and the umpire have taken place over its boundaries",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "For a hundred and fifty years or so, the strike zone has been the game’s animating force-countless arguments between a t"
              }
            },
            {
              "number": 37,
              "prompt": "ABS, strike calls were met with _______ A",
              "answer": [
                "G"
              ],
              "wordLimit": 1,
              "explanation": "During that first game, when DeJesus announced calls, there was no heckling and no shouted disagreement. Nobody said a word",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "During that first game, when DeJesus announced calls, there was no heckling and no shouted disagreement. Nobody said a w"
              }
            }
          ],
          "formTitle": "Write the correct letter, A-H, in boxes on your answer sheet.",
          "id": "g33"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 38–40",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 38,
              "prompt": "What does the writer suggest about ABS in the fifth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "It is bound to make key decisions that are wrong."
                },
                {
                  "key": "B",
                  "text": "It may reduce some of the appeal of the game."
                },
                {
                  "key": "C",
                  "text": "It will lead to the disappearance of human umpires."
                },
                {
                  "key": "D",
                  "text": "lt may increase calls for the rules of baseball to be changed."
                }
              ],
              "answer": "B",
              "explanation": "When he was pitching, he explained, umpires rewarded skill. “Throw it where you aimed, and it would be a strike, even if it was an inch or two outside. There was a dialogue between pitcher and umpire.”",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "When he was pitching, he explained, umpires rewarded skill. “Throw it where you aimed, and it would be a strike, even if"
              }
            },
            {
              "number": 39,
              "prompt": "Morgan Sword says that the introduction of ABS",
              "options": [
                {
                  "key": "A",
                  "text": "was regarded as an experiment without a guaranteed outcome."
                },
                {
                  "key": "B",
                  "text": "was intended to keep up with developments in other sports."
                },
                {
                  "key": "C",
                  "text": "was a response to changing attitudes about the role of sport."
                },
                {
                  "key": "D",
                  "text": "was an attempt to ensure baseball retained a young audience."
                }
              ],
              "answer": "D",
              "explanation": "According to Sword, ABS was part of a larger project to make baseball more exciting since executives are terrified of losing younger fans",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "According to Sword, ABS was part of a larger project to make baseball more exciting since executives are terrified of lo"
              }
            },
            {
              "number": 40,
              "prompt": "Why does the writer include the views of Not and Russo?",
              "options": [
                {
                  "key": "A",
                  "text": "to show that attitudes to technology vary widely"
                },
                {
                  "key": "B",
                  "text": "to argue that people have unrealistic expectations of sport"
                },
                {
                  "key": "C",
                  "text": "to indicate that accuracy is not the same thing as enjoyment"
                },
                {
                  "key": "D",
                  "text": "to suggest that the number of baseball fans needs to increase"
                }
              ],
              "answer": "C",
              "explanation": "Some players I have met take a dissenting stance toward the robots too, believing that accuracy is not the answer",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Some players I have met take a dissenting stance toward the robots too, believing that accuracy is not the answer"
              }
            }
          ],
          "id": "g38"
        }
      ]
    }
  ]
}
$c20t2r$,
  true
);
