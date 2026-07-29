DELETE FROM public.tests WHERE book='Cambridge IELTS 12' AND test_label='Test 3' AND skill='reading';
INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 12',
  'Test 3',
  'academic',
  3600,
  $c12t3r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Flying tortoises",
      "passage": [
        {
          "ref": "A",
          "text": "Forests of spiny cacti cover much of the uneven lava plains that separate the interior of the Galápagos island of Isabela from the Pacific Ocean. With its five distinct volcanoes, the island resembles a lunar landscape. Only the thick vegetation at the skirt of the often cloud-covered peak of Sierra Negra offers respite from the barren terrain below. This inhospitable environment is home to the giant Galápagos tortoise. Some time after the Galápagos’s birth, around five million years ago, the islands were colonised by one or more tortoises from mainland South America. As these ancestral tortoises settled on the individual islands, the different populations adapted to their unique environments, giving rise to at least 14 different subspecies. Island life agreed with them. In the absence of significant predators, they grew to become the largest and longest-living tortoises on the planet, weighing more than 400 kilograms, occasionally exceeding 1.8 metres in length and living for more than a century."
        },
        {
          "ref": "B",
          "text": "Before human arrival, the archipelago’s tortoises numbered in the hundreds of thousands. From the 17th century onwards, pirates took a few on board for food, but the arrival of whaling ships in the 1790s saw this exploitation grow exponentially. Relatively immobile and capable of surviving for months without food or water, the tortoises were taken on board these ships to act as food supplies during long ocean passages. Sometimes, their bodies were processed into high-grade oil. In total, an estimated 200,000 animals were taken from the archipelago before the 20th century. This historical exploitation was then exacerbated when settlers came to the islands. They hunted the tortoises and destroyed their habitat to clear land for agriculture. They also introduced alien species – ranging from cattle, pigs, goats, rats and dogs to plants and ants – that either prey on the eggs and young tortoises or damage or destroy their habitat."
        },
        {
          "ref": "C",
          "text": "Today, only 11 of the original subspecies survive and of these, several are highly endangered. In 1989, work began on a tortoise-breeding centre just outside the town of Puerto Villamil on Isabela, dedicated to protecting the island’s tortoise populations. The centre’s captive-breeding programme proved to be extremely successful, and it eventually had to deal with an overpopulation problem."
        },
        {
          "ref": "D",
          "text": "The problem was also a pressing one. Captive-bred tortoises can’t be reintroduced into the wild until they’re at least five years old and weigh at least 4.5 kilograms, at which point their size and weight – and their hardened shells – are sufficient to protect them from predators. But if people wait too long after that point, the tortoises eventually become too large to transport."
        },
        {
          "ref": "E",
          "text": "For years, repatriation efforts were carried out in small numbers, with the tortoises carried on the backs of men over weeks of long, treacherous hikes along narrow trails. But in November 2010, the environmentalist and Galápagos National Park liaison officer Godfrey Merlin, a visiting private motor yacht captain and a helicopter pilot gathered around a table in a small café in Puerto Ayora on the island of Santa Cruz to work out more ambitious reintroduction. The aim was to use a helicopter to move 300 of the breeding centre’s tortoises to various locations close to Sierra Negra. === PAGE 2 ==="
        },
        {
          "ref": "F",
          "text": "This unprecedented effort was made possible by the owners of the 67-metre yacht While Cloud, who provided the Galápagos National Park with free use of their helicopter and its experienced pilot, as well as the logistical support of the yacht, its captain and crew. Originally an air ambulance, the yacht’s helicopter has a rear double door and a large internal space that’s well suited for cargo, so a custom crate was designed to hold up to 33 tortoises with a total weight of about 150 kilograms. This weight, together with that of the fuel, pilot and four crew, approached the helicopter’s maximum payload, and there were times when it was clearly right on the edge of the helicopter’s capabilities. During a period of three days, a group of volunteers from the breeding centre worked around the clock to prepare the young tortoises for transport. Meanwhile, park wardens, dropped off ahead of time in remote locations, cleared landing sites within the thick brush, cacti and lava rocks."
        },
        {
          "ref": "G",
          "text": "Upon their release, the juvenile tortoises quickly spread out over their ancestral territory, investigating their new surroundings and feeding on the vegetation. Eventually, one tiny tortoise came across a fully grown giant who had been lumbering around the island for around a hundred years. The two stood side by side, a powerful symbol of the regeneration of an ancient species."
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "matching",
          "label": "Questions 1–7",
          "instructions": "The Reading Passage has seven paragraphs, A–G. Choose the correct heading for each paragraph from the list of headings below.",
          "options": [
            {
              "key": "i",
              "text": "The importance of getting the timing right"
            },
            {
              "key": "ii",
              "text": "Young meets old"
            },
            {
              "key": "iii",
              "text": "Developments to the disadvantage of tortoise populations"
            },
            {
              "key": "iv",
              "text": "Planning a bigger idea"
            },
            {
              "key": "v",
              "text": "Tortoises populate the islands"
            },
            {
              "key": "vi",
              "text": "Carrying out a carefully prepared operation"
            },
            {
              "key": "vii",
              "text": "Looking for a home for the islands’ tortoises"
            },
            {
              "key": "viii",
              "text": "The start of the conservation project"
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Paragraph A",
              "answer": "v",
              "explanation": "Paragraph A describes how tortoises colonised the Galápagos islands from mainland South America.",
              "evidence": {
                "sectionId": "p1",
                "ref": "A",
                "quote": "the islands were colonised by one or more tortoises from mainland South America"
              }
            },
            {
              "number": 2,
              "prompt": "Paragraph B",
              "answer": "iii",
              "explanation": "Paragraph B describes exploitation and habitat destruction that harmed tortoise populations.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "They hunted the tortoises and destroyed their habitat to clear land for agriculture"
              }
            },
            {
              "number": 3,
              "prompt": "Paragraph C",
              "answer": "viii",
              "explanation": "Paragraph C describes the start of the tortoise-breeding centre in 1989.",
              "evidence": {
                "sectionId": "p1",
                "ref": "C",
                "quote": "In 1989, work began on a tortoise-breeding centre just outside the town of Puerto Villamil on Isabela"
              }
            },
            {
              "number": 4,
              "prompt": "Paragraph D",
              "answer": "i",
              "explanation": "Paragraph D explains the timing constraints: tortoises must be reintroduced within a specific age/weight window.",
              "evidence": {
                "sectionId": "p1",
                "ref": "D",
                "quote": "if people wait too long after that point, the tortoises eventually become too large to transport"
              }
            },
            {
              "number": 5,
              "prompt": "Paragraph E",
              "answer": "iv",
              "explanation": "Paragraph E describes the planning meeting for a more ambitious helicopter-based reintroduction.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "gathered around a table in a small café … to work out more ambitious reintroduction"
              }
            },
            {
              "number": 6,
              "prompt": "Paragraph F",
              "answer": "vi",
              "explanation": "Paragraph F describes the careful preparation and execution of the helicopter operation.",
              "evidence": {
                "sectionId": "p1",
                "ref": "F",
                "quote": "a group of volunteers from the breeding centre worked around the clock to prepare the young tortoises for transport"
              }
            },
            {
              "number": 7,
              "prompt": "Paragraph G",
              "answer": "ii",
              "explanation": "Paragraph G describes a young tortoise meeting a century-old giant after release.",
              "evidence": {
                "sectionId": "p1",
                "ref": "G",
                "quote": "one tiny tortoise came across a fully grown giant who had been lumbering around the island for around a hundred years"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "completion",
          "label": "Questions 8–13",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "The decline of the Galápagos tortoise",
          "formContent": [
            {
              "kind": "static",
              "text": "Originally from mainland South America",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Numbers on Galápagos islands increased, due to lack of predators",
              "noBullet": true
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
            },
            {
              "kind": "question",
              "number": 11
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
              "prompt": "17th century: small numbers taken onto ships used by _______",
              "answer": [
                "pirates"
              ],
              "wordLimit": 1,
              "explanation": "From the 17th century onwards, pirates took a few on board for food.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "From the 17th century onwards, pirates took a few on board for food"
              }
            },
            {
              "number": 9,
              "prompt": "1790s: very large numbers taken onto whaling ships, kept for _______,",
              "answer": [
                "food"
              ],
              "wordLimit": 1,
              "explanation": "The tortoises were taken on board whaling ships to act as food supplies.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "the tortoises were taken on board these ships to act as food supplies during long ocean passages"
              }
            },
            {
              "number": 10,
              "prompt": "and also used to produce _______",
              "answer": [
                "oil"
              ],
              "wordLimit": 1,
              "explanation": "Sometimes their bodies were processed into high-grade oil.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "their bodies were processed into high-grade oil"
              }
            },
            {
              "number": 11,
              "prompt": "Hunted by _______ on the islands",
              "answer": [
                "settlers"
              ],
              "wordLimit": 1,
              "explanation": "Settlers came to the islands and hunted the tortoises.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "This historical exploitation was then exacerbated when settlers came to the islands. They hunted the tortoises"
              }
            },
            {
              "number": 12,
              "prompt": "Habitat destruction: for the establishment of agriculture and by various _______ not native to the islands,",
              "answer": [
                "species"
              ],
              "wordLimit": 1,
              "explanation": "Settlers introduced alien species ranging from cattle, pigs, goats, rats and dogs.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "They also introduced alien species – ranging from cattle, pigs, goats, rats and dogs to plants and ants"
              }
            },
            {
              "number": 13,
              "prompt": "which also fed on baby tortoises and tortoises’ _______",
              "answer": [
                "eggs"
              ],
              "wordLimit": 1,
              "explanation": "Alien species prey on the eggs and young tortoises.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "that either prey on the eggs and young tortoises or damage or destroy their habitat"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "The Intersection of Health Sciences and Geography",
      "passage": [
        {
          "ref": "A",
          "text": "While many diseases that affect humans have been eradicated due to improvements in vaccinations and the availability of healthcare, there are still areas around the world where certain health issues are more prevalent. In a world that is far more globalised than ever before, people come into contact with one another through travel and living closer and closer to each other. As a result, super-viruses and other infections resistant to antibiotics are becoming more and more common."
        },
        {
          "ref": "B",
          "text": "Geography can often play a very large role in the health concerns of certain populations. For instance, depending on where you live, you will not have the same health concerns as someone who lives in a different geographical region. Perhaps one of the most obvious examples of this idea is malaria-prone areas, which are usually tropical regions that foster a warm and damp environment in which the mosquitos that can give people this disease can grow. Malaria is much less of a problem in high-altitude deserts, for instance."
        },
        {
          "ref": "C",
          "text": "In some countries, geographical factors influence the health and well-being of the population in very obvious ways. In many large cities, the wind is not strong enough to clear the air of the massive amounts of smog and pollution that cause asthma, lung problems, eyesight issues and more in the people who live there. Part of the problem is, of course, the massive number of cars being driven, in addition to factories that run on coal power. The rapid industrialisation of some countries in recent years has also led to the cutting down of forests to allow for the expansion of big cities, which makes it even harder to fight the pollution with the fresh air that is produced by plants."
        },
        {
          "ref": "D",
          "text": "It is in situations like these that the field of health geography comes into its own. It is an increasingly important area of study in a world where diseases like polio are re-emerging, === PAGE 4 === respiratory diseases continue to spread, and malaria-prone areas are still fighting to find a better cure. Health geography is the combination of, on the one hand, knowledge regarding geography and methods used to analyse and interpret geographical information, and on the other, the study of health, diseases and healthcare practices around the world. The aim of this hybrid science is to create solutions for common geography-based health problems. While people will always be prone to illness, the study of how geography affects our health could lead to the eradication of certain illnesses, and the prevention of others in the future. By understanding why and how we get sick, we can change the way we treat illness and disease specific to certain geographical locations."
        },
        {
          "ref": "E",
          "text": "The geography of disease and ill health analyses the frequency with which certain diseases appear in different parts of the world, and overlays the data with the geography of the region, to see if there could be a correlation between the two. Health geographers also study factors that could make certain individuals or a population more likely to be taken ill with a specific health concern or disease, as compared with the population of another area. Health geographers in this field are usually trained as healthcare workers, and have an understanding of basic epidemiology as it relates to the spread of diseases among the population."
        },
        {
          "ref": "F",
          "text": "Researchers study the interactions between humans and their environment that could lead to illness (such as asthma in places with high levels of pollution) and work to create a clear way of categorizing illnesses, diseases and epidemics into local and global scales. Health geographers can map the spread of illnesses and attempt to identify the reasons behind an increase or decrease in illnesses, as they work to find a way to halt the further spread or re-emergence of diseases in vulnerable populations."
        },
        {
          "ref": "G",
          "text": "The second subcategory of health geography is the geography of healthcare provision. This group studies the availability (or lack thereof) of healthcare resources to individuals and populations around the world. In both developed and developing nations there is often a very large discrepancy between the options available to people in different social classes, income brackets, and levels of education. Individuals working in the area of the geography of healthcare provision attempt to assess the levels of healthcare in the area (for instance, it may be very difficult for people to get medical attention because there is a mountain between their village and the nearest hospital). These researchers are on the frontline of making recommendations regarding policy to international organisations, local government bodies and others."
        },
        {
          "ref": "H",
          "text": "The field of health geography is often overlooked, but it constitutes a huge area of need in the fields of geography and healthcare. If we can understand how geography affects our health no matter where in the world we are located, we can better treat disease, prevent illness, and keep people safe and well. === PAGE 5 ==="
        }
      ],
      "groups": [
        {
          "id": "g3",
          "type": "matching",
          "label": "Questions 14–19",
          "instructions": "The Reading Passage has eight sections, A–H. Which paragraph contains the following information? NB You may use any letter more than once.",
          "options": [
            {
              "key": "A",
              "text": "Paragraph A"
            },
            {
              "key": "B",
              "text": "Paragraph B"
            },
            {
              "key": "C",
              "text": "Paragraph C"
            },
            {
              "key": "D",
              "text": "Paragraph D"
            },
            {
              "key": "E",
              "text": "Paragraph E"
            },
            {
              "key": "F",
              "text": "Paragraph F"
            },
            {
              "key": "G",
              "text": "Paragraph G"
            },
            {
              "key": "H",
              "text": "Paragraph H"
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "an acceptance that not all diseases can be totally eliminated",
              "answer": "D",
              "explanation": "Paragraph D says ‘While people will always be prone to illness’, accepting that not all disease can be eliminated.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "While people will always be prone to illness, the study of how geography affects our health could lead to the eradication of certain illnesses"
              }
            },
            {
              "number": 15,
              "prompt": "examples of physical conditions caused by human behaviour",
              "answer": "C",
              "explanation": "Paragraph C describes smog and pollution from cars and coal factories causing asthma and other conditions.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "In many large cities, the wind is not strong enough to clear the air of the massive amounts of smog and pollution that cause asthma, lung problems, eyesight issues"
              }
            },
            {
              "number": 16,
              "prompt": "a reference to classifying diseases on the basis of how far they extend geographically",
              "answer": "F",
              "explanation": "Paragraph F describes creating a way of categorising illnesses into local and global scales.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "work to create a clear way of categorizing illnesses, diseases and epidemics into local and global scales"
              }
            },
            {
              "number": 17,
              "prompt": "reasons why the level of access to healthcare can vary within a country",
              "answer": "G",
              "explanation": "Paragraph G describes discrepancies between options available to people of different social classes and income brackets.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "there is often a very large discrepancy between the options available to people in different social classes, income brackets, and levels of education"
              }
            },
            {
              "number": 18,
              "prompt": "a description of health geography as a mixture of different academic fields",
              "answer": "D",
              "explanation": "Paragraph D defines health geography as the combination of geography knowledge and the study of health.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "Health geography is the combination of, on the one hand, knowledge regarding geography and methods used to analyse and interpret geographical information, and on the other, the study of health, diseases and healthcare practices"
              }
            },
            {
              "number": 19,
              "prompt": "a description of the type of area where a particular illness is rare",
              "answer": "B",
              "explanation": "Paragraph B notes that malaria is much less of a problem in high-altitude deserts.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Malaria is much less of a problem in high-altitude deserts, for instance"
              }
            }
          ]
        },
        {
          "id": "g4",
          "type": "completion",
          "label": "Questions 20–26",
          "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
          "questions": [
            {
              "number": 20,
              "prompt": "Certain diseases have disappeared, thanks to better _______ and healthcare.",
              "answer": [
                "vaccinations"
              ],
              "wordLimit": 1,
              "explanation": "Many diseases have been eradicated due to improvements in vaccinations.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "many diseases that affect humans have been eradicated due to improvements in vaccinations and the availability of healthcare"
              }
            },
            {
              "number": 21,
              "prompt": "Because there is more contact between people, _______ are losing their usefulness.",
              "answer": [
                "antibiotics"
              ],
              "wordLimit": 1,
              "explanation": "Super-viruses and infections resistant to antibiotics are becoming more common.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "super-viruses and other infections resistant to antibiotics are becoming more and more common"
              }
            },
            {
              "number": 22,
              "prompt": "Disease-causing _______ are most likely to be found in hot, damp regions.",
              "answer": [
                "mosquitos"
              ],
              "wordLimit": 1,
              "explanation": "Mosquitos that can give people malaria grow in warm and damp environments.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "the mosquitos that can give people this disease can grow"
              }
            },
            {
              "number": 23,
              "prompt": "One cause of pollution is _______ that burn a particular fuel.",
              "answer": [
                "factories"
              ],
              "wordLimit": 1,
              "explanation": "Factories that run on coal power contribute to pollution.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "factories that run on coal power"
              }
            },
            {
              "number": 24,
              "prompt": "The growth of cities often has an impact on nearby _______",
              "answer": [
                "forests"
              ],
              "wordLimit": 1,
              "explanation": "Rapid industrialisation has led to the cutting down of forests to allow for expansion of big cities.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "the cutting down of forests to allow for the expansion of big cities"
              }
            },
            {
              "number": 25,
              "prompt": "_______ is one disease that is growing after having been eradicated.",
              "answer": [
                "Polio"
              ],
              "wordLimit": 1,
              "explanation": "Diseases like polio are re-emerging.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "diseases like polio are re-emerging"
              }
            },
            {
              "number": 26,
              "prompt": "A physical barrier such as a _______ can prevent people from reaching a hospital.",
              "answer": [
                "mountain"
              ],
              "wordLimit": 1,
              "explanation": "It may be very difficult for people to get medical attention because there is a mountain between their village and the nearest hospital.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "it may be very difficult for people to get medical attention because there is a mountain between their village and the nearest hospital"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "Music and the emotions",
      "passage": [
        {
          "ref": "1",
          "text": "Neuroscientist Jonah Lehrer considers the emotional power of music Why does music make us feel? One the one hand, music is a purely abstract art form, devoid of language or explicit ideas. And yet, even though music says little, it still manages to touch us deeply. When listening to our favourite songs, our body betrays all the symptoms of emotional arousal. The pupils in our eyes dilate, our pulse and blood pressure rise, the electrical conductance of our skin is lowered, and the cerebellum, a brain region associated with bodily movement, becomes strangely active. Blood is even re-directed to the muscles in our legs. In other words, sound stirs us at our biological roots."
        },
        {
          "ref": "2",
          "text": "A recent paper in Nature Neuroscience by a research team in Montreal, Canada, marks an important step in revealing the precise underpinnings of the potent pleasurable stimulus’ that is music. Although the study involves plenty of fancy technology, including functional magnetic resonance imaging (fMRI) and ligand-based positron emission tomography (PET) scanning, the experiment itself was rather straightforward. After screening 217 individuals who responded to advertisements requesting people who experience ‘chills’ to instrumental music, the scientists narrowed down the subject pool to ten. They then asked the subjects to bring in their playlist of favourite songs – virtually every genre was represented, from techno to tango – and played them the music while their brain activity was monitored. Because the scientists were combining methodologies (PET and fMRI), they were able to obtain an impressively exact and detailed portrait of music in the brain. The first thing they discovered is that music triggers the production of dopamine – a chemical with a key role in setting people’s moods – by the neurons (nerve cells) in both the dorsal and ventral regions of the brain. As these two regions have long been linked with the experience of pleasure, this finding isn’t particularly surprising."
        },
        {
          "ref": "3",
          "text": "What is rather more significant is the finding that the dopamine neurons in the caudate – a region of the brain involved in learning stimulus-response associations, and in anticipating food and other ‘reward’ stimuli – were at their most active around 15 seconds before the participants’ favourite moments in the music. The researchers call this the ‘anticipatory phase’ and argue that the purpose of this activity is to help us predict the arrival of our favourite part. The question, of course, is what all these dopamine neurons are up to. Why are they so active in the period preceding the acoustic climax? After all, we typically associate surges of dopamine with pleasure, with the processing of actual rewards. And yet, this cluster of cells is most active when the ‘chills’ have yet to arrive, when the melodic pattern is still unresolved."
        },
        {
          "ref": "4",
          "text": "One way to answer the question is to look at the music and not the neurons. While music can often seem (at least to the outsider) like a labyrinth of intricate patterns, it turns out that the most important part of every song or symphony is when the patterns break down, when the sound becomes unpredictable. If the music is too obvious, it is annoyingly boring, like an alarm clock. Numerous studies, after all, have demonstrated that dopamine neurons quickly adapt to predictable rewards. If we know what’s going to happen next, then we don’t get excited. This is why composers often introduce a key note in the beginning of a song, spend most of the rest of the piece in the studious avoidance of the pattern, and then finally repeat it only at the end. The longer we are denied the pattern we expect, the greater the emotional release when the pattern returns, safe and sound."
        },
        {
          "ref": "5",
          "text": "To demonstrate this psychological principle, the musicologist Leonard Meyer, in his classic book Emotion and Meaning in Music (1956), analysed the 5th movement of Beethoven’s String Quartet in C-sharp minor, Op. 131. Meyer wanted to show how music is defined by its flirtation with – but not submission to – our expectations of order. Meyer dissected 50 measures (bars) of the masterpiece, showing how Beethoven begins with the clear statement of a rhythmic and harmonic pattern and then, in an ingenious tonal dance, carefully holds off repeating it. What Beethoven does instead is suggest variations of the pattern. He wants to preserve an element of uncertainty in his music, making our brains beg for the one chord he refuses to give us. Beethoven saves that chord for the end."
        },
        {
          "ref": "6",
          "text": "According to Meyer, it is the suspenseful tension of music, arising out of our unfulfilled expectations, that is the source of the music’s feeling. While earlier theories of music focused on the way a sound can refer to the real world of images and experiences – its ‘connotative’ meaning – Meyer argued that the emotions we find in music come from the unfolding events of the music itself. This ‘embodied meaning’ arises from the patterns the symphony invokes and then ignores. It is this uncertainty that triggers the surge of dopamine in the caudate, as we struggle to figure out what will happen next. We can predict some of the notes, but we can’t predict them all, and that is what keeps us listening, waiting expectantly for our reward, for the pattern to be completed."
        }
      ],
      "groups": [
        {
          "id": "g5",
          "type": "short_answer",
          "label": "Questions 27–31",
          "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "summaryTitle": "The Montreal Study",
          "summaryText": "Participants, who were recruited for the study through advertisements, had their brain activity monitored while listening to their favourite music. It was noted that the music stimulated the brain’s neurons to release a substance called {27} in two of the parts of the brain which are associated with feeling {28}. Researchers also observed that the neurons in the area of the brain called the {29} were particularly active just before the participants’ favourite moments in the music – the period known as the {30}. Activity in this part of the brain is associated with the expectation of ‘reward’ stimuli such as {31}.",
          "questions": [
            {
              "number": 27,
              "prompt": "",
              "answer": [
                "dopamine"
              ],
              "wordLimit": 2,
              "explanation": "Music triggers the production of dopamine by neurons in the brain.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "music triggers the production of dopamine – a chemical with a key role in setting people’s moods – by the neurons"
              }
            },
            {
              "number": 28,
              "prompt": "",
              "answer": [
                "pleasure"
              ],
              "wordLimit": 2,
              "explanation": "The two regions are linked with the experience of pleasure.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "these two regions have long been linked with the experience of pleasure"
              }
            },
            {
              "number": 29,
              "prompt": "",
              "answer": [
                "caudate"
              ],
              "wordLimit": 2,
              "explanation": "The dopamine neurons in the caudate were most active before favourite moments.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "the dopamine neurons in the caudate – a region of the brain involved in learning stimulus-response associations"
              }
            },
            {
              "number": 30,
              "prompt": "",
              "answer": [
                "anticipatory phase"
              ],
              "wordLimit": 2,
              "explanation": "The researchers call this the anticipatory phase.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "The researchers call this the ‘anticipatory phase’"
              }
            },
            {
              "number": 31,
              "prompt": "",
              "answer": [
                "food"
              ],
              "wordLimit": 2,
              "explanation": "The caudate is involved in anticipating food and other reward stimuli.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "a region of the brain involved in learning stimulus-response associations, and in anticipating food and other ‘reward’ stimuli"
              }
            }
          ]
        },
        {
          "id": "g6",
          "type": "multiple_choice",
          "label": "Questions 32–36",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 32,
              "prompt": "What point does the writer emphasise in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "how dramatically our reactions to music can vary"
                },
                {
                  "key": "B",
                  "text": "how intense our physical responses to music can be"
                },
                {
                  "key": "C",
                  "text": "how little we know about the way that music affects us"
                },
                {
                  "key": "D",
                  "text": "how much music can tell us about how our brains operate"
                }
              ],
              "answer": "B",
              "explanation": "The first paragraph describes the physical symptoms of emotional arousal: dilating pupils, rising pulse, redirected blood flow.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "our body betrays all the symptoms of emotional arousal. The pupils in our eyes dilate, our pulse and blood pressure rise"
              }
            },
            {
              "number": 33,
              "prompt": "What view of the Montreal study does the writer express in the second paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Its aims were innovative."
                },
                {
                  "key": "B",
                  "text": "The approach was too simplistic."
                },
                {
                  "key": "C",
                  "text": "It produced some remarkably precise data."
                },
                {
                  "key": "D",
                  "text": "The technology used was unnecessarily complex."
                }
              ],
              "answer": "C",
              "explanation": "The writers says PET and fMRI together produced an impressively exact and detailed portrait.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "they were able to obtain an impressively exact and detailed portrait of music in the brain"
              }
            },
            {
              "number": 34,
              "prompt": "What does the writer find interesting about the results of the Montreal study?",
              "options": [
                {
                  "key": "A",
                  "text": "the timing of participants’ neural responses to the music"
                },
                {
                  "key": "B",
                  "text": "the impact of the music on participants’ emotional state"
                },
                {
                  "key": "C",
                  "text": "the section of participants’ brains which was activated by the music"
                },
                {
                  "key": "D",
                  "text": "the type of music which had the strongest effect on participants’ brains"
                }
              ],
              "answer": "A",
              "explanation": "The writer says ‘What is rather more significant’ is that the caudate is most active ~15 seconds BEFORE the favourite moments.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "What is rather more significant is the finding that the dopamine neurons in the caudate … were at their most active around 15 seconds before the participants’ favourite moments"
              }
            },
            {
              "number": 35,
              "prompt": "Why does the writer refer to Meyer’s work on music and emotion?",
              "options": [
                {
                  "key": "A",
                  "text": "to propose an original theory about the subject"
                },
                {
                  "key": "B",
                  "text": "to offer support for the findings of the Montreal study"
                },
                {
                  "key": "C",
                  "text": "to recommend the need for further research into the subject"
                },
                {
                  "key": "D",
                  "text": "to present a view which opposes that of the Montreal researchers"
                }
              ],
              "answer": "B",
              "explanation": "Meyer’s analysis of Beethoven demonstrates the same principle of unfulfilled expectation that drives dopamine activity in the Montreal study.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "It is this uncertainty that triggers the surge of dopamine in the caudate, as we struggle to figure out what will happen next"
              }
            },
            {
              "number": 36,
              "prompt": "According to Leonard Meyer, what causes the listener’s emotional response to music?",
              "options": [
                {
                  "key": "A",
                  "text": "the way that the music evokes poignant memories in the listener"
                },
                {
                  "key": "B",
                  "text": "the association of certain musical chords with certain feelings"
                },
                {
                  "key": "C",
                  "text": "the listener’s sympathy with the composer’s intentions"
                },
                {
                  "key": "D",
                  "text": "the internal structure of the musical composition"
                }
              ],
              "answer": "D",
              "explanation": "Meyer argued that emotions in music come from the unfolding events of the music itself – its internal structure.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "the emotions we find in music come from the unfolding events of the music itself. This ‘embodied meaning’ arises from the patterns the symphony invokes and then ignores"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "matching",
          "label": "Questions 37–40",
          "instructions": "Complete each sentence with the correct ending, A–F, below.",
          "options": [
            {
              "key": "A",
              "text": "our response to music depends on our initial emotional state."
            },
            {
              "key": "B",
              "text": "neuron activity decreases if outcomes become predictable."
            },
            {
              "key": "C",
              "text": "emotive music can bring to mind actual pictures and events."
            },
            {
              "key": "D",
              "text": "experiences in our past can influence our emotional reaction to music."
            },
            {
              "key": "E",
              "text": "emotive music delays giving listeners what they expect to hear."
            },
            {
              "key": "F",
              "text": "neuron activity increases prior to key points in a musical piece."
            }
          ],
          "questions": [
            {
              "number": 37,
              "prompt": "The Montreal researchers discovered that",
              "answer": "F",
              "explanation": "The caudate neurons were most active around 15 seconds before favourite moments – neuron activity increases prior to key points.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "the dopamine neurons in the caudate … were at their most active around 15 seconds before the participants’ favourite moments"
              }
            },
            {
              "number": 38,
              "prompt": "Many studies have demonstrated that",
              "answer": "B",
              "explanation": "Dopamine neurons quickly adapt to predictable rewards; if we know what’s going to happen, we don’t get excited.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "dopamine neurons quickly adapt to predictable rewards. If we know what’s going to happen next, then we don’t get excited"
              }
            },
            {
              "number": 39,
              "prompt": "Meyer’s analysis of Beethoven’s music shows that",
              "answer": "E",
              "explanation": "Beethoven carefully holds off repeating the expected pattern – the music delays giving listeners what they expect.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Beethoven begins with the clear statement of a rhythmic and harmonic pattern and then, in an ingenious tonal dance, carefully holds off repeating it"
              }
            },
            {
              "number": 40,
              "prompt": "Earlier theories of music suggested that",
              "answer": "C",
              "explanation": "Earlier theories focused on connotative meaning – the way sound refers to the real world of images and experiences.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "earlier theories of music focused on the way a sound can refer to the real world of images and experiences – its ‘connotative’ meaning"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c12t3r$,
  true
);
