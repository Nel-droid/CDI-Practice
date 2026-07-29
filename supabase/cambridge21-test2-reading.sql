DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 21',
  'Test 2',
  'academic',
  3600,
  $c21t2r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Do animals dream?",
      "passage": [
        {
          "ref": "1",
          "text": "Studies using electrodes attached to the heads of sleepers have shown that when we sleep, we do so in two ways that alternate throughout the night. The first is rapid eye movement (REM) or active sleep. During this stage our eyes move, even though our eyelids are closed. Our muscles also twitch slightly, though they are largely paralysed so we don't hurt ourselves. In contrast, we also engage in non-REM sleep, during which we barely move at all. Most dream states, and certainly those with the most vivid dreams, happen during REM sleep."
        },
        {
          "ref": "2",
          "text": "There's some evidence that other mammals may also dream. For example, researchers compared the brain patterns of rats running through a maze when awake with their brain patterns during REM sleep. They found the patterns were very similar and concluded that the sleeping rats were dreaming about going through the maze."
        },
        {
          "ref": "3",
          "text": "But finding evidence of dreaming in non-mammals has proved more difficult. Their brains are very different from those of humans, and it can often be difficult to record their activity while they are sleeping. Recently, however, researchers succeeded in recording brain activity in sleeping pigeons. As in mammals, the recordings revealed both REM and non-REM sleep. Intriguingly, REM sleep activity was high in brain regions involved in processing visual information, especially images related to physical activities such as flying, which suggests that this may possibly be what the pigeons were dreaming about."
        },
        {
          "ref": "4",
          "text": "That said, dreaming and REM sleep are unlikely to be universal in the animal kingdom. For example, sponges don't have brains, so they lack the machinery for dreaming. There are also some animals with unusual sleep patterns. These include whales and dolphins, which do not shut down their entire brain when they sleep, but only half of it, keeping the rest awake. They also show no sign of REM sleep, suggesting that they may only experience non-REM dreams, which are less vivid. This is surprising because we tend to think of whales and dolphins as having complex inner lives. It's"
        },
        {
          "ref": "5",
          "text": "thought that they don't experience REM sleep because during REM sleep animals are more vulnerable to extremes of temperature."
        },
        {
          "ref": "6",
          "text": "Nevertheless, in many cases REM sleep does seem to have benefits. Growing evidence from birds and mammals suggests that REM sleep and dreaming are important for forming memories and learning. It is believed that when events are replayed in dreams, this helps to integrate memories into longer-term storage. As soon as animals evolved moderately complex lifestyles, they would have needed to dream in order to manage these lifestyles."
        },
        {
          "ref": "7",
          "text": "However, we still don't understand how this outward behaviour relates to internal experience. It seems impossible to know what it is like to be a rat or a pigeon, let alone imagine their dreamscapes. We are quick to interpret the twitching limbs and quiet barks of sleeping dogs, but the truth is that we don't know if there is an internal experience of chasing rabbits that comes along with that."
        },
        {
          "ref": "8",
          "text": "Another non-human dreamer offers insight here. In 2019, while making a documentary, David Scheel of Alaska Pacific University in the USA housed an octopus named Heidi in a tank in his living room. At one point, in the middle of the night, Heidi seemed to dream: her limbs and head moved, and her skin rapidly changed colour, as though she was pursuing a crab."
        },
        {
          "ref": "9",
          "text": "Similarly, a report recently emerged of a sleeping octopus apparently having a nightmare. Costello, as the octopus was called, thrashed around, extended his mantle as if trying to make himself look bigger, and squirted ink as though he were being attacked by a predator. The nightmare study is intriguing, says Scheel, but is only based on one animal. He argues that as well as outward behaviour, brain imaging is needed to show that the octopuses are replaying sequences of activities from their waking lives in dreams."
        },
        {
          "ref": "10",
          "text": "The trouble is that we will never be able to experience any animal's dreams. That goes for other humans' dreams too. But we can try to imagine what these dreamscapes are like by meeting animals on their own terms. For example, vision is the dominant sense for many humans, and so our dreams are heavily visual too. Dogs primarily navigate the world using smell while spiders rely much more on vibrations."
        },
        {
          "ref": "11",
          "text": "It is likely that dreaming has served multiple purposes since the first complex animals evolved. And if this is the case, it is possible that better understanding of these purposes might shed light on the true purpose of our own dreams."
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–5",
          "instructions": "Complete the table below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Research findings Comment"
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
              "kind": "static",
              "text": "Whales and dolphins still have"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "their brain awake when they sleep don't experience REM sleep, as this could affect their sensitivity to",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "their dreams are probably not very",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Humans humans experience REM sleep and non-REM sleep in REM sleep, the eyes and muscles move _______ similar brain patterns were observed when active and sleeping indicative of dreaming",
              "answer": [
                "rats"
              ],
              "wordLimit": 1,
              "explanation": "For example, researchers compared the brain patterns of rats running through a maze when awake with their brain patterns during REM sleep. They found the patterns were very similar and concluded that the sleeping rats were dreaming about going through the maze",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "For example, researchers compared the brain patterns of rats running through a maze when awake with their brain patterns"
              }
            },
            {
              "number": 2,
              "prompt": "Pigeons when sleeping, pigeons displayed activity in parts of the brain that deal with _______ input may have been dreaming of flying",
              "answer": [
                "visual"
              ],
              "wordLimit": 1,
              "explanation": "Intriguingly, REM sleep activity was high in brain regions involved in processing visual information, especially images related to physical activities such as flying, which suggests that this may possibly be what the pigeons were dreaming about",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "Intriguingly, REM sleep activity was high in brain regions involved in processing visual information, especially images "
              }
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "half"
              ],
              "wordLimit": 1,
              "explanation": "These include whales and dolphins, which do not shut down their entire brain when they sleep, but only half of it, keeping the rest awake",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "These include whales and dolphins, which do not shut down their entire brain when they sleep, but only half of it, keepi"
              }
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "temperature"
              ],
              "wordLimit": 1,
              "explanation": "It’s thought that they don’t experience REM sleep because during REM sleep animals are more vulnerable to extremes of temperature"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "vivid"
              ],
              "wordLimit": 1,
              "explanation": "They also show no sign of REM sleep, suggesting that they may only experience non-REM dreams, which are less vivid",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "They also show no sign of REM sleep, suggesting that they may only experience non-REM dreams, which are less vivid"
              }
            }
          ],
          "formTitle": "Research into sleep and dreaming",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 6–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 6,
              "prompt": "Dreaming about past experiences helps us to create lasting memories of them.",
              "answer": "TRUE",
              "explanation": "It is believed that when events are replayed in dreams, this helps to integrate memories into longer-term storage",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "It is believed that when events are replayed in dreams, this helps to integrate memories into longer-term storage"
              }
            },
            {
              "number": 7,
              "prompt": "It is now possible to tell what type of dream a dog is having.",
              "answer": "FALSE",
              "explanation": "We are quick to interpret the twitching limbs and quiet barks of sleeping dogs, but the truth is that we don’t know if there is an internal experience of chasing rabbits that comes along with that",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "We are quick to interpret the twitching limbs and quiet barks of sleeping dogs, but the truth is that we don’t know if t"
              }
            },
            {
              "number": 8,
              "prompt": "David Scheel's documentary was influential on other research into the sleeping patterns of octopuses.",
              "answer": "NOT GIVEN",
              "explanation": "In 2019, while making a documentary, David Scheel of Alaska Pacific University in the USA housed an octopus named Heidi in a tank in his living room",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "In 2019, while making a documentary, David Scheel of Alaska Pacific University in the USA housed an octopus named Heidi "
              }
            },
            {
              "number": 9,
              "prompt": "While it was asleep, the octopus called Costello reacted as if it was hunting. === PAGE 5 ===",
              "answer": "FALSE",
              "explanation": "Costello, as the octopus was called, thrashed around, extended his mantle as if trying to make himself look bigger, and squirted ink as though he were being attacked by a predator",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "Costello, as the octopus was called, thrashed around, extended his mantle as if trying to make himself look bigger, and "
              }
            },
            {
              "number": 10,
              "prompt": "Scheel believes more research into octopuses' dreams should be carried out.",
              "answer": "TRUE",
              "explanation": "The nightmare study is intriguing, says Scheel, but is only based on one animal. He argues that as well as outward behaviour, brain imaging is needed to show that the octopuses are replaying sequences of activities from their waking lives in dreams",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "The nightmare study is intriguing, says Scheel, but is only based on one animal. He argues that as well as outward behav"
              }
            },
            {
              "number": 11,
              "prompt": "We may soon be able to share the dreams of other human beings.",
              "answer": "FALSE",
              "explanation": "The trouble is that we will never be able to experience any animal’s dreams. That goes for other humans’ dreams too",
              "evidence": {
                "sectionId": "p1",
                "ref": "10",
                "quote": "The trouble is that we will never be able to experience any animal’s dreams. That goes for other humans’ dreams too"
              }
            },
            {
              "number": 12,
              "prompt": "Hearing may be an important part of the dreams of some animals.",
              "answer": "NOT GIVEN",
              "explanation": "For example, vision is the dominant sense for many humans, and so our dreams are heavily visual too. Dogs primarily navigate the world using smell while spiders rely much more on vibrations",
              "evidence": {
                "sectionId": "p1",
                "ref": "10",
                "quote": "For example, vision is the dominant sense for many humans, and so our dreams are heavily visual too. Dogs primarily navi"
              }
            },
            {
              "number": 13,
              "prompt": "Interest in the reasons why humans dream has increased greatly in recent times. === PAGE 6 ===",
              "answer": "NOT GIVEN",
              "explanation": "And if this is the case, it is possible that better understanding of these purposes might shed light on the true purpose of our own dreams",
              "evidence": {
                "sectionId": "p1",
                "ref": "11",
                "quote": "And if this is the case, it is possible that better understanding of these purposes might shed light on the true purpose"
              }
            }
          ],
          "id": "g6"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Mapungubwe",
      "passage": [
        {
          "ref": "A",
          "text": "Mapungubwe, which was one of the first states in southern Africa, was formed by Bantu- speaking peoples who were farmers. The area controlled by the rulers of Mapungubwe had at its heart a large sandstone plateau, which was easily defended due to its inaccessibility. As with other kingdoms in the region of southern Africa, cattle herding and other types of farming brought plenty of food and a surplus that could be traded for needed goods. Archaeology has revealed extensive layers of bones and manure, which indicate that from the 9th century CE there were large cattle herds, the traditional source of political power in southern African communities. The archaeological record for the 10th century shows a marked increase in the number of domesticated cattle in the area as well as cotton cultivation and weaving, as indicated by abundant finds of spindle whorls."
        },
        {
          "ref": "B",
          "text": "The total population of Mapungubwe at its peak in the mid-13th century was around 5,000 people. The chief or king of Mapungubwe was likely the wealthiest individual in the society, and would have owned more cattle and precious materials than anyone else. The king and his advisers dwelt in a stone enclosure composed of stone walls and housing built on the highest level of the community's territory, a natural sandstone hill which is some 30 metres high and 100 metres in length. Occupation on the hill dates from the 11th century and the entire complex was surrounded by a wooden palisade*, as indicated by postholes made in the rock. The rest of the community lived in mud and thatch housing spread out below the hill, although there is one stone structure here. This settlement, known as Babandyanalo, covers around 5 hectares (12.3 acres) and predates the hilltop structures."
        },
        {
          "ref": "C",
          "text": "The kings of Mapungubwe were buried at the top of the hill site in a demarcated area away from the dwellings, while other members of the community were buried at the surrounding valley level. A wooden staircase connected the two levels, the sockets for the steps being clearly visible in the sandstone cliff face. There were some grander residences dotted around the outskirts of Babandyanalo, and these probably belonged to male relatives of the king. There are many other smaller but still impressive sites across the Mapungubwe plateau, which are located anywhere from 15 to 100 kilometres from the major hill site. Containing stone residences and walls, they likely belonged to local chiefs who acted as servants to the king."
        },
        {
          "ref": "D",
          "text": "The Mapungubwe plateau has a very high number of carnivore animal remains and ivory splinters, suggesting that the skins of these large animals and ivory elephant tusks were accumulated, probably for trade with coastal areas reached by the Limpopo River. The presence of glass beads, almost certainly from India, indicate there was trade of some sort with other states on the coast who, in turn, traded with merchants travelling from India by sea. Mapungubwe also benefitted from locally-sourced copper and the gold trade as it passed from the kingdom of Great Zimbabwe (12-15th century), situated to the north of Mapungubwe, to the coastal city of Kosala. It is likely that trade links led to a strengthening of political authority in order to control and even monopolise these lucrative interregional connections."
        },
        {
          "ref": "E",
          "text": "Archaeological discoveries reveal that pottery was produced on a scale large enough to suggest the presence of professional potters, and is another indicator of the prosperity of Mapungubwe society. Archaeological finds include spherical vessels with short necks, beakers, and bowls, many of which have decorative stamps. There are also ceramic discs, and whistles. In addition, cattle, sheep, and goat figurines, and small figures of highly stylised humans with elongated bodies and short limbs have been found. The figures may have been used in ceremonies as offerings to ancestors, but their precise function is not known. Other discoveries include small jewellery items made from locally sourced copper."
        },
        {
          "ref": "F",
          "text": "Beautifully decorated artefacts made of gold have also been found at Mapungubwe. A type of decoration, found nowhere else except Great Zimbabwe, involved the crafting of gold into small rectangular sheets and carving geometrical patterns into it. These sheets were then used to cover wooden objects (which have not survived) using small tacks, also made of gold. One such object that has been discovered may have been a sceptre, while additional evidence of local gold-working is a rhinoceros figurine made from small hammered sheets, and thousands of small gold beads. These objects were all found at the royal burial site and date to c. 1150. They are the first known indicators that gold had an intrinsic value of its own (as opposed to that of a currency) in southern Africa."
        },
        {
          "ref": "G",
          "text": "The kingdom of Mapungubwe was already in decline by the late 13th century, probably because overpopulation placed too much stress on local resources, a situation that may have been brought to a crisis point by a series of droughts. Trade routes may also have shifted northwards. Certainly, the areas that now prospered were to the north, such as Great Zimbabwe. * palisade: typically a row of closely placed, high vertical wooden or iron posts used as a means of defence"
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–19",
          "instructions": "Reading Passage 2 has seven paragraphs, A–G. Which paragraph contains the following information?",
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
              "prompt": "a mention of the uncertainty regarding the purpose",
              "answer": "E",
              "explanation": "The figures may have been used in ceremonies as offerings to ancestors, but their precise function is not known",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "The figures may have been used in ceremonies as offerings to ancestors, but their precise function is not known"
              }
            },
            {
              "number": 15,
              "prompt": "the likelihood that a climatic factor increased the",
              "answer": "G",
              "explanation": "The kingdom of Mapungubwe was already in decline by the late 13th century, probably because overpopulation placed too much stress on local resources, a situation that may have been brought to a crisis point by a series of droughts",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "The kingdom of Mapungubwe was already in decline by the late 13th century, probably because overpopulation placed too mu"
              }
            },
            {
              "number": 16,
              "prompt": "a mention of the location where members of the",
              "answer": "C",
              "explanation": "There were some grander residences dotted around the outskirts of Babandyanalo, and these probably belonged to male relatives of the king",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "There were some grander residences dotted around the outskirts of Babandyanalo, and these probably belonged to male rela"
              }
            },
            {
              "number": 17,
              "prompt": "a reference to people who brought goods by ship",
              "answer": "D",
              "explanation": "The presence of glass beads, almost certainly from India, indicate there was trade of some sort with other states on the coast who, in turn, traded with merchants travelling from India by sea",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "The presence of glass beads, almost certainly from India, indicate there was trade of some sort with other states on the"
              }
            },
            {
              "number": 18,
              "prompt": "an estimate of the size to which the Mapungubwe",
              "answer": "B",
              "explanation": "The total population of Mapungubwe at its peak in the mid-13th century was around 5,000 people",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "The total population of Mapungubwe at its peak in the mid-13th century was around 5,000 people"
              }
            },
            {
              "number": 19,
              "prompt": "a mention of agricultural produce being exchanged",
              "answer": "A",
              "explanation": "cattle herding and other types of farming brought plenty of food and a surplus that could be traded for needed goods",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "cattle herding and other types of farming brought plenty of food and a surplus that could be traded for needed goods"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 20–21",
          "instructions": "Choose TWO letters, A–E. The archaeological record reveals information about gold and the kingdom of Mapungubwe. Which TWO pieces of information are mentioned by the writer?",
          "options": [
            {
              "key": "A",
              "text": "Not everyone in Mapungubwe used gold as a form of payment."
            },
            {
              "key": "B",
              "text": "Items of gold were placed close to where Mapungubwe kings were buried."
            },
            {
              "key": "C",
              "text": "The most valuable item discovered in Mapungubwe was a sceptre made of gold."
            },
            {
              "key": "D",
              "text": "The way gold was decorated in Mapungubwe was also practised in another kingdom."
            },
            {
              "key": "E",
              "text": "Working with gold was a respected occupation in the Mapungubwe community."
            }
          ],
          "questions": [
            {
              "number": 20,
              "prompt": "The archaeological record reveals information about gold and the kingdom of Mapungubwe. Which TWO pieces of information are mentioned by the writer?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "A type of decoration, found nowhere else except Great Zimbabwe, involved the crafting of gold into small rectangular sheets and carving geometrical patterns into it These objects were all found at the royal burial site and date to c. 1150",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "A type of decoration, found nowhere else except Great Zimbabwe, involved the cra"
              }
            },
            {
              "number": 21,
              "prompt": "The archaeological record reveals information about gold and the kingdom of Mapungubwe. Which TWO pieces of information are mentioned by the writer?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "A type of decoration, found nowhere else except Great Zimbabwe, involved the crafting of gold into small rectangular sheets and carving geometrical patterns into it These objects were all found at the royal burial site and date to c. 1150",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "A type of decoration, found nowhere else except Great Zimbabwe, involved the cra"
              }
            }
          ],
          "id": "g20"
        },
        {
          "type": "completion",
          "label": "Questions 22–26",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "The Mapungubwe community's",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": "is indicated by the amount of professionally made pottery discovered at the site. Many of these objects, such as beakers and bowls, are highly decorated and have been marked with stamps. Other finds include round ceramic objects,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "static",
              "text": "and figures of various animals, as well as models of people with stretched",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": ". It is possible that these had a role in ceremonies to honour",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": ". In addition, pieces of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": "made from a local metal have been found at the site.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 22,
              "prompt": "The Mapungubwe community's _______",
              "answer": [
                "prosperity"
              ],
              "wordLimit": 1,
              "explanation": "Archaeological discoveries reveal that pottery was produced on a scale large enough to suggest the presence of professional potters, and is another indicator of the prosperity of Mapungubwe society",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Archaeological discoveries reveal that pottery was produced on a scale large enough to suggest the presence of professio"
              }
            },
            {
              "number": 23,
              "prompt": "include round ceramic objects, _______",
              "answer": [
                "whistles"
              ],
              "wordLimit": 1,
              "explanation": "There are also ceramic discs, and whistles",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "There are also ceramic discs, and whistles"
              }
            },
            {
              "number": 24,
              "prompt": "as models of people with stretched _______",
              "answer": [
                "bodies"
              ],
              "wordLimit": 1,
              "explanation": "In addition, cattle, sheep, and goat figurines, and small figures of highly stylised humans with elongated bodies and short limbs have been found",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "In addition, cattle, sheep, and goat figurines, and small figures of highly stylised humans with elongated bodies and sh"
              }
            },
            {
              "number": 25,
              "prompt": "had a role in ceremonies to honour _______",
              "answer": [
                "ancestors"
              ],
              "wordLimit": 1,
              "explanation": "In addition, cattle, sheep, and goat figurines, and small figures of highly stylised humans with elongated bodies and short limbs have been found. The figures may have been used in ceremonies as offerings to ancestors, but their precise function is not known",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "In addition, cattle, sheep, and goat figurines, and small figures of highly stylised humans with elongated bodies and sh"
              }
            },
            {
              "number": 26,
              "prompt": "In addition, pieces of _______",
              "answer": [
                "jewellery"
              ],
              "wordLimit": 1,
              "explanation": "/ jewelry Other discoveries include small jewellery items made from locally sourced copper"
            }
          ],
          "formTitle": "Archaeological discoveries",
          "id": "g22"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Artificial Intelligence",
      "passage": [
        {
          "ref": "1",
          "text": "In many countries in the West, hysteria about the future of artificial intelligence (AI) is everywhere. There seems to be no shortage of sensationalist news about how AI could cure diseases, accelerate human innovation and improve human creativity. Just looking at the media headlines, you might think that we are already living in a future where AI has infiltrated every aspect of society. While it is undeniable that AI has opened up a wealth of promising opportunities, it has also led to the emergence of a mindset that can be best described as 'AI solutionism'. This is the philosophy that, given enough data, machine learning algorithms can solve all of humanity's problems. But, in fact, instead of supporting AI progress, this mindset actually jeopardises the value of machine intelligence by disregarding important AI safety principles and setting unrealistic expectations about what AI can really do for humanity."
        },
        {
          "ref": "2",
          "text": "In only a few years, AI solutionism has made its way from the technology evangelists' mouths in Silicon Valley in California to the minds of government officials and policymakers around the world. The pendulum has swung from the dystopian notion that AI will destroy humanity to the utopian belief that our algorithmic saviour is here."
        },
        {
          "ref": "3",
          "text": "We are now seeing governments pledge support to national AI initiatives and compete in a technological race to dominate the burgeoning machine-learning sector. While many politicians proclaim the transformative effects of the coming 'AI revolution', they fail to realise the complexity around deploying advanced machine learning systems in the real world."
        },
        {
          "ref": "4",
          "text": "One of the most promising varieties of AI technologies are neural networks. This form of machine learning is loosely modelled on the neuronal structure of the human brain, but on a much smaller scale. But what many politicians do not understand is that simply adding a neural network to a problem will not automatically mean that you'll find a solution. Similarly, adding a neural network to a system of government does not mean it will be instantaneously more inclusive or fair. AI systems need a lot of data to function, but the public sector typically does not have the appropriate data infrastructure to support advanced machine learning. Most of the data remains"
        },
        {
          "ref": "5",
          "text": "stored in offline archives. The few digitised sources of data that exist tend to be buried in bureaucracy. More often than not, data is spread across different government departments that each require special permissions to be accessed. Above all, the public sector typically lacks the human talent with the right technological capabilities to fully reap the benefits of machine intelligence."
        },
        {
          "ref": "6",
          "text": "For these reasons, the sensationalism over AI has attracted many critics. Stuart Russell, a professor of computer science at the University of California, Berkeley, has long advocated a more sensible and realistic approach that focuses on simple everyday applications of AI instead of the hypothetical takeover by super-intelligent robots. Similarly, Rodney Brooks, professor of robotics at Massachusetts Institute of Technology, writes that 'almost all innovations in robotics and AI take far, far, longer to be really widely deployed than people in the field and outside the field imagine'. One of the many difficulties in deploying machine learning systems is that AI is extremely susceptible to adversarial attacks. This means that a malicious AI can target another AI to make it behave in a certain way, such as forcing it to make wrong predictions. Many researchers have warned against the rolling out of AI without appropriate security standards and defence mechanisms. Still, AI security remains an often overlooked topic when machine learning systems are installed."
        },
        {
          "ref": "7",
          "text": "If we are to reap the benefits and minimise the potential harms of AI, we must start thinking about how machine learning can be meaningfully applied to specific areas of government, business and society. This means we need to have a discussion about AI ethics and the distrust that many people have towards machine learning."
        },
        {
          "ref": "8",
          "text": "Most importantly, we need to be aware of the limitations of AI and where people still need to take the lead. Instead of painting an unrealistic picture of the power of AI, it is important to take a step back and separate the actual technological capabilities of AI from fantasy. The medical profession has also recognised the drawbacks to AI. The IBM Watson for Oncology programme was a piece of AI that was meant to help doctors treat cancer. Even though it was developed to deliver the best recommendations, human experts found it hard to trust the machine. As a result, the AI programme was abandoned in most hospitals where it was trialled. Similar difficulties arose in the legal domain when algorithms were used in courts in the US to sentence criminals. An algorithm calculated risk assessment scores and advised judges on the"
        },
        {
          "ref": "9",
          "text": "sentencing. The system was found to amplify structural racial discrimination and was later abandoned."
        },
        {
          "ref": "10",
          "text": "There are some crucial lessons here for everyone aiming to boost investments in national AI programmes. These examples demonstrate that there is no AI solution for everything. Using AI simply for the sake of AI may not always be productive or useful, and not every issue is best addressed by applying machine intelligence to it. All solutions come with a cost and not everything that can be automated should be."
        }
      ],
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 27–29",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 27,
              "prompt": "What is the writer doing in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "predicting the future impact of AI"
                },
                {
                  "key": "B",
                  "text": "describing a public perception of AI"
                },
                {
                  "key": "C",
                  "text": "outlining some possible benefits of AI"
                },
                {
                  "key": "D",
                  "text": "highlighting the breadth of the influence of AI"
                }
              ],
              "answer": "B",
              "explanation": "In many countries in the West, hysteria about the future of artificial intelligence (AI) is everywhere. There seems to be no shortage of sensationalist news about how AI could cure diseases, accelerate human innovation and improve human creativity. Just looking at the media headlines, you might think that we are already living in a future where AI has infiltrated every aspect of society",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "In many countries in the West, hysteria about the future of artificial intelligence (AI) is everywhere. There seems to b"
              }
            },
            {
              "number": 28,
              "prompt": "When discussing AI solutionism in the second paragraph, the writer",
              "options": [
                {
                  "key": "A",
                  "text": "points out a risk involved."
                },
                {
                  "key": "B",
                  "text": "specifies its probable origins."
                },
                {
                  "key": "C",
                  "text": "mentions its chief supporters."
                },
                {
                  "key": "D",
                  "text": "weighs up some pros and cons."
                }
              ],
              "answer": "A",
              "explanation": "But, in fact, instead of supporting AI progress, this mindset actually jeopardises the value of machine intelligence by disregarding important AI safety principles and setting unrealistic expectations about what AI can really do for humanity",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "But, in fact, instead of supporting AI progress, this mindset actually jeopardises the value of machine intelligence by "
              }
            },
            {
              "number": 29,
              "prompt": "In the fourth paragraph, the writer suggests that many politicians may",
              "options": [
                {
                  "key": "A",
                  "text": "have failed to appreciate the true potential of AI initiatives."
                },
                {
                  "key": "B",
                  "text": "have misunderstood the function of the machine-learning sector."
                },
                {
                  "key": "C",
                  "text": "be unaware of the challenges of implementing national AI initiatives."
                },
                {
                  "key": "D",
                  "text": "be too keen to enter the race to dominate the machine-learning sector."
                }
              ],
              "answer": "C",
              "explanation": "While many politicians proclaim the transformative effects of the coming ‘AI revolution’, they fail to realise the complexity around deploying advanced machine learning systems in the real world",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "While many politicians proclaim the transformative effects of the coming ‘AI revolution’, they fail to realise the compl"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 30–35",
          "instructions": "Complete the summary using the list of words, A–I, below.",
          "summaryTitle": "",
          "summaryText": "Neural networks are a promising area of AI technology for governments. However, many\npoliticians overestimate their capabilities, believing that the mere addition of a neural network\nwill produce solutions and promote {30} .\nMost public sector organisations have not set up the necessary {31} to\nmanage the huge amount of data required to enable AI to function. Complex bureaucracy is\nanother issue, as each person involved needs {32} to access the relevant\ndata, which is often spread across different departments. But the main problem is that few\npublic sector employees have the {33} to take full advantage of machine\nintelligence.\nThe medical profession experimented with an AI programme, but their experts had little faith in\nits {34} , and the programme was abandoned. US courts also abandoned\nthe use of algorithms when it was found that these reflected and magnified the existing\n{35} within the legal profession.\nA. reliability B. funding C. skills D. prejudices E. computers\nF. equality G. framework H. confidentialityI. approval",
          "wordBank": [
            {
              "key": "A",
              "text": "reliability"
            },
            {
              "key": "B",
              "text": "funding"
            },
            {
              "key": "C",
              "text": "skills"
            },
            {
              "key": "D",
              "text": "prejudices"
            },
            {
              "key": "E",
              "text": "computers"
            },
            {
              "key": "F",
              "text": "equality"
            },
            {
              "key": "G",
              "text": "framework"
            },
            {
              "key": "H",
              "text": "confidentiality"
            },
            {
              "key": "I",
              "text": "approval"
            }
          ],
          "questions": [
            {
              "number": 30,
              "prompt": "",
              "answer": "F",
              "explanation": "Similarly, adding a neural network to a system of government does not mean it will be instantaneously more inclusive or fair",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Similarly, adding a neural network to a system of government does not mean it will be instantaneously more inclusive or "
              }
            },
            {
              "number": 31,
              "prompt": "",
              "answer": "G",
              "explanation": "AI systems need a lot of data to function, but the public sector typically does not have the appropriate data infrastructure to support advanced machine learning",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "AI systems need a lot of data to function, but the public sector typically does not have the appropriate data infrastruc"
              }
            },
            {
              "number": 32,
              "prompt": "",
              "answer": "I",
              "explanation": "More often than not, data is spread across different government departments that each require special permissions to be accessed",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "More often than not, data is spread across different government departments that each require special permissions to be "
              }
            },
            {
              "number": 33,
              "prompt": "",
              "answer": "C",
              "explanation": "Above all, the public sector typically lacks the human talent with the right technological capabilities to fully reap the benefits of machine intelligence",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Above all, the public sector typically lacks the human talent with the right technological capabilities to fully reap th"
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": "A",
              "explanation": "The IBM Watson for Oncology programme was a piece of AI that was meant to help doctors treat cancer. Even though it was developed to deliver the best recommendations, human experts found it hard to trust the machine. As a result, the AI programme was abandoned in most hospitals where it was trialled",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "The IBM Watson for Oncology programme was a piece of AI that was meant to help doctors treat cancer. Even though it was "
              }
            },
            {
              "number": 35,
              "prompt": "",
              "answer": "D",
              "explanation": "The system was found to amplify structural racial discrimination and was later abandoned",
              "evidence": {
                "sectionId": "p3",
                "ref": "9",
                "quote": "The system was found to amplify structural racial discrimination and was later abandoned"
              }
            }
          ],
          "id": "g30"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 36–39",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 36,
              "prompt": "Stuart Russell's proposals regarding the use of AI are impractical. === PAGE 16 ===",
              "answer": "NO",
              "explanation": "Stuart Russell, a professor of computer science at the University of California, Berkeley, has long advocated a more sensible and realistic approach that focuses on simple everyday applications of AI instead of the hypothetical takeover by super-intelligent robots",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Stuart Russell, a professor of computer science at the University of California, Berkeley, has long advocated a more sen"
              }
            },
            {
              "number": 37,
              "prompt": "Rodney Brooks' view has attracted unfair criticism from supporters of AI.",
              "answer": "NOT GIVEN",
              "explanation": "Similarly, Rodney Brooks, professor of robotics at Massachusetts Institute of Technology, writes that ‘almost all innovations in robotics and AI take far, far, longer to be really widely deployed than people in the field and outside the field imagine’",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Similarly, Rodney Brooks, professor of robotics at Massachusetts Institute of Technology, writes that ‘almost all innova"
              }
            },
            {
              "number": 38,
              "prompt": "Nowadays, the need to protect AI systems is always taken into account when they are set up.",
              "answer": "NO",
              "explanation": "Still, AI security remains an often overlooked topic when machine learning systems are installed",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Still, AI security remains an often overlooked topic when machine learning systems are installed"
              }
            },
            {
              "number": 39,
              "prompt": "In order to benefit from AI and minimise the harms, we have to explore people's concerns about its use.",
              "answer": "YES",
              "explanation": "If we are to reap the benefits and minimise the potential harms of AI, we must start thinking about how machine learning can be meaningfully applied to specific areas of government, business and society. This means we need to have a discussion about AI ethics and the distrust that many people have towards machine learning",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "If we are to reap the benefits and minimise the potential harms of AI, we must start thinking about how machine learning"
              }
            }
          ],
          "id": "g36"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 40–40",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 40,
              "prompt": "What would be a suitable subtitle for Reading Passage 3?",
              "options": [
                {
                  "key": "A",
                  "text": "How to make the most of what AI has to offer"
                },
                {
                  "key": "B",
                  "text": "Why AI may not be the answer to our problems"
                },
                {
                  "key": "C",
                  "text": "Why governments should not invest in AI systems"
                },
                {
                  "key": "D",
                  "text": "How AI could improve the efficiency of the public sector"
                }
              ],
              "answer": "B",
              "explanation": "These examples demonstrate that there is no AI solution for everything. Using AI simply for the sake of AI may not always be productive or useful, and not every issue is best addressed by applying machine intelligence to it",
              "evidence": {
                "sectionId": "p3",
                "ref": "10",
                "quote": "These examples demonstrate that there is no AI solution for everything. Using AI simply for the sake of AI may not alway"
              }
            }
          ],
          "id": "g40"
        }
      ]
    }
  ]
}
$c21t2r$,
  true
);
