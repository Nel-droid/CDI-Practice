DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 18',
  'Test 3',
  'academic',
  3600,
  $c18t3r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Materials to take us beyond concrete",
      "passage": [
        {
          "ref": "A",
          "text": "Concrete is the second most used substance in the global economy, after water - and one of the world’s biggest single sources of greenhouse gas emissions. The chemical process by which cement, the key ingredient of concrete, is created results in large quantities of carbon dioxide. The UN estimates that there will be 9.8 billion people living on the planet by mid-century. They will need somewhere to live. If concrete is the only answer to the construction of new cities, then carbon emissions will soar, aggravating global warming. And so scientists have started innovating with other materials, in a scramble for alternatives to a universal commodity that has underpinned our modem life for many years."
        },
        {
          "ref": "B",
          "text": "The problem with replacing concrete is that it is so very good at what it does. Chris Cheeseman, an engineering professor at Imperial College London, says the key thing to consider is the extent to which concrete is used around the world, and is likely to continue to be used. ‘Concrete is not a high-carbon product. Cement is high carbon, but concrete is not. But it is the scale on which it is used that makes it high carbon. The sheer scale of manufacture is so huge, that is the issue.’"
        },
        {
          "ref": "C",
          "text": "Not only are the ingredients of concrete relatively cheap and found in abundance in most places around the globe, the stuff itself has marvellous properties: Portland cement, the vital component of concrete, is mouldable and pourable, but quickly sets hard. Cheeseman also notes another advantage: concrete and steel have similar thermal expansion properties, so steel can be used to reinforce concrete, making it far stronger and more flexible as a building material than it could be on its own. According to Cheeseman, all these factors together make concrete hard to beat. ‘Concrete is amazing stuff. Making anything with similar properties is going to be very difficult.’"
        },
        {
          "ref": "D",
          "text": "A possible alternative to concrete is wood. Making buildings from wood may seem like a rather medieval idea, but climate change is driving architects to turn to treated timber as a possible resource. Recent years have seen the emergence of tall buildings constructed almost entirely from timber. Vancouver, Vienna and Brumunddal in Norway are all home to constructed tall, wooden buildings."
        },
        {
          "ref": "E",
          "text": "Using wood to construct buildings, however, is not straightforward. Wood expands as it absorbs moisture from the air and is susceptible to pests, not to mention fire. But treating wood and combining it with other materials can improve its properties. Cross-laminated timber is engineered wood. An adhesive is used to stick layers of solid-sawn timber together, crosswise, to form building blocks. This material is light but has the strength of concrete and steel. Construction experts say that wooden buildings can be constructed at a greater speed than ones of concrete and steel and the process, it seems, is quieter."
        },
        {
          "ref": "F",
          "text": "Stora Enso is Europe’s biggest supplier of cross-laminated timber, and its vice-president Markus Mannstrom reports that the company is seeing increasing demand globally for building in wood, with climate change concerns the key driver. Finland, with its large forests, where Stora Enso is based, has been leading the way, but the company is seeing a rise in demand for its timber products across the world, including in Asia. Of course, using timber in a building also locks away the carbon that it absorbed as it grew. But even treated wood has its limitations and only when a wider range of construction projects has been proven in practice will it be possible to see wood as a real alternative to concrete in constructing tall buildings."
        },
        {
          "ref": "G",
          "text": "Fly ash and slag from iron ore are possible alternatives to cement in a concrete mix. Fly ash, a byproduct of coal-burning power plants, can be incorporated into concrete mixes to make up as much as 15 to 30% of the cement, without harming the strength or durability of the resulting mix. Iron-ore slag, a byproduct of the iron-ore smelting process, can be used in a similar way. Their incorporation into concrete mixes has the potential to reduce greenhouse gas emissions. But Anna Surgenor, of the UK’s Green Building Council, notes that although these waste products can save carbon in the concrete mix, their use is not always straightforward. ‘It’s possible to replace the cement content in concrete with waste products to lower the overall carbon impact. But there are several calculations that need to be considered across the entire life cycle of the building- these include factoring in where these materials are being shipped from. If they are transported over long distances, using fossil fuels, the use of alternative materials might not make sense from an overall carbon reduction perspective.’"
        },
        {
          "ref": "H",
          "text": "While these technologies are all promising ideas, they are either unproven or based on materials that are not abundant. In their overview of innovation in the concrete industry, Felix Preston and Johanna Lehne of the UK’s Royal Institute of International Affairs reached the conclusion that, ‘Some novel cements have been discussed for more than a decade within the research community, without breaking through. At present, these alternatives are rarely as cost-effective as conventional cement, and they face raw-material shortages and resistance from customers.’"
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 1–4",
          "instructions": "Reading Passage 1 has eight sections, A–H. Which section contains the following information?",
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
              "number": 1,
              "prompt": "an explanation of the industrial processes that",
              "answer": "G",
              "explanation": "Iron-ore slag, a byproduct of the iron-ore smelting process, can be used in a similar way",
              "evidence": {
                "sectionId": "p1",
                "ref": "G",
                "quote": "Iron-ore slag, a byproduct of the iron-ore smelting process, can be used in a similar way"
              }
            },
            {
              "number": 2,
              "prompt": "a reference to the various locations where high-",
              "answer": "D",
              "explanation": "Vancouver, Vienna and Brumunddal in Norway are all home to constructed tall, wooden buildings.",
              "evidence": {
                "sectionId": "p1",
                "ref": "D",
                "quote": "Vancouver, Vienna and Brumunddal in Norway are all home to constructed tall, wooden buildings."
              }
            },
            {
              "number": 3,
              "prompt": "an indication of how widely available the raw",
              "answer": "C",
              "explanation": "Not only are the ingredients of concrete relatively cheap and found in abundance in most places around the globe",
              "evidence": {
                "sectionId": "p1",
                "ref": "C",
                "quote": "Not only are the ingredients of concrete relatively cheap and found in abundance in most places around the globe"
              }
            },
            {
              "number": 4,
              "prompt": "the belief that more high-rise wooden buildings",
              "answer": "F",
              "explanation": "But even treated wood has its limitations and only when a wider range of construction projects has been proven in practice will it be possible to see wood as a real alternative to concrete in constructing tall buildings.",
              "evidence": {
                "sectionId": "p1",
                "ref": "F",
                "quote": "But even treated wood has its limitations and only when a wider range of construction projects has been proven in practi"
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 5–8",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "to use wood in modern construction projects. Using wood, however, has its challenges. For example, as",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "in the atmosphere enters wood, it increases in size. In addition, wood is prone to pests and the risk of fire is greater. However, wood can be turned into a better construction material if it is treated and combined with other materials. In one process,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "of solid wood are glued together to create building blocks. These blocks are lighter than concrete and steel but equal them in strength. Experts say that wooden buildings are an improvement on those made of concrete and steel in terms of the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "with which they can be constructed and how much noise is generated by the process.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 5,
              "prompt": "concerns are encouraging _______",
              "answer": [
                "architects"
              ],
              "wordLimit": 1,
              "explanation": "but climate change is driving architects to turn to treated timber as a possible resource.",
              "evidence": {
                "sectionId": "p1",
                "ref": "D",
                "quote": "but climate change is driving architects to turn to treated timber as a possible resource."
              }
            },
            {
              "number": 6,
              "prompt": "For example, as _______",
              "answer": [
                "moisture"
              ],
              "wordLimit": 1,
              "explanation": "Wood expands as it absorbs moisture from the air and is susceptible to pests, not to mention fire.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "Wood expands as it absorbs moisture from the air and is susceptible to pests, not to mention fire."
              }
            },
            {
              "number": 7,
              "prompt": "In one process, _______",
              "answer": [
                "layers"
              ],
              "wordLimit": 1,
              "explanation": "n adhesive is used to stick layers of solid-sawn timber together, crosswise, to form building blocks.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "n adhesive is used to stick layers of solid-sawn timber together, crosswise, to form building blocks."
              }
            },
            {
              "number": 8,
              "prompt": "concrete and steel in terms of the _______",
              "answer": [
                "speed"
              ],
              "wordLimit": 1,
              "explanation": "Construction experts say that wooden buildings can be constructed at a greater speed than ones of concrete and steel and the process, it seems, is quieter.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "Construction experts say that wooden buildings can be constructed at a greater speed than ones of concrete and steel and"
              }
            }
          ],
          "formTitle": "Making buildings with wood",
          "id": "g5"
        },
        {
          "type": "matching",
          "label": "Questions 9–13",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, A, B, C or D. You may use any letter more than once.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Chris Cheeseman"
            },
            {
              "key": "B",
              "text": "Markus Mannstrom"
            },
            {
              "key": "C",
              "text": "Anna Surgenor"
            },
            {
              "key": "D",
              "text": "Felix Preston and Johanna Lehne"
            }
          ],
          "questions": [
            {
              "number": 9,
              "prompt": "The environmental advantage of cement alternatives may not be as",
              "answer": "C",
              "explanation": "If they are transported over long distances, using fossil fuels, the use of alternative materials might not make sense from an overall carbon reduction perspective.",
              "evidence": {
                "sectionId": "p1",
                "ref": "G",
                "quote": "If they are transported over long distances, using fossil fuels, the use of alternative materials might not make sense f"
              }
            },
            {
              "number": 10,
              "prompt": "It would be hard to create a construction alternative to concrete that",
              "answer": "A",
              "explanation": "The problem with replacing concrete is that it is so very good at what it does. Chris Cheeseman",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "The problem with replacing concrete is that it is so very good at what it does. Chris Cheeseman"
              }
            },
            {
              "number": 11,
              "prompt": "Worries about the environment have led to increased interest in",
              "answer": "B",
              "explanation": "with climate change concerns the key driver.",
              "evidence": {
                "sectionId": "p1",
                "ref": "F",
                "quote": "with climate change concerns the key driver."
              }
            },
            {
              "number": 12,
              "prompt": "Expense has been a factor in the negative response to the",
              "answer": "D",
              "explanation": "At present, these alternatives are rarely as cost-effective as conventional cement, and they face raw-material shortages and resistance from customers.",
              "evidence": {
                "sectionId": "p1",
                "ref": "H",
                "quote": "At present, these alternatives are rarely as cost-effective as conventional cement, and they face raw-material shortages"
              }
            },
            {
              "number": 13,
              "prompt": "The environmental damage caused by concrete is due to it being",
              "answer": "A",
              "explanation": "But it is the scale on which it is used that makes it high carbon. The sheer scale of manufacture is so huge, that is the issue",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "But it is the scale on which it is used that makes it high carbon. The sheer scale of manufacture is so huge, that is th"
              }
            }
          ],
          "id": "g9"
        }
      ]
    },
    {
      "id": "p2",
      "title": "The steam car The successes and failures of the Doble brothers and their steam cars",
      "passage": [
        {
          "ref": "A",
          "text": "When primitive automobiles first began to appear in the 1800s, their engines were based on steam power. Steam had already enjoyed a long and successful career in the railways, so it was only natural that the technology evolved into a miniaturized version which was separate from the trains. But these early cars inherited steam’s weaknesses along with its strengths. The boilers had to be lit by hand, and they required about twenty minutes to build up pressure before they could be driven. Furthermore, their water reservoirs only lasted for about thirty miles before needing replenishment. Despite such shortcomings, these newly designed self-propelled carriages offered quick transportation, and by the early 1900s it was not uncommon to see such machines shuttling wealthy citizens around town."
        },
        {
          "ref": "B",
          "text": "But the glory days of steam cars were few. A new technology called the Internal Combustion Engine soon appeared, which offered the ability to drive down the road just moments after starting up. At first, these noisy gasoline cars were unpopular because they were more complicated to operate and they had difficult hand-crank starters, which were known to break arms when the engines backfired. But in 1912 General Motors introduced the electric starter, and over the following few years steam power was gradually phased out."
        },
        {
          "ref": "C",
          "text": "Even as the market was declining, four brothers made one last effort to rekindle the technology. Between 1906 and 1909, while still attending high school, Abner Doble and his three brothers built their first steam car in their parents’ basement. It comprised parts taken from a wrecked early steam car but reconfigured to drive an engine of their own design. Though it did not run well, the Doble brothers went on to build a second and third prototype in the following years. Though the Doble boys’ third prototype, nicknamed the Model B, still lacked the convenience of an internal combustion engine, it drew the attention of automobile trade magazines due to its numerous improvements over previous steam cars. The Model B proved to be superior to gasoline automobiles in many ways. Its high-pressure steam drove the engine pistons in virtual silence, in contrast to clattering gas engines which emitted the aroma of burned hydrocarbons. Perhaps most impressively, the Model B was amazingly swift. It could accelerate from zero to sixty miles per hour in just fifteen seconds, a feat described as ‘remarkable acceleration’ by Automobile magazine in 1914."
        },
        {
          "ref": "D",
          "text": "The following year Abner Doble drove the Model B from Massachusetts to Detroit in order to seek investment in his automobile design, which he used to open the General Engineering Company. He and his brothers immediately began working on the Model C, which was intended to expand upon the innovations of the Model B. The brothers added features such as a key-based ignition in the cabin, eliminating the need for the operator to manually ignite the boiler. With these enhancements, the Dobles’ new car company promised a steam vehicle which would provide all of the convenience of a gasoline car, but with much greater speed, much simpler driving controls, and a virtually silent powerplant. By the following April, the General Engineering Company had received 5,390 deposits for Doble Detroits, which were scheduled for delivery in early 1918."
        },
        {
          "ref": "E",
          "text": "Later that year Abner Doble delivered unhappy news to those eagerly awaiting the delivery of their modem new cars. Those buyers who received the handful of completed cars complained that the vehicles were sluggish and erratic, sometimes going in reverse when they should go forward. The new engine design, though innovative, was still plagued with serious glitches."
        },
        {
          "ref": "F",
          "text": "The brothers made one final attempt to produce a viable steam automobile. In early 1924, the Doble brothers shipped a Model E to New York City to be road-tested by the Automobile Club of America. After sitting overnight in freezing temperatures, the car was pushed out into the road and left to sit for over an hour in the frosty morning air. At the turn of the key, the boiler lit and reached its operating pressure inside of forty seconds. As they drove the test vehicle further, they found that its evenly distributed weight lent it surprisingly good handling, even though it was so heavy. As the new Doble steamer was further developed and tested, its maximum speed was pushed to over a hundred miles per hour, and it achieved about fifteen miles per gallon of kerosene with negligible emissions."
        },
        {
          "ref": "G",
          "text": "Sadly, the Dobles’ brilliant steam car never was a financial success. Priced at around $18,000 in 1924, it was popular only among the very wealthy. Plus, it is said that no two Model Es were quite the same, because Abner Doble tinkered endlessly with the design. By the time the company folded in 1931, fewer than fifty of the amazing Model E steam cars had been produced. For his whole career, until his death in 1961, Abner Doble remained adamant that steam-powered automobiles were at least equal to gasoline cars, if not superior. Given the evidence, he may have been right. Many of the Model E Dobles which have survived are still in good working condition, some having been driven over half a million miles with only normal maintenance. Astonishingly, an unmodified Doble Model E runs clean enough to pass the emissions laws in California today, and they are pretty strict. It is true that the technology poses some difficult problems, but you cannot help but wonder how efficient a steam car might be with the benefit of modem materials and computers. Under the current pressure to improve automotive performance and reduce emissions, it is not unthinkable that the steam car may rise again."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–20",
          "instructions": "Reading Passage 2 has seven paragraphs, A–G. Choose the correct heading for each paragraph from the list of headings below.",
          "optionsLabel": "List of Headings",
          "options": [
            {
              "key": "i",
              "text": "A period in cold conditions before the technology is assessed"
            },
            {
              "key": "ii",
              "text": "Marketing issues lead to failure"
            },
            {
              "key": "iii",
              "text": "Good and bad aspects of steam technology are passed on"
            },
            {
              "key": "iv",
              "text": "A possible solution to the issues of today"
            },
            {
              "key": "v",
              "text": "Further improvements lead to commercial orders"
            },
            {
              "key": "vi",
              "text": "Positive publicity at last for this quiet, clean, fast vehicle"
            },
            {
              "key": "vii",
              "text": "A disappointing outcome for customers"
            },
            {
              "key": "viii",
              "text": "A better option than the steam car arises"
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "Paragraph A",
              "answer": "iii",
              "explanation": "these early cars inherited steam’s weaknesses along with its strengths.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "these early cars inherited steam’s weaknesses along with its strengths."
              }
            },
            {
              "number": 15,
              "prompt": "Paragraph B",
              "answer": "viii",
              "explanation": "A new technology called the Internal Combustion Engine soon appeared,",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "A new technology called the Internal Combustion Engine soon appeared,"
              }
            },
            {
              "number": 16,
              "prompt": "Paragraph C",
              "answer": "vi",
              "explanation": "it drew the attention of automobile trade magazines due to its numerous improvements over previous steam cars. The Model B proved to be superior to gasoline automobiles in many ways.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "it drew the attention of automobile trade magazines due to its numerous improvements over previous steam cars. The Model"
              }
            },
            {
              "number": 17,
              "prompt": "Paragraph D",
              "answer": "v",
              "explanation": "By the following April, the General Engineering Company had received 5,390 deposits for Doble Detroits, which were scheduled for delivery in early 1918.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "By the following April, the General Engineering Company had received 5,390 deposits for Doble Detroits, which were sched"
              }
            },
            {
              "number": 18,
              "prompt": "Paragraph E",
              "answer": "vii",
              "explanation": "Those buyers who received the handful of completed cars complained that the vehicles were sluggish and erratic,",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Those buyers who received the handful of completed cars complained that the vehicles were sluggish and erratic,"
              }
            },
            {
              "number": 19,
              "prompt": "Paragraph F",
              "answer": "i",
              "explanation": "After sitting overnight in freezing temperatures, the car was pushed out into the road and left to sit for over an hour in the frosty morning air.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "After sitting overnight in freezing temperatures, the car was pushed out into the road and left to sit for over an hour "
              }
            },
            {
              "number": 20,
              "prompt": "Paragraph G",
              "answer": "iv",
              "explanation": "Under the current pressure to improve automotive performance and reduce emissions, it is not unthinkable that the steam car may rise again.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Under the current pressure to improve automotive performance and reduce emissions, it is not unthinkable that the steam "
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 21–23",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 21,
              "prompt": "What point does the writer make about the steam car in Paragraph B?",
              "options": [
                {
                  "key": "A",
                  "text": "Its success was short-lived."
                },
                {
                  "key": "B",
                  "text": "Not enough cars were made."
                },
                {
                  "key": "C",
                  "text": "Car companies found them hard to sell."
                },
                {
                  "key": "D",
                  "text": "People found them hard to drive."
                }
              ],
              "answer": "A",
              "explanation": "the glory days of steam cars were few.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "the glory days of steam cars were few."
              }
            },
            {
              "number": 22,
              "prompt": "When building their first steam car, the Doble brothers",
              "options": [
                {
                  "key": "A",
                  "text": "constructed all the parts themselves."
                },
                {
                  "key": "B",
                  "text": "made written notes at each stage of the construction."
                },
                {
                  "key": "C",
                  "text": "needed several attempts to achieve a competitive model."
                },
                {
                  "key": "D",
                  "text": "sought the advice of experienced people in the car industry."
                }
              ],
              "answer": "C",
              "explanation": "Though it did not run well, the Doble brothers went on to build a second and third prototype in the following years.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Though it did not run well, the Doble brothers went on to build a second and third prototype in the following years."
              }
            },
            {
              "number": 23,
              "prompt": "In order to produce the Model C, the Doble brothers",
              "options": [
                {
                  "key": "A",
                  "text": "moved production to a different city."
                },
                {
                  "key": "B",
                  "text": "raised financial capital."
                },
                {
                  "key": "C",
                  "text": "employed an additional worker."
                },
                {
                  "key": "D",
                  "text": "abandoned their earlier designs."
                }
              ],
              "answer": "B",
              "explanation": "in order to seek investment in his automobile design,",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "in order to seek investment in his automobile design,"
              }
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 24–26",
          "instructions": "Complete the summary below. Choose ONE WORD AND/OR A NUMBER from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "its",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": ", while keeping its emissions extremely low. The steam car was too expensive for many people and its design was constantly being altered. Under",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": "cars were produced before the company went out of business. However, even today, there are Model Es on the road in the US. They are straightforward to maintain, and they satisfy California’s",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": "emissions laws.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 24,
              "prompt": "version of the Model E raised its _______",
              "answer": [
                "speed"
              ],
              "wordLimit": 1,
              "explanation": "its maximum speed",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "its maximum speed"
              }
            },
            {
              "number": 25,
              "prompt": "_______ [25]",
              "answer": [
                "fifty"
              ],
              "wordLimit": 1,
              "explanation": "/ 50 fewer than fifty of the amazing Model E steam cars had been produced."
            },
            {
              "number": 26,
              "prompt": "and they satisfy California’s _______ emissions laws",
              "answer": [
                "strict"
              ],
              "wordLimit": 1,
              "explanation": "Astonishingly, an unmodified Doble Model E runs clean enough to pass the emissions laws in California today, and they are pretty strict.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Astonishingly, an unmodified Doble Model E runs clean enough to pass the emissions laws in California today, and they ar"
              }
            }
          ],
          "formTitle": "The Model E",
          "id": "g24"
        }
      ]
    },
    {
      "id": "p3",
      "title": "The case for mixed-ability classes",
      "passage": [
        {
          "ref": "1",
          "text": "Picture this scene. It’s an English literature lesson in a UK school, and the teacher has just read an extract from Shakespeare’s Romeo and Juliet with a class of 15-year-olds. He’s given some of the students copies of No Fear Shakespeare, a kid-friendly translation of the original. For three students, even these literacy demands are beyond them. Another girl simply can’t focus and he gives her pens and paper to draw with. The teacher can ask the No Fear group to identify the key characters and maybe provide a tentative plot summary. He can ask most of the class about character development, and five of them might be able to support their statements with textual evidence. Now two curious students are wondering whether Shakespeare advocates living a life of moderation or one of passionate engagement."
        },
        {
          "ref": "2",
          "text": "As a teacher myself, I’d think my lesson would be going rather well if the discussion went as described above. But wouldn’t this kind of class work better if there weren’t such a huge gap between the top and the bottom? If we put all the kids who needed literacy support into one class, and all the students who want to discuss the virtue of moderation into another? The practice of ‘streaming’, or ‘tracking’, involves separating students into classes depending on their diagnosed levels of attainment. At a macro level, it requires the establishment of academically selective schools for the brightest students, and comprehensive schools for the rest. Within schools, it means selecting students into a ‘stream’ of general ability, or ‘sets’ of subject-specific ability. The practice is intuitively appealing to almost every stakeholder."
        },
        {
          "ref": "3",
          "text": "I have heard the mixed-ability model attacked by way of analogy: a group hike. The fittest in the group take the lead and set a brisk pace, only to have to stop and wait every 20 minutes. This is frustrating, and their enthusiasm wanes. Meanwhile, the slowest ones are not only embarrassed but physically struggling to keep up. What’s worse, they never get a long enough break. They honestly just want to quit. Hiking, they feel, is not for them."
        },
        {
          "ref": "4",
          "text": "Mixed-ability classes bore students, frustrate parents and bum out teachers. The brightest ones will never summit Mount Qomolangma, and the stragglers won’t enjoy the lovely stroll in the park they are perhaps more suited to. Individuals suffer at the demands of the collective, mediocrity prevails. So: is learning like hiking?"
        },
        {
          "ref": "5",
          "text": "The current pedagogical paradigm is arguably that of constructivism, which emerged out of the work of psychologist Lev Vygotsky. In the 1930s, Vygotsky emphasised the importance of targeting a student’s specific ‘zone of proximal development’ (ZPD). This is the gap between what they can achieve only with support - teachers, textbooks, worked examples, parents and so on - and what they can achieve independently. The purpose of teaching is to provide and then gradually remove this ‘scaffolding’ until they are autonomous. If we accept this model, it follows that streaming students with similar ZPDs would be an efficient and effective solution. And that forcing everyone on the same hike - regardless of aptitude - would be madness."
        },
        {
          "ref": "6",
          "text": "Despite all this, there is limited empirical evidence to suggest that streaming results in better outcomes for students. Professor John Hattie, director of the Melbourne Education Research Institute, notes that ‘tracking has minimal effects on learning outcomes’. What is more, streaming appears to significantly - and negatively - affect those students assigned to the lowest sets. These students tend to have much higher representation of low socioeconomic class. Less significant is the small benefit for those lucky clever students in the higher sets. The overall result is that the smart stay smart and the dumb get dumber, further entrenching the social divide. In the latest update of Hattie’s influential meta-analysis of factors influencing student achievement, one of the most significant factors is the teachers’ estimate of achievement. Streaming students by diagnosed achievement automatically limits what the teacher feels the student is capable of. Meanwhile, in a mixed environment, teachers’ estimates need to be more diverse and flexible. While streaming might seem to help teachers effectively target a student’s ZPD, it can underestimate the importance of peer-to-peer learning. A crucial aspect of constructivist theory is the role of the MKO - ‘more knowledgeable other’ - in knowledge construction. While teachers are traditionally the MKOs in classrooms, the value of knowledgeable student peers must not go unrecognised either."
        },
        {
          "ref": "7",
          "text": "I find it amazing to watch students get over an idea to their peers in ways that I would never think of. They operate with different language tools and different social tools from teachers and, having just learnt it themselves, they possess similar cognitive structures to their struggling classmates. There is also something exciting about passing on skills and knowledge that you yourself have just mastered - a certain pride and zeal, a certain freshness to the interaction between ‘teacher’ and ‘learner’ that is often lost by the expert for whom the steps are obvious and the joy of discovery forgotten."
        },
        {
          "ref": "8",
          "text": "Having a variety of different abilities in a collaborative learning environment provides valuable resources for helping students meet their learning needs, not to mention improving their communication and social skills. And today, more than ever, we need the many to flourish - not suffer at the expense of a few bright stars. Once a year, I go on a hike with my class, a mixed bunch of students. It is challenging. The fittest students realise they need to encourage the reluctant. There are lookouts who report back, and extra items to carry for others. We make it - together."
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
              "prompt": "The writer describes the Romeo and Juliet lesson in order to demonstrate",
              "options": [
                {
                  "key": "A",
                  "text": "how few students are interested in literature."
                },
                {
                  "key": "B",
                  "text": "how a teacher handles a range of learning needs."
                },
                {
                  "key": "C",
                  "text": "how unsuitable Shakespeare is for most teenagers."
                },
                {
                  "key": "D",
                  "text": "how weaker students can disrupt their classmates’ learning."
                }
              ],
              "answer": "B",
              "explanation": "He’s given some of the students copies of No Fear Shakespeare, a kid- friendly translation of the original. For three students, even these literacy demands are beyond them. Another girl simply can’t focus and he gives her pens and paper to draw with. The teacher can ask the No Fear group to identify the key characters and maybe provide a tentative plot summary. He can ask most of the class about character development, and five of them might be able to support their statements with textual evidence.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "He’s given some of the students copies of No Fear Shakespeare, a kid- friendly translation of the original. For three st"
              }
            },
            {
              "number": 28,
              "prompt": "What does the writer say about streaming in the third paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "It has a very broad appeal."
                },
                {
                  "key": "B",
                  "text": "It favours cleverer students."
                },
                {
                  "key": "C",
                  "text": "It is relatively simple to implement."
                },
                {
                  "key": "D",
                  "text": "It works better in some schools than others."
                }
              ],
              "answer": "A",
              "explanation": "The practice is intuitively appealing to almost every stakeholder.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "The practice is intuitively appealing to almost every stakeholder."
              }
            },
            {
              "number": 29,
              "prompt": "What idea is suggested by the reference to Mount Qomolangma in the fifth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "students following unsuitable paths"
                },
                {
                  "key": "B",
                  "text": "students attempting interesting tasks"
                },
                {
                  "key": "C",
                  "text": "students not achieving their full potential"
                },
                {
                  "key": "D",
                  "text": "students not being aware of their limitations"
                }
              ],
              "answer": "C",
              "explanation": "The brightest ones will never summit Mount Qomolangma,",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "The brightest ones will never summit Mount Qomolangma,"
              }
            },
            {
              "number": 30,
              "prompt": "What does the word ‘scaffolding’ in the sixth paragraph refer to?",
              "options": [
                {
                  "key": "A",
                  "text": "the factors which prevent a student from learning effectively"
                },
                {
                  "key": "B",
                  "text": "the environment where most of a student’s learning takes place"
                },
                {
                  "key": "C",
                  "text": "the assistance given to a student in their initial stages of learning"
                },
                {
                  "key": "D",
                  "text": "the setting of appropriate learning targets for a student’s aptitude"
                }
              ],
              "answer": "C",
              "explanation": "The purpose of teaching is to provide and then gradually remove this ‘scaffolding’ until they are autonomous.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "The purpose of teaching is to provide and then gradually remove this ‘scaffolding’ until they are autonomous."
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 31–35",
          "instructions": "Complete the summary using the list of words, A–I, below.",
          "summaryTitle": "",
          "summaryText": "Is streaming effective?\nAccording to Professor John Hattie of the Melbourne Education Research Institute there is very\nlittle indication that streaming leads to {31} . He points out that, in schools\nwhich use streaming, the most significant impact is on those students placed in the\n{32} , especially where a large proportion of them have\n{33} . Meanwhile, for the {34} , there appears to be\nonly minimal advantage. A further issue is that teachers tend to have {35} of students in streamed groups.\nA. wrong classesB. lower expectationsC. average learners\nD. bottom sets E. brightest pupilsF. disadvantaged backgrounds\nG. weaker studentsH. higher achievements I. positive impressions",
          "wordBank": [
            {
              "key": "A",
              "text": "wrong classes"
            },
            {
              "key": "B",
              "text": "lower expectations"
            },
            {
              "key": "C",
              "text": "average learners"
            },
            {
              "key": "D",
              "text": "bottom sets"
            },
            {
              "key": "E",
              "text": "brightest pupils"
            },
            {
              "key": "F",
              "text": "disadvantaged backgrounds"
            },
            {
              "key": "G",
              "text": "weaker students"
            },
            {
              "key": "H",
              "text": "higher achievements"
            },
            {
              "key": "I",
              "text": "positive impressions"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "",
              "answer": "H",
              "explanation": "‘tracking has minimal effects on learning outcomes’.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "‘tracking has minimal effects on learning outcomes’."
              }
            },
            {
              "number": 32,
              "prompt": "",
              "answer": "D",
              "explanation": "What is more, streaming appears to significantly - and negatively - affect those students assigned to the lowest sets.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "What is more, streaming appears to significantly - and negatively - affect those students assigned to the lowest sets."
              }
            },
            {
              "number": 33,
              "prompt": "",
              "answer": "F",
              "explanation": "These students tend to have much higher representation of low socioeconomic class.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "These students tend to have much higher representation of low socioeconomic class."
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": "E",
              "explanation": "Less significant is the small benefit for those lucky clever students in the higher sets.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Less significant is the small benefit for those lucky clever students in the higher sets."
              }
            },
            {
              "number": 35,
              "prompt": "",
              "answer": "B",
              "explanation": "Streaming students by diagnosed achievement automatically limits what the teacher feels the student is capable of",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Streaming students by diagnosed achievement automatically limits what the teacher feels the student is capable of"
              }
            }
          ],
          "id": "g31"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 36–40",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 36,
              "prompt": "The Vygotsky model of education supports the concept of a mixed-ability class. === PAGE 9 ===",
              "answer": "NO",
              "explanation": "If we accept this model, it follows that streaming students with similar ZPDs would be an efficient and effective solution.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "If we accept this model, it follows that streaming students with similar ZPDs would be an efficient and effective soluti"
              }
            },
            {
              "number": 37,
              "prompt": "Some teachers are uncertain about allowing students to take on MKO roles in the classroom.",
              "answer": "NOT GIVEN",
              "explanation": "While teachers are traditionally the MKOs in classrooms, the value of knowledgeable student peers must not go unrecognised either.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "While teachers are traditionally the MKOs in classrooms, the value of knowledgeable student peers must not go unrecognis"
              }
            },
            {
              "number": 38,
              "prompt": "It can be rewarding to teach knowledge which you have only recently acquired.",
              "answer": "YES",
              "explanation": "There is also something exciting about passing on skills and knowledge that you yourself have just mastered",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "There is also something exciting about passing on skills and knowledge that you yourself have just mastered"
              }
            },
            {
              "number": 39,
              "prompt": "The priority should be to ensure that the highest-achieving students attain their goals.",
              "answer": "NO",
              "explanation": "And today, more than ever, we need the many to flourish - not suffer at the expense of a few bright stars.",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "And today, more than ever, we need the many to flourish - not suffer at the expense of a few bright stars."
              }
            },
            {
              "number": 40,
              "prompt": "Taking part in collaborative outdoor activities with teachers and classmates can improve student outcomes in the classroom.",
              "answer": "NOT GIVEN",
              "explanation": "Once a year, I go on a hike with my class, a mixed bunch of students. It is challenging. The fittest students realise they need to encourage the reluctant. There are lookouts who report back, and extra items to carry for others. We make it - together.",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "Once a year, I go on a hike with my class, a mixed bunch of students. It is challenging. The fittest students realise th"
              }
            }
          ],
          "id": "g36"
        }
      ]
    }
  ]
}
$c18t3r$,
  true
);
