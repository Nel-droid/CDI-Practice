DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 20',
  'Test 4',
  'academic',
  3600,
  $c20t4r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Georgia O’Keeffe",
      "passage": [
        {
          "ref": "1",
          "text": "For seven decades, Georgia O’Keeffe (1887-1986) was a major figure in American art. Remarkably, she remained independent from shifting art trends and her work stayed true to her own vision, which was based on finding the essential, abstract forms in nature. With exceptionally keen powers of observation and great finesse with a paintbrush, she recorded subtle nuances of colour, shape, and light that enlivened her paintings and attracted a wide audience."
        },
        {
          "ref": "2",
          "text": "Born in 1887 near Sun Prairie, Wisconsin to cattle breeders Francis and Ida O’Keeffe, Georgia was raised on their farm along with her six siblings. By the time she graduated from high school in 1905, she had determined to make her way as an artist. She studied the techniques of traditional painting at the Art Institute of Chicago school (1905) and the Art Students League of New York (1907-8). After attending university and then training college, she became an art teacher and taught in elementary schools, high schools, and colleges in Virginia, Texas, and South Carolina from 1911 to 1918."
        },
        {
          "ref": "3",
          "text": "During this period, O’Keeffe began to experiment with creating abstract compositions in charcoal, and produced a series of innovative drawings that led her art in a new direction. She sent some of these drawings to a friend in New York, who showed them to art collector and photographer Alfred Stieglitz in January 1916. Stieglitz was impressed, and exhibited the drawings later that year at his gallery on Fifth Avenue, New York City, where the works of many avant-garde artists and photographers were introduced to the American public."
        },
        {
          "ref": "4",
          "text": "With Stieglitz’s encouragement and promise of financial support, O’Keeffe arrived in New York in June 1918 to begin a career as an artist. For the next three decades, Stieglitz vigorously promoted her work in twenty-two solo exhibitions and numerous group installations. The two were married in 1924. The ups and downs of their personal and professional relationship were recorded in Stieglitz’s celebrated black-and-white portraits of O’Keeffe, taken over the course of twenty years (1917-37). By the mid-1920s, O’Keeffe was recognized as one of America’s most important and successful artists, widely known for the architectural pictures that dramatically depict the soaring skyscrapers of New York. But most often, she painted botanical subjects, inspired by annual trips to the Stieglitz"
        },
        {
          "ref": "5",
          "text": "family summer home. In her magnified images depicting flowers, begun in 1924, O’Keeffe brings the viewer right into the picture."
        },
        {
          "ref": "6",
          "text": "Enlarging the tiniest details to fill an entire metre-wide canvas emphasized their shapes and lines and made them appear abstract. Such daring compositions helped establish O’Keeffe’s reputation as an innovative modernist."
        },
        {
          "ref": "7",
          "text": "In 1929, O’Keeffe made her first extended trip to the state of New Mexico. It was a visit that had a lasting impact on her life, and an immediate effect on her work. Over the next two decades she made almost annual trips to New Mexico, staying up to six months there, painting in relative solitude, then returning to New York each winter to exhibit the new work at Stieglitz’s gallery. This pattern continued until she moved permanently to New Mexico in 1949."
        },
        {
          "ref": "8",
          "text": "There, O’Keeffe found new inspiration: at first, it was the numerous sun-bleached bones she came across in the state’s rugged terrain that sparked her imagination. Two of her earliest and most celebrated Southwestern paintings exquisitely reproduce a cow skull’s weathered surfaces, jagged edges, and irregular openings. Later, she also explored another variation on this theme in her large series of Pelvis pictures, which focused on the contrasts between convex and concave surfaces, and solid and open spaces."
        },
        {
          "ref": "9",
          "text": "However, it was the region’s spectacular landscape, with its unusual geological formations, vivid colours, clarity of light, and exotic vegetation, that held the artist’s imagination for more than four decades. Often, she painted the rocks, cliffs, and mountains in striking close-up, just as she had done with her botanical subjects."
        },
        {
          "ref": "10",
          "text": "O’Keeffe eventually owned two homes in New Mexico - the first, her summer retreat at Ghost Ranch, was nestled beneath 200-metre cliffs, while the second, used as her winter residence, was in the small town of Abiquiú. While both locales provided a wealth of imagery for her paintings, one feature of the Abiquiú house - the large walled patio with its black door - was particularly inspirational. In more than thirty pictures between 1946 and 1960, she reinvented the patio into an abstract arrangement of geometric shapes."
        },
        {
          "ref": "11",
          "text": "From the 1950s into the 1970s, O’Keeffe travelled widely, making trips to Asia, the Middle East, and Europe. Flying in planes inspired her last two major series - aerial views of rivers and expansive paintings of the sky viewed from just above clouds. In both series, O’Keeffe increased the size of her canvases, sometimes to mural proportions, reflecting perhaps her newly expanded view of the world. When in 1965 she successfully translated one of her cloud motifs to a monumental canvas"
        },
        {
          "ref": "12",
          "text": "measuring 6 metres in length (with the help of assistants), it was an enormous challenge and a special feat for an artist nearing eighty years of age."
        },
        {
          "ref": "13",
          "text": "The last two decades of the artist’s life were relatively unproductive as ill health and blindness hindered her ability to work. O’Keeffe died in 1986 at the age of ninety-eight, but her rich legacy of some 900 paintings has continued to attract subsequent generations of artists and art lovers who derive inspiration from these very American images."
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
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
              "kind": "question",
              "number": 5
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "- studied art, then worked as a _______ in various places in the USA",
              "answer": [
                "Teacher"
              ],
              "wordLimit": 1,
              "explanation": "she became an art teacher and taught in elementary schools, high schools, and colleges in Virginia, Texas, and South Carolina from 1911 to 1918",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "she became an art teacher and taught in elementary schools, high schools, and colleges in Virginia, Texas, and South Car"
              }
            },
            {
              "number": 2,
              "prompt": "- created drawings using _______ which were exhibited in New York City",
              "answer": [
                "Charcoal"
              ],
              "wordLimit": 1,
              "explanation": "During this period, O’Keeffe began to experiment with creating abstract compositions in charcoal, and produced a series of innovative drawings that led her art in a new direction",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "During this period, O’Keeffe began to experiment with creating abstract compositions in charcoal, and produced a series "
              }
            },
            {
              "number": 3,
              "prompt": "- moved to New York and became famous for her paintings of the city’s _______",
              "answer": [
                "skyscrapers"
              ],
              "wordLimit": 1,
              "explanation": "By the mid-1920s, O’Keeffe was recognized as one of America’s most important and successful artists, widely known for the architectural pictures that dramatically depict the soaring skyscrapers of New York",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "By the mid-1920s, O’Keeffe was recognized as one of America’s most important and successful artists, widely known for th"
              }
            },
            {
              "number": 4,
              "prompt": "- produced a series of innovative close-up paintings of _______",
              "answer": [
                "Flowers"
              ],
              "wordLimit": 1,
              "explanation": "In her magnified images depicting flowers, begun in 1924, O’Keeffe brings the viewer right into the picture.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "In her magnified images depicting flowers, begun in 1924, O’Keeffe brings the viewer right into the picture."
              }
            },
            {
              "number": 5,
              "prompt": "- went to New Mexico and was initially inspired to paint the many _______ that could be found there",
              "answer": [
                "Bones"
              ],
              "wordLimit": 1,
              "explanation": "at first, it was the numerous sun-bleached bones she came across in the state’s rugged terrain that sparked her imagination",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "at first, it was the numerous sun-bleached bones she came across in the state’s rugged terrain that sparked her imaginat"
              }
            },
            {
              "number": 6,
              "prompt": "- continued to paint various features that together formed the dramatic _______ of New Mexico for over forty years",
              "answer": [
                "Landscape"
              ],
              "wordLimit": 1,
              "explanation": "However, it was the region’s spectacular landscape, with its unusual geological formations, vivid colours, clarity of light, and exotic vegetation, that held the artist’s imagination for more than four decades",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "However, it was the region’s spectacular landscape, with its unusual geological formations, vivid colours, clarity of li"
              }
            },
            {
              "number": 7,
              "prompt": "- travelled widely by plane in later years, and painted pictures of clouds and _______ seen from above.",
              "answer": [
                "Rivers"
              ],
              "wordLimit": 1,
              "explanation": "Flying in planes inspired her last two major series - aerial views of rivers and expansive paintings of the sky viewed from just above clouds.",
              "evidence": {
                "sectionId": "p1",
                "ref": "11",
                "quote": "Flying in planes inspired her last two major series - aerial views of rivers and expansive paintings of the sky viewed f"
              }
            }
          ],
          "formTitle": "The Life and Work of Georgia O’Keefe",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 8–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 8,
              "prompt": "Georgia O’Keeffe’s style was greatly influenced by the changing fashions in art over the seven decades of her career.",
              "answer": "FALSE",
              "explanation": "Remarkably, she remained independent from shifting art trends and her work stayed true to her own vision",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "Remarkably, she remained independent from shifting art trends and her work stayed true to her own vision"
              }
            },
            {
              "number": 9,
              "prompt": "When O’Keeffe finished high school, she had already made her mind up about the career that she wanted.",
              "answer": "TRUE",
              "explanation": "By the time she graduated from high school in 1905, she had determined to make her way as an artist",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "By the time she graduated from high school in 1905, she had determined to make her way as an artist"
              }
            },
            {
              "number": 10,
              "prompt": "Alfred Stieglitz first discovered O’Keeffe’s work when she sent some abstract drawings to his gallery in New York City.",
              "answer": "FALSE",
              "explanation": "She sent some of these drawings to a friend in New York, who showed them to art collector and photographer Alfred Stieglitz in January 1916",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "She sent some of these drawings to a friend in New York, who showed them to art collector and photographer Alfred Stiegl"
              }
            },
            {
              "number": 11,
              "prompt": "O’Keeffe was the subject of Stieglitz’s photographic work for many years.",
              "answer": "TRUE",
              "explanation": "The ups and downs of their personal and professional relationship were recorded in Stieglitz’s celebrated black-and-white portraits of O’Keeffe, taken over the course of twenty years (1917-37)",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "The ups and downs of their personal and professional relationship were recorded in Stieglitz’s celebrated black-and-whit"
              }
            },
            {
              "number": 12,
              "prompt": "O’Keeffe’s paintings of the patio of her house in Abiquiu were among the artist’s favourite works. === PAGE 6 ===",
              "answer": "NOT GIVEN",
              "explanation": "one feature of the Abiquiú house - the large walled patio with its black door - was particularly inspirational. In more than thirty pictures between 1946 and 1960, she reinvented the patio into an abstract arrangement of geometric shapes",
              "evidence": {
                "sectionId": "p1",
                "ref": "10",
                "quote": "one feature of the Abiquiú house - the large walled patio with its black door - was particularly inspirational. In more "
              }
            },
            {
              "number": 13,
              "prompt": "O’Keeffe produced a greater quantity of work during the 1950s to 1970s than at any other time in her life. === PAGE 7 ===",
              "answer": "NOT GIVEN",
              "explanation": "The last two decades of the artist’s life were relatively unproductive as ill health and blindness hindered her ability to work",
              "evidence": {
                "sectionId": "p1",
                "ref": "13",
                "quote": "The last two decades of the artist’s life were relatively unproductive as ill health and blindness hindered her ability "
              }
            }
          ],
          "id": "g8"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Adapting to the effects of climate change",
      "passage": [
        {
          "ref": "A",
          "text": "All around the world, nations are already preparing for, and adapting to, climate change and its impacts. Even if we stopped all CO2 emissions tomorrow, we would continue to see the impact of the CO2 already released since industrial times, with scientists forecasting that global warming would continue for around 40 years. In the meantime, ice caps would continue to melt and sea levels rise. Some countries and regions will suffer more extreme impacts from these changes than others. It’s in these places that innovation is thriving."
        },
        {
          "ref": "B",
          "text": "In Miami Beach, Florida, USA, seawater isn’t just breaching the island city’s walls, it’s seeping up through the ground, so the only way to save the city is to lift it up above sea level. Starting in the lowest and most vulnerable neighbourhoods, roads have been raised by as much as 61 centimetres. The elevation work was carried out as part of Miami Beach’s ambitious but much- needed stormwater-management programme. In addition to the road adaptations, the city has set up new pumps that can remove up to 75,000 litres of water per minute. In the face of floods, climate-mitigation strategies have often been overlooked, says Yanira Pineda, a senior sustainability coordinator. She knows that they’re essential and that the job is far from over. ‘We know that in 20, 30, 40 years, we’ll need to go back in there and adjust to the changing environment,’ she says."
        },
        {
          "ref": "C",
          "text": "Seawalls are a staple strategy for many coastal communities, but on the soft, muddy northern shores of Java, Indonesia, they frequently collapse, further exacerbating coastal erosion. There have been many attempts to restore the island’s coastal mangroves: ecosystems of trees and shrubs that help defend coastal areas by trapping sediment in their net-like root systems, elevating the sea bed and dampening the energy of waves and tidal currents. But Susanna Tol of the not-for-profit organisation Wetlands International says that, while hugely popular, the majority of mangrove- planting projects fail. So, Wetlands International started out with a different approach, building semi-permeable dams, made from bamboo poles and brushwood, to mimic the role of mangrove roots and create favourable conditions for mangroves to grow back naturally. The programme has seen moderate success, mainly in areas with less subsidence. “Unfortunately, traditional infrastructure is often single-solution focused,’ says Tol. ‘For long-term success, it’s critical that we transition towards multifunctional approaches that embed natural processes and that engage and benefit communities and local decision-makers.”"
        },
        {
          "ref": "D",
          "text": "As the floodwaters rose in the rice fields of the Mekong Delta in September 2018, four small houses rose with them. Homes in this part of Vietnam are traditionally built on stilts but these ones had been built to float. The modifications were made by the Buoyant Foundation Project, a not-for- profit organisation that has been researching and retrofitting amphibious houses since 2006. ‘When I started this,’ explains founder Elizabeth English, ‘climate change was not on the tip of everybody’s tongue,' but this technology is becoming necessary in places that didn’t previously need it. It’s much cheaper than permanently elevating houses, English explains - about a third of what it would cost to completely replace a building’s foundations. It also avoids the problem of taller houses being at greater risk from wind damage. Another plus comes from the fact that amphibious structures can be sensitively adapted to meet cultural needs and match the kind of houses that are already common in a community."
        },
        {
          "ref": "E",
          "text": "Bangladesh is especially vulnerable to climate change. Most of the country is less than a metre above sea level and 80 per cent of its land lies on floodplains. ‘Almost 35 million people living on the coastal belt of Bangladesh are currently affected by soil and water salinity,’ says Raisa Chowdhury of the international development organisation ICCO Cooperation. Rather than fighting against it, one project is helping communities adapt to salt-affected soils. ICCO Cooperation has been working with 10,000 farmers in Bangladesh to start cultivating naturally salt-tolerant crops in the region. Certain varieties of carrot, potato, kohlrabi, cabbage and beetroot have been found to be better suited to salty soil than the rice and wheat that is typically grown there. Chowdhury says that the results are very visible, comparing a barren plot of land to the ‘beautiful, lush green vegetable garden’ sitting beside it, in which he and his team have been working with the farmers. Since the project began, farmers trained in saline agriculture have reported increases of two to three more harvests per year."
        },
        {
          "ref": "F",
          "text": "Greg Spotts from Los Angeles (LA) in the USA is chief sustainability officer of the city’s street services department. He leads the Cool Streets LA programme, a series of pilot projects, which include the planting of trees and the installation of a ‘cool pavement’ system, designed to help reach the city’s goal of bringing down its average temperature by 1.5°C. ‘Urban cooling is literally a matter of life and death for our future in LA,’ says Spotts. Using a Geographic Information System data mapping tool, the programme identified streets with low tree canopy cover in three of the city’s neighbourhoods and covered them with a light-grey, light-reflecting coating, which had already been shown to lower road surface temperature in Los Angeles by 6°C. Spotts says one of these streets, in the Winnetka neighbourhood of San Fernando Valley, can now be seen as a pale crescent, the only cool spot on an otherwise red thermal image, from the International Space Station."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–17",
          "instructions": "Reading Passage 2 has six paragraphs, A–F. Which paragraph contains the following information?",
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
              "prompt": "how a type of plant functions as a natural protection for",
              "answer": "C",
              "explanation": "There have been many attempts to restore the island’s coastal mangroves: ecosystems of trees and shrubs that help defend coastal areas by trapping sediment in their net-like root systems, elevating the sea bed and dampening the energy of waves and tidal currents",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "There have been many attempts to restore the island’s coastal mangroves: ecosystems of trees and shrubs that help defend"
              }
            },
            {
              "number": 15,
              "prompt": "a prediction about how long it could take to stop noticing",
              "answer": "A",
              "explanation": "Even if we stopped all CO2 emissions tomorrow, we would continue to see the impact of the CO2 already released since industrial times, with scientists forecasting that global warming would continue for around 40 years",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "Even if we stopped all CO2 emissions tomorrow, we would continue to see the impact of the CO2 already released since ind"
              }
            },
            {
              "number": 16,
              "prompt": "a reference to the fact that a solution is particularly cost-",
              "answer": "D",
              "explanation": "It’s much cheaper than permanently elevating houses, English explains - about a third of what it would cost to completely replace a building’s foundations",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "It’s much cheaper than permanently elevating houses, English explains - about a third of what it would cost to completel"
              }
            },
            {
              "number": 17,
              "prompt": "a mention of a technology used to locate areas most in",
              "answer": "F",
              "explanation": "Using a Geographic Information System data mapping tool, the programme identified streets with low tree canopy cover in three of the city’s neighbourhoods",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "Using a Geographic Information System data mapping tool, the programme identified streets with low tree canopy cover in "
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
              "text": "efficient",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 18
            },
            {
              "kind": "static",
              "text": "The construction of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "static",
              "text": "was the first stage of a project to ensure the success of mangroves in Indonesia. As a response to rising floodwaters in the Mekong Delta, a not-for-profit organisation has been building houses that can",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": ". Rising sea levels in Bangladesh have made it necessary to introduce various",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": "that are suitable for areas of high salt content. A project in LA has increased the number of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": "on the city’s streets.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 18,
              "prompt": "the installation of efficient _______",
              "answer": [
                "Pumps"
              ],
              "wordLimit": 1,
              "explanation": "In addition to the road adaptations, the city has set up new pumps that can remove up to 75,000 litres of water per minute",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "In addition to the road adaptations, the city has set up new pumps that can remove up to 75,000 litres of water per minu"
              }
            },
            {
              "number": 19,
              "prompt": "efficient The construction of _______",
              "answer": [
                "Dams"
              ],
              "wordLimit": 1,
              "explanation": "So, Wetlands International started out with a different approach, building semi-permeable dams, made from bamboo poles and brushwood, to mimic the role of mangrove roots and create favourable conditions for mangroves to grow back naturally",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "So, Wetlands International started out with a different approach, building semi-permeable dams, made from bamboo poles a"
              }
            },
            {
              "number": 20,
              "prompt": "has been building houses that can _______",
              "answer": [
                "Float"
              ],
              "wordLimit": 1,
              "explanation": "As the floodwaters rose in the rice fields of the Mekong Delta in September 2018, four small houses rose with them. Homes in this part of Vietnam are traditionally built on stilts but these ones had been built to float.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "As the floodwaters rose in the rice fields of the Mekong Delta in September 2018, four small houses rose with them. Home"
              }
            },
            {
              "number": 21,
              "prompt": "it necessary to introduce various _______",
              "answer": [
                "Crops"
              ],
              "wordLimit": 1,
              "explanation": "‘Almost 35 million people living on the coastal belt of Bangladesh are currently affected by soil and water salinity,’ says Raisa Chowdhury of the international development organisation ICCO Cooperation. Rather than fighting against it, one project is helping communities adapt to salt-affected soils. ICCO Cooperation has been working with 10,000 farmers in Bangladesh to start cultivating naturally salt-tolerant crops in the region",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "‘Almost 35 million people living on the coastal belt of Bangladesh are currently affected by soil and water salinity,’ s"
              }
            },
            {
              "number": 22,
              "prompt": "in LA has increased the number of _______",
              "answer": [
                "Trees"
              ],
              "wordLimit": 1,
              "explanation": "He leads the Cool Streets LA programme, a series of pilot projects, which include the planting of trees",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "He leads the Cool Streets LA programme, a series of pilot projects, which include the planting of trees"
              }
            }
          ],
          "formTitle": "The stormwater-management programme in Miami Beach has involved the installation of",
          "id": "g18"
        },
        {
          "type": "matching",
          "label": "Questions 23–26",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, List of People A.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Yanira Pineda"
            },
            {
              "key": "B",
              "text": "Susanna Tol"
            },
            {
              "key": "C",
              "text": "Elizabeth English"
            },
            {
              "key": "D",
              "text": "Raisa Chowdhury"
            },
            {
              "key": "E",
              "text": "Greg Spotts"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "It is essential to adopt strategies which involve and help",
              "answer": "B",
              "explanation": "For long-term success, it’s critical that we transition towards multifunctional approaches that embed natural processes and that engage and benefit communities and local decision-makers",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "For long-term success, it’s critical that we transition towards multifunctional approaches that embed natural processes "
              }
            },
            {
              "number": 24,
              "prompt": "Interventions which reduce heat are absolutely vital for our",
              "answer": "E",
              "explanation": "‘Urban cooling is literally a matter of life and death for our future in LA,’ says Spotts",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "‘Urban cooling is literally a matter of life and death for our future in LA,’ says Spotts"
              }
            },
            {
              "number": 25,
              "prompt": "More work will need to be done in future decades to deal with",
              "answer": "A",
              "explanation": "‘We know that in 20, 30, 40 years, we’ll need to go back in there and adjust to the changing environment,’ she says",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "‘We know that in 20, 30, 40 years, we’ll need to go back in there and adjust to the changing environment,’ she says"
              }
            },
            {
              "number": 26,
              "prompt": "The number of locations requiring action to adapt to flooding",
              "answer": "C",
              "explanation": "but this technology is becoming necessary in places that didn’t previously need it",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "but this technology is becoming necessary in places that didn’t previously need it"
              }
            }
          ],
          "id": "g23"
        }
      ]
    },
    {
      "id": "p3",
      "title": "A new role for livestock guard dogs",
      "passage": [
        {
          "ref": "A",
          "text": "For thousands of years, livestock guard dogs worked alongside shepherds to protect their sheep, goats and cattle from predators such as wolves and bears. But in the 19th and 20th centuries, when such predators were largely exterminated, most guard dogs lost their jobs. In recent years, however, as increased efforts have been made to protect wild animals, predators have become more widespread again. As a result, farmers once more need to protect their livestock, and guard dogs are enjoying an unexpected revival."
        },
        {
          "ref": "B",
          "text": "Today there are around 50 breeds of guard dogs on duty in various parts of the world. These dogs are raised from an early age with the animals they will be watching and eventually these animals become the dog’s family. The dogs will place themselves between the livestock and any threat, barking loudly. If necessary, they will chase away predators, but often their mere presence is sufficient. ‘Their initial training is to make them understand that livestock is going to be their life,’ says Dan Macon, a shepherd with three guard dogs. ‘A fluffy white puppy is fun to be around, but too much human affection makes it a great dog for guarding the front porch, rather than a great livestock guard dog.’"
        },
        {
          "ref": "C",
          "text": "The evidence indicates that guard dogs are highly effective. For example, in Portugal, biologist Silvia Ribeiro has found that more than 90 per cent of the farmers participating in a programme to train and use guard dogs to protect their herds against attack from wolves rate the performance of the dogs as very good or excellent. In a study carried out in Australia by Linda van Bommel and Chris Johnson at the University of Tasmania, more than 65 per cent of herders reported that predation stopped completely after they got the dogs, and almost all the rest saw a decrease in attacks. ‘If they are managed and used properly, livestock guard dogs are the most efficient control method that we have in terms of the amount of livestock that they save from predation,’ says van Bommel."
        },
        {
          "ref": "D",
          "text": "But today’s guard dogs also have a new role - to help preserve the predators. It is hoped that reductions in livestock losses can make farmers more tolerant of predators and less likely to kill them. In Namibia, more than 90 per cent of cheetahs live outside protected areas, close to humans raising livestock. As a result, the cheetahs are often held responsible for animal losses, and large numbers have been killed by farmers. When guard dogs were introduced, more than 90 per cent of farmers reported a dramatic reduction in livestock losses, and said that as a result they were less likely to kill predators. Julie Young, at Utah State University in the US, believes this result applies widely. “There is common ground from the livestock perspective and from the conservation perspective,’ she says. ‘If ranchers don’t have a dead cow, they will not make a call to apply for a permit to kill a wolf.'"
        },
        {
          "ref": "E",
          "text": "Looking at all the published evidence, Bethany Smith at Nottingham Trent University in the UK found that up to 88 per cent of farmers said they no longer killed predators after using dogs - but warned that such self-reported results must be taken with a pinch of salt. What’s more, it is possible that livestock guard dogs merely displace predators to unprotected neighbouring properties, where their fate isn’t recorded. ‘In some regions, we work with almost every farmer, but in others only one or two have dogs,’ says Ribeiro. ‘If we are not working with everybody, we are transferring the wolf pressure to the neighbour’s herd and he can use poison and kill an entire pack of wolves.’"
        },
        {
          "ref": "F",
          "text": "Another concern is whether there may be unintended ecological effects of using guard dogs. Studies suggest that reducing deaths of one type of predator may have a negative impact on other species. The extent of this problem isn’t known, but the consequences are clear in Namibia. Cheetahs aren’t the only species that cause sheep and goat losses there: other predators also attack livestock. In 2015, researchers reported that in spite of the impact farmers obtaining guard dogs had on cheetahs, the number of jackals killed by dogs and people actually increased. Guard dogs have other ecological impacts too. They have been found to spread diseases to wild animals, including endangered Ethiopian wolves. They may also compete with other carnivores for food. And by creating a ‘landscape of fear’, their mere presence can influence the behaviour of prey animals."
        },
        {
          "ref": "G",
          "text": "The evidence so far, however, indicates that these consequences aren’t always negative. Guard dogs can deliver unexpected benefits by protecting vulnerable wildlife from predators. For example, their presence has been found to protect birds which build their nests on the ground in fields, where foxes would normally raid them. Indeed, Australian researchers are now using dogs to enhance biodiversity and create refuges for species threatened by predation. So if we can get this right, there may be a bright future for guard dogs in promoting harmonious coexistence between humans and wildlife."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 27–31",
          "instructions": "Reading Passage 3 has seven paragraphs, A–G. Which paragraph contains the following information? You may use any letter more than once.",
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
              "number": 27,
              "prompt": "An example of how one predator has been protected",
              "answer": "D",
              "explanation": "When guard dogs were introduced, more than 90 per cent of farmers reported a dramatic reduction in livestock losses, and said that as a result they were less likely to kill predators",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "When guard dogs were introduced, more than 90 per cent of farmers reported a dramatic reduction in livestock losses, and"
              }
            },
            {
              "number": 28,
              "prompt": "An optimistic suggestion about the possible positive",
              "answer": "G",
              "explanation": "So if we can get this right, there may be a bright future for guard dogs in promoting harmonious coexistence between humans and wildlife",
              "evidence": {
                "sectionId": "p3",
                "ref": "G",
                "quote": "So if we can get this right, there may be a bright future for guard dogs in promoting harmonious coexistence between hum"
              }
            },
            {
              "number": 29,
              "prompt": "A description of how the methods used by livestock",
              "answer": "B",
              "explanation": "The dogs will place themselves between the livestock and any threat, barking loudly. If necessary, they will chase away predators, but often their mere presence is sufficient",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "The dogs will place themselves between the livestock and any threat, barking loudly. If necessary, they will chase away "
              }
            },
            {
              "number": 30,
              "prompt": "Claims by different academics that the use of",
              "answer": "C",
              "explanation": "The evidence indicates that guard dogs are highly effective. For example, in Portugal, biologist Silvia Ribeiro has found that more than 90 per cent of the farmers participating in a programme to train and use guard dogs to protect their herds against attack from wolves rate the performance of the dogs as very good or excellent",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "The evidence indicates that guard dogs are highly effective. For example, in Portugal, biologist Silvia Ribeiro has foun"
              }
            },
            {
              "number": 31,
              "prompt": "A reference to how livestock guard dogs gain their",
              "answer": "B",
              "explanation": "These dogs are raised from an early age with the animals they will be watching and eventually these animals become the dog’s family",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "These dogs are raised from an early age with the animals they will be watching and eventually these animals become the d"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "matching",
          "label": "Questions 32–36",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, Dan Macon B.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Dan Macon"
            },
            {
              "key": "B",
              "text": "Silvia Ribeiro"
            },
            {
              "key": "C",
              "text": "Linda van Bommel"
            },
            {
              "key": "D",
              "text": "Julie Young"
            },
            {
              "key": "E",
              "text": "Bethany Smith"
            }
          ],
          "questions": [
            {
              "number": 32,
              "prompt": "The use of guard dogs may save the lives of both livestock and",
              "answer": "D",
              "explanation": "‘If ranchers don’t have a dead cow, they will not make a call to apply for a permit to kill a wolf.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "‘If ranchers don’t have a dead cow, they will not make a call to apply for a permit to kill a wolf.’"
              }
            },
            {
              "number": 33,
              "prompt": "Claims of a change in behaviour from those using livestock",
              "answer": "E",
              "explanation": "Looking at all the published evidence, Bethany Smith at Nottingham Trent University in the UK found that up to 88 per cent of farmers said they no longer killed predators after using dogs - but warned that such self- reported results must be taken with a pinch of salt",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "Looking at all the published evidence, Bethany Smith at Nottingham Trent University in the UK found that up to 88 per ce"
              }
            },
            {
              "number": 34,
              "prompt": "There may be negative results if the use of livestock guard dogs",
              "answer": "B",
              "explanation": "‘If we are not working with everybody, we are transferring the wolf pressure to the neighbour’s herd and he can use poison and kill an entire pack of wolves.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "‘If we are not working with everybody, we are transferring the wolf pressure to the neighbour’s herd and he can use pois"
              }
            },
            {
              "number": 35,
              "prompt": "Livestock guard dogs are the best way of protecting farm",
              "answer": "C",
              "explanation": "‘If they are managed and used properly, livestock guard dogs are the most efficient control method that we have in terms of the amount of livestock that they save from predation,’ says van Bommel",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "‘If they are managed and used properly, livestock guard dogs are the most efficient control method that we have in terms"
              }
            },
            {
              "number": 36,
              "prompt": "Teaching a livestock guard dog how to do its work needs a",
              "answer": "A",
              "explanation": "‘Their initial training is to make them understand that livestock is going to be their life,’ says Dan Macon, a shepherd with three guard dogs",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "‘Their initial training is to make them understand that livestock is going to be their life,’ says Dan Macon, a shepherd"
              }
            }
          ],
          "id": "g32"
        },
        {
          "type": "completion",
          "label": "Questions 37–40",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "This has led to a rise in the deaths of other predators, particularly",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": ". In addition, it has been suggested that the dogs could have",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "which may affect other species, and that they may reduce the amount of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "available to certain wild animals. On the other hand, these dogs may help birds by protecting their nests. These might otherwise be threatened by predators such as",
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
              "number": 37,
              "prompt": "of other predators, particularly _______",
              "answer": [
                "Jackals"
              ],
              "wordLimit": 1,
              "explanation": "In 2015, researchers reported that in spite of the impact farmers obtaining guard dogs had on cheetahs, the number of jackals killed by dogs and people actually increased",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "In 2015, researchers reported that in spite of the impact farmers obtaining guard dogs had on cheetahs, the number of ja"
              }
            },
            {
              "number": 38,
              "prompt": "suggested that the dogs could have _______",
              "answer": [
                "Diseases"
              ],
              "wordLimit": 1,
              "explanation": "They have been found to spread diseases to wild animals, including endangered Ethiopian wolves",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "They have been found to spread diseases to wild animals, including endangered Ethiopian wolves"
              }
            },
            {
              "number": 39,
              "prompt": "that they may reduce the amount of _______",
              "answer": [
                "Food"
              ],
              "wordLimit": 1,
              "explanation": "They may also compete with other carnivores for food",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "They may also compete with other carnivores for food"
              }
            },
            {
              "number": 40,
              "prompt": "be threatened by predators such as _______",
              "answer": [
                "Foxes"
              ],
              "wordLimit": 1,
              "explanation": "For example, their presence has been found to protect birds which build their nests on the ground in fields, where foxes would normally raid them.",
              "evidence": {
                "sectionId": "p3",
                "ref": "G",
                "quote": "For example, their presence has been found to protect birds which build their nests on the ground in fields, where foxes"
              }
            }
          ],
          "formTitle": "Unintended Ecological Effects of Using Guard Dogs",
          "id": "g37"
        }
      ]
    }
  ]
}
$c20t4r$,
  true
);
