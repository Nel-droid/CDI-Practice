DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 15',
  'Test 2',
  'academic',
  3600,
  $c15t2r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Could urban engineers learn from dance?",
      "passage": [
        {
          "ref": "A",
          "text": "The way we travel around cities has a major impact on whether they are sustainable. Transportation is estimated to account for 30% of energy consumption in most of the world’s most developed nations, so lowering the need for energy-using vehicles is essential for decreasing the environmental impact of mobility. But as more and more people move to cities, it is important to think about other kinds of sustainable travel too. The ways we travel affect our physical and mental health, our social lives, our access to work and culture, and the air we breathe. Engineers are tasked with changing how we travel round cities through urban design, but the engineering industry still works on the assumptions that led to the creation of the energy-consuming transport systems we have now: the emphasis placed solely on efficiency, speed, and quantitative data. We need radical changes, to make it healthier, more enjoyable, and less environmentally damaging to travel around cities."
        },
        {
          "ref": "B",
          "text": "Dance might hold some of the answers. That is not to suggest everyone should dance their way to work, however healthy and happy it might make us, but rather that the techniques used by choreographers to experiment with and design movement in dance could provide engineers with tools to stimulate new ideas in city-making."
        },
        {
          "ref": "C",
          "text": "Richard Sennett, an influential urbanist and sociologist who has transformed ideas about the way cities are made, argues that urban design has suffered from a separation between mind and body since the introduction of the architectural blueprint. Whereas medieval builders improvised and adapted construction through their intimate knowledge of materials and personal experience of the conditions on a site, building designs are now conceived and stored in media technologies that detach the designer from the physical and social realities they are creating. While the design practices created by these new technologies are essential for managing the technical complexity of the modern city, they have the drawback of simplifying reality in the process."
        },
        {
          "ref": "D",
          "text": "To illustrate, Sennett discusses the Peachtree Center in Atlanta, USA, a development typical of the modernist approach to urban planning prevalent in the 1970s. Peachtree created a grid of streets and towers intended as a new pedestrian-friendly downtown for Atlanta. According to Sennett, this failed because its designers had invested too much faith in computer-aided design to tell them how it would operate. They failed to take into account that purpose-built street cafés could not operate in the hot sun without the protective awnings common in older buildings, and would need energy-consuming air conditioning instead, or that its giant car park would feel so unwelcoming that it would put people off getting out of their cars. What seems entirely predictable and controllable on screen has unexpected results when translated into reality. The same is true in transport engineering, which uses models to predict and shape the way people move through the city. Again, these models are necessary, but they are built on specific world views in which certain forms of efficiency and safety are considered and other experience of the city ignored. Designs that seem logical in models appear counter-intuitive in the actual experience of their users. The guard rails that will be familiar to anyone who has attempted to cross a British road, for example, were an engineering solution to pedestrian safety based on models that prioritise the smooth flow of traffic. On wide major roads, they often guide pedestrians to specific crossing points and slow down their progress across the road by using staggered access points divide the crossing into two — one for each carriageway. In doing so they make crossings feel longer, introducing psychological barriers greatly impacting those that are the least mobile, and encouraging others to make dangerous crossings to get around the guard rails. These barriers don’t just make it harder to cross the road: they divide communities and decrease opportunities for healthy transport. As a result, many are now being removed, causing disruption, cost, and waste. If their designers had had the tools to think with their bodies — like dancers — and imagine how these barriers would feel, there might have been a better solution. In order to bring about fundamental changes to the ways we use our cities, engineering will need to develop a richer understanding of why people move in certain ways, and how this movement affects them."
        },
        {
          "ref": "E",
          "text": "Choreography may not seem an obvious choice for tackling this problem. Yet it shares with engineering the aim of designing patterns of movement within limitations of space. It is an art form developed almost entirely by trying out ideas with the body, and gaining instant feedback on how the results feel."
        },
        {
          "ref": "F",
          "text": "Choreographers have deep understanding of the psychological, aesthetic, and physical implications of different ways of moving."
        },
        {
          "ref": "G",
          "text": "Observing the choreographer Wayne McGregor, cognitive scientist David Kirsh described how he ‘thinks with the body’, Kirsh argues that by using the body to simulate outcomes, McGregor is able to imagine solutions that would not be possible using purely abstract thought. This kind of physical knowledge is valued in many areas of expertise, but currently has no place in formal engineering design processes. A suggested method for transport engineers is to improvise design solutions and instant feedback about how they would work from their own experience of them, or model designs at full scale in the way choreographers experiment with groups of dancers. Above all, perhaps, they might learn to design for emotional as well as functional effects."
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "matching",
          "label": "Questions 1–6",
          "instructions": "The Reading Passage has seven paragraphs, A–G. Which paragraph contains the following information? Write the correct letter, A–G, in boxes on your answer sheet.",
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
              "number": 1,
              "prompt": "reference to an appealing way of using dance that the writer is not proposing",
              "answer": "B",
              "explanation": "Paragraph B says 'that is not to suggest everyone should dance their way to work'.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "That is not to suggest everyone should dance their way to work"
              }
            },
            {
              "number": 2,
              "prompt": "an example of a contrast between past and present approaches to building",
              "answer": "C",
              "explanation": "Paragraph C contrasts medieval builders who improvised with modern designers who use media technologies.",
              "evidence": {
                "sectionId": "p1",
                "ref": "C",
                "quote": "Whereas medieval builders improvised and adapted construction through their intimate knowledge of materials"
              }
            },
            {
              "number": 3,
              "prompt": "mention of an objective of both dance and engineering",
              "answer": "F",
              "explanation": "Paragraph F states choreography shares with engineering the aim of designing patterns of movement within limitations of space.",
              "evidence": {
                "sectionId": "p1",
                "ref": "F",
                "quote": "it shares with engineering the aim of designing patterns of movement within limitations of space"
              }
            },
            {
              "number": 4,
              "prompt": "reference to an unforeseen problem arising from ignoring the climate",
              "answer": "D",
              "explanation": "Paragraph D describes how street cafés in Peachtree could not operate in the hot sun — an unforeseen problem.",
              "evidence": {
                "sectionId": "p1",
                "ref": "D",
                "quote": "purpose-built street cafés could not operate in the hot sun without the protective awnings"
              }
            },
            {
              "number": 5,
              "prompt": "why some measures intended to help people are being reversed",
              "answer": "E",
              "explanation": "Paragraph E explains that many guard rails are now being removed, causing disruption, cost, and waste.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "many are now being removed, causing disruption, cost, and waste"
              }
            },
            {
              "number": 6,
              "prompt": "reference to how transport has an impact on human lives",
              "answer": "A",
              "explanation": "Paragraph A describes how the ways we travel affect our physical and mental health, social lives, access to work and culture.",
              "evidence": {
                "sectionId": "p1",
                "ref": "A",
                "quote": "The ways we travel affect our physical and mental health, our social lives, our access to work and culture"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "completion",
          "label": "Questions 7–13",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "Guard rails",
          "formContent": [
            {
              "kind": "question",
              "number": 7
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
              "number": 7,
              "prompt": "Guard rails were introduced on British roads to improve the _______ of pedestrians",
              "answer": [
                "safety"
              ],
              "wordLimit": 1,
              "explanation": "Guard rails were an engineering solution to pedestrian safety.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "were an engineering solution to pedestrian safety"
              }
            },
            {
              "number": 8,
              "prompt": "while ensuring that the movement of _______ is not disrupted",
              "answer": [
                "traffic"
              ],
              "wordLimit": 1,
              "explanation": "The models prioritised the smooth flow of traffic.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "based on models that prioritise the smooth flow of traffic"
              }
            },
            {
              "number": 9,
              "prompt": "Pedestrians are led to access points, and encouraged to cross one _______ at a time",
              "answer": [
                "carriageway"
              ],
              "wordLimit": 1,
              "explanation": "Staggered access points divide the crossing into two — one for each carriageway.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "staggered access points divide the crossing into two — one for each carriageway"
              }
            },
            {
              "number": 10,
              "prompt": "An unintended effect is to create psychological difficulties in crossing the road, particularly for less _______ people",
              "answer": [
                "mobile"
              ],
              "wordLimit": 1,
              "explanation": "The barriers greatly impact those that are the least mobile.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "introducing psychological barriers greatly impacting those that are the least mobile"
              }
            },
            {
              "number": 11,
              "prompt": "Another result is that some people cross the road in a _______ way",
              "answer": [
                "dangerous"
              ],
              "wordLimit": 1,
              "explanation": "People make dangerous crossings to get around the guard rails.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "encouraging others to make dangerous crossings to get around the guard rails"
              }
            },
            {
              "number": 12,
              "prompt": "The guard rails separate _______",
              "answer": [
                "communities"
              ],
              "wordLimit": 1,
              "explanation": "The barriers divide communities.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "they divide communities"
              }
            },
            {
              "number": 13,
              "prompt": "and make it more difficult to introduce forms of transport that are _______",
              "answer": [
                "healthy"
              ],
              "wordLimit": 1,
              "explanation": "The guard rails decrease opportunities for healthy transport.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "decrease opportunities for healthy transport"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "Should we try to bring extinct species back to life?",
      "passage": [
        {
          "ref": "A",
          "text": "The passenger pigeon was a legendary species. Flying in vast numbers across North America, with potentially many millions within a single flock, their migration was once one of nature’s great spectacles. Sadly, the passenger pigeon’s existence came to an end on 1 September 1914, when the last living specimen died at Cincinnati Zoo. Geneticist Ben Novak is lead researcher on an ambitious project which now aims to bring the bird back to life through a process known as ‘de-extinction’. The basic premise involves using cloning technology to turn the DNA of extinct animals into a fertilised embryo, which is carried by the nearest relative still in existence — in this case, the abundant band-tailed pigeon — before being born as a living, breathing animal. Passenger pigeons are one of the pioneering species in this field, but they are far from the only ones on which this cutting-edge technology is being trialled."
        },
        {
          "ref": "B",
          "text": "In Australia, the thylacine, more commonly known as the Tasmanian tiger, is another extinct creature which genetic scientists are striving to bring back to life. ‘There is no carnivore now in Tasmania that fills the niche which thylacines once occupied,’ explains Michael Archer of the University of New South Wales. He points out that in the decades since the thylacine went extinct, there has been a spread in a ‘dangerously debilitating’ facial tumour syndrome which threatens the existence of the Tasmanian devils, the island’s other notorious resident. Thylacines would have prevented this spread because they would have killed significant numbers of Tasmanian devils. ‘If that contagious cancer had popped up previously, it would have burned out in whatever region it started. The return of thylacines to Tasmania could help to ensure that devils are never again subjected to risks of this kind.’"
        },
        {
          "ref": "C",
          "text": "If extinct species can be brought back to life, can humanity begin to correct the damage it has caused to the natural world over the past few millennia? ‘The idea of de-extinction is that we can reverse this process, bringing species that no longer exist back to life,’ says Beth Shapiro of University of California Santa Cruz’s Genomics Institute. ‘I don’t think that we can do this. There is no way to bring back something that is 100 per cent identical to a species that went extinct a long time ago.’ A more practical approach for long-extinct species is to take the DNA of existing species as a template, ready for the insertion of strands of extinct animal DNA to create something new; a hybrid, based on the living species, but which looks and/or acts like the animal which died out."
        },
        {
          "ref": "D",
          "text": "This complicated process and questionable outcome begs the question: what is the actual point of this technology? ‘For us, the goal has always been replacing the extinct species with a suitable replacement,’ explains Novak. ‘When it comes to breeding, band-tailed pigeons scatter and make maybe one or two nests per hectare, whereas passenger pigeons were very social and would make 10,000 or more nests in one hectare.’ Since the disappearance of this key species, ecosystems in the eastern US have suffered, as the lack of disturbance caused by thousands of passenger pigeons wrecking trees and branches means there has been minimal need for regrowth. This has left forests stagnant and therefore unwelcoming to the plants and animals which evolved to help regenerate the forest after a disturbance. According to Novak, a hybridized band-tailed pigeon, with the added nesting habits of a passenger pigeon, could, in theory, re-establish that forest disturbance, thereby creating a habitat necessary for a great many other native species to thrive."
        },
        {
          "ref": "E",
          "text": "Another popular candidate for this technology is the woolly mammoth. George Church, professor at Harvard Medical School and leader of the Woolly Mammoth Revival Project, has been focusing on cold resistance, the main way in which the extinct woolly mammoth and its nearest living relative, the Asian elephant, differ. By pinpointing which genetic traits made it possible for mammoths to survive the icy climate of the tundra, the project’s goal is to return mammoths, or a mammoth-like species, to the area. ‘My highest priority would be preserving the endangered Asian elephant,’ says Church, ‘expanding their range to the huge ecosystem of the tundra. Necessary adaptations would include smaller ears, thicker hair, and extra insulating fat, all for the purpose of reducing heat loss in the tundra, and all traits found in the now extinct woolly mammoth.’ This repopulation of the tundra and boreal forests of Eurasia and North America with large mammals could also be a useful factor in reducing carbon emissions — elephants punch holes through snow and knock down trees, which encourages grass growth. This grass growth would reduce temperature, and mitigate emissions from melting permafrost."
        },
        {
          "ref": "F",
          "text": "While the prospect of bringing extinct animals back to life might capture imaginations, it is, of course, far easier to try to save an existing species which is merely threatened with extinction. ‘Many of the technologies that people have in mind when they think about de-extinction can be used as a form of “genetic rescue”,’ explains Shapiro. She prefers to focus the debate on how this emerging technology could be used to fully understand why various species went extinct in the first place, and therefore how we could use it to make genetic modifications which could prevent mass extinctions in the future. ‘I would also say there’s an incredible moral hazard to not do anything at all,’ she continues. ‘We know that what we are doing today is not enough, and we have to be willing to take some calculated and measured risks.’"
        }
      ],
      "groups": [
        {
          "id": "g3",
          "type": "matching",
          "label": "Questions 14–17",
          "instructions": "The Reading Passage has six paragraphs, A–F. Which paragraph contains the following information? Write the correct letter, A–F, in boxes on your answer sheet. NB You may use any letter more than once.",
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
              "prompt": "a reference to how further disappearance of multiple species could be avoided",
              "answer": "F",
              "explanation": "Paragraph F discusses using technology to prevent mass extinctions in the future.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "how we could use it to make genetic modifications which could prevent mass extinctions in the future"
              }
            },
            {
              "number": 15,
              "prompt": "explanation of a way of reproducing an extinct animal using the DNA of only that species",
              "answer": "A",
              "explanation": "Paragraph A describes cloning technology using DNA of extinct animals.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "using cloning technology to turn the DNA of extinct animals into a fertilised embryo"
              }
            },
            {
              "number": 16,
              "prompt": "reference to a habitat which has suffered following the extinction of a species",
              "answer": "D",
              "explanation": "Paragraph D describes how ecosystems in the eastern US have suffered since the passenger pigeon disappeared.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "Since the disappearance of this key species, ecosystems in the eastern US have suffered"
              }
            },
            {
              "number": 17,
              "prompt": "mention of the exact point at which a particular species became extinct",
              "answer": "A",
              "explanation": "Paragraph A states the passenger pigeon's existence came to an end on 1 September 1914.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "the passenger pigeon's existence came to an end on 1 September 1914"
              }
            }
          ]
        },
        {
          "id": "g4",
          "type": "completion",
          "label": "Questions 18–22",
          "instructions": "Complete the summary below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "formTitle": "The woolly mammoth revival project",
          "formContent": [
            {
              "kind": "question",
              "number": 18
            },
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
              "number": 18,
              "prompt": "Professor George Church and his team are trying to identify the _______ that enabled mammoths to live in the tundra",
              "answer": [
                "genetic traits"
              ],
              "wordLimit": 2,
              "explanation": "By pinpointing which genetic traits made it possible for mammoths to survive the icy climate.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "By pinpointing which genetic traits made it possible for mammoths to survive the icy climate of the tundra"
              }
            },
            {
              "number": 19,
              "prompt": "introducing Asian elephants to the tundra would involve certain physical adaptations to minimise _______",
              "answer": [
                "heat loss"
              ],
              "wordLimit": 2,
              "explanation": "Adaptations would include smaller ears, thicker hair, and extra insulating fat, all for the purpose of reducing heat loss.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "all for the purpose of reducing heat loss in the tundra"
              }
            },
            {
              "number": 20,
              "prompt": "the species would need to have the mammoth-like features of thicker hair, of a reduced _______ size",
              "answer": [
                "ears"
              ],
              "wordLimit": 2,
              "explanation": "Necessary adaptations would include smaller ears.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Necessary adaptations would include smaller ears"
              }
            },
            {
              "number": 21,
              "prompt": "and more _______",
              "answer": [
                "fat",
                "insulating fat"
              ],
              "wordLimit": 2,
              "explanation": "Extra insulating fat is needed for tundra survival.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "extra insulating fat"
              }
            },
            {
              "number": 22,
              "prompt": "impact on the environment, which could help to reduce temperatures and decrease _______",
              "answer": [
                "emissions",
                "carbon emissions"
              ],
              "wordLimit": 2,
              "explanation": "This could mitigate emissions from melting permafrost.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "mitigate emissions from melting permafrost"
              }
            }
          ]
        },
        {
          "id": "g5",
          "type": "matching",
          "label": "Questions 23–26",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, A, B or C. NB You may use any letter more than once.",
          "options": [
            {
              "key": "A",
              "text": "Ben Novak"
            },
            {
              "key": "B",
              "text": "Michael Archer"
            },
            {
              "key": "C",
              "text": "Beth Shapiro"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Reintroducing an extinct species to its original habitat could improve the health of a particular species living there.",
              "answer": "B",
              "explanation": "Archer argues thylacines would have prevented the spread of the facial tumour syndrome threatening Tasmanian devils.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "The return of thylacines to Tasmania could help to ensure that devils are never again subjected to risks of this kind"
              }
            },
            {
              "number": 24,
              "prompt": "It is important to concentrate on the causes of an animal's extinction.",
              "answer": "C",
              "explanation": "Shapiro prefers to focus on understanding why species went extinct in the first place.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "She prefers to focus the debate on how this emerging technology could be used to fully understand why various species went extinct"
              }
            },
            {
              "number": 25,
              "prompt": "A species brought back from extinction could have an important beneficial impact on the vegetation of its habitat.",
              "answer": "A",
              "explanation": "Novak explains that passenger pigeons wrecking trees created disturbance needed for forest regrowth.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "re-establish that forest disturbance, thereby creating a habitat necessary for a great many other native species to thrive"
              }
            },
            {
              "number": 26,
              "prompt": "Our current efforts at preserving biodiversity are insufficient.",
              "answer": "C",
              "explanation": "Shapiro says 'we know that what we are doing today is not enough'.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "We know that what we are doing today is not enough"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "Having a laugh",
      "passage": [
        {
          "ref": "1",
          "text": "The findings of psychological scientists reveal the importance of humour Humans start developing a sense of humour as early as six weeks old, when babies begin to laugh and smile in response to stimuli. Laughter is universal across all human cultures and even exists in some form in rats, chimps, and bonobos. Like other human emotions and expressions, laughter and humour provide psychological scientists with rich resources for studying human psychology, ranging from the development of language to the neuroscience of social perception."
        },
        {
          "ref": "2",
          "text": "Theories focusing on the evolution of laughter point to it as an important adaptation for social communication. Take, for example, the recorded laughter in TV comedy shows. Back in 1950, US sound engineer Charley Douglass hated dealing with the unpredictable laughter of live audiences, so started recording his own ‘laugh tracks’. These were intended to help people at home feel like they were in a social situation, such as a crowded theatre. Douglass even recorded various types of laughter, as well as mixtures of laugher from men, women, and children. In doing so, he picked up on a quality of laughter that is now interesting researchers: a simple ‘haha’ communicates a remarkable amount of socially relevant information."
        },
        {
          "ref": "3",
          "text": "In one study conducted in 2016, samples of laughter from pairs of English-speaking students were recorded at the University of California, Santa Cruz. A team made up of more than 30 psychological scientists, anthropologists, and biologists then played these recording to listeners from 24 diverse societies, from indigenous tribes in New Guinea to city-dwellers in India and Europe. Participants were asked whether they thought the people laughing were friends or strangers. On average, the results were remarkably consistent: worldwide, people's guesses were correct approximately 60% of the time."
        },
        {
          "ref": "4",
          "text": "Researchers have also found that different types of laughter serve as codes to complex human social hierarchies. A team led by Christopher Oveis from the University of California, San Diego, found that high-status individuals had different laughs from low-status individuals, and that strangers’ judgements of an individual's social status were influenced by the dominant or submissive quality of their laughter. In their study, 48 male college students were randomly assigned to groups of four, with each group composed of two low-status members, who had just joined their college fraternity group, and two high-status members, older student took a turn at being teased by the others, involving the use of mildly insulting nicknames. Analysis revealed that, as expected, high-status individuals produced more dominant laughs and fewer submissive laughs relative to the low-status individuals. Meanwhile, low-status individuals were more likely to change their laughter based on their position of power; that is, the newcomers produced more dominant laughs when they were in the ‘powerful’ role of teasers. Dominant laughter was higher in pitch, louder, and more variable in tone than submissive laughter."
        },
        {
          "ref": "5",
          "text": "A random group of volunteers then listened to an equal number of dominant and submissive laughs from both the high- and low-status individuals, and were asked to estimate the social status of the laughter. In line with predictions, laughers producing dominant laughs were perceived to be significantly higher in status than laughers producing submissive laughs. ‘This was particularly true for low-status individuals, who were rated as significantly higher in status when displaying a dominant versus submissive laugh,’ Oveis and colleagues note. ‘Thus, by strategically displaying more dominant laughter when the context allows, low-status individuals may achieve higher status in the eyes of others.’ However, high-status individuals were rated as high-status whether they produced their natural dominant laugh or tried to do a submissive one."
        },
        {
          "ref": "6",
          "text": "Another study, conducted by David Cheng and Lu Wang of Australian National University, was based on the hypothesis that humour might provide a respite from tedious situations in the workplace. This ‘mental break’ might facilitate the replenishment of mental resources. To test this theory, the researchers recruited 74 business students, ostensibly for an experiment on perception. First, the students performed a tedious task in which they had to cross out every instance of the letter ‘e’ over two pages of text. The students then were randomly assigned to watch a video clip eliciting either humour, contentment, or neutral feelings. Some watched a clip of the BBC comedy Mr. Bean, others a relaxing scene with dolphins swimming in the ocean, and others a factual video about the management profession."
        },
        {
          "ref": "7",
          "text": "The students then completed a task requiring persistence in which they were asked to guess the potential performance of employees based on provided profiles, and were told that making 10 correct assessments in a row would lead to a win. However, the software was programmed such that is was nearly impossible to achieve 10 consecutive correct answers. Participants were allowed to quit the task at any point. Students who had watched the Mr. Bean video ended up spending significantly more time working on the task, making twice as many predictions as the other two groups."
        },
        {
          "ref": "8",
          "text": "Cheng and Wang then replicated these results in a second study, during which they had participants complete long multiplication questions by hand. Again, participants who watched the humorous video spent significantly more time working on this tedious task and completed more questions correctly than did the students in either of the other groups."
        },
        {
          "ref": "9",
          "text": "‘Although humour has been found to help relieve stress and facilitate social relationships, traditional view of task performance implies that individuals should avoid things such as humour that may distract them from the accomplishment of task goals,’ Cheng and Wang conclude. ‘We suggest that humour is not only enjoyable but more importantly, energising.’"
        }
      ],
      "groups": [
        {
          "id": "g6",
          "type": "multiple_choice",
          "label": "Questions 27–31",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 27,
              "prompt": "When referring to laughter in the first paragraphs, the writer emphasises",
              "options": [
                {
                  "key": "A",
                  "text": "its impact on language."
                },
                {
                  "key": "B",
                  "text": "its function in human culture."
                },
                {
                  "key": "C",
                  "text": "its value to scientific research."
                },
                {
                  "key": "D",
                  "text": "its universality in animal societies."
                }
              ],
              "answer": "C",
              "explanation": "The writer states laughter provides psychological scientists with rich resources for studying human psychology.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "laughter and humour provide psychological scientists with rich resources for studying human psychology"
              }
            },
            {
              "number": 28,
              "prompt": "What does the writer suggest about Charley Douglass?",
              "options": [
                {
                  "key": "A",
                  "text": "He understood the importance of enjoying humour in a group setting."
                },
                {
                  "key": "B",
                  "text": "He believed that TV viewers at home needed to be told when to laugh."
                },
                {
                  "key": "C",
                  "text": "He wanted his shows to appeal to audiences across the social spectrum."
                },
                {
                  "key": "D",
                  "text": "He preferred shows where audiences were present in the recording studio."
                }
              ],
              "answer": "A",
              "explanation": "Douglass's laugh tracks were intended to help people at home feel like they were in a social situation.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "intended to help people at home feel like they were in a social situation, such as a crowded theatre"
              }
            },
            {
              "number": 29,
              "prompt": "What makes the Santa Cruz study particularly significant?",
              "options": [
                {
                  "key": "A",
                  "text": "the various different types of laughter that were studied"
                },
                {
                  "key": "B",
                  "text": "the similar results produced by a wide range of cultures"
                },
                {
                  "key": "C",
                  "text": "the number of different academic disciplines involved"
                },
                {
                  "key": "D",
                  "text": "the many kinds of people whose laughter was recorded"
                }
              ],
              "answer": "B",
              "explanation": "The results were remarkably consistent worldwide across 24 diverse societies.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "the results were remarkably consistent: worldwide, people's guesses were correct approximately 60% of the time"
              }
            },
            {
              "number": 30,
              "prompt": "Which of the following happened in the San Diego study?",
              "options": [
                {
                  "key": "A",
                  "text": "Some participants became very upset."
                },
                {
                  "key": "B",
                  "text": "Participants exchanged roles."
                },
                {
                  "key": "C",
                  "text": "Participants who had not met before became friends."
                },
                {
                  "key": "D",
                  "text": "Some participants were unable to laugh."
                }
              ],
              "answer": "B",
              "explanation": "Each older student took a turn at being teased by the others — participants exchanged the roles of teaser and teased.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "each group composed of two low-status members...and two high-status members, older student took a turn at being teased"
              }
            },
            {
              "number": 31,
              "prompt": "In the fifth paragraph, what did the results of the San Diego study suggest?",
              "options": [
                {
                  "key": "A",
                  "text": "It is clear whether a dominant laugh is produced by a high- or low-status person."
                },
                {
                  "key": "B",
                  "text": "Low-status individuals in a position of power will still produce submissive laughs."
                },
                {
                  "key": "C",
                  "text": "The submissive laughs of low- and high-status individuals are surprisingly similar."
                },
                {
                  "key": "D",
                  "text": "High-status individuals can always be identified by their way of laughing."
                }
              ],
              "answer": "D",
              "explanation": "High-status individuals were rated as high-status whether they produced a dominant or submissive laugh.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "high-status individuals were rated as high-status whether they produced their natural dominant laugh or tried to do a submissive one"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "completion",
          "label": "Questions 32–36",
          "instructions": "Complete the summary using the list of words, A–H, below. Write the correct letter, A–H, in boxes on your answer sheet.",
          "summaryTitle": "The benefits of humour",
          "summaryText": "In one study at Australian National University, randomly chosen groups of participants were shown one of three videos, each designed to generate a different kind of {32}. When all participants were then given a deliberately frustrating task to do, it was found that those who had watched the {33} video persisted with the task for longer and tried harder to accomplish the task than either of the other two groups. A second study in which participants were asked to perform a particularly {34} task produced similar results. According to researchers David Cheng and Lu Wang, these findings suggest that humour not only reduces {35} and helps build social connections but it may also have a {36} effect on the body and mind.",
          "wordBank": [
            {
              "key": "A",
              "text": "laughter"
            },
            {
              "key": "B",
              "text": "relaxing"
            },
            {
              "key": "C",
              "text": "boring"
            },
            {
              "key": "D",
              "text": "anxiety"
            },
            {
              "key": "E",
              "text": "stimulating"
            },
            {
              "key": "F",
              "text": "emotion"
            },
            {
              "key": "G",
              "text": "enjoyment"
            },
            {
              "key": "H",
              "text": "amusing"
            }
          ],
          "questions": [
            {
              "number": 32,
              "prompt": "",
              "answer": "F",
              "explanation": "Videos generated different kinds of emotion (humour, contentment, or neutral).",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "watch a video clip eliciting either humour, contentment, or neutral feelings"
              }
            },
            {
              "number": 33,
              "prompt": "",
              "answer": "H",
              "explanation": "Students who watched the Mr. Bean (amusing/humorous) video spent significantly more time on the task.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Students who had watched the Mr. Bean video ended up spending significantly more time working on the task"
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": [
                "C",
                "boring"
              ],
              "explanation": "The second study involved long multiplication questions — a particularly boring/tedious task.",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "participants complete long multiplication questions by hand"
              }
            },
            {
              "number": 35,
              "prompt": "",
              "answer": "D",
              "explanation": "Humour has been found to help relieve stress and facilitate social relationships.",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "humour has been found to help relieve stress and facilitate social relationships"
              }
            },
            {
              "number": 36,
              "prompt": "",
              "answer": "E",
              "explanation": "Cheng and Wang suggest humour is not only enjoyable but more importantly, energising.",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "humour is not only enjoyable but more importantly, energising"
              }
            }
          ]
        },
        {
          "id": "g8",
          "type": "true_false_notgiven",
          "label": "Questions 37–40",
          "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 37,
              "prompt": "Participants in the Santa Cruz study were more accurate at identifying the laughs of friends than those of strangers.",
              "answer": "NOT GIVEN",
              "explanation": "The passage only states that on average guesses were correct about 60% of the time — it does not compare friend vs. stranger accuracy.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "worldwide, people's guesses were correct approximately 60% of the time"
              }
            },
            {
              "number": 38,
              "prompt": "The researchers in the San Diego study were correct in their predictions regarding the behaviour of the high-status individuals.",
              "answer": "TRUE",
              "explanation": "Analysis revealed that, as expected, high-status individuals produced more dominant laughs.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Analysis revealed that, as expected, high-status individuals produced more dominant laughs"
              }
            },
            {
              "number": 39,
              "prompt": "The participants in the Australian National University study were given a fixed amount of time to complete the task focusing on employee profiles.",
              "answer": "FALSE",
              "explanation": "Participants were allowed to quit the task at any point — there was no fixed time.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Participants were allowed to quit the task at any point"
              }
            },
            {
              "number": 40,
              "prompt": "Cheng and Wang's conclusions were in line with established notions regarding task performance.",
              "answer": "FALSE",
              "explanation": "Traditional views imply individuals should avoid humour that distracts from task goals — Cheng and Wang's findings contradicted this.",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "traditional view of task performance implies that individuals should avoid things such as humour that may distract them"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c15t2r$,
  true
);
