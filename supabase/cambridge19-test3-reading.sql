DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 19',
  'Test 3',
  'academic',
  3600,
  $c19t3r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Archaeologists discover evidence of prehistoric island settlers",
      "passage": [
        {
          "ref": "1",
          "text": "In early April 2019, Dr Ceri Shipton and his colleagues from Australian National University became the first archaeologists to explore Obi, one of many tropical islands in Indonesia’s Maluku Utara province. The research team’s discoveries suggest that the prehistoric people who lived on Obi were adept on both land and sea, hunting in the dense rainforest, foraging on the seashore, and possibly even voyaging between islands."
        },
        {
          "ref": "2",
          "text": "The excavations were part of a project to learn more about how people first dispersed from mainland Asia, through the Indonesian archipelago and into the prehistoric continent that once connected Australia and New Guinea. The team’s earlier research suggested that the northernmost islands in the group, known as the Wallacean islands,including Obi, would have offered the easiest migration route. It also seemed likely that these islands were crucial ‘stepping stones’ on humans’ island-hopping voyages through this region millennia ago. But to support this idea, they needed archaeological evidence for humans living in this remote area in the ancient past. So, they travelled to Obi to look for sites that might reveal evidence of early occupation. Just inland from the village of Kelo on Obi’s northern coast, Shipton and his colleagues found two caves containing prehistoric rock shelters that were suitable for excavation. With the permission and help of the local people of Kelo, they dug a small test excavation in each shelter. There they found numerous artefacts, including fragments of axes, some dating to about 14,000 years ago. The earliest axes at Kelo were made using clam shells. Axes made from clam shells from roughly the same time had also previously been found elsewhere in this region, including on the nearby island of Gebe to the northeast. As on Gebe, it is highly likely that Obi’s axes were used in the construction of canoes, thus allowing these early peoples to maintain connections between communities on neighbouring islands."
        },
        {
          "ref": "3",
          "text": "The oldest cultural layers from the Kelo site provided the team with the earliest record for human occupation on Obi, dating back around 18,000 years. At this time the climate was drier and colder than today, and the island’s dense rainforests would likely have been much less impenetrable than they are now. Sea levels were about 120 metres lower, meaning Obi was a much larger island, encompassing what is today the separate island of Bisa, as well as several other small islands nearby."
        },
        {
          "ref": "4",
          "text": "Roughly 11,700 years ago, as the most recent ice age ended, the climate became significantly warmer and wetter, no doubt making Obi’s jungle much thicker. According to the researchers, it is no coincidence that around this time the first axes crafted from stone rather than sea shells appear, likely in response to their heavy-duty use for clearing and modification of the increasingly dense rainforest. While stone takes about twice as long to grind into an axe compared to shell, the harder material keeps its sharp edge for longer."
        },
        {
          "ref": "5",
          "text": "Judging by the bones which the researchers unearthed in the Kelo caves, people living there mainly hunted the Rothschild’s cuscus, a possum-like creature that still lives on Obi today. As the forest grew more dense, people probably used axes to clear patches of forest and make hunting easier. Shipton’s team’s excavation of the shelters at the Kelo site unearthed a volcanic glass substance called obsidian, which must have been brought over from another island, as there is no known source on Obi. It also revealed particular types of beads, similar to those previously found on islands in southern Wallacea. These finds again support the idea that Obi islanders routinely travelled to other islands."
        },
        {
          "ref": "6",
          "text": "The excavations suggest people successfully lived in the two Kelo shelters for about 10,000 years. But then, about 8,000 years ago, both were abandoned. Did the residents leave Obi completely, or move elsewhere on the island? Perhaps the jungle had grown so thick that axes were no longer a match for the dense undergrowth. Perhaps people simply moved to the coast and turned to fishing rather than hunting as a means of survival."
        },
        {
          "ref": "7",
          "text": "Whatever the reason for the departure, there is no evidence for use of the Kelo shelters after this time, until about 1,000 years ago, when they were re-occupied by people who owned pottery as well as items made out of gold and silver. It seems likely, in view of Obi’s location, that this final phase of occupation also saw the Kelo shelters used by people involved in the historic trade in spices between the Maluku islands and the rest of the world."
        }
      ],
      "groups": [
        {
          "type": "true_false_notgiven",
          "label": "Questions 1–7",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 1,
              "prompt": "Archaeological research had taken place on the island of Obi before the arrival of Ceri Shipton and his colleagues.",
              "answer": "FALSE",
              "explanation": "In early April 2019, Dr Ceri Shipton and his colleagues from Australian National University became the first archaeologists to explore Obi, one of many tropical islands in Indonesia’s Maluku Utara province.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "In early April 2019, Dr Ceri Shipton and his colleagues from Australian National University became the first archaeologi"
              }
            },
            {
              "number": 2,
              "prompt": "At the Kelo sites, the researchers found the first clam shell axes ever to be discovered in the region.",
              "answer": "FALSE",
              "explanation": "The earliest axes at Kelo were made using clam shells. Axes made from clam shells from roughly the same time had also previously been found elsewhere in this region, including on the nearby island of Gebe to the northeast.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The earliest axes at Kelo were made using clam shells. Axes made from clam shells from roughly the same time had also pr"
              }
            },
            {
              "number": 3,
              "prompt": "The size of Obi today is less than it was 18,000 years ago.",
              "answer": "TRUE",
              "explanation": "The oldest cultural layers from the Kelo site provided the team with the earliest record for human occupation on Obi, dating back around 18,000 years.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "The oldest cultural layers from the Kelo site provided the team with the earliest record for human occupation on Obi, da"
              }
            },
            {
              "number": 4,
              "prompt": "A change in the climate around 11,700 years ago had a greater impact on Obi than on the surrounding islands.",
              "answer": "NOT GIVEN",
              "explanation": "Roughly 11,700 years ago, as the most recent ice age ended, the climate became significantly warmer and wetter, no doubt making Obi’s jungle much thicker.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Roughly 11,700 years ago, as the most recent ice age ended, the climate became significantly warmer and wetter, no doubt"
              }
            },
            {
              "number": 5,
              "prompt": "The researchers believe there is a connection between warmer, wetter weather and a change in the material used to make axes.",
              "answer": "TRUE",
              "explanation": "Roughly 11,700 years ago, as the most recent ice age ended, the climate became significantly warmer and wetter, no doubt making Obi’s jungle much thicker. According to the researchers, it is no coincidence that around this time the first axes crafted from stone rather than sea shells appear, likely in response to their heavy-duty use for clearing and modification of the increasingly dense rainforest.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Roughly 11,700 years ago, as the most recent ice age ended, the climate became significantly warmer and wetter, no doubt"
              }
            },
            {
              "number": 6,
              "prompt": "Shipton's team were surprised to find evidence of the Obi islanders’ hunting practices.",
              "answer": "NOT GIVEN",
              "explanation": "Judging by the bones which the researchers unearthed in the Kelo caves, people living there mainly hunted the Rothschild’s cuscus, a possum-like creature that still lives on Obi today.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "Judging by the bones which the researchers unearthed in the Kelo caves, people living there mainly hunted the Rothschild"
              }
            },
            {
              "number": 7,
              "prompt": "It is thought that the Kelo shelters were occupied continuously until about 1,000 years ago.",
              "answer": "FALSE",
              "explanation": "Whatever the reason for the departure, there is no evidence for use of the Kelo shelters after this time, until about 1,000 years ago, when they were re- occupied by people who owned pottery as well as items made out of gold and silver.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "Whatever the reason for the departure, there is no evidence for use of the Kelo shelters after this time, until about 1,"
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 8–13",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "- axes from around 14,000 years ago, probably used to make canoes"
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
              "text": "- evidence of travel between islands:"
            },
            {
              "kind": "static",
              "text": "+ obsidian: a material that is not found naturally on Obi"
            },
            {
              "kind": "question",
              "number": 11
            },
            {
              "kind": "static",
              "text": "It is thought that from 8,000 years ago, Obi islanders:"
            },
            {
              "kind": "static",
              "text": "- may have switched from hunting to fishing"
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
              "prompt": "Excavations of rock shelters inside _______ near the village of Kelo revealed:",
              "answer": [
                "caves"
              ],
              "wordLimit": 1,
              "explanation": "Just inland from the village of Kelo on Obi’s northern coast, Shipton and his colleagues found two caves containing prehistoric rock shelters that were suitable for excavation.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Just inland from the village of Kelo on Obi’s northern coast, Shipton and his colleagues found two caves containing preh"
              }
            },
            {
              "number": 9,
              "prompt": "- axes made out of _______ , dating from around 11,700 years ago",
              "answer": [
                "stone"
              ],
              "wordLimit": 1,
              "explanation": "According to the researchers, it is no coincidence that around this time the first axes crafted from stone rather than sea shells appear",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "According to the researchers, it is no coincidence that around this time the first axes crafted from stone rather than s"
              }
            },
            {
              "number": 10,
              "prompt": "- _______ of an animal: evidence of what ancient islanders ate",
              "answer": [
                "bones"
              ],
              "wordLimit": 1,
              "explanation": "Judging by the bones which the researchers unearthed in the Kelo caves, people living there mainly hunted the Rothschild’s cuscus, a possum-like creature that still lives on Obi today.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "Judging by the bones which the researchers unearthed in the Kelo caves, people living there mainly hunted the Rothschild"
              }
            },
            {
              "number": 11,
              "prompt": "+ _______ which resembled ones found on other islands.",
              "answer": [
                "beads"
              ],
              "wordLimit": 1,
              "explanation": "It also revealed particular types of beads, similar to those previously found on islands in southern Wallacea.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "It also revealed particular types of beads, similar to those previously found on islands in southern Wallacea."
              }
            },
            {
              "number": 12,
              "prompt": "- had _______ as well as items made out of metal",
              "answer": [
                "pottery"
              ],
              "wordLimit": 1,
              "explanation": "Whatever the reason for the departure, there is no evidence for use of the Kelo shelters after this time, until about 1,000 years ago, when they were re- occupied by people who owned pottery as well as items made out of gold and silver.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "Whatever the reason for the departure, there is no evidence for use of the Kelo shelters after this time, until about 1,"
              }
            },
            {
              "number": 13,
              "prompt": "- probably took part in the production and sale of _______",
              "answer": [
                "spices"
              ],
              "wordLimit": 1,
              "explanation": "It seems likely, in view of Obi’s location, that this final phase of occupation also saw the Kelo shelters used by people involved in the historic trade in spices between the Maluku islands and the rest of the world.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "It seems likely, in view of Obi’s location, that this final phase of occupation also saw the Kelo shelters used by peopl"
              }
            }
          ],
          "formTitle": "Archaeological findings on Obi",
          "id": "g8"
        }
      ]
    },
    {
      "id": "p2",
      "title": "The global importance of wetlands",
      "passage": [
        {
          "ref": "A",
          "text": "Wetlands are areas where water covers the soil, or is present either at or near the surface of the soil, for all or part of the year. These are complex ecosystems, rich in unique plant and animal life. But according to the World Wide Fund for Nature (WWFN), half of the world’s wetlands have disappeared since 1990 - converted or destroyed for commercial development, drainage schemes and the extraction of minerals and peat. Many of those that remain have been damaged by agricultural pesticides and fertilizers, industrial pollutants, and construction works."
        },
        {
          "ref": "B",
          "text": "Throughout history, humans have gathered around wetlands, and their fertile ecosystems have played an important part in human development. Consequently, they are of considerable religious, historical and archaeological value to many communities around the world. ‘Wetlands directly support the livelihoods and well-being of millions of people,’ says Dr Matthew McCartney, principal researcher and hydrologist at the International Water Management Institute (IWMI). ‘In many developing countries, large numbers of people are dependent on wetland agriculture for their livelihoods.’"
        },
        {
          "ref": "C",
          "text": "They also serve a crucial environmental purpose. ‘Wetlands are one of the key tools in mitigating climate change across the planet,’ says Pieter van Eijk, head of Climate Adaptation at Wetlands International (WI), pointing to their use as buffers that protect coastal areas from sea-level rise and extreme weather events such as hurricanes and flooding. Wetland coastal forests provide food and water, as well as shelter from storms, and WI and other agencies are working to restore those forests which have been lost. ‘It can be as simple as planting a few trees per hectare to create shade and substantially change a microclimate,’ he says. ‘Implementing climate change projects isn’t so much about money.’"
        },
        {
          "ref": "D",
          "text": "The world’s wetlands are, unfortunately, rich sources for in-demand commodities, such as palm oil and pulpwood. Peatlands - wetlands with a waterlogged organic soil layer - are particularly targeted. When peatlands are drained for cultivation, they become net carbon emitters instead of active carbon stores, and, according to Marcel Silvius, head of Climate-smart Land-use at WI, this practice causes six per cent of all global carbon emissions. The clearance of peatlands for planting also increases the risk of forest fires, which release huge amounts of CO₂. ‘We’re seeing huge peatland forests with extremely high biodiversity value being lost for a few decades of oil palm revenues,’ says Silvius."
        },
        {
          "ref": "E",
          "text": "The damage starts when logging companies arrive to clear the trees. They dig ditches to enter the peat swamps by boat and then float the logs out the same way. These are then used to drain water out of the peatlands to allow for the planting of corn, oil palms or pulpwood trees. Once the water has drained away, bacteria and fungi then break down the carbon in the peat and turn it into CO₂ and methane. Meanwhile, the remainder of the solid matter in the peat starts to move downwards, in a process known as subsidence. Peat comprises 90 per cent water, so this is one of the most alarming consequences of peatland clearances. ‘In the tropics, peat subsides at about four centimetres a year, so within half a century, very large landscapes on Sumatra and Borneo will become flooded as the peat drops below water level,’ says Silvius. ‘It’s a huge catastrophe that’s in preparation. Some provinces will lose 40 per cent of their landmass.’"
        },
        {
          "ref": "F",
          "text": "And while these industries affect wetlands in ways that can easily be documented, Dr Dave Tickner of the WWFN believes that more subtle impacts can be even more devastating. ‘Sediment run-off and fertilizers can be pretty invisible,’ says Tickner. ‘Over-extraction of water is equally invisible. You do get shock stories about rivers running red, or even catching fire, but there’s seldom one big impact that really hurts a wetland.’ Tickner does not blame anyone for deliberate damage, however. ‘I’ve worked on wetland issues for 20 years and have never met anybody who wanted to damage a wetland,’ he says. ‘It isn’t something that people generally set out to do. Quite often, the effects simply come from people trying to make a living.’"
        },
        {
          "ref": "G",
          "text": "Silvius also acknowledges the importance of income generation. ‘It’s not that we just want to restore the biodiversity of wetlands - which we do - but we recognise there’s a need to provide an income for local people.’ This approach is supported by IWMI. ‘The idea is that people in a developing country will only protect wetlands if they value and profit from them,’ says McCartney. ‘For sustainability, it’s essential that local people are involved in wetland planning and decision making and have clear rights to use wetlands.’"
        },
        {
          "ref": "H",
          "text": "The fortunes of wetlands would be improved, Silvius suggests, if more governments recognized their long-term value. ‘Different governments have different attitudes,’ he says, and goes on to explain that some countries place a high priority on restoring wetlands, while others still deny the issue. McCartney is cautiously optimistic, however. ‘Awareness of the importance of wetlands is growing,’ he says. ‘It’s true that wetland degradation still continues at a rapid pace, but my impression is that things are slowly changing.’"
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–17",
          "instructions": "Reading Passage 2 has eight paragraphs, A–H. Which paragraph contains the following information?",
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
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "reference to the need to ensure that inhabitants",
              "answer": "G",
              "explanation": "but we recognise there’s a need to provide an income for local people.’ This approach is supported by IWMI",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "but we recognise there’s a need to provide an income for local people.’ This approach is supported by IWMI"
              }
            },
            {
              "number": 15,
              "prompt": "the proportion of wetlands which have already",
              "answer": "A",
              "explanation": "But according to the World Wide Fund for Nature (WWFN), half of the world’s wetlands have disappeared since 1990",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "But according to the World Wide Fund for Nature (WWFN), half of the world’s wetlands have disappeared since 1990"
              }
            },
            {
              "number": 16,
              "prompt": "reference to the idea that people are beginning",
              "answer": "H",
              "explanation": "‘Awareness of the importance of wetlands is growing,’ he says",
              "evidence": {
                "sectionId": "p2",
                "ref": "H",
                "quote": "‘Awareness of the importance of wetlands is growing,’ he says"
              }
            },
            {
              "number": 17,
              "prompt": "mention of the cultural significance of wetlands",
              "answer": "B",
              "explanation": "Throughout history, humans have gathered around wetlands, and their fertile ecosystems have played an important part in human development. Consequently, they are of considerable religious, historical and archaeological value to many communities around the world.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Throughout history, humans have gathered around wetlands, and their fertile ecosystems have played an important part in "
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 18–22",
          "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Peatlands which have been drained begin to release",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 18
            },
            {
              "kind": "static",
              "text": "instead of storing it. Once peatland areas have been cleared,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "static",
              "text": "are more likely to occur. Clearing peatland forests to make way for oil palm plantations destroys the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": "of the local environment. Water is drained out of peatlands through the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": "which are created by logging companies. Draining peatlands leads to",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": ": a serious problem which can eventually result in coastal flooding and land loss.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 18,
              "prompt": "have been drained begin to release _______",
              "answer": [
                "carbon"
              ],
              "wordLimit": 1,
              "explanation": "When peatlands are drained for cultivation, they become net carbon emitters instead of active carbon stores",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "When peatlands are drained for cultivation, they become net carbon emitters instead of active carbon stores"
              }
            },
            {
              "number": 19,
              "prompt": "peatland areas have been cleared, _______",
              "answer": [
                "fires"
              ],
              "wordLimit": 1,
              "explanation": "The clearance of peatlands for planting also increases the risk of forest fires",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "The clearance of peatlands for planting also increases the risk of forest fires"
              }
            },
            {
              "number": 20,
              "prompt": "oil palm plantations destroys the _______",
              "answer": [
                "biodiversity"
              ],
              "wordLimit": 1,
              "explanation": "The clearance of peatlands for planting also increases the risk of forest fires, which release huge amounts of CO₂. ‘We’re seeing huge peatland forests with extremely high biodiversity value being lost for a few decades of oil palm revenues,’ says Silvius.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "The clearance of peatlands for planting also increases the risk of forest fires, which release huge amounts of CO₂. ‘We’"
              }
            },
            {
              "number": 21,
              "prompt": "out of peatlands through the _______",
              "answer": [
                "ditches"
              ],
              "wordLimit": 1,
              "explanation": "The damage starts when logging companies arrive to clear the trees. They dig ditches to enter the peat swamps by boat and then float the logs out the same way. These are then used to drain water out of the peatlands",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "The damage starts when logging companies arrive to clear the trees. They dig ditches to enter the peat swamps by boat an"
              }
            },
            {
              "number": 22,
              "prompt": "Draining peatlands leads to _______",
              "answer": [
                "subsidence"
              ],
              "wordLimit": 1,
              "explanation": "Meanwhile, the remainder of the solid matter in the peat starts to move downwards, in a process known as subsidence. Peat comprises 90 per cent water, so this is one of the most alarming consequences of peatland clearances.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Meanwhile, the remainder of the solid matter in the peat starts to move downwards, in a process known as subsidence. Pea"
              }
            }
          ],
          "id": "g18"
        },
        {
          "type": "matching",
          "label": "Questions 23–26",
          "instructions": "Look at the following statements and the list of experts below. Match each statement with the correct expert, A-D.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Matthew McCartney"
            },
            {
              "key": "B",
              "text": "Pieter van Eijk"
            },
            {
              "key": "C",
              "text": "Marcel Silvius"
            },
            {
              "key": "D",
              "text": "Dave Tickner"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Communities living in wetland regions must be included in",
              "answer": "A",
              "explanation": "says McCartney. ‘For sustainability, it’s essential that local people are involved in wetland planning and decision making and have clear rights to use wetlands.’",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "says McCartney. ‘For sustainability, it’s essential that local people are involved in wetland planning and decision maki"
              }
            },
            {
              "number": 24,
              "prompt": "Official policies towards wetlands vary from one nation to the next",
              "answer": "C",
              "explanation": "The fortunes of wetlands would be improved, Silvius suggests, if more governments recognized their long-term value. ‘Different governments have different attitudes,’ he says, and goes on to explain that some countries place a high priority on restoring wetlands, while others still deny the issue.",
              "evidence": {
                "sectionId": "p2",
                "ref": "H",
                "quote": "The fortunes of wetlands would be improved, Silvius suggests, if more governments recognized their long-term value. ‘Dif"
              }
            },
            {
              "number": 25,
              "prompt": "People cause harm to wetlands without having any intention to do",
              "answer": "D",
              "explanation": "Tickner does not blame anyone for deliberate damage, however. ‘I’ve worked on wetland issues for 20 years and have never met anybody who wanted to damage a wetland,’",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "Tickner does not blame anyone for deliberate damage, however. ‘I’ve worked on wetland issues for 20 years and have never"
              }
            },
            {
              "number": 26,
              "prompt": "Initiatives to reverse environmental damage need not be complex.",
              "answer": "B",
              "explanation": "Wetland coastal forests provide food and water, as well as shelter from storms, and WI and other agencies are working to restore those forests which have been lost. ‘It can be as simple as planting a few trees per hectare to create shade and substantially change a microclimate,’ he says.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Wetland coastal forests provide food and water, as well as shelter from storms, and WI and other agencies are working to"
              }
            }
          ],
          "id": "g23"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Is the era of artificial speech translation upon us?",
      "passage": [
        {
          "ref": "1",
          "text": "Once the stuff of science fiction, technology that enables people to talk using different languages is now here. But how effective is it?"
        },
        {
          "ref": "2",
          "text": "Noise, Alex Waibel tells me, is one of the major challenges that artificial speech translation has to meet. A device may be able to recognize speech in a laboratory, or a meeting room, but will struggle to cope with the kind of background noise I can hear in my office surrounding Professor Waibel as he speaks to me from Kyoto station in Japan. I’m struggling to follow him in English, on a scratchy line that reminds me we are nearly 10,000 kilometers apart-and that distance is still an obstacle to communication even if you’re speaking the same language, as we are. We haven’t reached the future yet. If we had, Waibel would have been able to speak more comfortably in his native German and I would have been able to hear his words in English."
        },
        {
          "ref": "3",
          "text": "At Karlsruhe Institute of Technology, where he is a professor of computer science, Waibel and his colleagues already give lectures in German that their students can follow in English via an electronic translator. The system generates text that students can read on their laptops or phones, so the process is somewhat similar to subtitling. It helps that lecturers speak clearly, don’t have to compete with background chatter, and say much the same thing each year."
        },
        {
          "ref": "4",
          "text": "The idea of artificial speech translation has been around for a long time. Douglas Adams’ science fiction novel, The Hitchhiker’s Guide to the Galaxy, published in 1979, featured a life form called the ‘Babel fish’ which, when placed in the ear, enabled a listener to understand any language in the universe. It came to represent one of those devices that technology enthusiasts dream of long before they become practically realizable, like TVs flat enough to hang on walls: objects that we once could only dream of having but that are now commonplace. Now devices that look like prototype Babel fish have started to appear, riding a wave of advances in artificial translation and voice recognition."
        },
        {
          "ref": "5",
          "text": "At this stage, however, they seem to be regarded as eye-catching novelties rather than steps towards what Waibel calls ‘making a language-transparent society.’ They tend to be domestic devices or applications suitable for hotel check-ins, for example, providing a practical alternative to speaking traveler’s English. The efficiency of the translator is less important than the social function. However, ‘Professionals are less inclined to be patient in a conversation,’ founder and CEO at Waverly Labs, Andrew Ochoa, observes. To redress this, Waverly is now preparing a new model for professional applications, which entails performance improvements in speech recognition, translation accuracy and the time it takes to deliver the translated speech. For a conversation, both speakers need to have devices called Pilots (translator earpieces) in their ears. ‘We find that there’s a barrier with sharing one of the earphones with a stranger,’ says Ochoa. That can’t have been totally unexpected. The problem would be solved if earpiece translators became sufficiently prevalent that strangers would be likely to already have their own in their ears. Whether that happens, and how quickly, will probably depend not so much on the earpieces themselves, but on the prevalence of voice-controlled devices and artificial translation in general. Waibel highlights the significance of certain Asian nations, noting that voice translation has really taken off in countries such as Japan with a range of systems. There is still a long way to go, though. A translation system needs to be simultaneous, like the translator’s voice speaking over the foreign politician being interviewed on the TV, rather than in sections that oblige speakers to pause after every few remarks and wait for the translation to be delivered. It needs to work offline, for situations where internet access isn’t possible, and to address apprehensions about the amount of private speech data accumulating in the cloud, having been sent to servers for processing. Systems not only need to cope with physical challenges such as noise, they will also need to be socially aware by addressing people in the right way. Some cultural traditions demand solemn respect for academic status, for example, and it is only polite to respect this. Etiquette-sensitive artificial translators could relieve people of the need to know these differing cultural norms. At the same time, they might help to preserve local customs, slowing the spread of habits associated with international English, such as its readiness to get on first-name terms. Professors and other professionals will not outsource language awareness to software, though. If the technology matures into seamless, ubiquitous artificial speech translation, it will actually add value to language skills. Whether it will help people conduct their family lives or relationships is open to question-though one noteworthy possibility is that it could overcome the language barriers that often arise between generations after migration, leaving children and their grandparents without a shared language."
        },
        {
          "ref": "6",
          "text": "Whatever uses it is put to, though, it will never be as good as the real thing. Even if voice-morphing technology simulates the speaker’s voice, their lip movements won’t match, and they will look like they are in a dubbed movie. The contrast will underline the value of shared languages, and the"
        },
        {
          "ref": "7",
          "text": "value of learning them. Sharing a language can promote a sense of belonging and community, as with the international scientists who use English as a lingua franca, where their predecessors used Latin. Though the practical need for a common language will diminish, the social value of sharing one will persist. And software will never be a substitute for the subtle but vital understanding that comes with knowledge of a language."
        }
      ],
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 27–30",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 27,
              "prompt": "What does the reader learn about the conversation in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "The speakers are communicating in different languages."
                },
                {
                  "key": "B",
                  "text": "Neither of the speakers is familiar with their environment."
                },
                {
                  "key": "C",
                  "text": "The topic of the conversation is difficult for both speakers."
                },
                {
                  "key": "D",
                  "text": "Aspects of the conversation are challenging for both speakers."
                }
              ],
              "answer": "D",
              "explanation": "I’m struggling to follow him in English, on a scratchy line that reminds me we are nearly 10,000 kilometers apart-and that distance is still an obstacle to communication even if you’re speaking the same language, as we are.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "I’m struggling to follow him in English, on a scratchy line that reminds me we are nearly 10,000 kilometers apart-and th"
              }
            },
            {
              "number": 28,
              "prompt": "What assists the electronic translator during lectures at Karlsruhe Institute of Technology?",
              "options": [
                {
                  "key": "A",
                  "text": "the repeated content of lectures"
                },
                {
                  "key": "B",
                  "text": "the students’ reading skills"
                },
                {
                  "key": "C",
                  "text": "the languages used"
                },
                {
                  "key": "D",
                  "text": "the lecturers’ technical ability"
                }
              ],
              "answer": "A",
              "explanation": "At Karlsruhe Institute of Technology, where he is a professor of computer science, Waibel and his colleagues already give lectures in German that their students can follow in English via an electronic translator.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "At Karlsruhe Institute of Technology, where he is a professor of computer science, Waibel and his colleagues already giv"
              }
            },
            {
              "number": 29,
              "prompt": "When referring to The Hitchhiker's Guide to the Galaxy, the writer suggests that",
              "options": [
                {
                  "key": "A",
                  "text": "the Babel fish was considered undesirable at the time."
                },
                {
                  "key": "B",
                  "text": "this book was not seriously intending to predict the future."
                },
                {
                  "key": "C",
                  "text": "artificial speech translation was not a surprising development."
                },
                {
                  "key": "D",
                  "text": "some speech translation techniques are better than others."
                }
              ],
              "answer": "C",
              "explanation": "The idea of artificial speech translation has been around for a long time. Douglas Adams’ science fiction novel, The Hitchhiker’s Guide to the Galaxy, published in 1979, featured a life form called the ‘Babel fish’ which, when placed in the ear, enabled a listener to understand any language in the universe.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "The idea of artificial speech translation has been around for a long time. Douglas Adams’ science fiction novel, The Hit"
              }
            },
            {
              "number": 30,
              "prompt": "What does the writer say about sharing earpieces?",
              "options": [
                {
                  "key": "A",
                  "text": "It is something people will get used to doing."
                },
                {
                  "key": "B",
                  "text": "The reluctance to do this is understandable."
                },
                {
                  "key": "C",
                  "text": "The equipment will be unnecessary in the future."
                },
                {
                  "key": "D",
                  "text": "It is something few people need to worry about."
                }
              ],
              "answer": "B",
              "explanation": "For a conversation, both speakers need to have devices called Pilots (translator earpieces) in their ears. ‘We find that there’s a barrier with sharing one of the earphones with a stranger,’ says Ochoa. That can’t have been totally unexpected.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "For a conversation, both speakers need to have devices called Pilots (translator earpieces) in their ears. ‘We find that"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "matching",
          "label": "Questions 31–34",
          "instructions": "Complete each sentence with the correct ending, A–F below.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "but there are concerns about this"
            },
            {
              "key": "B",
              "text": "as systems do not need to conform to standard practices."
            },
            {
              "key": "C",
              "text": "but they are far from perfect."
            },
            {
              "key": "D",
              "text": "despite the noise issues"
            },
            {
              "key": "E",
              "text": "because translation is immediate."
            },
            {
              "key": "F",
              "text": "and have an awareness of good manners."
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "Speech translation methods are developing fast in Japan",
              "answer": "C",
              "explanation": "Waibel highlights the significance of certain Asian nations, noting that voice translation has really taken off in countries such as Japan with a range of systems. There is still a long way to go, though.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Waibel highlights the significance of certain Asian nations, noting that voice translation has really taken off in count"
              }
            },
            {
              "number": 32,
              "prompt": "TV interviews that use translation voiceover methods are successful",
              "answer": "E",
              "explanation": "A translation system needs to be simultaneous, like the translator’s voice speaking over the foreign politician being interviewed on the TV, rather than in sections that oblige speakers to pause after every few remarks and wait for the translation to be delivered.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "A translation system needs to be simultaneous, like the translator’s voice speaking over the foreign politician being in"
              }
            },
            {
              "number": 33,
              "prompt": "Future translation systems should address people appropriately",
              "answer": "F",
              "explanation": "Systems not only need to cope with physical challenges such as noise, they will also need to be socially aware by addressing people in the right way. Some cultural traditions demand solemn respect for academic status, for example, and it is only polite to respect this.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Systems not only need to cope with physical challenges such as noise, they will also need to be socially aware by addres"
              }
            },
            {
              "number": 34,
              "prompt": "Users may be able to maintain their local customs",
              "answer": "B",
              "explanation": "At the same time, they might help to preserve local customs, slowing the spread of habits associated with international English, such as its readiness to get on first-name terms.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "At the same time, they might help to preserve local customs, slowing the spread of habits associated with international "
              }
            }
          ],
          "id": "g31"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 35–40",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 35,
              "prompt": "Language translation systems will be seen as very useful throughout the academic and professional worlds.",
              "answer": "NO",
              "explanation": "Whatever uses it is put to, though, it will never be as good as the real thing. Even if voice-morphing technology simulates the speaker’s voice, their lip movements won’t match, and they will look like they are in a dubbed movie.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Whatever uses it is put to, though, it will never be as good as the real thing. Even if voice-morphing technology simula"
              }
            },
            {
              "number": 36,
              "prompt": "The overall value of automated translation to family life is yet to be shown.",
              "answer": "YES",
              "explanation": "Whether it will help people conduct their family lives or relationships is open to question-though one noteworthy possibility is that it could overcome the language barriers that often arise between generations after migration",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Whether it will help people conduct their family lives or relationships is open to question-though one noteworthy possib"
              }
            },
            {
              "number": 37,
              "prompt": "Automated translation could make life more difficult for immigrant families.",
              "answer": "NO",
              "explanation": "though one noteworthy possibility is that it could overcome the language barriers that often arise between generations after migration, leaving children and their grandparents without a shared language.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "though one noteworthy possibility is that it could overcome the language barriers that often arise between generations a"
              }
            },
            {
              "number": 38,
              "prompt": "Visual aspects of language translation are being considered by scientists.",
              "answer": "NOT GIVEN",
              "explanation": "Sharing a language can promote a sense of belonging and community, as with the international scientists who use English as a lingua franca, where their predecessors used Latin. Though the practical need for a common language will diminish, the social value of sharing one will persist. And software will never be a substitute for the subtle but vital understanding that comes with knowledge of a language.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Sharing a language can promote a sense of belonging and community, as with the international scientists who use English "
              }
            },
            {
              "number": 39,
              "prompt": "International scientists have found English easier to translate into other languages than Latin.",
              "answer": "NOT GIVEN",
              "explanation": "Sharing a language can promote a sense of belonging and community, as with the international scientists who use English as a lingua franca, where their predecessors used Latin. Though the practical need for a common language will diminish, the social value of sharing one will persist.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Sharing a language can promote a sense of belonging and community, as with the international scientists who use English "
              }
            },
            {
              "number": 40,
              "prompt": "As far as language is concerned, there is a difference between people’s social and practical needs. === PAGE 9 ===",
              "answer": "YES",
              "explanation": "Though the practical need for a common language will diminish, the social value of sharing one will persist.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Though the practical need for a common language will diminish, the social value of sharing one will persist."
              }
            }
          ],
          "id": "g35"
        }
      ]
    }
  ]
}
$c19t3r$,
  true
);
