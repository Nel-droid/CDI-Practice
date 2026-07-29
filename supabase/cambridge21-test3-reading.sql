DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 21',
  'Test 3',
  'academic',
  3600,
  $c21t3r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Saving the saiga",
      "passage": [
        {
          "ref": "1",
          "text": "The saiga, a species of antelope native to Central Asia, once roamed the vast grasslands of this region in enormous herds, many millions strong. Regrettably, such spectacular sights are a thing of the past. Today, the saiga is largely confined to a single country: Kazakhstan. This country is estimated to be home to well over 90% of the global saiga population, with Russia, Mongolia and Uzbekistan accounting for the rest."
        },
        {
          "ref": "2",
          "text": "The saiga is perfectly adapted to the tough conditions of the remote wilderness of the steppes of Central Asia. One such adaptation is its bizarre bulbous nose, which enables the animal to survive the extreme seasonal temperature swings of the region. The swollen nostrils of the nose serve several purposes: they filter out dust and cool the blood during hot, dry summers, and they warm the cold air before it enters the saiga's lungs in winter. Other seasonal adaptations include a heavy winter coat that the saiga sheds when the weather warms up."
        },
        {
          "ref": "3",
          "text": "Despite these superb adaptations to harsh conditions, the saiga has no defence against the threats posed by humans. It was almost driven to extinction by hunters in the 19th century. Legal protection ensured its survival for a while, and numbers steadily recovered throughout most of the 20th century. But the respite was only temporary. In the ten years following the break-up of the former Soviet Union in 1991, over 95% of the global population was lost - one of the fastest examples of species loss ever recorded for a mammal."
        },
        {
          "ref": "4",
          "text": "The dramatic decline during this decade was due to illegal poaching on an industrial scale. Male saiga are a particular target, because their horns are highly prized by traditional medicine practitioners. Poaching reached epidemic levels after misguided conservationists tried to relieve the pressure on threatened African rhinos by actively encouraging the use of saiga horns in traditional medicine as an alternative to those of rhinos. Male saiga were almost wiped out, leading to a population crash from which the species has been struggling to recover ever since."
        },
        {
          "ref": "5",
          "text": "Another threat to the survival of the saiga is loss of habitat, as a result of agricultural expansion and human settlement. Physical barriers such as railways, pipelines and fences can block the seasonal migration routes of this transboundary species. In the worst cases, herds may starve to death after being trapped."
        },
        {
          "ref": "6",
          "text": "Then there is the risk of disease. In 2015, an outbreak of haemorrhagic septicaemia, caused by the normally harmless bacterium Pasteurella multocida, killed over 75% of the global adult saiga population in just three weeks. In 2017, 60% of the Mongolian saiga population - a subspecies found nowhere else in the world - was killed by a virus that spilled over from livestock. These so- called mass mortality events represent an unpredictable and serious threat to the species. Climate change poses a further threat. Although well adapted to cold winters and hot summers, saiga struggle to cope with temperature extremes and unpredictable fluctuations in climate. Experts believe that unusually warm weather may have triggered the 2015 mass mortality event. The steppe region has also become increasingly arid in recent years, and many of the smaller streams that the species normally depended on have dried up and vanished. Recent efforts to save the saiga have been spearheaded by the Altyn Dala Conservation Initiative, a project led by the Association for the Conservation of Biodiversity of Kazakhstan, working in partnership with the Kazakh government's Committee for Forestry and Wildlife, Frankfurt Zoological Society and Fauna and Flora, an international conservation charity. Its purpose is to protect and restore Kazakhstan's steppe, semi-desert and desert ecosystems and the many species they support, including the critically endangered saiga. In 2022 the United Nations recognised the initiative as a World Restoration Flagship project, an accolade reserved for the ten best examples of large-scale ecosystem restoration around the globe."
        },
        {
          "ref": "7",
          "text": "So, how many saiga are there now? By 2000, the global saiga population had hit an all-time low of just 21,000 individuals. There was some recovery in the first decade of the new millennium but this was then crushed by devastating mass mortality events that saw the loss of hundreds of thousands of the species. But thanks to the intervention of the Altyn Dala Conservation Initiative, the most recent episodes in the ongoing story of the saiga have been relatively uplifting. Three years ago, the Ustyurt Plateau population in Kazakhstan experienced its largest mass birth of saiga calves in many years. An aerial census two years ago recorded an estimated 842,000 saiga across Kazakhstan as a whole, and according to an aerial survey earlier this year, the saiga population in Kazakhstan now exceeds 1.9 million. The world's strangest-looking antelope remains critically endangered, but the direction of travel is positive."
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Adaptations has a large bulbous nose with swollen nostrils that"
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
              "kind": "question",
              "number": 4
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "- loss of access to the"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "which they use for migration various forms of disease, leading to mass mortality events climate change, causing the disappearance of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "which the saiga relied on",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "- keep _______ out",
              "answer": [
                "dust"
              ],
              "wordLimit": 1,
              "explanation": "The swollen nostrils of the nose serve several purposes: they filter out dust and cool the blood during hot, dry summers, and they warm the cold air before it enters the saiga’s lungs in winter",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The swollen nostrils of the nose serve several purposes: they filter out dust and cool the blood during hot, dry summers"
              }
            },
            {
              "number": 2,
              "prompt": "- lower the temperature of its _______ in summer",
              "answer": [
                "blood"
              ],
              "wordLimit": 1,
              "explanation": "The swollen nostrils of the nose serve several purposes: they filter out dust and cool the blood during hot, dry summers, and they warm the cold air before it enters the saiga’s lungs in winter",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The swollen nostrils of the nose serve several purposes: they filter out dust and cool the blood during hot, dry summers"
              }
            },
            {
              "number": 3,
              "prompt": "- warm the air entering its lungs in winter grows a thick _______ in winter, which it loses in spring",
              "answer": [
                "coat"
              ],
              "wordLimit": 1,
              "explanation": "Other seasonal adaptations include a heavy winter coat that the saiga sheds when the weather warms up",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Other seasonal adaptations include a heavy winter coat that the saiga sheds when the weather warms up"
              }
            },
            {
              "number": 4,
              "prompt": "Reasons for population decline poaching, especially for the _______ of male saiga expansion of farms and settlements, causing",
              "answer": [
                "horns"
              ],
              "wordLimit": 1,
              "explanation": "Male saiga are a particular target, because their horns are highly prized by traditional medicine practitioners",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Male saiga are a particular target, because their horns are highly prized by traditional medicine practitioners"
              }
            },
            {
              "number": 5,
              "prompt": "- reduction in the size of the saiga's _______ .",
              "answer": [
                "habitat"
              ],
              "wordLimit": 1,
              "explanation": "Another threat to the survival of the saiga is loss of habitat, as a result of agricultural expansion and human settlement",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "Another threat to the survival of the saiga is loss of habitat, as a result of agricultural expansion and human settleme"
              }
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "routes"
              ],
              "wordLimit": 1,
              "explanation": "Physical barriers such as railways, pipelines and fences can block the seasonal migration routes of this transboundary species",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "Physical barriers such as railways, pipelines and fences can block the seasonal migration routes of this transboundary s"
              }
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "streams"
              ],
              "wordLimit": 1,
              "explanation": "The steppe region has also become increasingly arid in recent years, and many of the smaller streams that the species normally depended on have dried up and vanished",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "The steppe region has also become increasingly arid in recent years, and many of the smaller streams that the species no"
              }
            }
          ],
          "formTitle": "The saiga",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 8–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 8,
              "prompt": "Today, numbers of saiga are distributed evenly across four nations in Central Asia: Kazakhstan, Russia, Mongolia and Uzbekistan.",
              "answer": "FALSE",
              "explanation": "This country is estimated to be home to well over 90% of the global saiga population, with Russia, Mongolia and Uzbekistan accounting for the rest",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "This country is estimated to be home to well over 90% of the global saiga population, with Russia, Mongolia and Uzbekist"
              }
            },
            {
              "number": 9,
              "prompt": "For most of the 20th century, the population of saiga were falling.",
              "answer": "FALSE",
              "explanation": "Legal protection ensured its survival for a while, and numbers steadily recovered throughout most of the 20th century",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "Legal protection ensured its survival for a while, and numbers steadily recovered throughout most of the 20th century"
              }
            },
            {
              "number": 10,
              "prompt": "Efforts to protect rhinos in Africa had a significant effect on saiga populations.",
              "answer": "TRUE",
              "explanation": "Poaching reached epidemic levels after misguided conservationists tried to relieve the pressure on threatened African rhinos by actively encouraging the use of saiga horns in traditional medicine as an alternative to those of rhinos. Male saiga were almost wiped out, leading to a population crash from which the species has been struggling to recover ever since",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Poaching reached epidemic levels after misguided conservationists tried to relieve the pressure on threatened African rh"
              }
            },
            {
              "number": 11,
              "prompt": "Unpredictable fluctuations in climate are threatening the wildlife of Central Asia more than in other parts of the world.",
              "answer": "NOT GIVEN",
              "explanation": "Climate change poses a further threat. Although well adapted to cold winters and hot summers, saiga struggle to cope with temperature extremes and unpredictable fluctuations in climate",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "Climate change poses a further threat. Although well adapted to cold winters and hot summers, saiga struggle to cope wit"
              }
            },
            {
              "number": 12,
              "prompt": "The Altyn Dala Conservation Initiative was formed for the benefit of a number of different animals. === PAGE 5 ===",
              "answer": "TRUE",
              "explanation": "Its purpose is to protect and restore Kazakhstan’s steppe, semi-desert and desert ecosystems and the many species they support, including the critically endangered saiga",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "Its purpose is to protect and restore Kazakhstan’s steppe, semi-desert and desert ecosystems and the many species they s"
              }
            },
            {
              "number": 13,
              "prompt": "The Altyn Dala Conservation Initiative's recognition as a World Restoration Flagship project attracted additional international funding for the scheme. === PAGE 6 ===",
              "answer": "NOT GIVEN",
              "explanation": "In 2022 the United Nations recognised the initiative as a World Restoration Flagship project, an accolade reserved for the ten best examples of large- scale ecosystem restoration around the globe",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "In 2022 the United Nations recognised the initiative as a World Restoration Flagship project, an accolade reserved for t"
              }
            }
          ],
          "id": "g8"
        }
      ]
    },
    {
      "id": "p2",
      "title": "The problems of getting around the city of Dar es Salaam",
      "passage": [
        {
          "ref": "1",
          "text": "Dar es Salaam in Tanzania is one of the fastest growing cities in Africa. Its population has increased eightfold since 1980 and swells by half a million people every year. United Nations projections anticipate it will become a megacity within seven years as its population passes 10 million, reaching 13.4 million by 2035. Daniel Hoornweg for the Global Cities Institute forecasts the city could be home to an incredible 73.7 million people by 2100."
        },
        {
          "ref": "2",
          "text": "Today, four out of five of its people live in single-storey informal settlements on the spreading edges of the city, where the journey to and from the centre regularly takes over two hours. It can be longer if rain turns the dirt roads to mud."
        },
        {
          "ref": "3",
          "text": "Even in the middle of the day, traffic frequently slows to a stop without warning. It is not unusual for cars and minibuses to queue for 20 minutes at a key intersection. A single suburban rail line serves residents in a few areas to the south but is tiny in the context of the wider city. Outside the centre many rely on boda boda (motorbike taxis) to navigate the narrow side streets and potholed mud roads that make up much of the metropolis. Their safety record is scandalous. Dar es Salaam's reliance on four arterial roads into the city is a legacy of the colonial government that planned the city at the start of the 20th century to cater for a population of 35,000. Most of the current growth is made up of young people arriving from the countryside to find work, and as the population has exploded, Dar es Salaam has grown around those four highways. Nearly all the expansion is happening on the periphery, and nearly all takes place informally without any agreed strategy."
        },
        {
          "ref": "4",
          "text": "But Dar es Salaam is pinning its hopes on a solution that could offer a different model for Africa's megacities, giving them an alternative to a future controlled by the private car. Unlike many cities on the continent, Dar es Salaam isn't trying to build a metro. It has chosen a less exciting but cheaper and more achievable method: the bus."
        },
        {
          "ref": "5",
          "text": "The DART bus rapid transit (BRT) system runs on bus lanes separated from other traffic, mostly in the middle of the road to reduce stoppages. Ticket purchase and control takes place at stations"
        },
        {
          "ref": "6",
          "text": "prior to boarding and the buses are step-free, which means the entire route is accessible to people using wheelchairs or who are travelling with baby buggies."
        },
        {
          "ref": "7",
          "text": "'The new buses are much, much better,' says Paulas George, a young IT worker. He takes the bus every day and it has cut his journey time by two-thirds. He says it is not perfect, though, complaining that drivers often refuse to turn on the air conditioning to save fuel. That is not the only problem. A shortage of buses after a serious flood at the main depot during the rainy season means the system is carrying 200,000 people a day - half the expected capacity. Smartcards can't be used as the mechanical readers aren't working either, forcing passengers to buy individual paper tickets for every journey. Each is printed with a scannable QR code, but there are no scanners. Staff stand by the gates and tear tickets as people enter. As a result, queues are considerable at peak times."
        },
        {
          "ref": "8",
          "text": "Morogoro Road to the north-west of the city was phase I of the BRT project. Phases II and III will install bus lanes along Nyerere Road to the south-west and Kilwa Road to the south. Construction on both routes is due to start imminently. Phase IV, towards Bagamoyo in the north, is in the preliminary design stage. 'Much of the city will have access to a world-class transport system within the space of a few years,' says Chris Kost, the Africa director of ITDP (the Institute for Transportation and Development Policy). All phases are being planned to high standards and, once complete, a third of city residents will be within a short walk of the BRT network."
        },
        {
          "ref": "9",
          "text": "The ITDP regrets Africa's obsession with metros. 'With a metro, an international firm will often just parachute in its own system,' says Kost. 'Bus rapid transit allows existing stakeholders to get involved. That's what we did in Dar es Salaam and what we're planning in Nairobi, where the bus bodies will be built in the city and local operators will look after tickets, fare collection and IT ...Bus rapid transit has been transformational for Dar es Salaam. For millions of people in African cities, this is their best hope of ever being connected.'"
        }
      ],
      "groups": [
        {
          "type": "true_false_notgiven",
          "label": "Questions 14–18",
          "instructions": "Do the following statements agree with the information given in Reading Passage 2? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 14,
              "prompt": "The population of Dar es Salaam is rising more rapidly than was previously predicted.",
              "answer": "NOT GIVEN",
              "explanation": "United Nations projections anticipate it will become a megacity within seven years as its population passes 10 million, reaching 13.4 million by 2035. Daniel Hoornweg for the Global Cities Institute forecasts the city could be home to an incredible 73.7 million people by 2100",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "United Nations projections anticipate it will become a megacity within seven years as its population passes 10 million, "
              }
            },
            {
              "number": 15,
              "prompt": "Most of the residents of Dar es Salaam live in high-rise blocks on the edge of the city.",
              "answer": "FALSE",
              "explanation": "Today, four out of five of its people live in single-storey informal settlements on the spreading edges of the city",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "Today, four out of five of its people live in single-storey informal settlements on the spreading edges of the city"
              }
            },
            {
              "number": 16,
              "prompt": "Residents have been consulted about their views on the suburban rail line in Dar es Salaam.",
              "answer": "NOT GIVEN",
              "explanation": "A single suburban rail line serves residents in a few areas to the south but is tiny in the context of the wider city",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "A single suburban rail line serves residents in a few areas to the south but is tiny in the context of the wider city"
              }
            },
            {
              "number": 17,
              "prompt": "The majority of the present residential development in Dar es Salaam is unplanned. === PAGE 9 ===",
              "answer": "TRUE",
              "explanation": "Nearly all the expansion is happening on the periphery, and nearly all takes place informally without any agreed strategy",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Nearly all the expansion is happening on the periphery, and nearly all takes place informally without any agreed strateg"
              }
            },
            {
              "number": 18,
              "prompt": "Dar es Salaam's authorities have decided to follow the public transport plan adopted by a large number of African cities.",
              "answer": "FALSE",
              "explanation": "Unlike many cities on the continent, Dar es Salaam isn’t trying to build a metro. It has chosen a less exciting but cheaper and more achievable method: the bus",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "Unlike many cities on the continent, Dar es Salaam isn’t trying to build a metro. It has chosen a less exciting but chea"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 19–26",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Features the buses use designated"
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "static",
              "text": "to cut down on delays passengers pay fares before",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": "passengers in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": "can use every part of the system",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "Problems the temperature control is sometimes not activated in order to reduce"
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": "use insufficient number of vehicles are available due to the effects of a severe",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "static",
              "text": "passengers are unable to use",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": "because some equipment is out of action tickets have to be checked manually at station",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "question",
              "number": 26
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "_______",
              "answer": [
                "lanes"
              ],
              "wordLimit": 1,
              "explanation": "The DART bus rapid transit (BRT) system runs on bus lanes separated from other traffic, mostly in the middle of the road to reduce stoppages",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "The DART bus rapid transit (BRT) system runs on bus lanes separated from other traffic, mostly in the middle of the road"
              }
            },
            {
              "number": 20,
              "prompt": "_______",
              "answer": [
                "boarding"
              ],
              "wordLimit": 1,
              "explanation": "Ticket purchase and control takes place at stations prior to boarding and the buses are step-free, which means the entire route is accessible to people using wheelchairs or who are travelling with baby buggies",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "Ticket purchase and control takes place at stations prior to boarding and the buses are step-free, which means the entir"
              }
            },
            {
              "number": 21,
              "prompt": "_______",
              "answer": [
                "wheelchairs"
              ],
              "wordLimit": 1,
              "explanation": "Ticket purchase and control takes place at stations prior to boarding and the buses are step-free, which means the entire route is accessible to people using wheelchairs or who are travelling with baby buggies",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "Ticket purchase and control takes place at stations prior to boarding and the buses are step-free, which means the entir"
              }
            },
            {
              "number": 22,
              "prompt": "_______",
              "answer": [
                "fuel"
              ],
              "wordLimit": 1,
              "explanation": "He says it is not perfect, though, complaining that drivers often refuse to turn on the air conditioning to save fuel",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "He says it is not perfect, though, complaining that drivers often refuse to turn on the air conditioning to save fuel"
              }
            },
            {
              "number": 23,
              "prompt": "_______",
              "answer": [
                "flood"
              ],
              "wordLimit": 1,
              "explanation": "A shortage of buses after a serious flood at the main depot during the rainy season means the system is carrying 200,000 people a day - half the expected capacity",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "A shortage of buses after a serious flood at the main depot during the rainy season means the system is carrying 200,000"
              }
            },
            {
              "number": 24,
              "prompt": "_______",
              "answer": [
                "smartcards"
              ],
              "wordLimit": 1,
              "explanation": "Smartcards can’t be used as the mechanical readers aren’t working either, forcing passengers to buy individual paper tickets for every journey"
            },
            {
              "number": 25,
              "prompt": "_______",
              "answer": [
                "gates"
              ],
              "wordLimit": 1,
              "explanation": "Staff stand by the gates and tear tickets as people enter",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "Staff stand by the gates and tear tickets as people enter"
              }
            },
            {
              "number": 26,
              "prompt": "_______ frequently build up during rush hours",
              "answer": [
                "queues"
              ],
              "wordLimit": 1,
              "explanation": "As a result, queues are considerable at peak times",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "As a result, queues are considerable at peak times"
              }
            }
          ],
          "formTitle": "Dar es Salaam's DART Bus Rapid Transit system",
          "id": "g19"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Rethinking the Past",
      "passage": [
        {
          "ref": "1",
          "text": "It is by now a truism that the story of human evolution is being rethought. Discoveries have come thick and fast over the last decade or so, and these have forced us to rethink many crucial points, such as how old our species is - about 300,000 years old as opposed to 200,000 - and what extinct hominins, such as our cousins the Neanderthals, were really like. But because there are so many species and eras involved, it's hard to discern the common threads linking them. However, I do think it's possible to draw out some overall messages from the blizzard of archaeological finds in recent years. Two things stand out to me. One is the growing evidence that many supposedly 'advanced' behaviours, such as architecture and art, can be traced much further back in time than we thought, often to hominin species that existed before modern humans. And the other is that we have badly misunderstood gender roles in prehistoric societies, imposing patriarchal values onto cultures that had very different ideas about how women should behave. Let's start with architecture. At Kalambo Falls in Zambia, researchers found buried logs that had been shaped with stone tools so that they interlocked. They seem to have once been part of a larger structure, perhaps a building. This would be unsurprising if they weren't 476,000 years old. That's almost 200,000 years before our species, Homo sapiens, evolved. Extinct hominins also managed to settle in extreme places. For instance, we now know that extinct hominins such as the Denisovans lived on the frozen heights of high-altitude regions 200,000 years ago - upending the old notion that such environments were only settled by modern humans around 3,600 years ago. Art also seems to have been invented by older hominins. We have had evidence for a long time now that Neanderthals painted on cave walls. Even earlier species, such as Homo erectus, may also have made art, for example by engraving patterns on shells. By far the most contentious claim in this area is that Homo naledi made art. H. naledi lived around 250,000 years ago, making it a contemporary of our species. However, it had quite a small brain, typical of older hominins - and was therefore, according to palaeoanthropological dogma, incapable of complex behaviours. Nevertheless, in the Rising Star cave system in South Africa where the H. naledi remains were"
        },
        {
          "ref": "2",
          "text": "found, researchers have found what seem to be etchings - resembling rudimentary artwork - on the cave walls, though these have yet to be firmly dated."
        },
        {
          "ref": "3",
          "text": "To say these claims about H. naledi are controversial is to understate the situation. Many experts say the evidence presented so far is completely inadequate to support them. The dispute has only been heightened by the way the results were released, in a non-traditional journal that publishes peer reviews publicly alongside the paper. My views on the H. naledi controversy are complicated. I do think more evidence is needed: in particular with regard to the dating of the etchings. At the same time, I think the species' small brains are a distraction. Palaeoanthropologists got fixated on brain size because it was what they could see: if what you have is skeletons, then all you know about brains are their shapes and sizes. But other properties, such as the brain's internal wiring, are surely equally important and may explain how a species like H. naledi might have been capable of complex behaviours, despite their small brains."
        },
        {
          "ref": "4",
          "text": "In a sense, we shouldn't be surprised that so many of these behaviours had their origins in older, extinct hominins. Evolution usually works by incremental steps and so does technology. The first birds weren't great at flying, and the first mobile phones weren't great at, well, anything really. The idea that there was a sudden explosion of intelligence and creativity at some point in our evolution isn't inherently ridiculous: sometimes a system hits a tipping point and undergoes runaway change. But there was never that much evidence that human evolution worked this way. Instead, it seems the Neanderthals and many others all walked so we could run."
        },
        {
          "ref": "5",
          "text": "One way or another, the H. naledi story is going to be an example of letting our preconceptions get in the way of the evidence. The same is true for our ideas about gender in prehistory. Archaeology was invented by individuals with now unfashionably patriarchal views about gender, and those notions fed into their research. Today's researchers are trying to unpick this stuff, and there have been some significant steps in recent years."
        },
        {
          "ref": "6",
          "text": "Perhaps the most dramatic was the demolition of 'Man the Hunter'. This was the idea, promoted for decades, that in most prehistoric societies the men went out to hunt and the women looked after the home. However, a meta-analysis published in June 2023 compiled data on several dozen foraging societies and found women hunted in 80 per cent of them. In line with this, it emerged that an ancient spear-throwing tool called an atlatl enables women to launch projectiles at the same speed as men. We have also seen growing evidence of women occupying positions of authority in ancient societies. The Viking queen Thyra may have helped unify Denmark in the 900s."
        },
        {
          "ref": "7",
          "text": "Going further back, an Iberian leader from around 4000 years ago turned out to be female, not male as many had assumed, when proteins in her teeth were analysed."
        },
        {
          "ref": "8",
          "text": "It seems that the more we find out about past societies, the more our preconceptions about the ways society 'has to be' turn out to be wrong. Inequality, authoritarianism and patriarchy aren't inevitable. They're choices, and prehistory shows us that we can choose differently."
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
              "prompt": "What is the writer doing in the second paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "pinpointing some key changes in our understanding of prehistory"
                },
                {
                  "key": "B",
                  "text": "outlining some aspects of prehistory which are still poorly understood"
                },
                {
                  "key": "C",
                  "text": "summarising some attitudes towards recent archaeological revelations"
                },
                {
                  "key": "D",
                  "text": "giving an overview of some current disagreements among archaeologists"
                }
              ],
              "answer": "A",
              "explanation": "Two things stand out to me. One is the growing evidence that many supposedly ‘advanced’ behaviours, such as architecture and art, can be traced much further back in time than we thought, often to hominin species that existed before modern humans. And the other is that we have badly misunderstood gender roles in prehistoric societies, imposing patriarchal values onto cultures that had very different ideas about how women should behave",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Two things stand out to me. One is the growing evidence that many supposedly ‘advanced’ behaviours, such as architecture"
              }
            },
            {
              "number": 28,
              "prompt": "In the sixth paragraph, the writer mentions mobile phones to make the point that",
              "options": [
                {
                  "key": "A",
                  "text": "most developments happen in a gradual way."
                },
                {
                  "key": "B",
                  "text": "innovation can come from a variety of sources."
                },
                {
                  "key": "C",
                  "text": "not all technological advancements are positive."
                },
                {
                  "key": "D",
                  "text": "the path of evolution can often be unpredictable."
                }
              ],
              "answer": "A",
              "explanation": "Evolution usually works by incremental steps and so does technology. The first birds weren’t great at flying, and the first mobile phones weren’t great at, well, anything really",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Evolution usually works by incremental steps and so does technology. The first birds weren’t great at flying, and the fi"
              }
            },
            {
              "number": 29,
              "prompt": "In the seventh paragraph, the phrase 'unpick this stuff' refers to the task of",
              "options": [
                {
                  "key": "A",
                  "text": "assessing the impact of certain recent research findings."
                },
                {
                  "key": "B",
                  "text": "questioning the authenticity of evidence used in earlier research."
                },
                {
                  "key": "C",
                  "text": "conducting research into how prehistoric societies were organised."
                },
                {
                  "key": "D",
                  "text": "reevaluating research influenced by outdated beliefs about society."
                }
              ],
              "answer": "D",
              "explanation": "Archaeology was invented by individuals with now unfashionably patriarchal views about gender, and those notions fed into their research. Today’s researchers are trying to unpick this stuff, and there have been some significant steps in recent years",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Archaeology was invented by individuals with now unfashionably patriarchal views about gender, and those notions fed int"
              }
            },
            {
              "number": 30,
              "prompt": "What does the writer suggest in the final paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Studying past societies could help us create a fairer society today."
                },
                {
                  "key": "B",
                  "text": "We should not judge past societies by the standards of modern society."
                },
                {
                  "key": "C",
                  "text": "We still have much to learn about how societies have evolved over history."
                },
                {
                  "key": "D",
                  "text": "There is more than one way to interpret evidence about societies in prehistoric times."
                }
              ],
              "answer": "A",
              "explanation": "Inequality, authoritarianism and patriarchy aren’t inevitable. They’re choices, and prehistory shows us that we can choose differently",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "Inequality, authoritarianism and patriarchy aren’t inevitable. They’re choices, and prehistory shows us that we can choo"
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
              "text": "Homo sapiens emerged at an earlier point in time than experts previously believed."
            },
            {
              "key": "B",
              "text": "previous assumptions about who had power in the prehistoric world were inaccurate."
            },
            {
              "key": "C",
              "text": "gender roles in extinct hominin species were different from those in Homo sapiens societies."
            },
            {
              "key": "D",
              "text": "experts may have been mistaken about who looked for food in early human communities."
            },
            {
              "key": "E",
              "text": "Homo sapiens was probably not the only species capable of sophisticated workmanship."
            },
            {
              "key": "F",
              "text": "other species managed to survive in harsh environments before the arrival of Homo sapiens."
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "The findings at Kalambo Falls revealed that",
              "answer": "E",
              "explanation": "At Kalambo Falls in Zambia, researchers found buried logs that had been shaped with stone tools so that they interlocked. They seem to have once been part of a larger structure, perhaps a building. This would be unsurprising if they weren’t 476,000 years old. That’s almost 200,000 years before our species, Homo sapiens, evolved",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "At Kalambo Falls in Zambia, researchers found buried logs that had been shaped with stone tools so that they interlocked"
              }
            },
            {
              "number": 32,
              "prompt": "Evidence from high-altitude regions suggests that",
              "answer": "F",
              "explanation": "For instance, we now know that extinct hominins such as the Denisovans lived on the frozen heights of high-altitude regions 200,000 years ago - upending the old notion that such environments were only settled by modern humans around 3,600 years ago",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "For instance, we now know that extinct hominins such as the Denisovans lived on the frozen heights of high-altitude regi"
              }
            },
            {
              "number": 33,
              "prompt": "An academic publication from June 2023 shows that",
              "answer": "D",
              "explanation": "This was the idea, promoted for decades, that in most prehistoric societies the men went out to hunt and the women looked after the home. However, a meta-analysis published in June 2023 compiled data on several dozen foraging societies and found women hunted in 80 per cent of them",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "This was the idea, promoted for decades, that in most prehistoric societies the men went out to hunt and the women looke"
              }
            },
            {
              "number": 34,
              "prompt": "Analysis of a 4000-year-old Iberian leader indicates that",
              "answer": "B",
              "explanation": "Going further back, an Iberian leader from around 4000 years ago turned out to be female, not male as many had assumed, when proteins in her teeth were analysed",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Going further back, an Iberian leader from around 4000 years ago turned out to be female, not male as many had assumed, "
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
              "prompt": "It seems likely that the Neanderthals' cave paintings were the first examples of artwork ever created.",
              "answer": "NO",
              "explanation": "Even earlier species, such as Homo erectus, may also have made art, for example by engraving patterns on shells",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Even earlier species, such as Homo erectus, may also have made art, for example by engraving patterns on shells"
              }
            },
            {
              "number": 36,
              "prompt": "It is very rare to find prehistoric artwork carved onto shells.",
              "answer": "NOT GIVEN",
              "explanation": "Even earlier species, such as Homo erectus, may also have made art, for example by engraving patterns on shells",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Even earlier species, such as Homo erectus, may also have made art, for example by engraving patterns on shells"
              }
            },
            {
              "number": 37,
              "prompt": "The methods which the researchers used to examine the Rising Star cave system were rather unconventional.",
              "answer": "NOT GIVEN",
              "explanation": "The dispute has only been heightened by the way the results were released, in a non-traditional journal that publishes peer reviews publicly alongside the paper",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "The dispute has only been heightened by the way the results were released, in a non-traditional journal that publishes p"
              }
            },
            {
              "number": 38,
              "prompt": "It is unclear how old the etchings in the Rising Star cave system are.",
              "answer": "YES",
              "explanation": "Nevertheless, in the Rising Star cave system in South Africa where the H. naledi remains were found, researchers have found what seem to be etchings - resembling rudimentary artwork - on the cave walls, though these have yet to be firmly dated",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Nevertheless, in the Rising Star cave system in South Africa where the H. naledi remains were found, researchers have fo"
              }
            },
            {
              "number": 39,
              "prompt": "The means used to publicise the findings from the Rising Star cave system added to the controversy that surrounds them. === PAGE 16 ===",
              "answer": "YES",
              "explanation": "The dispute has only been heightened by the way the results were released, in a non-traditional journal that publishes peer reviews publicly alongside the paper",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "The dispute has only been heightened by the way the results were released, in a non-traditional journal that publishes p"
              }
            },
            {
              "number": 40,
              "prompt": "The size of H. naledi brains is a key factor in the question of whether these hominins were able to produce art. === PAGE 17 ===",
              "answer": "NO",
              "explanation": "At the same time, I think the species’ small brains are a distraction",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "At the same time, I think the species’ small brains are a distraction"
              }
            }
          ],
          "id": "g35"
        }
      ]
    }
  ]
}
$c21t3r$,
  true
);
