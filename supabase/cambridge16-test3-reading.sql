DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 16',
  'Test 3',
  'academic',
  3600,
  $c16t3r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Roman shipbuilding and navigation",
      "passage": [
        {
          "ref": "1",
          "text": "Shipbuilding today is based on science and ships are built using computers and sophisticated tools. Shipbuilding in ancient Rome, however, was more of an art relying on estimation, inherited techniques and personal experience. The Romans were not traditionally sailors but mostly land- based people, who learned to build ships from the people that they conquered, namely the Greeks and the Egyptians."
        },
        {
          "ref": "2",
          "text": "There are a few surviving written documents that give descriptions and representations of ancient Roman ships, including the sails and rigging. Excavated vessels also provide some clues about ancient shipbuilding techniques. Studies of these have taught us that ancient Roman shipbuilders built the outer hull first, then proceeded with the frame and the rest of the ship. Planks used to build the outer hull were initially sewn together. Starting from the 6th century BCE, they were fixed using a method called mortise and tenon, whereby one plank locked into another without the need for stitching. Then in the first centuries of the current era, Mediterranean shipbuilders shifted to another shipbuilding method, still in use today, which consisted of building the frame first and then proceeding with the hull and the other components of the ship. This method was more systematic and dramatically shortened ship construction times. The ancient Romans built large merchant ships and warships whose size and technology were unequalled until the 16th century CE. Warships were built to be lightweight and very speedy. They had to be able to sail near the coast, which is why they had no ballast or excess load and were built with a long, narrow hull. They did not sink when damaged and often would lie crippled on the sea’s surface following naval battles. They had a bronze battering ram, which was used to pierce the timber hulls or break the oars of enemy vessels. Warships used both wind (sails) and human power (oarsmen) and were therefore very fast. Eventually, Rome’s navy became the largest and most powerful in the Mediterranean, and the Romans had control over what they therefore called Mare Nostrum meaning ‘our sea’. There were many kinds of warship. The ‘trireme' was the dominant warship from the 7th to 4th century BCE. It had rowers in the top, middle and lower levels, and approximately 50 rowers in each bank. The rowers at the bottom had the most uncomfortable position as they were under the other rowers and were exposed to the water entering through the oar-holes. It is worth noting that contrary to popular perception, rowers were not slaves but mostly Roman citizens enrolled in the military. The trireme was superseded by larger ships with even more rowers. Merchant ships were built to transport lots of cargo over long distances and at a reasonable cost. They had a wider hull, double planting and a solid interior for added stability. Unlike warships, their V-shaped hull was deep underwater, meaning that they could not sail too close to the coast. They usually had two huge side rudders located off the stern and controlled by a small tiller bar connected to a system of cables. They had from one to three masts with large square sails and a small triangular sail at the bow. Just like warships, merchant ships used oarsmen, but coordinating the hundreds of rowers in both types of ship was not an easy task. In order to assist them, music would be played on an instrument, and oars would then keep time with this. The cargo on merchant ships included raw materials (e.g. iron bars, copper, marble and granite), and agricultural products (e.g. grain from Egypt’s Nile valley). During the Empire, Rome was a huge city by ancient standards of about one million inhabitants. Goods from all over the world would come to the city through the port of Pozzuoli situated west of the bay of Naples in Italy and through the gigantic port of Ostia situated at the mouth of the Tiber River. Large merchant ships would approach the destination port and, just like today, be intercepted by a number of towboats that would drag them to the quay."
        },
        {
          "ref": "3",
          "text": "The time of travel along the many sailing routes could vary widely. Navigation in ancient Rome did not rely on sophisticated instruments such as compasses but on experience, local knowledge and observation of natural phenomena. In conditions of good visibility, seamen in the Mediterranean often had the mainland or islands in sight, which greatly facilitated navigation. They sailed by noting their position relative to a succession of recognisable landmarks. When weather conditions were not good or where land was no longer visible, Roman mariners estimated directions from the pole star or, with less accuracy, from the Sun at noon. They also estimated directions relative to the wind and swell. Overall, shipping in ancient Roman times resembled shipping today with large vessels regularly crossing the seas and bringing supplies from their Empire."
        }
      ],
      "groups": [
        {
          "type": "true_false_notgiven",
          "label": "Questions 1–5",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 1,
              "prompt": "The Romans’ shipbuilding skills were passed on to the Greeks and the Egyptians.",
              "answer": "FALSE",
              "explanation": "The Romans were not traditionally sailors but mostly land- based people, who learned to build ships from the people that they conquered, namely the Greeks and the Egyptians.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "The Romans were not traditionally sailors but mostly land- based people, who learned to build ships from the people that"
              }
            },
            {
              "number": 2,
              "prompt": "Skilled craftsmen were needed for the mortise and tenon method of fixing planks.",
              "answer": "NOT GIVEN",
              "explanation": "Starting from the 6th century BCE, they were fixed using a method called mortise and tenon, whereby one plank locked into another without the need for stitching.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Starting from the 6th century BCE, they were fixed using a method called mortise and tenon, whereby one plank locked int"
              }
            },
            {
              "number": 3,
              "prompt": "The later practice used by Mediterranean shipbuilders involved building the hull before the frame.",
              "answer": "FALSE",
              "explanation": "Then in the first centuries of the current era, Mediterranean shipbuilders shifted to another shipbuilding method, still in use today, which consisted of building the frame first and then proceeding with the hull and the other components of the ship.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Then in the first centuries of the current era, Mediterranean shipbuilders shifted to another shipbuilding method, still"
              }
            },
            {
              "number": 4,
              "prompt": "The Romans called the Mediterranean Sea Mare Nostrum because they dominated its use.",
              "answer": "TRUE",
              "explanation": "Eventually, Rome’s navy became the largest and most powerful in the Mediterranean, and the Romans had control over what they therefore called Mare Nostrum meaning ‘our sea’.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Eventually, Rome’s navy became the largest and most powerful in the Mediterranean, and the Romans had control over what "
              }
            },
            {
              "number": 5,
              "prompt": "Most rowers on ships were people from the Roman army.",
              "answer": "TRUE",
              "explanation": "It is worth noting that contrary to popular perception, rowers were not slaves but mostly Roman citizens enrolled in the military.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "It is worth noting that contrary to popular perception, rowers were not slaves but mostly Roman citizens enrolled in the"
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 6–13",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Warships were designed so that they were",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "and moved quickly. They often remained afloat after battles and were able to sail close to land as they lacked any additional weight. A battering ram made of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "was included in the design for attacking and damaging the timber and oars of enemy ships. Warships, such as the ‘trireme’, had rowers on three different",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": ". Unlike warships, merchant ships had a broad",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "that lay far below the surface of the sea. Merchant ships were steered through the water with the help of large rudders and a tiller bar. They had both square and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "sails. On merchant ships and warships,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 11
            },
            {
              "kind": "static",
              "text": "was used to ensure rowers moved their oars in and out of the water at the same time. Quantities of agricultural goods such as",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 12
            },
            {
              "kind": "static",
              "text": "were transported by merchant ships to two main ports in Italy. The ships were pulled to the shore by",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 13
            },
            {
              "kind": "static",
              "text": ". When the weather was clear and they could see islands or land, sailors used landmarks that they knew to help them navigate their route.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 6,
              "prompt": "were designed so that they were _______",
              "answer": [
                "lightweight"
              ],
              "wordLimit": 1,
              "explanation": "Warships were built to be lightweight and very speedy.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Warships were built to be lightweight and very speedy."
              }
            },
            {
              "number": 7,
              "prompt": "A battering ram made of _______",
              "answer": [
                "bronze"
              ],
              "wordLimit": 1,
              "explanation": "They had a bronze battering ram, which was used to pierce the timber hulls or break the oars of enemy vessels.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "They had a bronze battering ram, which was used to pierce the timber hulls or break the oars of enemy vessels."
              }
            },
            {
              "number": 8,
              "prompt": "had rowers on three different _______",
              "answer": [
                "levels"
              ],
              "wordLimit": 1,
              "explanation": "The ‘trireme’ was the dominant warship from the 7th to 4th century BCE. It had rowers in the top, middle and lower levels, and approximately 50 rowers in each bank."
            },
            {
              "number": 9,
              "prompt": "merchant ships had a broad _______",
              "answer": [
                "hull"
              ],
              "wordLimit": 1,
              "explanation": "Unlike warships, their V-shaped hull was deep underwater, meaning that they could not sail too close to the coast.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Unlike warships, their V-shaped hull was deep underwater, meaning that they could not sail too close to the coast."
              }
            },
            {
              "number": 10,
              "prompt": "They had both square and _______ sails",
              "answer": [
                "triangular"
              ],
              "wordLimit": 1,
              "explanation": "They had from one to three masts with large square sails and a small triangular sail at the bow.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "They had from one to three masts with large square sails and a small triangular sail at the bow."
              }
            },
            {
              "number": 11,
              "prompt": "On merchant ships and warships, _______",
              "answer": [
                "music"
              ],
              "wordLimit": 1,
              "explanation": "In order to assist them, music would be played on an instrument, and oars would then keep time with this.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "In order to assist them, music would be played on an instrument, and oars would then keep time with this."
              }
            },
            {
              "number": 12,
              "prompt": "of agricultural goods such as _______",
              "answer": [
                "grain"
              ],
              "wordLimit": 1,
              "explanation": "The cargo on merchant ships included raw materials (e.g. iron bars, copper, marble and granite), and agricultural products (e.g. grain from Egypt’s Nile valley).",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The cargo on merchant ships included raw materials (e.g. iron bars, copper, marble and granite), and agricultural produc"
              }
            },
            {
              "number": 13,
              "prompt": "ships were pulled to the shore by _______",
              "answer": [
                "towboats"
              ],
              "wordLimit": 1,
              "explanation": "Large merchant ships would approach the destination port and, just like today, be intercepted by a number of towboats that would drag them to the quay.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Large merchant ships would approach the destination port and, just like today, be intercepted by a number of towboats th"
              }
            }
          ],
          "formTitle": "Warships and merchant ships",
          "id": "g6"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Climate change reveals ancient artefacts in Norway’s glaciers",
      "passage": [
        {
          "ref": "A",
          "text": "Well above the treeline in Norway’s highest mountains, ancient fields of ice are shrinking as Earth’s climate warms. As the ice has vanished, it has been giving up the treasures it has preserved in cold storage for the last 6,000 years - items such as ancient arrows and skis from Viking Age* traders. And those artefacts have provided archaeologists with some surprising insights into how ancient Norwegians made their livings."
        },
        {
          "ref": "B",
          "text": "Organic materials like textiles and hides are relatively rare finds at archaeological sites. This is because unless they’re protected from the microorganisms that cause decay, they tend not to last long. Extreme cold is one reliable way to keep artefacts relatively fresh for a few thousand years, but once thawed out, these materials experience degradation relatively swiftly. With climate change shrinking ice cover around the world, glacial archaeologists need to race the clock to find newly revealed artefacts, preserve them, and study them. If something fragile dries and is windblown it might very soon be lost to science, or an arrow might be exposed and then covered again by the next snow and remain well-preserved. The unpredictability means that glacial archaeologists have to be systematic in their approach to fieldwork."
        },
        {
          "ref": "C",
          "text": "Over a nine-year period, a team of archaeologists, which included Lars Pilo of Oppland County Council, Norway, and James Barrett of the McDonald Institute for Archaeological Research, surveyed patches of ice in Oppland, an area of south-central Norway that is home to some of the country’s highest mountains. Reindeer once congregated on these icy patches in the later summer months to escape biting insects, and from the late Stone Age**, hunters followed. In addition, trade routes threaded through the mountain passes of Oppland, linking settlements in Norway to the rest of Europe. The slow but steady movement of glaciers tends to destroy anything at their bases, so the team focused on stationary patches of ice, mostly above 1,400 metres. That ice is found amid fields of frost-weathered boulders, fallen rocks, and exposed bedrock that for nine months of the year is buried beneath snow. ‘Fieldwork is hard work - hiking with all our equipment, often camping on permafrost - but very rewarding. You’re rescuing the archaeology, bringing the melting ice to wider attention, discovering a unique environmental history and really connecting with the natural environment,’ says Barrett."
        },
        {
          "ref": "D",
          "text": "At the edges of the contracting ice patches, archaeologists found more than 2,000 artefacts, which formed a material record that ran from 4,000 BCE to the beginnings of the Renaissance in the 14th century. Many of the artefacts are associated with hunting. Hunters would have easily misplaced arrows and they often discarded broken bows rather than take them all the way home. Other items could have been used by hunters traversing the high mountain passes of Oppland: all-purpose items like tools, skis, and horse tack."
        },
        {
          "ref": "E",
          "text": "Barrett’s team radiocarbon-dated 153 of the artefacts and compared those dates to the timing of major environmental changes in the region - such as periods of cooling or warming - and major social and economic shifts - such as the growth of farming settlements and the spread of international trade networks leading up to the Viking Age. They found that some periods had produced lots of artefacts, which indicates that people had been pretty active in the mountains during those times. But there were few or no signs of activity during other periods."
        },
        {
          "ref": "F",
          "text": "What was surprising, according to Barrett, was the timing of these periods. Oppland’s mountains present daunting terrain and in periods of extreme cold, glaciers could block the higher mountain passes and make travel in the upper reaches of the mountains extremely difficult. Archaeologists assumed people would stick to lower elevations during a time like the Late Antique Little Ice Age, a short period of deeper-than-usual cold from about 536-600 CE. But it turned out that hunters kept regularly venturing into the mountains even when the climate turned cold, based on the amount of stuff they had apparently dropped there. ‘Remarkably, though, the finds from the ice may have continued through this period, perhaps suggesting that the importance of mountain hunting increased to supplement failing agricultural harvests in times of low temperatures,’ says Barrett. A colder turn in the Scandinavian climate would likely have meant widespread crop failures, so more people would have depended on hunting to make up for those losses."
        },
        {
          "ref": "G",
          "text": "Many of the artefacts Barrett’s team recovered date from the beginning of the Viking Age, the 700s through to the 900s CE. Trade networks connecting Scandinavia with Europe and the Middle East were expanding around this time. Although we usually think of ships when we think of Scandinavian expansion, these recent discoveries show that plenty of goods travelled on overland routes, like the mountain passes of Oppland. And growing Norwegian towns, along with export markets, would have created a booming demand for hides to fight off the cold, as well as antlers to make useful things like combs. Business must have been good for hunters."
        },
        {
          "ref": "H",
          "text": "Norway’s mountains are probably still hiding a lot of history - and prehistory - in remote ice patches. When Barrett’s team looked at the dates for their sample of 153 artefacts, they noticed a gap with almost no artefacts from about 3,800 to 2,200 BCE. In fact, archaeological finds from that period are rare all over Norway. The researchers say that could be because many of those artefacts have already disintegrated or are still frozen in the ice. That means archaeologists could be extracting some of those artefacts from retreating ice in years to come."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–19",
          "instructions": "Reading Passage 2 has eight sections, A–H. Which section contains the following information?",
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
              "prompt": "an explanation for weapons being left behind in",
              "answer": "D",
              "explanation": "Hunters would have easily misplaced arrows and they often discarded broken bows rather than take them all the way home.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "Hunters would have easily misplaced arrows and they often discarded broken bows rather than take them all the way home."
              }
            },
            {
              "number": 15,
              "prompt": "a reference to the physical difficulties involved",
              "answer": "C",
              "explanation": "Fieldwork is hard work - hiking with all our equipment, often camping on permafrost - but very rewarding",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Fieldwork is hard work - hiking with all our equipment, often camping on permafrost - but very rewarding"
              }
            },
            {
              "number": 16,
              "prompt": "an explanation of why less food may have been",
              "answer": "F",
              "explanation": "A colder turn in the Scandinavian climate would likely have meant widespread crop failures, so more people would have depended on hunting to make up for those losses.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "A colder turn in the Scandinavian climate would likely have meant widespread crop failures, so more people would have de"
              }
            },
            {
              "number": 17,
              "prompt": "a reference to the possibility of future",
              "answer": "H",
              "explanation": "That means archaeologists could be extracting some of those artefacts from retreating ice in years to come.",
              "evidence": {
                "sectionId": "p2",
                "ref": "H",
                "quote": "That means archaeologists could be extracting some of those artefacts from retreating ice in years to come."
              }
            },
            {
              "number": 18,
              "prompt": "examples of items that would have been traded",
              "answer": "G",
              "explanation": "And growing Norwegian towns, along with export markets, would have created a booming demand for hides to fight off the cold, as well as antlers to make useful things like combs.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "And growing Norwegian towns, along with export markets, would have created a booming demand for hides to fight off the c"
              }
            },
            {
              "number": 19,
              "prompt": "a reference to the pressure archaeologists are",
              "answer": "B",
              "explanation": "With climate change shrinking ice cover around the world, glacial archaeologists need to race the clock to find newly revealed artefacts, preserve them, and study them.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "With climate change shrinking ice cover around the world, glacial archaeologists need to race the clock to find newly re"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 20–22",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "archaeological sites. They have little protection against",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": ", which means that they decay relatively quickly. But this is not always the case. If temperatures are low enough, fragile artefacts can be preserved for thousands of years. A team of archaeologists have been working in the mountains in Oppland in Norway to recover artefacts revealed by shrinking ice cover. In the past, there were trade routes through these mountains and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": "gathered there in the summer months to avoid being attacked by",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": "on lower ground.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 20,
              "prompt": "They have little protection against _______",
              "answer": [
                "microorganisms"
              ],
              "wordLimit": 1,
              "explanation": "/ micro-organisms This is because unless they’re protected from the microorganisms that cause decay, they tend not to last long."
            },
            {
              "number": 21,
              "prompt": "routes through these mountains and _______",
              "answer": [
                "reindeer"
              ],
              "wordLimit": 1,
              "explanation": "Reindeer once congregated on these icy patches in the later summer months",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Reindeer once congregated on these icy patches in the later summer months"
              }
            },
            {
              "number": 22,
              "prompt": "months to avoid being attacked by _______ on lower ground",
              "answer": [
                "insects"
              ],
              "wordLimit": 1,
              "explanation": "to escape biting insects",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "to escape biting insects"
              }
            }
          ],
          "formTitle": "Interesting finds at an archaeological site",
          "id": "g20"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO of the following statements does the writer make about the discoveries of Barrett’s team?",
          "options": [
            {
              "key": "A",
              "text": "Artefacts found in the higher mountain passes were limited to skiing equipment."
            },
            {
              "key": "B",
              "text": "Hunters went into the mountains even during periods of extreme cold."
            },
            {
              "key": "C",
              "text": "The number of artefacts from certain time periods was relatively low."
            },
            {
              "key": "D",
              "text": "Radiocarbon dating of artefacts produced some unreliable results."
            },
            {
              "key": "E",
              "text": "More artefacts were found in Oppland than at any other mountain site."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO of the following statements does the writer make about the discoveries of Barrett’s team?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "But it turned out that hunters kept regularly venturing into the mountains even when the climate turned cold, based on the amount of stuff they had apparently dropped there. But there were few or no signs of activity during other periods.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "But it turned out that hunters kept regularly venturing into the mountains even "
              }
            },
            {
              "number": 24,
              "prompt": "Which TWO of the following statements does the writer make about the discoveries of Barrett’s team?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "But it turned out that hunters kept regularly venturing into the mountains even when the climate turned cold, based on the amount of stuff they had apparently dropped there. But there were few or no signs of activity during other periods.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "But it turned out that hunters kept regularly venturing into the mountains even "
              }
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO of the following statements does the writer make about the Viking Age?",
          "options": [
            {
              "key": "A",
              "text": "Hunters at this time benefited from an increased demand for goods."
            },
            {
              "key": "B",
              "text": "The beginning of the period saw the greatest growth in the wealth of Vikings."
            },
            {
              "key": "C",
              "text": "Vikings did not rely on ships alone to transport goods."
            },
            {
              "key": "D",
              "text": "Norwegian towns at this time attracted traders from around the world."
            },
            {
              "key": "E",
              "text": "Vikings were primarily interested in their trading links with the Middle East."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO of the following statements does the writer make about the Viking Age?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "Business must have been good for hunters. these recent discoveries show that plenty of goods travelled on overland routes, like the mountain passes of Oppland",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Business must have been good for hunters. these recent discoveries show that ple"
              }
            },
            {
              "number": 26,
              "prompt": "Which TWO of the following statements does the writer make about the Viking Age?",
              "answer": [
                "A",
                "C"
              ],
              "explanation": "Business must have been good for hunters. these recent discoveries show that plenty of goods travelled on overland routes, like the mountain passes of Oppland",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Business must have been good for hunters. these recent discoveries show that ple"
              }
            }
          ],
          "id": "g25"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Plant ‘thermometer’ triggers springtime growth by measuring night-time heat A photoreceptor molecule in plant cells has been found to have a second job as a",
      "passage": [
        {
          "ref": "A",
          "text": "An international team of scientists led by the University of Cambridge has discovered that the ‘thermometer’ molecule in plants enables them to develop according to seasonal temperature changes. Researchers have revealed that molecules called phytochromes - used by plants to detect light during the day actually change their function in darkness to become cellular temperature gauges that measure the heat of the night. The new findings, published in the journal Science, show that phytochromes control genetic switches in response to temperature as well as light to dictate plant development."
        },
        {
          "ref": "B",
          "text": "At night, these molecules change states, and the pace at which they change is ‘directly proportional to temperature’, say scientists, who compare phytochromes to mercury in a thermometer. The warmer it is, the faster the molecular change - stimulating plant growth."
        },
        {
          "ref": "C",
          "text": "Farmers and gardeners have known for hundreds of years how responsive plants are to temperature: warm winters cause many trees and flowers to bud early, something humans have long used to predict weather and harvest times for the coming year. The latest research pinpoints for the first time a molecular mechanism in plants that reacts to temperature - often triggering the buds of spring we long to see at the end of winter."
        },
        {
          "ref": "D",
          "text": "With weather and temperatures set to become ever more unpredictable due to climate change, researchers say the discovery that this light-sensing molecule also functions as the internal thermometer in plant cells could help us breed tougher crops. ‘It is estimated that agricultural yields will need to double by 2050, but climate change is a major threat to achieving this. Key crops such as wheat and rice are sensitive to high temperatures. Thermal stress reduces crop yields by around 10% for every one degree increase in temperature,’ says lead researcher Dr Philip Wigge from Cambridge’s Sainsbury Laboratory. ‘Discovering the molecules that allow plants to sense temperature has the potential to accelerate the breeding of crops resilient to thermal stress and climate change.’"
        },
        {
          "ref": "E",
          "text": "In their active state, phytochrome molecules bind themselves to DNA to restrict plant growth. During the day, sunlight activates the molecules, slowing down growth. If a plant finds itself in shade, phytochromes are quickly inactivated - enabling it to grow faster to find sunlight again. This is how plants compete to escape each other’s shade. ‘Light-driven changes to phytochrome activity occur very fast, in less than a second,’ says Wigge. At night, however, it’s a different story. Instead of a rapid deactivation following sundown, the molecules gradually change from their active to inactive state. This is called ‘dark reversion’. ‘Just as mercury rises in a thermometer, the rate at which phytochromes revert to their inactive state during the night is a direct measure of temperature,’ says Wigge."
        },
        {
          "ref": "F",
          "text": "‘The lower the temperature, the slower the rate at which phytochromes revert to inactivity, so the molecules spend more time in their active, growth-suppressing state. This is why plants are slower to grow in winter. Warm temperatures accelerate dark reversion, so that phytochromes rapidly reach an inactive state and detach themselves from the plant’s DNA - allowing genes to be expressed and plant growth to resume.’ Wigge believes phytochrome thermo-sensing evolved at a later stage, and co-opted the biological network already used for light-based growth during the downtime of night."
        },
        {
          "ref": "G",
          "text": "Some plants mainly use day length as an indicator of the season. Other species, such as daffodils, have considerable temperature sensitivity, and can flower months in advance during a warm winter. In fact, the discovery of the dual role of phytochromes provides the science behind a well-known rhyme long used to predict the coming season: oak before ash we’ll have a splash, ash before oak we’re in for a soak. Wigge explains: ‘Oak trees rely much more on temperature, likely using phytochromes as thermometers to dictate development, whereas ash trees rely on measuring day length to determine their seasonal timing. A warmer spring, and consequently a higher likeliness of a hot summer, will result in oak leafing before ash. A cold spring will see the opposite. As the British know only too well, a colder summer is likely to be a rain-soaked one.’"
        },
        {
          "ref": "H",
          "text": "The new findings are the culmination of twelve years of research involving scientists from Germany, Argentina and the US, as well as the Cambridge team. The work was done in a model system, using a mustard plant called Arabidopsis, but Wigge says the phytochrome genes necessary for temperature sensing are found in crop plants as well. ‘Recent advances in plant genetics now mean that scientists are able to rapidly identify the genes controlling these processes in crop plants, and even alter their activity using precise molecular “scalpels”,’ adds Wigge. ‘Cambridge is uniquely well-positioned to do this kind of research as we have outstanding collaborators nearby who work on more applied aspects of plant biology, and can help us transfer this new knowledge into the field.’"
        }
      ],
      "groups": [
        {
          "type": "true_false_notgiven",
          "label": "Questions 27–32",
          "instructions": "Do the following statements agree with the information given in Reading Passage 3? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 27,
              "prompt": "The Cambridge scientists’ discovery of the ‘thermometer molecule’ caused surprise among other scientists.",
              "answer": "NOT GIVEN",
              "explanation": "An international team of scientists led by the University of Cambridge has discovered that the ‘thermometer’ molecule in plants enables them to develop according to seasonal temperature changes.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "An international team of scientists led by the University of Cambridge has discovered that the ‘thermometer’ molecule in"
              }
            },
            {
              "number": 28,
              "prompt": "The target for agricultural production by 2050 could be missed.",
              "answer": "TRUE",
              "explanation": "It is estimated that agricultural yields will need to double by 2050, but climate change is a major threat to achieving this.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "It is estimated that agricultural yields will need to double by 2050, but climate change is a major threat to achieving "
              }
            },
            {
              "number": 29,
              "prompt": "Wheat and rice suffer from a rise in temperatures.",
              "answer": "TRUE",
              "explanation": "Key crops such as wheat and rice are sensitive to high temperatures. Thermal stress reduces crop yields by around 10% for every one degree increase in temperature",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "Key crops such as wheat and rice are sensitive to high temperatures. Thermal stress reduces crop yields by around 10% fo"
              }
            },
            {
              "number": 30,
              "prompt": "It may be possible to develop crops that require less water.",
              "answer": "NOT GIVEN",
              "explanation": "researchers say the discovery that this light-sensing molecule also functions as the internal thermometer in plant cells could help us breed tougher crops.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "researchers say the discovery that this light-sensing molecule also functions as the internal thermometer in plant cells"
              }
            },
            {
              "number": 31,
              "prompt": "Plants grow faster in sunlight than in shade.",
              "answer": "FALSE",
              "explanation": "During the day, sunlight activates the molecules, slowing down growth. If a plant finds itself in shade, phytochromes are quickly inactivated - enabling it to grow faster to find sunlight again.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "During the day, sunlight activates the molecules, slowing down growth. If a plant finds itself in shade, phytochromes ar"
              }
            },
            {
              "number": 32,
              "prompt": "Phytochromes change their state at the same speed day and night.",
              "answer": "FALSE",
              "explanation": "At night, however, it’s a different story. Instead of a rapid deactivation following sundown, the molecules gradually change from their active to inactive state.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "At night, however, it’s a different story. Instead of a rapid deactivation following sundown, the molecules gradually ch"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "matching",
          "label": "Questions 33–37",
          "instructions": "Reading Passage 3 has eight sections, A–H. Which section contains the following information?",
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
              "number": 33,
              "prompt": "mention of specialists who can make use of the research findings",
              "answer": "H",
              "explanation": "Cambridge is uniquely well-positioned to do this kind of research as we have outstanding collaborators nearby who work on more applied aspects of plant biology, and can help us transfer this new knowledge into the field.",
              "evidence": {
                "sectionId": "p3",
                "ref": "H",
                "quote": "Cambridge is uniquely well-positioned to do this kind of research as we have outstanding collaborators nearby who work o"
              }
            },
            {
              "number": 34,
              "prompt": "a reference to a potential benefit of the research findings",
              "answer": "D",
              "explanation": "Discovering the molecules that allow plants to sense temperature has the potential to accelerate the breeding of crops resilient to thermal stress and climate change.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "Discovering the molecules that allow plants to sense temperature has the potential to accelerate the breeding of crops r"
              }
            },
            {
              "number": 35,
              "prompt": "scientific support for a traditional saying",
              "answer": "G",
              "explanation": "In fact, the discovery of the dual role of phytochromes provides the science behind a well-known rhyme long used to predict the coming season: oak before ash we’ll have a splash, ash before oak we’re in for a soak.",
              "evidence": {
                "sectionId": "p3",
                "ref": "G",
                "quote": "In fact, the discovery of the dual role of phytochromes provides the science behind a well-known rhyme long used to pred"
              }
            },
            {
              "number": 36,
              "prompt": "a reference to people traditionally making plans based on plant behaviour",
              "answer": "C",
              "explanation": "warm winters cause many trees and flowers to bud early, something humans have long used to predict weather and harvest times for the coming year.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "warm winters cause many trees and flowers to bud early, something humans have long used to predict weather and harvest t"
              }
            },
            {
              "number": 37,
              "prompt": "a reference to where the research has been reported",
              "answer": "A",
              "explanation": "The new findings, published in the journal Science, show that phytochromes control genetic switches in response to temperature as well as light to dictate plant development.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "The new findings, published in the journal Science, show that phytochromes control genetic switches in response to tempe"
              }
            }
          ],
          "id": "g33"
        },
        {
          "type": "completion",
          "label": "Questions 38–40",
          "instructions": "Complete the sentences below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Daffodils are likely to flower early in response to",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "weather. If ash trees come into leaf before oak trees, the weather in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "will probably be wet. The research was carried out using a particular species of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": ".",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 38,
              "prompt": "to flower early in response to _______ weather",
              "answer": [
                "warm"
              ],
              "wordLimit": 2,
              "explanation": "/ warm winter Other species, such as daffodils, have considerable temperature sensitivity, and can flower months in advance during a warm winter."
            },
            {
              "number": 39,
              "prompt": "before oak trees, the weather in _______",
              "answer": [
                "summer"
              ],
              "wordLimit": 2,
              "explanation": "A warmer spring, and consequently a higher likeliness of a hot summer, will result in oak leafing before ash. A cold spring will see the opposite. As the British know only too well, a colder summer is likely to be a rain-soaked one.",
              "evidence": {
                "sectionId": "p3",
                "ref": "G",
                "quote": "A warmer spring, and consequently a higher likeliness of a hot summer, will result in oak leafing before ash. A cold spr"
              }
            },
            {
              "number": 40,
              "prompt": "out using a particular species of _______",
              "answer": [
                "mustard"
              ],
              "wordLimit": 2,
              "explanation": "plant / mustard plants / mustard The new findings are the culmination of twelve years of research involving scientists from Germany, Argentina and the US, as well as the Cambridge team. The work was done in a model system, using a mustard plant called Arabidopsis"
            }
          ],
          "id": "g38"
        }
      ]
    }
  ]
}
$c16t3r$,
  true
);
