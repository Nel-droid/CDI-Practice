DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 15',
  'Test 1',
  'academic',
  3600,
  $c15t1r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Nutmeg – a valuable spice",
      "passage": [
        {
          "ref": "1",
          "text": "The nutmeg tree, Myristica fragrans, is a large evergreen tree native to Southeast Asia. Until the late 18th century, it only grew in one place in the world: a small group of islands in the Banda Sea, part of the Moluccas — or Spice Islands — in northeastern Indonesia. The tree is thickly branched with dense foliage of tough, dark green oval leaves, and produces small, yellow, bell-shaped flowers and pale yellow pear-shaped fruits. The fruit is encased in a flesh husk. When the fruit is ripe, this husk splits into two halves along a ridge running the length of the fruit. Inside is a purple-brown shiny seed, 2-3 cm long by about 2 cm across, surrounded by a lacy red or crimson covering called an ‘aril’. These are the sources of the two spices nutmeg and mace, the former being produced from the dried seed and the latter from the aril."
        },
        {
          "ref": "2",
          "text": "Nutmeg was a highly prized and costly ingredient in European cuisine in the Middle Ages, and was used as a flavouring, medicinal, and preservative agent. Throughout this period, the Arabs were the exclusive importers of the spice to Europe. They sold nutmeg for high prices to merchants based in Venice, but they never revealed the exact location of the source of this extremely valuable commodity. The Arab-Venetian dominance of the trade finally ended in 1512, when the Portuguese reached the Banda Islands and began exploiting its precious resources."
        },
        {
          "ref": "3",
          "text": "Always in danger of competition from neighbouring Spain, the Portuguese began subcontracting their spice distribution to Dutch traders. Profits began to flow into the Netherlands, and the Dutch commercial fleet swiftly grew into one of the largest in the world. The Dutch quietly gained control of most of the shipping and trading of spices in Northern Europe. Then, in 1580, Portugal fell under Spanish rule, and by the end of the 16th century the Dutch found themselves locked out of the market. As prices for pepper, nutmeg, and other spices soared across Europe, they decided to fight back."
        },
        {
          "ref": "4",
          "text": "In 1602, Dutch merchants founded the VOC, a trading corporation better known as the Dutch East India Company. By 1617, the VOC was the richest commercial operation in the world. The company had 50,000 employees worldwide, with a private army of 30,000 men and a fleet of 200 ships. At the same time, thousands of people across Europe were dying of the plague, a highly contagious and deadly disease. Doctors were desperate for a way to stop the spread of this disease, and they decided nutmeg held the cure. Everybody wanted nutmeg, and many were willing to spare no expense to have it. Nutmeg bought for a few pennies in Indonesia could be sold for 68,000 times its original cost on the streets of London. The only problem was the short supply. And that’s where the Dutch found their opportunity."
        },
        {
          "ref": "5",
          "text": "The Banda Islands were ruled by local sultans who insisted on maintaining a neutral trading policy towards foreign powers. This allowed them to avoid the presence of Portuguese or Spanish troops on their soil, but it also left them unprotected from other invaders. In 1621, the Dutch arrived and took over. Once securely in control of the Bandas, the Dutch went to work protecting their new investment. They concentrated all nutmeg production into a few easily guarded areas, uprooting and destroying any trees outside the plantation zones. Anyone caught growing a nutmeg seedling or carrying seeds without the proper authority was severely punished. In addition, all exported nutmeg was covered with lime to make sure there was no chance a fertile seed which could be grown elsewhere would leave the islands. There was only one obstacle to Dutch domination. One of the Banda Islands, a sliver of land called Run, only 3 km long by less than 1 km wide, was under the control of the British. After decades of fighting for control of this tiny island, the Dutch and British arrived at a compromise settlement, the Treaty of Breda, in 1667. Intent on securing their hold over every nutmeg-producing island, the Dutch offered a trade: if the British would give them the island of Run, they would in turn give Britain a distant and much less valuable island in North America. The British agreed. That other island was Manhattan, which is how New Amsterdam became New York. The Dutch now had a monopoly over the nutmeg trade which would last for another century."
        },
        {
          "ref": "6",
          "text": "Then, in 1770, a Frenchman named Pierre Poivre successfully smuggled nutmeg plants to safety in Mauritius, an island off the coast of Africa. Some of these were later exported to the Caribbean where they thrived, especially on the island of Grenada. Next, in 1778, a volcanic eruption in the Banda region caused a tsunami that wiped out half the nutmeg groves. Finally, in 1809, the British returned to Indonesia and seized the Banda Islands by force. They returned the islands to the Dutch in 1817, but not before transplanting hundreds of nutmeg seedlings to plantations in several locations across southern Asia. The Dutch nutmeg monopoly was over."
        },
        {
          "ref": "7",
          "text": "Today, nutmeg is grown in Indonesia, the Caribbean, India, Malaysia, Papua New Guinea and Sri Lanka, and world nutmeg production is estimated to average between 10,000 and 12,000 tonnes per year."
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "completion",
          "label": "Questions 1–4",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "The nutmeg tree and fruit",
          "formContent": [
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
              "kind": "static",
              "text": "the tree has yellow flowers and fruit"
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "the leaves of the tree are _______ in shape",
              "answer": [
                "oval"
              ],
              "wordLimit": 1,
              "explanation": "The tree has dark green oval leaves.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "dense foliage of tough, dark green oval leaves"
              }
            },
            {
              "number": 2,
              "prompt": "the _______ surrounds the fruit and breaks open when the fruit is ripe",
              "answer": [
                "husk"
              ],
              "wordLimit": 1,
              "explanation": "The fruit is encased in a flesh husk which splits open when ripe.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "The fruit is encased in a flesh husk. When the fruit is ripe, this husk splits into two halves"
              }
            },
            {
              "number": 3,
              "prompt": "the _______ is used to produce the spice nutmeg",
              "answer": [
                "seed"
              ],
              "wordLimit": 1,
              "explanation": "The dried seed produces the spice nutmeg.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "the former being produced from the dried seed"
              }
            },
            {
              "number": 4,
              "prompt": "the covering known as the aril is used to produce _______",
              "answer": [
                "mace"
              ],
              "wordLimit": 1,
              "explanation": "The aril produces the spice mace.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "These are the sources of the two spices nutmeg and mace"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "true_false_notgiven",
          "label": "Questions 5–7",
          "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 5,
              "prompt": "In the Middle Ages, most Europeans knew where nutmeg was grown.",
              "answer": "FALSE",
              "explanation": "The Arabs never revealed the exact location of the source of nutmeg to European merchants.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "they never revealed the exact location of the source of this extremely valuable commodity"
              }
            },
            {
              "number": 6,
              "prompt": "The VOC was the world's first major trading company.",
              "answer": "NOT GIVEN",
              "explanation": "The passage states the VOC was the richest commercial operation by 1617, but says nothing about it being the first.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "By 1617, the VOC was the richest commercial operation in the world"
              }
            },
            {
              "number": 7,
              "prompt": "Following the Treaty of Breda, the Dutch had control of all the islands where nutmeg grew.",
              "answer": "TRUE",
              "explanation": "After getting the island of Run from the British, the Dutch had a complete monopoly over the nutmeg trade.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "The Dutch now had a monopoly over the nutmeg trade which would last for another century"
              }
            }
          ]
        },
        {
          "id": "g3",
          "type": "completion",
          "label": "Questions 8–13",
          "instructions": "Complete the table below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "The history of nutmeg",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Middle Ages"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "16th century"
            },
            {
              "kind": "static",
              "text": "European nations took control of the nutmeg trade"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "subheader",
              "text": "17th century — The Dutch"
            },
            {
              "kind": "static",
              "text": "took control of the Banda Islands"
            },
            {
              "kind": "static",
              "text": "restricted nutmeg production to a few areas"
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "question",
              "number": 11
            },
            {
              "kind": "subheader",
              "text": "Late 18th century"
            },
            {
              "kind": "question",
              "number": 12
            },
            {
              "kind": "question",
              "number": 13
            }
          ],
          "questions": [
            {
              "number": 8,
              "prompt": "Nutmeg was brought to Europe by the _______",
              "answer": [
                "Arabs"
              ],
              "wordLimit": 1,
              "explanation": "Throughout the Middle Ages, the Arabs were the exclusive importers of nutmeg to Europe.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "the Arabs were the exclusive importers of the spice to Europe"
              }
            },
            {
              "number": 9,
              "prompt": "Demand for nutmeg grew, as it was believed to be effective against the disease known as the _______",
              "answer": [
                "plague"
              ],
              "wordLimit": 1,
              "explanation": "Doctors believed nutmeg could cure the plague, creating enormous demand.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "thousands of people across Europe were dying of the plague"
              }
            },
            {
              "number": 10,
              "prompt": "put _______ on nutmeg to avoid it being cultivated outside the islands",
              "answer": [
                "lime"
              ],
              "wordLimit": 1,
              "explanation": "All exported nutmeg was covered with lime to prevent fertile seeds from leaving the islands.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "all exported nutmeg was covered with lime to make sure there was no chance a fertile seed which could be grown elsewhere would leave the islands"
              }
            },
            {
              "number": 11,
              "prompt": "finally obtained the island of _______ from the British",
              "answer": [
                "Run"
              ],
              "wordLimit": 1,
              "explanation": "The Dutch traded Manhattan to Britain in exchange for the island of Run.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "if the British would give them the island of Run, they would in turn give Britain a distant and much less valuable island in North America"
              }
            },
            {
              "number": 12,
              "prompt": "1770 – nutmeg plants were secretly taken to _______",
              "answer": [
                "Mauritius"
              ],
              "wordLimit": 1,
              "explanation": "Pierre Poivre smuggled nutmeg plants to Mauritius in 1770, breaking the Dutch monopoly.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "a Frenchman named Pierre Poivre successfully smuggled nutmeg plants to safety in Mauritius"
              }
            },
            {
              "number": 13,
              "prompt": "1778 – half the Banda Islands' nutmeg plantations were destroyed by _______",
              "answer": [
                "tsunami"
              ],
              "wordLimit": 1,
              "explanation": "A volcanic eruption caused a tsunami that wiped out half the nutmeg groves.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "a volcanic eruption in the Banda region caused a tsunami that wiped out half the nutmeg groves"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "Driverless cars",
      "passage": [
        {
          "ref": "A",
          "text": "The automotive sector is well used to adapting to automation in manufacturing. The implementation of robotic car manufacture from the 1970s onwards led to significant cost savings and improvements in the reliability and flexibility of vehicle mass production. A new challenge to vehicle production is now on the horizon and, again, it comes from automation. However, this time it is not to do with the manufacturing process, but with the vehicles themselves. Research projects on vehicle automation are not new. Vehicles with limited self-driving capabilities have been around for more than 50 years, resulting in significant contributions towards driver assistance systems. But since Google announced in 2010 that it had been trialling self-driving cars on the streets of California, progress in this field has quickly gathered pace."
        },
        {
          "ref": "B",
          "text": "There are many reasons why technology is advancing so fast. One frequently cited motive is safety; indeed, research at the UK’s Transport Research Laboratory has demonstrated that more than 90 percent of road collisions involve human error as a contributory factor, and it is the primary cause in the vast majority. Automation may help to reduce the incidence of this. Another aim is to free the time people spend driving for other purposes. If the vehicle can do some or all of the driving, it may be possible to be productive, to socialise or simply to relax while automation systems have responsibility for safe control of the vehicle. If the vehicle can do the driving, those who are challenged by existing mobility models — such as older or disabled travellers — may be able to enjoy significantly greater travel autonomy."
        },
        {
          "ref": "C",
          "text": "Beyond these direct benefits, we can consider the wider implications for transport and society, and how manufacturing processes might need to respond as a result. At present, the average car spends more than 90 percent of its life parked. Automation means that initiatives for car-sharing become much more viable, particularly in urban areas with significant travel demand. If a significant proportion of the population choose to use shared automated vehicles, mobility demand can be met by far fewer vehicles."
        },
        {
          "ref": "D",
          "text": "The Massachusetts Institute of Technology investigated automated mobility in Singapore, finding that fewer than 30 percent of the vehicles currently used would be required if fully automated car sharing could be implemented. If this is the case, it might mean that we need to manufacture far fewer vehicles to meet demand. However, the number of trips being taken would probably increase, partly because empty vehicles would have to be moved from one customer to the next. Modelling work by the University of Michigan Transportation Research Institute suggests automated vehicles might reduce vehicle ownership by 43 percent, but that vehicles’ average annual mileage double as a result. As a consequence, each vehicle would be used more intensively, and might need replacing sooner. This faster rate of turnover may mean that vehicle production will not necessarily decrease."
        },
        {
          "ref": "E",
          "text": "Automation may prompt other changes in vehicle manufacture. If we move to a model where consumers are tending not to own a single vehicle but to purchase access to a range of vehicles through a mobility provider, drivers will have the freedom to select one that best suits their needs for a particular journey, rather than making a compromise across all their requirements. Since, for most of the time, most of the seats in most cars are unoccupied, this may boost production of a smaller, more efficient range of vehicles that suit the needs of individuals. Specialised vehicles may then be available for exceptional journeys, such as going on a family camping trip or helping a son or daughter move to university."
        },
        {
          "ref": "F",
          "text": "There are a number of hurdles to overcome in delivering automated vehicles to our roads. These include the technical difficulties in ensuring that the vehicle works reliably in the infinite range of traffic, weather and road situations it might encounter; the regulatory challenges in understanding how liability and enforcement might change when drivers are no longer essential for vehicle operation; and the societal changes that may be required for communities to trust and accept automated vehicles as being a valuable part of the mobility landscape."
        },
        {
          "ref": "G",
          "text": "It's clear that there are many challenges that need to be addressed but, through robust and targeted research, these can most probably be conquered within the next 10 years. Mobility will change in such potentially significant ways and in association with so many other technological developments, such as telepresence and virtual reality, that it is hard to make concrete predictions about the future. However, one thing is certain: change is coming, and the need to be flexible in response to this will be vital for those involved in manufacturing the vehicles that will deliver future mobility."
        }
      ],
      "groups": [
        {
          "id": "g4",
          "type": "matching",
          "label": "Questions 14–18",
          "instructions": "The Reading Passage has seven paragraphs, A–G. Which section contains the following information? Write the correct letter, A–G, in boxes on your answer sheet.",
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
              "number": 14,
              "prompt": "reference to the amount of time when a car is not in use",
              "answer": "C",
              "explanation": "Paragraph C states that the average car spends more than 90% of its life parked.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "the average car spends more than 90 percent of its life parked"
              }
            },
            {
              "number": 15,
              "prompt": "mention of several advantages of driverless vehicles for individual road-users",
              "answer": "B",
              "explanation": "Paragraph B discusses safety, freed-up time, and travel autonomy for individuals.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "to be productive, to socialise or simply to relax"
              }
            },
            {
              "number": 16,
              "prompt": "reference to the opportunity of choosing the most appropriate vehicle for each trip",
              "answer": "E",
              "explanation": "Paragraph E (D in some editions) describes drivers having freedom to select a vehicle suited to each journey.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "drivers will have the freedom to select one that best suits their needs for a particular journey"
              }
            },
            {
              "number": 17,
              "prompt": "an estimate of how long it will take to overcome a number of problems",
              "answer": "G",
              "explanation": "Paragraph G states that challenges can most probably be conquered within the next 10 years.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "these can most probably be conquered within the next 10 years"
              }
            },
            {
              "number": 18,
              "prompt": "a suggestion that the use of driverless cars may have no effect on the number of vehicles manufactured",
              "answer": "D",
              "explanation": "Paragraph D notes that vehicle production will not necessarily decrease.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "vehicle production will not necessarily decrease"
              }
            }
          ]
        },
        {
          "id": "g5",
          "type": "completion",
          "label": "Questions 19–22",
          "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "formTitle": "The impact of driverless cars",
          "formContent": [
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "question",
              "number": 22
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Figures from the Transport Research Laboratory indicate that most motor accidents are partly due to _______",
              "answer": [
                "human error"
              ],
              "wordLimit": 2,
              "explanation": "More than 90% of road collisions involve human error as a contributory factor.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "more than 90 percent of road collisions involve human error as a contributory factor"
              }
            },
            {
              "number": 20,
              "prompt": "schemes for _______ will be more workable, especially in towns and cities, resulting in fewer cars on the road",
              "answer": [
                "car sharing",
                "car-sharing"
              ],
              "wordLimit": 2,
              "explanation": "Automation makes car-sharing initiatives much more viable, particularly in urban areas.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "initiatives for car-sharing become much more viable, particularly in urban areas"
              }
            },
            {
              "number": 21,
              "prompt": "there could be a 43 percent drop in _______ of cars",
              "answer": [
                "ownership"
              ],
              "wordLimit": 2,
              "explanation": "The University of Michigan model suggests automated vehicles might reduce vehicle ownership by 43%.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "automated vehicles might reduce vehicle ownership by 43 percent"
              }
            },
            {
              "number": 22,
              "prompt": "the yearly _______ of each car would, on average, be twice as high as it currently is",
              "answer": [
                "mileage"
              ],
              "wordLimit": 2,
              "explanation": "Vehicles' average annual mileage would double as a result of more intensive use.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "vehicles' average annual mileage double as a result"
              }
            }
          ]
        },
        {
          "id": "g6",
          "type": "choose_two",
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO benefits of automated vehicles does the writer mention?",
          "options": [
            {
              "key": "A",
              "text": "Car travellers could enjoy considerable cost savings."
            },
            {
              "key": "B",
              "text": "It would be easier to find parking spaces in urban areas."
            },
            {
              "key": "C",
              "text": "Travellers could spend journeys doing something other than driving."
            },
            {
              "key": "D",
              "text": "People who find driving physically difficult could travel independently."
            },
            {
              "key": "E",
              "text": "A reduction in the number of cars would mean a reduction in pollution."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO benefits of automated vehicles does the writer mention? (first answer)",
              "answer": "C",
              "explanation": "The passage mentions travellers being productive, socialising or relaxing while the vehicle drives.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "to be productive, to socialise or simply to relax while automation systems have responsibility"
              }
            },
            {
              "number": 24,
              "prompt": "Which TWO benefits of automated vehicles does the writer mention? (second answer)",
              "answer": "D",
              "explanation": "Older or disabled travellers may be able to enjoy significantly greater travel autonomy.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "those who are challenged by existing mobility models — such as older or disabled travellers — may be able to enjoy significantly greater travel autonomy"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "choose_two",
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO challenges to automated vehicle development does the writer mention?",
          "options": [
            {
              "key": "A",
              "text": "making sure the general public has confidence in automated vehicles"
            },
            {
              "key": "B",
              "text": "managing the pace of transition from conventional to automated vehicles"
            },
            {
              "key": "C",
              "text": "deciding how to compensate professional drivers who become redundant"
            },
            {
              "key": "D",
              "text": "setting up the infrastructure to make roads suitable for automated vehicles"
            },
            {
              "key": "E",
              "text": "getting automated vehicles to adapt to various different driving conditions"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO challenges to automated vehicle development does the writer mention? (first answer)",
              "answer": "A",
              "explanation": "The passage mentions societal changes required for communities to trust and accept automated vehicles.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "the societal changes that may be required for communities to trust and accept automated vehicles"
              }
            },
            {
              "number": 26,
              "prompt": "Which TWO challenges to automated vehicle development does the writer mention? (second answer)",
              "answer": "E",
              "explanation": "The passage mentions technical difficulties ensuring the vehicle works in the infinite range of traffic, weather and road situations.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "the technical difficulties in ensuring that the vehicle works reliably in the infinite range of traffic, weather and road situations"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "What is exploration?",
      "passage": [
        {
          "ref": "1",
          "text": "We are all explores. Our desire to discover, and then share that new-found knowledge, is part of what makes us human — indeed, this has played an important part in our success as a species. Long before the first caveman slumped down beside the fire and grunted news that there were plenty of wildebeest over yonder, our ancestors had learnt the value of sending out scouts to investigate the unknown. This questing nature of ours undoubtedly helped our species spread around the globe, just as it nowadays no doubt helps the last nomadic Penan maintain their existence in the depleted forests of Borneo, and a visitor negotiate the subways of New York."
        },
        {
          "ref": "2",
          "text": "Over the years, we've come to think of explorers as a peculiar breed — different from the rest of us, different from those of us who are merely ‘well travelled’, even; and perhaps there is a type of person more suited to seeking out the new, a type of caveman more inclined to risk venturing out. That, however, doesn't take away from the fact that we all have this enquiring instinct, even today; and that in all sorts of professions — whether artist, marine biologist or astronomer — borders of the unknown are being tested each day."
        },
        {
          "ref": "3",
          "text": "Thomas Hardy set some of his novels in Egdon Heath, a fictional area of uncultivated land, and used the landscape to suggest the desires and fears of his characters. He is delving into matters we all recognise because they are common to humanity. This is surely an act of exploration, and into a world as remote as the author chooses. Explorer and travel writer Peter Fleming talks of the moment when the explorer returns to the existence he has left behind with his loved ones. The traveller ‘who has for weeks or months seen himself only as a puny and irrelevant alien crawling laboriously over a country in which he has no roots and no background, suddenly encounters his other self, a relatively solid figure, with a place in the minds of certain people’."
        },
        {
          "ref": "4",
          "text": "In this book about the exploration of the earth's surface, | have confined myself to those whose travels were real and who also aimed at more than personal discovery. But that still left me with another problem: the word ‘explorer’ has become associated with a past era. We think back to a golden age, as if exploration peaked somehow in the 19th century — as if the process of discovery is now on the decline, though the truth is that we have named only one and a half million of this planet's species, and there may be more than 10 million — and that's not including bacteria. We have studied only 5 per cent of the species we know. We have scarcely mapped the ocean floors, and know even less about ourselves; we fully understand the workings of only 10 per cent of our brains."
        },
        {
          "ref": "5",
          "text": "Here is how some of today's 'explorers' define the word. Ran Fiennes, dubbed the 'greatest living explorer', said, 'An explorer is someone who has done something that no human has done before — and also done something scientifically useful.' Chris Bonington, a leading mountaineer, felt exploration was to be found in the act of physically touching the unknown: 'You have to have gone somewhere new.' Then Robin Hanbury-Tenison, a campaigner on behalf of remote so-called 'tribal' peoples, said, 'A traveller simply records information about some far-off world, and reports back; but an explorer changes the world.' Wilfred Thesiger, who crossed Arabia's Empty Quarter in 1946, and belongs to an era of unmechanised travel now lost to the rest of us, told me, 'If I'd gone across by camel when I could have gone by car, it would have been a stunt.' To him, exploration meant bringing back information from a remote place regardless of any great self-discovery."
        },
        {
          "ref": "6",
          "text": "Each definition is slightly different — and tends to reflect the field of endeavour of each pioneer. It was the same whoever I asked: the prominent historian would say exploration was a thing of the past, the cutting-edge scientist would say it was of the present. And so on. They each set their own particular criteria; the common factor in their approach being that they all had, unlike many of us who simply enjoy travel or discovering new things, both a very definite objective from the outset and also a desire to record their findings."
        },
        {
          "ref": "7",
          "text": "I'd best declare my own bias. As a writer, I'm interested in the exploration of ideas. I've done a great many expeditions and each one was unique. I've lived for months alone with isolated groups of people all around the world, even two 'uncontacted tribes'. But none of these things is of the slightest interest to anyone unless, through my books, I've found a new slant, explored a new idea. Why? Because the world has moved on. The time has long passed for the great continental voyages — another walk to the poles, another crossing of the Empty Quarter. We know how the land surface of our planet lies; exploration of it is now down to the details — the habits of microbes, say, or the grazing behaviour of buffalo. Aside from the deep sea and deep underground, it's the era of specialists. However, this is to disregard the role the human mind has in conveying remote places; and this is what interests me: how a fresh interpretation, even of a well-travelled route, can give its readers new insights."
        }
      ],
      "groups": [
        {
          "id": "g8",
          "type": "multiple_choice",
          "label": "Questions 27–32",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 27,
              "prompt": "The writer refers to visitors to New York to illustrate the point that",
              "options": [
                {
                  "key": "A",
                  "text": "exploration is an intrinsic element of being human."
                },
                {
                  "key": "B",
                  "text": "most people are enthusiastic about exploring."
                },
                {
                  "key": "C",
                  "text": "exploration can lead to surprising results."
                },
                {
                  "key": "D",
                  "text": "most people find exploration daunting."
                }
              ],
              "answer": "A",
              "explanation": "The writer uses New York visitors alongside nomads to show that the questing nature of humans is universal.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "a visitor negotiate the subways of New York"
              }
            },
            {
              "number": 28,
              "prompt": "According to the second paragraph, what is the writer's view of explorers?",
              "options": [
                {
                  "key": "A",
                  "text": "Their discoveries have brought both benefits and disadvantages."
                },
                {
                  "key": "B",
                  "text": "Their main value is in teaching others."
                },
                {
                  "key": "C",
                  "text": "They act on an urge that is common to everyone."
                },
                {
                  "key": "D",
                  "text": "They tend to be more attracted to certain professions than to others."
                }
              ],
              "answer": "C",
              "explanation": "The writer says we all have this enquiring instinct, even today.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "we all have this enquiring instinct, even today"
              }
            },
            {
              "number": 29,
              "prompt": "The writer refers to a description of Egdon Heath to suggest that",
              "options": [
                {
                  "key": "A",
                  "text": "Hardy was writing about his own experience of exploration."
                },
                {
                  "key": "B",
                  "text": "Hardy was mistaken about the nature of exploration."
                },
                {
                  "key": "C",
                  "text": "Hardy's aim was to investigate people's emotional states."
                },
                {
                  "key": "D",
                  "text": "Hardy's aim was to show the attraction of isolation."
                }
              ],
              "answer": "C",
              "explanation": "Hardy used the landscape to suggest the desires and fears of his characters — an exploration of emotional states.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "used the landscape to suggest the desires and fears of his characters"
              }
            },
            {
              "number": 30,
              "prompt": "In the fourth paragraph, the writer refers to 'a golden age' to suggest that",
              "options": [
                {
                  "key": "A",
                  "text": "the amount of useful information produced by exploration has decreased."
                },
                {
                  "key": "B",
                  "text": "fewer people are interested in exploring than in the 19th century."
                },
                {
                  "key": "C",
                  "text": "recent developments have made exploration less exciting."
                },
                {
                  "key": "D",
                  "text": "we are wrong to think that exploration is no longer necessary."
                }
              ],
              "answer": "D",
              "explanation": "The writer argues the assumption that exploration peaked in the 19th century is wrong — vast amounts remain unknown.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "as if the process of discovery is now on the decline, though the truth is that we have named only one and a half million of this planet's species"
              }
            },
            {
              "number": 31,
              "prompt": "In the sixth paragraph, when discussing the definition of exploration, the writer argues that",
              "options": [
                {
                  "key": "A",
                  "text": "people tend to relate exploration to their own professional interests."
                },
                {
                  "key": "B",
                  "text": "certain people are likely to misunderstand the nature of exploration."
                },
                {
                  "key": "C",
                  "text": "the generally accepted definition has changed over time."
                },
                {
                  "key": "D",
                  "text": "historians and scientists have more valid definitions than the general public."
                }
              ],
              "answer": "A",
              "explanation": "Each expert's definition reflected their own field — the historian said it was past, the scientist said it was present.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "the prominent historian would say exploration was a thing of the past, the cutting-edge scientist would say it was of the present"
              }
            },
            {
              "number": 32,
              "prompt": "In the last paragraph, the writer explains that he is interested in",
              "options": [
                {
                  "key": "A",
                  "text": "how someone's personality is reflected in their choice of places to visit."
                },
                {
                  "key": "B",
                  "text": "the human ability to cast new light on places that may be familiar."
                },
                {
                  "key": "C",
                  "text": "how travel writing has evolved to meet changing demands."
                },
                {
                  "key": "D",
                  "text": "the feelings that writers develop about the places that they explore."
                }
              ],
              "answer": "B",
              "explanation": "The writer is interested in how a fresh interpretation, even of a well-travelled route, can give readers new insights.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "how a fresh interpretation, even of a well-travelled route, can give its readers new insights"
              }
            }
          ]
        },
        {
          "id": "g9",
          "type": "matching",
          "label": "Questions 33–37",
          "instructions": "Look at the following statements and the list of explorers below. Match each statement with the correct explorer, A–E. NB You may use any letter more than once.",
          "options": [
            {
              "key": "A",
              "text": "Peter Fleming"
            },
            {
              "key": "B",
              "text": "Ran Fiennes"
            },
            {
              "key": "C",
              "text": "Chris Bonington"
            },
            {
              "key": "D",
              "text": "Robin Hanbury-Tenison"
            },
            {
              "key": "E",
              "text": "Wilfred Thesiger"
            }
          ],
          "questions": [
            {
              "number": 33,
              "prompt": "He referred to the relevance of the form of transport used.",
              "answer": "E",
              "explanation": "Thesiger said going by camel when he could have gone by car would have been a stunt.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "If I'd gone across by camel when I could have gone by car, it would have been a stunt"
              }
            },
            {
              "number": 34,
              "prompt": "He described feelings on coming back home after a long journey.",
              "answer": "A",
              "explanation": "Fleming talks of the moment when the explorer returns to the existence left behind.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "Explorer and travel writer Peter Fleming talks of the moment when the explorer returns to the existence he has left behind"
              }
            },
            {
              "number": 35,
              "prompt": "He worked for the benefit of specific groups of people.",
              "answer": "D",
              "explanation": "Hanbury-Tenison is described as a campaigner on behalf of remote so-called 'tribal' peoples.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Robin Hanbury-Tenison, a campaigner on behalf of remote so-called 'tribal' peoples"
              }
            },
            {
              "number": 36,
              "prompt": "He did not consider learning about oneself an essential part of exploration.",
              "answer": "E",
              "explanation": "Thesiger said exploration meant bringing back information from a remote place regardless of any great self-discovery.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "exploration meant bringing back information from a remote place regardless of any great self-discovery"
              }
            },
            {
              "number": 37,
              "prompt": "He defined exploration as being both unique and of value to others.",
              "answer": "B",
              "explanation": "Fiennes defined an explorer as someone who has done something no human has done before and something scientifically useful.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "An explorer is someone who has done something that no human has done before — and also done something scientifically useful"
              }
            }
          ]
        },
        {
          "id": "g10",
          "type": "completion",
          "label": "Questions 38–40",
          "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "formTitle": "The writer's own bias",
          "formContent": [
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
              "number": 38,
              "prompt": "The writer has experience of a large number of _______",
              "answer": [
                "expeditions"
              ],
              "wordLimit": 2,
              "explanation": "The writer says he has done a great many expeditions.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "I've done a great many expeditions"
              }
            },
            {
              "number": 39,
              "prompt": "was the first stranger that certain previously _______ people had encountered",
              "answer": [
                "uncontacted"
              ],
              "wordLimit": 2,
              "explanation": "The writer lived with isolated groups including two 'uncontacted tribes'.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "even two 'uncontacted tribes'"
              }
            },
            {
              "number": 40,
              "prompt": "there is no need for further exploration of Earth's _______",
              "answer": [
                "surface"
              ],
              "wordLimit": 2,
              "explanation": "We know how the land surface of our planet lies — exploration is now down to the details.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "We know how the land surface of our planet lies"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c15t1r$,
  true
);
