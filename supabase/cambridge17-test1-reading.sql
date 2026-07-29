DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 17',
  'Test 1',
  'academic',
  3600,
  $c17t1r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The development of the London underground railway",
      "passage": [
        {
          "ref": "1",
          "text": "In the first half of the 1800s, London’s population grew at an astonishing rate, and the central area became increasingly congested. In addition, the expansion of the overground railway network resulted in more and more passengers arriving in the capital. However, in 1846, a Royal Commission decided that the railways should not be allowed to enter the City, the capital’s historic and business centre. The result was that the overground railway stations formed a ring around the City. The area within consisted of poorly built, overcrowded slums and the streets were full of horse-drawn traffic. Crossing the City became a nightmare. It could take an hour and a half to travel 8 km by horse-drawn carriage or bus. Numerous schemes were proposed to resolve these problems, but few succeeded."
        },
        {
          "ref": "2",
          "text": "Amongst the most vocal advocates for a solution to London’s traffic problems was Charles Pearson, who worked as a solicitor for the City of London. He saw both social and economic advantages in building an underground railway that would link the overground railway stations together and clear London slums at the same time. His idea was to relocate the poor workers who lived in the inner- city slums to newly constructed suburbs, and to provide cheap rail travel for them to get to work. Pearson’s ideas gained support amongst some businessmen and in 1851 he submitted a plan to Parliament. It was rejected, but coincided with a proposal from another group for an underground connecting line, which Parliament passed."
        },
        {
          "ref": "3",
          "text": "The two groups merged and established the Metropolitan Railway Company in August 1854. The company’s plan was to construct an underground railway line from the Great Western Railway’s (GWR) station at Paddington to the edge of the City at Farringdon Street - a distance of almost 5 km. The organisation had difficulty in raising the funding for such a radical and expensive scheme, not least because of the critical articles printed by the press. Objectors argued that the tunnels would collapse under the weight of traffic overhead, buildings would be shaken and passengers would be poisoned by the emissions from the train engines. However, Pearson and his partners persisted."
        },
        {
          "ref": "4",
          "text": "The GWR, aware that the new line would finally enable them to run trains into the heart of the City, invested almost £250,000 in the scheme. Eventually, over a five-year period, £1m was raised. The chosen route ran beneath existing main roads to minimise the expense of demolishing buildings. Originally scheduled to be completed in 21 months, the construction of the underground line took three years. It was built just below street level using a technique known as ‘cut and cover’. A trench about ten metres wide and six metres deep was dug, and the sides temporarily held up with timber beams. Brick walls were then constructed, and finally a brick arch was added to create a tunnel. A two-metre-deep layer of soil was laid on top of the tunnel and the road above rebuilt. The Metropolitan line, which opened on 10 January 1863, was the world’s first underground railway. On its first day, almost 40,000 passengers were carried between Paddington and Farringdon, the journey taking about 18 minutes. By the end of the Metropolitan’s first year of operation, 9.5 million journeys had been made."
        },
        {
          "ref": "5",
          "text": "Even as the Metropolitan began operation, the first extensions to the line were being authorised; these were built over the next five years, reaching Moorgate in the east of London and Hammersmith in the west. The original plan was to pull the trains with steam locomotives, using firebricks in the boilers to provide steam, but these engines were never introduced. Instead, the line used specially designed locomotives that were fitted with water tanks in which steam could be condensed. However, smoke and fumes remained a problem, even though ventilation shafts were added to the tunnels."
        },
        {
          "ref": "6",
          "text": "Despite the extension of the underground railway, by the 1880s, congestion on London’s streets had become worse. The problem was partly that the existing underground lines formed a circuit around the centre of London and extended to the suburbs, but did not cross the capital’s centre. The ‘cut and cover’ method of construction was not an option in this part of the capital. The only alternative was to tunnel deep underground."
        },
        {
          "ref": "7",
          "text": "Although the technology to create these tunnels existed, steam locomotives could not be used in such a confined space. It wasn’t until the development of a reliable electric motor, and a means of transferring power from the generator to a moving train, that the world’s first deep-level electric railway, the City & South London, became possible. The line opened in 1890, and ran from the City to Stockwell, south of the River Thames. The trains were made up of three carriages and driven by electric engines. The carriages were narrow and had tiny windows just below the roof because it was thought that passengers would not want to look out at the tunnel walls. The line was not without its problems, mainly caused by an unreliable power supply. Although the City & South"
        },
        {
          "ref": "8",
          "text": "London Railway was a great technical achievement, it did not make a profit. Then, in 1900, the Central London Railway, known as the ‘Tuppenny Tube’, began operation using new electric locomotives. It was very popular and soon afterwards new railways and extensions were added to the growing tube network. By 1907, the heart of today’s Underground system was in place."
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "The problem"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "The streets were full of horse-drawn vehicles"
            },
            {
              "kind": "subheader",
              "text": "The proposed solution"
            },
            {
              "kind": "static",
              "text": "Charles Pearson, a solicitor, suggested building an underground railway"
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
              "kind": "subheader",
              "text": "The construction"
            },
            {
              "kind": "static",
              "text": "The chosen route did not require many buildings to be pulled down"
            },
            {
              "kind": "static",
              "text": "The ‘cut and cover’ method was used to construct the tunnels"
            },
            {
              "kind": "question",
              "number": 6
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "The _______ of London increased rapidly between 1800 and 1850",
              "answer": [
                "population"
              ],
              "wordLimit": 1,
              "explanation": "In the first half of the 1800s, London’s population grew at an astonishing rate, and the central area became increasingly congested.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "In the first half of the 1800s, London’s population grew at an astonishing rate, and the central area became increasingl"
              }
            },
            {
              "number": 2,
              "prompt": "Building the railway would make it possible to move people to better housing in the _______",
              "answer": [
                "suburbs"
              ],
              "wordLimit": 1,
              "explanation": "His idea was to relocate the poor workers who lived in the inner-city slums to newly constructed suburbs, and to provide cheap rail travel for them to get to work.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "His idea was to relocate the poor workers who lived in the inner-city slums to newly constructed suburbs, and to provide"
              }
            },
            {
              "number": 3,
              "prompt": "A number of _______ agreed with Pearson’s idea",
              "answer": [
                "businessmen"
              ],
              "wordLimit": 1,
              "explanation": "Pearson’s ideas gained support amongst some businessmen and in 1851 he submitted a plan to Parliament.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Pearson’s ideas gained support amongst some businessmen and in 1851 he submitted a plan to Parliament."
              }
            },
            {
              "number": 4,
              "prompt": "The company initially had problems getting the _______ needed for the project",
              "answer": [
                "funding"
              ],
              "wordLimit": 1,
              "explanation": "The organisation had difficulty in raising the funding for such a radical and expensive scheme",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "The organisation had difficulty in raising the funding for such a radical and expensive scheme"
              }
            },
            {
              "number": 5,
              "prompt": "Negative articles about the project appeared in the _______",
              "answer": [
                "press"
              ],
              "wordLimit": 1,
              "explanation": "not least because of the critical articles printed by the press.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "not least because of the critical articles printed by the press."
              }
            },
            {
              "number": 6,
              "prompt": "With the completion of the brick arch, the tunnel was covered with _______",
              "answer": [
                "soil"
              ],
              "wordLimit": 1,
              "explanation": "A two-metre-deep layer of soil was laid on top of the tunnel and the road above rebuilt.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "A two-metre-deep layer of soil was laid on top of the tunnel and the road above rebuilt."
              }
            }
          ],
          "formTitle": "The London underground railway",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 7–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 7,
              "prompt": "Other countries had built underground railways before the Metropolitan line opened.",
              "answer": "FALSE",
              "explanation": "The Metropolitan line, which opened on 10 January 1863, was the world’s first underground railway.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "The Metropolitan line, which opened on 10 January 1863, was the world’s first underground railway."
              }
            },
            {
              "number": 8,
              "prompt": "More people than predicted travelled on the Metropolitan line on the first day.",
              "answer": "NOT GIVEN",
              "explanation": "On its first day, almost 40,000 passengers were carried between Paddington and Farringdon, the journey taking about 18 minutes.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "On its first day, almost 40,000 passengers were carried between Paddington and Farringdon, the journey taking about 18 m"
              }
            },
            {
              "number": 9,
              "prompt": "The use of ventilation shafts failed to prevent pollution in the tunnels.",
              "answer": "TRUE",
              "explanation": "However, smoke and fumes remained a problem, even though ventilation shafts were added to the tunnels.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "However, smoke and fumes remained a problem, even though ventilation shafts were added to the tunnels."
              }
            },
            {
              "number": 10,
              "prompt": "A different approach from the ‘cut and cover’ technique was required in London’s central area.",
              "answer": "TRUE",
              "explanation": "The problem was partly that the existing underground lines formed a circuit around the centre of London and extended to the suburbs, but did not cross the capital’s centre. The ‘cut and cover’ method of construction was not an option in this part of the capital. The only alternative was to tunnel deep underground.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "The problem was partly that the existing underground lines formed a circuit around the centre of London and extended to "
              }
            },
            {
              "number": 11,
              "prompt": "The windows on City & South London trains were at eye level.",
              "answer": "FALSE",
              "explanation": "The carriages were narrow and had tiny windows just below the roof because it was thought that passengers would not want to look out at the tunnel walls.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "The carriages were narrow and had tiny windows just below the roof because it was thought that passengers would not want"
              }
            },
            {
              "number": 12,
              "prompt": "The City & South London Railway was a financial success.",
              "answer": "FALSE",
              "explanation": "Although the City & South London Railway was a great technical achievement, it did not make a profit.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "Although the City & South London Railway was a great technical achievement, it did not make a profit."
              }
            },
            {
              "number": 13,
              "prompt": "Trains on the ‘Tuppenny Tube’ nearly always ran on time. === PAGE 4 ===",
              "answer": "NOT GIVEN",
              "explanation": "Then, in 1900, the Central London Railway, known as the ‘Tuppenny Tube’, began operation using new electric locomotives. It was very popular and soon afterwards new railways and extensions were added to the growing tube network.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "Then, in 1900, the Central London Railway, known as the ‘Tuppenny Tube’, began operation using new electric locomotives."
              }
            }
          ],
          "id": "g7"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Stadiums: past, present and future",
      "passage": [
        {
          "ref": "A",
          "text": "Stadiums are among the oldest forms of urban architecture: vast stadiums where the public could watch sporting events were at the centre of western city life as far back as the ancient Greek and Roman Empires, well before the construction of the great medieval cathedrals and the grand 19th- and 20th-century railway stations which dominated urban skylines in later eras. Today, however, stadiums are regarded with growing scepticism. Construction costs can soar above £1 billion, and stadiums finished for major events such as the Olympic Games or the FIFA World Cup have notably fallen into disuse and disrepair. But this need not be the case. History shows that stadiums can drive urban development and adapt to the culture of every age. Even today, architects and planners are finding new ways to adapt the mono-functional sports arenas which became emblematic of modernisation during the 20th century."
        },
        {
          "ref": "B",
          "text": "The amphitheatre* of Arles in southwest France, with a capacity of 25,000 spectators, is perhaps the best example of just how versatile stadiums can be. Built by the Romans in 90 AD, it became a fortress with four towers after the fifth century, and was then transformed into a village containing more than 200 houses. With the growing interest in conservation during the 19th century, it was converted back into an arena for the staging of bullfights, thereby returning the structure to its original use as a venue for public spectacles. Another example is the imposing arena of Verona in northern Italy, with space for 30,000 spectators, which was built 60 years before the Arles amphitheatre and 40 years before Rome’s famous Colosseum. It has endured the centuries and is currently considered one of the world’s prime sites for opera, thanks to its outstanding acoustics."
        },
        {
          "ref": "C",
          "text": "The area in the centre of the Italian town of Lucca, known as the Piazza dell’Anfiteatro, is yet another impressive example of an amphitheatre becoming absorbed into the fabric of the city. The site evolved in a similar way to Arles and was progressively filled with buildings from the Middle Ages until the 19th century, variously used as houses, a salt depot and a prison. But rather than reverting to an arena, it became a market square, designed by Romanticist architect Lorenzo Nottolini. Today, the ruins of the amphitheatre remain embedded in the various shops and residences surrounding the public square."
        },
        {
          "ref": "D",
          "text": "There are many similarities between modern stadiums and the ancient amphitheatres intended for games. But some of the flexibility was lost at the beginning of the 20th century, as stadiums were developed using new products such as steel and reinforced concrete, and made use of bright lights for night-time matches. Many such stadiums are situated in suburban areas, designed for sporting use only and surrounded by parking lots. These factors mean that they may not be as accessible to the general public, require more energy to run and contribute to urban heat."
        },
        {
          "ref": "E",
          "text": "But many of today’s most innovative architects see scope for the stadium to help improve the city. Among the current strategies, two seem to be having particular success: the stadium as an urban hub, and as a power plant. There’s a growing trend for stadiums to be equipped with public spaces and services that serve a function beyond sport, such as hotels, retail outlets, conference centres, restaurants and bars, children’s playgrounds and green space. Creating mixed-use developments such as this reinforces compactness and multi-functionality, making more efficient use of land and helping to regenerate urban spaces. This opens the space up to families and a wider cross-section of society, instead of catering only to sportspeople and supporters. There have been many examples of this in the UK: the mixed-use facilities at Wembley and Old Trafford have become a blueprint for many other stadiums in the world."
        },
        {
          "ref": "F",
          "text": "The phenomenon of stadiums as power stations has arisen from the idea that energy problems can be overcome by integrating interconnected buildings by means of a smart grid, which is an electricity supply network that uses digital communications technology to detect and react to local changes in usage, without significant energy losses. Stadiums are ideal for these purposes, because their canopies have a large surface area for fitting photovoltaic panels and rise high enough (more than 40 metres) to make use of micro wind turbines. Freiburg Mage Solar Stadium in Germany is the first of a new wave of stadiums as power plants, which also includes the Amsterdam Arena and the Kaohsiung Stadium. The latter, inaugurated in 2009, has 8,844 photovoltaic panels producing up to 1.14 GWh of electricity annually. This reduces the annual output of carbon dioxide by 660 tons and supplies up to 80 percent of the surrounding area when the stadium is not in use. This is proof that a stadium can serve its city, and have a decidedly positive impact in terms of reduction of CO2 emissions."
        },
        {
          "ref": "G",
          "text": "Sporting arenas have always been central to the life and culture of cities. In every era, the stadium has acquired new value and uses: from military fortress to residential village, public space to theatre and most recently a field for experimentation in advanced engineering. The stadium of today now brings together multiple functions, thus helping cities to create a sustainable future. *amphitheatre: (especially in Greek and Roman architecture) an open circular or oval building with a central space surrounded by tiers of seats for spectators, for the presentation of dramatic or sporting events"
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–17",
          "instructions": "Reading Passage 2 has seven sections, A–G. Which section contains the following information?",
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
              "prompt": "a mention of negative attitudes towards stadium",
              "answer": "A",
              "explanation": "Today, however, stadiums are regarded with growing scepticism.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "Today, however, stadiums are regarded with growing scepticism."
              }
            },
            {
              "number": 15,
              "prompt": "figures demonstrating the environmental benefits of",
              "answer": "F",
              "explanation": "This reduces the annual output of carbon dioxide by 660 tons and supplies up to 80 percent of the surrounding area when the stadium is not in use. This is proof that a stadium can serve its city, and have a decidedly positive impact in terms of reduction of CO2 emissions.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "This reduces the annual output of carbon dioxide by 660 tons and supplies up to 80 percent of the surrounding area when "
              }
            },
            {
              "number": 16,
              "prompt": "examples of the wide range of facilities available at",
              "answer": "E",
              "explanation": "There have been many examples of this in the UK: the mixed-use facilities at Wembley and Old Trafford have become a blueprint for many other stadiums in the world.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "There have been many examples of this in the UK: the mixed-use facilities at Wembley and Old Trafford have become a blue"
              }
            },
            {
              "number": 17,
              "prompt": "reference to the disadvantages of the stadiums built",
              "answer": "D",
              "explanation": "But some of the flexibility was lost at the beginning of the 20th century, as stadiums were developed using new products such as steel and reinforced concrete, and made use of bright lights for night-time matches.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "But some of the flexibility was lost at the beginning of the 20th century, as stadiums were developed using new products"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 18–22",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "example, was converted first into a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 18
            },
            {
              "kind": "static",
              "text": ", then into a residential area and finally into an arena where spectators could watch",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "static",
              "text": ". Meanwhile, the arena in Verona, one of the oldest Roman amphitheatres, is famous today as a venue where",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": "is performed. The site of Lucca’s amphitheatre has also been used for many purposes over the centuries, including the storage of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": ". It is now a market square with",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": "and homes incorporated into the remains of the Roman amphitheatre.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 18,
              "prompt": "was converted first into a _______",
              "answer": [
                "fortress"
              ],
              "wordLimit": 1,
              "explanation": "Built by the Romans in 90 AD, it became a fortress with four towers after the fifth century, and was then transformed into a village containing more than 200 houses.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Built by the Romans in 90 AD, it became a fortress with four towers after the fifth century, and was then transformed in"
              }
            },
            {
              "number": 19,
              "prompt": "arena where spectators could watch _______",
              "answer": [
                "bullfights"
              ],
              "wordLimit": 1,
              "explanation": "With the growing interest in conservation during the 19th century, it was converted back into an arena for the staging of bullfights, thereby returning the structure to its original use as a venue for public spectacles.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "With the growing interest in conservation during the 19th century, it was converted back into an arena for the staging o"
              }
            },
            {
              "number": 20,
              "prompt": "is famous today as a venue where _______ is performed",
              "answer": [
                "opera"
              ],
              "wordLimit": 1,
              "explanation": "Another example is the imposing arena of Verona in northern Italy, with space for 30,000 spectators, which was built 60 years before the Arles amphitheatre and 40 years before Rome’s famous Colosseum. It has endured the centuries and is currently considered one of the world’s prime sites for opera, thanks to its outstanding acoustics.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Another example is the imposing arena of Verona in northern Italy, with space for 30,000 spectators, which was built 60 "
              }
            },
            {
              "number": 21,
              "prompt": "including the storage of _______",
              "answer": [
                "salt"
              ],
              "wordLimit": 1,
              "explanation": "The site evolved in a similar way to Arles and was progressively filled with buildings from the Middle Ages until the 19th century, variously used as houses, a salt depot and a prison",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "The site evolved in a similar way to Arles and was progressively filled with buildings from the Middle Ages until the 19"
              }
            },
            {
              "number": 22,
              "prompt": "It is now a market square with _______",
              "answer": [
                "shops"
              ],
              "wordLimit": 1,
              "explanation": "Today, the ruins of the amphitheatre remain embedded in the various shops and residences surrounding the public square.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Today, the ruins of the amphitheatre remain embedded in the various shops and residences surrounding the public square."
              }
            }
          ],
          "formTitle": "Roman amphitheatres",
          "id": "g18"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. When comparing twentieth-century stadiums to ancient amphitheatres in Section D, which TWO negative features does the writer mention?",
          "options": [
            {
              "key": "A",
              "text": "They are less imaginatively designed."
            },
            {
              "key": "B",
              "text": "They are less spacious."
            },
            {
              "key": "C",
              "text": "They are in less convenient locations."
            },
            {
              "key": "D",
              "text": "They are less versatile."
            },
            {
              "key": "E",
              "text": "They are made of less durable materials 25 26"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "When comparing twentieth-century stadiums to ancient amphitheatres in Section D, which TWO negative features does the writer mention?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "These factors mean that they may not be as accessible to the general public, require more energy to run and contribute to urban heat. But some of the flexibility was lost at the beginning of the 20th century, as stadiums were developed using new products such as steel and reinforced concrete, and made use of bright lights for night-time matches.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "These factors mean that they may not be as accessible to the general public, req"
              }
            },
            {
              "number": 24,
              "prompt": "When comparing twentieth-century stadiums to ancient amphitheatres in Section D, which TWO negative features does the writer mention?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "These factors mean that they may not be as accessible to the general public, require more energy to run and contribute to urban heat. But some of the flexibility was lost at the beginning of the 20th century, as stadiums were developed using new products such as steel and reinforced concrete, and made use of bright lights for night-time matches.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "These factors mean that they may not be as accessible to the general public, req"
              }
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO advantages of modern stadium design does the writer mention?",
          "options": [
            {
              "key": "A",
              "text": "offering improved amenities for the enjoyment of sports events"
            },
            {
              "key": "B",
              "text": "bringing community life back into the city environment"
            },
            {
              "key": "C",
              "text": "facilitating research into solar and wind energy solutions"
            },
            {
              "key": "D",
              "text": "enabling local residents to reduce their consumption of electricity"
            },
            {
              "key": "E",
              "text": "providing a suitable site for the installation of renewable power generators"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO advantages of modern stadium design does the writer mention?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "This opens the space up to families and a wider cross-section of society, instead of catering only to sportspeople and supporters. The phenomenon of stadium as power stations has arisen from the idea that energy problems can be overcome by integrating interconnected buildings by means of a smart grid, which is an electricity supply network that uses digital communications technology to detect and react to local changes in usage, without significant energy losses.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "This opens the space up to families and a wider cross-section of society, instea"
              }
            },
            {
              "number": 26,
              "prompt": "Which TWO advantages of modern stadium design does the writer mention?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "This opens the space up to families and a wider cross-section of society, instead of catering only to sportspeople and supporters. The phenomenon of stadium as power stations has arisen from the idea that energy problems can be overcome by integrating interconnected buildings by means of a smart grid, which is an electricity supply network that uses digital communications technology to detect and react to local changes in usage, without significant energy losses.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "This opens the space up to families and a wider cross-section of society, instea"
              }
            }
          ],
          "id": "g25"
        }
      ]
    },
    {
      "id": "p3",
      "title": "To catch a king",
      "passage": [
        {
          "ref": "1",
          "text": "Anna Keay reviews Charles Spencers hook about the hunt for King Charles II during the English Civil War of the seventeenth century Charles Spencer’s latest book, To Catch a King, tells us the story of the hunt for King Charles II in the six weeks after his resounding defeat at the Battle of Worcester in September 1651. And what a story it is. After his father was executed by the Parliamentarians in 1649, the young Charles II sacrificed one of the very principles his father had died for and did a deal with the Scots, thereby accepting Presbyterianism* as the national religion in return for being crowned King of Scots. His arrival in Edinburgh prompted the English Parliamentary army to invade Scotland in a pre-emptive strike. This was followed by a Scottish invasion of England. The two sides finally faced one another at Worcester in the west of England in 1651. After being comprehensively defeated on the meadows outside the city by the Parliamentarian army, the 21-year-old king found himself the subject of a national manhunt, with a huge sum offered for his capture. Over the following six weeks he managed, through a series of heart-poundingly close escapes, to evade the Parliamentarians before seeking refuge in France. For the next nine years, the penniless and defeated Charles wandered around Europe with only a small group of loyal supporters. Years later, after his restoration as king, the 50-year-old Charles II requested a meeting with the writer and diarist Samuel Pepys. His intention when asking Pepys to commit his story to paper was to ensure that this most extraordinary episode was never forgotten. Over two three-hour sittings, the king related to him in great detail his personal recollections of the six weeks he had spent as a fugitive. As the king and secretary settled down (a scene that is surely a gift for a future scriptwriter), Charles commenced his story: ‘After the battle was so absolutely lost as to be beyond hope of recovery, I began to think of the best way of saving myself.’ One of the joys of Spencer’s book, a result not least of its use of Charles II’s own narrative as well as those of his supporters, is just how close the reader gets to the action. The day-by-day retelling of the fugitives’ doings provides delicious details: the cutting of the king’s long hair with agricultural shears, the use of walnut leaves to dye his pale skin, and the day Charles spent lying on a branch of the great oak tree in Boscobel Wood as the Parliamentary soldiers scoured the forest floor below. Spencer draws out both the humour - such as the preposterous refusal of Charles’s friend Henry"
        },
        {
          "ref": "2",
          "text": "Wilmot to adopt disguise on the grounds that it was beneath his dignity - and the emotional tension when the secret of the king’s presence was cautiously revealed to his supporters. Charles’s adventures after losing the Battle of Worcester hide the uncomfortable truth that whilst almost everyone in England had been appalled by the execution of his father, they had not welcomed the arrival of his son with the Scots army, but had instead firmly bolted their doors. This was partly because he rode at the head of what looked like a foreign invasion force and partly because, after almost a decade of civil war, people were desperate to avoid it beginning again. This makes it all the more interesting that Charles II himself loved the story so much ever after. As well as retelling it to anyone who would listen, causing eye-rolling among courtiers, he set in train a series of initiatives to memorialise it. There was to be a new order of chivalry, the Knights of the Royal Oak. A series of enormous oil paintings depicting the episode were produced, including a two-metre-wide canvas of Boscobel Wood and a set of six similarly enormous paintings of the king on the run. In 1660, Charles II commissioned the artist John Michael Wright to paint a flying squadron of cherubs* carrying an oak tree to the heavens on the ceiling of his bedchamber. It is hard to imagine many other kings marking the lowest point in their life so enthusiastically, or indeed pulling off such an escape in the first place."
        },
        {
          "ref": "3",
          "text": "Charles Spencer is the perfect person to pass the story on to a new generation. His pacey, readable prose steers deftly clear of modern idioms and elegantly brings to life the details of the great tale. He has even-handed sympathy for both the fugitive king and the fierce republican regime that hunted him, and he succeeds in his desire to explore far more of the background of the story than previous books on the subject have done. Indeed, the opening third of the book is about how Charles II found himself at Worcester in the first place, which for some will be reason alone to read To Catch a King."
        },
        {
          "ref": "4",
          "text": "The tantalising question left, in the end, is that of what it all meant. Would Charles II have been a different king had these six weeks never happened? The days and nights spent in hiding must have affected him in some way. Did the need to assume disguises, to survive on wit and charm alone, to use trickery and subterfuge to escape from tight corners help form him? This is the one area where the book doesn’t quite hit the mark. Instead its depiction of Charles II in his final years as an ineffective, pleasure-loving monarch doesn’t do justice to the man (neither is it accurate), or to the complexity of his character. But this one niggle aside, To Catch a King is an excellent read, and those who come to it knowing little of the famous tale will find they have a treat in store. *Presbyterianism: part of the reformed Protestant religion *cherub: an image of angelic children used in paintings"
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 27–31",
          "instructions": "Complete the summary using the list of words, A–J, below.",
          "summaryTitle": "",
          "summaryText": "The story behind the hunt for Charles II\nCharles II’s father was executed by the Parliamentarian forces in 1649. Charles II then formed a\n{27} with the Scots, and in order to become King of Scots, he abandoned\nan important {28} that was held by his father and had contributed to his\nfather’s death. The opposing sides then met outside Worcester in 1651. The battle led to a\n{29} for the Parliamentarians and Charles had to flee for his life. A\n{30} was offered for Charles’s capture, but after six weeks spent in hiding,\nhe eventually managed to reach the {31} of continental Europe.\nA. military innovation B. large reward C. widespread conspiracy\nD. relative safety E. new government F. decisive victory\nG. political debate H. strategic allianceI. popular solution\nJ. religious conviction",
          "wordBank": [
            {
              "key": "A",
              "text": "military innovation"
            },
            {
              "key": "B",
              "text": "large reward"
            },
            {
              "key": "C",
              "text": "widespread conspiracy"
            },
            {
              "key": "D",
              "text": "relative safety"
            },
            {
              "key": "E",
              "text": "new government"
            },
            {
              "key": "F",
              "text": "decisive victory"
            },
            {
              "key": "G",
              "text": "political debate"
            },
            {
              "key": "H",
              "text": "strategic alliance"
            },
            {
              "key": "I",
              "text": "popular solution"
            },
            {
              "key": "J",
              "text": "religious conviction"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "",
              "answer": "H",
              "explanation": "did a deal with the Scots",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "did a deal with the Scots"
              }
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "J",
              "explanation": "the young Charles II sacrificed one of the very principles his father had died for",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "the young Charles II sacrificed one of the very principles his father had died for"
              }
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "F",
              "explanation": "After being comprehensively defeated on the meadows outside the city by the Parliamentarian army",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "After being comprehensively defeated on the meadows outside the city by the Parliamentarian army"
              }
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "B",
              "explanation": "the 21-year-old king found himself the subject of a national manhunt, with a huge sum offered for his capture",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "the 21-year-old king found himself the subject of a national manhunt, with a huge sum offered for his capture"
              }
            },
            {
              "number": 31,
              "prompt": "",
              "answer": "D",
              "explanation": "through a series of heart-poundingly close escapes, to evade the Parliamentarians before seeking refuge in France.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "through a series of heart-poundingly close escapes, to evade the Parliamentarians before seeking refuge in France."
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 32–35",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 32,
              "prompt": "Charles chose Pepys for the task because he considered him to be trustworthy.",
              "answer": "NOT GIVEN",
              "explanation": "His intention when asking Pepys to commit his story to paper was to ensure that this most extraordinary episode was never forgotten.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "His intention when asking Pepys to commit his story to paper was to ensure that this most extraordinary episode was neve"
              }
            },
            {
              "number": 33,
              "prompt": "Charles’s personal recollection of the escape lacked sufficient detail.",
              "answer": "NO",
              "explanation": "Over two three-hour sittings, the king related to him in great detail his personal recollections of the six weeks he had spent as a fugitive.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Over two three-hour sittings, the king related to him in great detail his personal recollections of the six weeks he had"
              }
            },
            {
              "number": 34,
              "prompt": "Charles indicated to Pepys that he had planned his escape before the battle.",
              "answer": "NO",
              "explanation": "Charles commenced his story: ‘After the battle was so absolutely lost as to be beyond hope of recovery, I began to think of the best way of saving myself.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Charles commenced his story: ‘After the battle was so absolutely lost as to be beyond hope of recovery, I began to think"
              }
            },
            {
              "number": 35,
              "prompt": "The inclusion of Charles’s account is a positive aspect of the book.",
              "answer": "YES",
              "explanation": "One of the joys of Spencer’s book, a result not least of its use of Charles II’s own narrative as well as those of his supporters, is just how close the reader gets to the action.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "One of the joys of Spencer’s book, a result not least of its use of Charles II’s own narrative as well as those of his s"
              }
            }
          ],
          "id": "g32"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 36–40",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 36,
              "prompt": "What is the reviewer’s main purpose in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "to describe what happened during the Battle of Worcester"
                },
                {
                  "key": "B",
                  "text": "to give an account of the circumstances leading to Charles II’s escape"
                },
                {
                  "key": "C",
                  "text": "to provide details of the Parliamentarians’ political views"
                },
                {
                  "key": "D",
                  "text": "to compare Charles II’s beliefs with those of his father"
                }
              ],
              "answer": "B",
              "explanation": "For the next nine years, the penniless and defeated Charles wandered around Europe with only a small group of loyal supporters.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "For the next nine years, the penniless and defeated Charles wandered around Europe with only a small group of loyal supp"
              }
            },
            {
              "number": 37,
              "prompt": "Why does the reviewer include examples of the fugitives’ behaviour in the third paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "to explain how close Charles II came to losing his life"
                },
                {
                  "key": "B",
                  "text": "to suggest that Charles II’s supporters were badly prepared"
                },
                {
                  "key": "C",
                  "text": "to illustrate how the events of the six weeks are brought to life"
                },
                {
                  "key": "D",
                  "text": "to argue that certain aspects are not as well known as they should be"
                }
              ],
              "answer": "C",
              "explanation": "The day-by-day retelling of the fugitives’ doings provides delicious details: the cutting of the king’s long hair with agricultural shears, the use of walnut leaves to dye his pale skin, and the day Charles spent lying on a branch of the great oak tree in Boscobel Wood as the Parliamentary soldiers scoured the forest floor below.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "The day-by-day retelling of the fugitives’ doings provides delicious details: the cutting of the king’s long hair with a"
              }
            },
            {
              "number": 38,
              "prompt": "What point does the reviewer make about Charles II in the fourth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "He chose to celebrate what was essentially a defeat."
                },
                {
                  "key": "B",
                  "text": "He misunderstood the motives of his opponents."
                },
                {
                  "key": "C",
                  "text": "He aimed to restore people’s faith in the monarchy."
                },
                {
                  "key": "D",
                  "text": "He was driven by a desire to be popular."
                }
              ],
              "answer": "A",
              "explanation": "This makes it all the more interesting that Charles II himself loved the story so much ever after.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "This makes it all the more interesting that Charles II himself loved the story so much ever after."
              }
            },
            {
              "number": 39,
              "prompt": "What does the reviewer say about Charles Spencer in the fifth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "His decision to write the book comes as a surprise."
                },
                {
                  "key": "B",
                  "text": "He takes an unbiased approach to the subject matter."
                },
                {
                  "key": "C",
                  "text": "His descriptions of events would be better if they included more detail."
                },
                {
                  "key": "D",
                  "text": "He chooses language that is suitable for a twenty-first-century audience."
                }
              ],
              "answer": "B",
              "explanation": "He has even-handed sympathy for both the fugitive king and the fierce republican regime that hunted him, and he succeeds in his desire to explore far more of the background of the story than previous books on the subject have done.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "He has even-handed sympathy for both the fugitive king and the fierce republican regime that hunted him, and he succeeds"
              }
            },
            {
              "number": 40,
              "prompt": "When the reviewer says the book ‘doesn’t quite hit the mark’, she is making the point that",
              "options": [
                {
                  "key": "A",
                  "text": "it overlooks the impact of events on ordinary people."
                },
                {
                  "key": "B",
                  "text": "it lacks an analysis of prevalent views on monarchy."
                },
                {
                  "key": "C",
                  "text": "it omits any references to the deceit practised by Charles II during his time in hiding."
                },
                {
                  "key": "D",
                  "text": "it fails to address whether Charles II’s experiences had a lasting influence on him."
                }
              ],
              "answer": "D",
              "explanation": "Did the need to assume disguises, to survive on wit and charm alone, to use trickery and subterfuge to escape from tight corners help form him? This is the one area where the book doesn’t quite hit the mark.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Did the need to assume disguises, to survive on wit and charm alone, to use trickery and subterfuge to escape from tight"
              }
            }
          ],
          "id": "g36"
        }
      ]
    }
  ]
}
$c17t1r$,
  true
);
