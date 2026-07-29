DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 16',
  'Test 1',
  'academic',
  3600,
  $c16t1r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Why we need to protect polar bears",
      "passage": [
        {
          "ref": "1",
          "text": "Polar bears are being increasingly threatened by the effects of climate change, but their disappearance could have far-reaching consequences. They are uniquely adapted to the extreme conditions of the Arctic Circle, where temperatures can reach -40°C. One reason for this is that they have up to 11 centimetres of fat underneath their skin. Humans with comparative levels of adipose tissue would be considered obese and would be likely to suffer from diabetes and heart disease. Yet the polar bear experiences no such consequences."
        },
        {
          "ref": "2",
          "text": "A 2014 study by Shi Ping Liu and colleagues sheds light on this mystery. They compared the genetic structure of polar bears with that of their closest relatives from a warmer climate, the brown bears. This allowed them to determine the genes that have allowed polar bears to survive in one of the toughest environments on Earth. Liu and his colleagues found the polar bears had a gene known as APoB, which reduces levels of low-density lipoproteins (LDLs) - a form of 'bad' cholesterol. In humans, mutations of this gene are associated with increased risk of heart disease. Polar bears may therefore be an important study model to understand heart disease in humans. The genome of the polar bear may also provide the solution for another condition, one that particularly affects our older generation: osteoporosis. This is a disease where bones show reduced density, usually caused by insufficient exercise, reduced calcium intake or food starvation. Bone tissue is constantly being remodelled, meaning that bone is added or removed, depending on nutrient availability and the stress that the bone is under. Female polar bears, however, undergo extreme conditions during every pregnancy. Once autumn comes around, these females will dig maternity dens in the snow and will remain there throughout the winter, both before and after the birth of their cubs. This process results in about six months of fasting, where the female bears have to keep themselves and their cubs alive, depleting their own calcium and calorie reserves. Despite this, their bones remain strong and dense."
        },
        {
          "ref": "3",
          "text": "Physiologists Alanda Lennox and Allen Goodship found an explanation for this paradox in 2008. They discovered that pregnant bears were able to increase the density of their bones before they started to build their dens. In addition, six months later, when they finally emerged from the den with their cubs, there was no evidence of significant loss of bone density. Hibernating brown bears do not have this capacity and must therefore resort to major bone reformation in the following spring. If the mechanism of bone remodelling in polar bears can be understood, many bedridden humans, and even astronauts, could potentially benefit."
        },
        {
          "ref": "4",
          "text": "The medical benefits of the polar bear for humanity certainly have their importance in our conservation efforts, but these should not be the only factors taken into consideration. We tend to want to protect animals we think are intelligent and possess emotions, such as elephants and primates. Bears, on the other hand, seem to be perceived as stupid and in many cases violent. And yet anecdotal evidence from the field challenges those assumptions, suggesting for example that polar bears have good problem-solving abilities. A male bear called GoGo in Tennoji Zoo, Osaka, has even been observed making use of a tool to manipulate his environment. The bear used a tree branch on multiple occasions to dislodge a piece of meat hung out of his reach. Problem-solving ability has also been witnessed in wild polar bears, although not as obviously as with GoGo. A calculated move by a male bear involved running and jumping onto barrels in an attempt to get to a photographer standing on a platform four metres high."
        },
        {
          "ref": "5",
          "text": "In other studies, such as one by Alison Annes in 2008, polar bears showed deliberate and focussed manipulation. For example, Annes observed bears putting objects in piles and then knocking them over in what appeared to be a game. The study demonstrates that bears are capable of agile and thought-out behaviours. These examples suggest bears have greater creativity and problem- solving abilities than previously thought."
        },
        {
          "ref": "6",
          "text": "As for emotions while the evidence is once again anecdotal, many bears have been seen to hit out at ice and snow - seemingly out of frustration - when they have just missed out on a kill. Moreover, polar bears can form unusual relationships with other species, including playing with the dogs used to pull sleds in the Arctic. Remarkably, one hand-raised polar bear called Agee has formed a close relationship with her owner Mark Dumas to the point where they even swim together. This is even more astonishing since polar bears are known to actively hunt humans in the wild."
        },
        {
          "ref": "7",
          "text": "If climate change were to lead to their extinction, this would mean not only the loss of potential breakthroughs in human medicine, but more importantly, the disappearance of an intelligent, majestic animal."
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
              "prompt": "Polar bears suffer from various health problems due to the build-up of fat under their skin.",
              "answer": "FALSE",
              "explanation": "Humans with comparative levels of adipose tissue would be considered obese and would be likely to suffer from diabetes and heart disease. Yet the polar bear experiences no such consequences.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "Humans with comparative levels of adipose tissue would be considered obese and would be likely to suffer from diabetes a"
              }
            },
            {
              "number": 2,
              "prompt": "The study done by Liu and his colleagues compared different groups of polar bears.",
              "answer": "FALSE",
              "explanation": "A 2014 study by Shi Ping Liu and colleagues sheds light on this mystery. They compared the genetic structure of polar bears with that of their closest relatives from a warmer climate, the brown bears.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "A 2014 study by Shi Ping Liu and colleagues sheds light on this mystery. They compared the genetic structure of polar be"
              }
            },
            {
              "number": 3,
              "prompt": "Liu and colleagues were the first researchers to compare polar bears and brown bears genetically.",
              "answer": "NOT GIVEN",
              "explanation": "A 2014 study by Shi Ping Liu and colleagues sheds light on this mystery. They compared the genetic structure of polar bears with that of their closest relatives from a warmer climate, the brown bears.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "A 2014 study by Shi Ping Liu and colleagues sheds light on this mystery. They compared the genetic structure of polar be"
              }
            },
            {
              "number": 4,
              "prompt": "Polar bears are able to control their levels of bad cholesterol by genetic means.",
              "answer": "TRUE",
              "explanation": "Liu and his colleagues found the polar bears had a gene known as APoB, which reduces levels of low-density lipoproteins (LDLs) - a form of ‘bad’ cholesterol.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Liu and his colleagues found the polar bears had a gene known as APoB, which reduces levels of low-density lipoproteins "
              }
            },
            {
              "number": 5,
              "prompt": "Female polar bears are able to survive for about six months without food.",
              "answer": "TRUE",
              "explanation": "This process results in about six months of fasting, where the female bears have to keep themselves and their cubs alive, depleting their own calcium and calorie reserves.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "This process results in about six months of fasting, where the female bears have to keep themselves and their cubs alive"
              }
            },
            {
              "number": 6,
              "prompt": "It was found that the bones of female polar bears were very weak when they came out of their dens in spring.",
              "answer": "FALSE",
              "explanation": "when they finally emerged from the den with their cubs, there was no evidence of significant loss of bone density.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "when they finally emerged from the den with their cubs, there was no evidence of significant loss of bone density."
              }
            },
            {
              "number": 7,
              "prompt": "The polar bear’s mechanism for increasing bone density could also be used by people one day.",
              "answer": "TRUE",
              "explanation": "If the mechanism of bone remodelling in polar bears can be understood, many bedridden humans, and even astronauts, could potentially benefit.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "If the mechanism of bone remodelling in polar bears can be understood, many bedridden humans, and even astronauts, could"
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 8–13",
          "instructions": "Complete the table below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "However, this may not be correct. For example:"
            },
            {
              "kind": "static",
              "text": "In Tennoji Zoo, a bear has been seen using a branch as a"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": ". This allowed him to knock down some",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": ".",
              "noBullet": true
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
              "kind": "static",
              "text": "Bears may also display emotions. For example:"
            },
            {
              "kind": "question",
              "number": 13
            },
            {
              "kind": "static",
              "text": "They may form relationships with other species."
            }
          ],
          "questions": [
            {
              "number": 8,
              "prompt": "People think of bears as unintelligent and _______ .",
              "answer": [
                "violent"
              ],
              "wordLimit": 1,
              "explanation": "Bears, on the other hand, seem to be perceived as stupid and in many cases violent.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Bears, on the other hand, seem to be perceived as stupid and in many cases violent."
              }
            },
            {
              "number": 9,
              "prompt": "_______",
              "answer": [
                "tool"
              ],
              "wordLimit": 1,
              "explanation": "A male bear called GoGo in Tennoji Zoo, Osaka, has even been observed making use of a tool to manipulate his environment.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "A male bear called GoGo in Tennoji Zoo, Osaka, has even been observed making use of a tool to manipulate his environment"
              }
            },
            {
              "number": 10,
              "prompt": "_______",
              "answer": [
                "meat"
              ],
              "wordLimit": 1,
              "explanation": "The bear used a tree branch on multiple occasions to dislodge a piece of meat hung out of his reach.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "The bear used a tree branch on multiple occasions to dislodge a piece of meat hung out of his reach."
              }
            },
            {
              "number": 11,
              "prompt": "A wild polar bear worked out a method of reaching a platform where a _______ was located.",
              "answer": [
                "photographer"
              ],
              "wordLimit": 1,
              "explanation": "A calculated move by a male bear involved running and jumping onto barrels in an attempt to get to a photographer standing on a platform four metres high.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "A calculated move by a male bear involved running and jumping onto barrels in an attempt to get to a photographer standi"
              }
            },
            {
              "number": 12,
              "prompt": "Polar bears have displayed behaviour such as conscious manipulation of objects and activity similar to a _______ .",
              "answer": [
                "game"
              ],
              "wordLimit": 1,
              "explanation": "For example, Annes observed bears putting objects in piles and then knocking them over in what appeared to be a game.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "For example, Annes observed bears putting objects in piles and then knocking them over in what appeared to be a game."
              }
            },
            {
              "number": 13,
              "prompt": "They may make movements suggesting _______ if disappointed when hunting.",
              "answer": [
                "frustration"
              ],
              "wordLimit": 1,
              "explanation": "many bears have been seen to hit out at ice and snow - seemingly out of frustration - when they have just missed out on a kill.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "many bears have been seen to hit out at ice and snow - seemingly out of frustration - when they have just missed out on "
              }
            }
          ],
          "formTitle": "Reasons why polar bears should be protected",
          "id": "g8"
        }
      ]
    },
    {
      "id": "p2",
      "title": "The Step Pyramid of Djoser",
      "passage": [
        {
          "ref": "A",
          "text": "The pyramids are the most famous monuments of ancient Egypt and still hold enormous interest for people in the present day. These grand, impressive tributes to the memory of the Egyptian kings have become linked with the country even though other cultures, such as the Chinese and Mayan, also built pyramids. The evolution of the pyramid form has been written and argued about for centuries. However, there is no question that, as far as Egypt is concerned, it began with one monument to one king designed by one brilliant architect: the Step Pyramid of Djoser at Saqqara."
        },
        {
          "ref": "B",
          "text": "Djoser was the first king of the Third Dynasty of Egypt and the first to build in stone. Prior to Djoser’s reign, tombs were rectangular monuments made of dried clay brick, which covered underground passages where the deceased person was buried. For reasons which remain unclear, Djoser’s main official, whose name was Imhotep, conceived of building a taller, more impressive tomb for his king by stacking stone slabs on top of one another, progressively making them smaller, to form the shape now known as the Step Pyramid. Djoser is thought to have reigned for 19 years, but some historians and scholars attribute a much longer time for his rule, owing to the number and size of the monuments he built."
        },
        {
          "ref": "C",
          "text": "The Step Pyramid has been thoroughly examined and investigated over the last century, and it is now known that the building process went through many different stages. Historian Marc Van de Mieroop comments on this, writing ‘Much experimentation was involved, which is especially clear in the construction of the pyramid in the center of the complex. It had several plans … before it became the first Step Pyramid in history, piling six levels on top of one another … The weight of the enormous mass was a challenge for the builders, who placed the stones at an inward incline in order to prevent the monument breaking up.’"
        },
        {
          "ref": "D",
          "text": "When finally completed, the Step Pyramid rose 62 meters high and was the tallest structure of its time. The complex in which it was built was the size of a city in ancient Egypt and included a temple, courtyards, shrines, and living quarters for the priests. It covered a region of 16 hectares and was surrounded by a wall 10.5 meters high. The wall had 13 false doors cut into it with only one true entrance cut into the south-east corner; the entire wall was then ringed by a trench 750 meters long and 40 meters wide. The false doors and the trench were incorporated into the complex to discourage unwanted visitors. If someone wished to enter, he or she would have needed to know in advance how to find the location of the true opening in the wall. Djoser was so proud of his accomplishment that he broke the tradition of having only his own name on the monument and had Imhotep’s name carved on it as well."
        },
        {
          "ref": "E",
          "text": "The burial chamber of the tomb, where the king’s body was laid to rest, was dug beneath the base of the pyramid, surrounded by a vast maze of long tunnels that had rooms off them to discourage robbers. One of the most mysterious discoveries found inside the pyramid was a large number of stone vessels. Over 40,000 of these vessels, of various forms and shapes, were discovered in storerooms of the pyramid’s underground passages. They are inscribed with the names of rulers from the First and Second Dynasties of Egypt and made from different kinds of stone. There is no agreement among scholars and archaeologists on why the vessels were placed in the tomb of Djoser or what they were supposed to represent. The archaeologist Jean-Philippe Lauer, who excavated most of the pyramid and complex, believes they were originally stored and then given a ‘proper burial’ by Djoser in his pyramid to honor his predecessors. There are other historians, however, who claim the vessels were dumped into the shafts as yet another attempt to prevent grave robbers from getting to the king’s burial chamber."
        },
        {
          "ref": "F",
          "text": "Unfortunately, all of the precautions and intricate design of the underground network did not prevent ancient robbers from finding a way in. Djoser’s grave goods, and even his body, were stolen at some point in the past and all archaeologists found were a small number of his valuables overlooked by the thieves. There was enough left throughout the pyramid and its complex, however, to astonish and amaze the archaeologists who excavated it."
        },
        {
          "ref": "G",
          "text": "Egyptologist Miroslav Verner writes, ‘Few monuments hold a place in human history as significant as that of the Step Pyramid in Saqqara … It can be said without exaggeration that this pyramid complex constitutes a milestone in the evolution of monumental stone architecture in Egypt and in the world as a whole.’ The Step Pyramid was a revolutionary advance in architecture and became the archetype which all the other great pyramid builders of Egypt would follow."
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
              "text": "The areas and artefacts within the pyramid itself"
            },
            {
              "key": "ii",
              "text": "A difficult task for those involved"
            },
            {
              "key": "iii",
              "text": "A king who saved his people"
            },
            {
              "key": "iv",
              "text": "A single certainty among other less definite facts"
            },
            {
              "key": "v",
              "text": "An overview of the external buildings and areas"
            },
            {
              "key": "vi",
              "text": "A pyramid design that others copied"
            },
            {
              "key": "vii",
              "text": "An idea for changing the design of burial structures"
            },
            {
              "key": "viii",
              "text": "An incredible experience despite the few remains"
            },
            {
              "key": "ix",
              "text": "The answers to some unexpected questions"
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "Paragraph A",
              "answer": "iv",
              "explanation": "The evolution of the pyramid form has been written and argued about for centuries. However, there is no question that, as far as Egypt is concerned, it began with one monument to one king designed by one brilliant architect: the Step Pyramid of Djoser at Saqqara.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "The evolution of the pyramid form has been written and argued about for centuries. However, there is no question that, a"
              }
            },
            {
              "number": 15,
              "prompt": "Paragraph B",
              "answer": "vii",
              "explanation": "For reasons which remain unclear, Djoser’s main official, whose name was Imhotep, conceived of building a taller, more impressive tomb for his king by stacking stone slabs on top of one another, progressively making them smaller, to form the shape now known as the Step Pyramid.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "For reasons which remain unclear, Djoser’s main official, whose name was Imhotep, conceived of building a taller, more i"
              }
            },
            {
              "number": 16,
              "prompt": "Paragraph C",
              "answer": "ii",
              "explanation": "The weight of the enormous mass was a challenge for the builders, who placed the stones at an inward incline in order to prevent the monument breaking up.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "The weight of the enormous mass was a challenge for the builders, who placed the stones at an inward incline in order to"
              }
            },
            {
              "number": 17,
              "prompt": "Paragraph D",
              "answer": "v",
              "explanation": "It covered a region of 16 hectares and was surrounded by a wall 10.5 meters high. The wall had 13 false doors cut into it with only one true entrance cut into the south-east corner",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "It covered a region of 16 hectares and was surrounded by a wall 10.5 meters high. The wall had 13 false doors cut into i"
              }
            },
            {
              "number": 18,
              "prompt": "Paragraph E",
              "answer": "i",
              "explanation": "One of the most mysterious discoveries found inside the pyramid was a large number of stone vessels.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "One of the most mysterious discoveries found inside the pyramid was a large number of stone vessels."
              }
            },
            {
              "number": 19,
              "prompt": "Paragraph F",
              "answer": "viii",
              "explanation": "There was enough left throughout the pyramid and its complex, however, to astonish and amaze the archaeologists who excavated it.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "There was enough left throughout the pyramid and its complex, however, to astonish and amaze the archaeologists who exca"
              }
            },
            {
              "number": 20,
              "prompt": "Paragraph G",
              "answer": "vi",
              "explanation": "The Step Pyramid was a revolutionary advance in architecture and became the archetype which all the other great pyramid builders of Egypt would follow.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "The Step Pyramid was a revolutionary advance in architecture and became the archetype which all the other great pyramid "
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 21–24",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "The complex that includes the Step Pyramid and its surroundings is considered to be as big as an Egyptian"
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": "of the past. The area outside the pyramid included accommodation that was occupied by",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": ", along with many other buildings and features.",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "A wall ran around the outside of the complex and a number of false entrances were built into this. In addition, a long"
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "static",
              "text": "encircled the wall. As a result, any visitors who had not been invited were cleverly prevented from entering the pyramid grounds unless they knew the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": "of the real entrance.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "_______",
              "answer": [
                "city"
              ],
              "wordLimit": 1,
              "explanation": "The complex in which it was built was the size of a city in ancient Egypt",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "The complex in which it was built was the size of a city in ancient Egypt"
              }
            },
            {
              "number": 22,
              "prompt": "_______",
              "answer": [
                "priests"
              ],
              "wordLimit": 1,
              "explanation": "included a temple, courtyards, shrines, and living quarters for the priests",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "included a temple, courtyards, shrines, and living quarters for the priests"
              }
            },
            {
              "number": 23,
              "prompt": "_______",
              "answer": [
                "trench"
              ],
              "wordLimit": 1,
              "explanation": "the entire wall was then ringed by a trench 750 meters long and 40 meters wid",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "the entire wall was then ringed by a trench 750 meters long and 40 meters wid"
              }
            },
            {
              "number": 24,
              "prompt": "_______",
              "answer": [
                "location"
              ],
              "wordLimit": 1,
              "explanation": "If someone wished to enter, he or she would have needed to know in advance how to find the location of the true opening in the wall.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "If someone wished to enter, he or she would have needed to know in advance how to find the location of the true opening "
              }
            }
          ],
          "formTitle": "The Step Pyramid of Djoser",
          "id": "g21"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO of the following points does the writer make about King Djoser?",
          "options": [
            {
              "key": "A",
              "text": "Initially he had to be persuaded to build in stone rather than clay."
            },
            {
              "key": "B",
              "text": "There is disagreement concerning the length of his reign."
            },
            {
              "key": "C",
              "text": "He failed to appreciate Imhotep’s part in the design of the Step Pyramid."
            },
            {
              "key": "D",
              "text": "A few of his possessions were still in his tomb when archaeologists found it."
            },
            {
              "key": "E",
              "text": "He criticised the design and construction of other pyramids in Egypt."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO of the following points does the writer make about King Djoser?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "Djoser is thought to have reigned for 19 years, but some historians and scholars attribute a much longer time for his rule, owing to the number and size of the monuments he built. Djoser’s grave goods, and even his body, were stolen at some point in the past and all archaeologists found were a small number of his valuables overlooked by the thieves.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Djoser is thought to have reigned for 19 years, but some historians and scholars"
              }
            },
            {
              "number": 26,
              "prompt": "Which TWO of the following points does the writer make about King Djoser?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "Djoser is thought to have reigned for 19 years, but some historians and scholars attribute a much longer time for his rule, owing to the number and size of the monuments he built. Djoser’s grave goods, and even his body, were stolen at some point in the past and all archaeologists found were a small number of his valuables overlooked by the thieves.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Djoser is thought to have reigned for 19 years, but some historians and scholars"
              }
            }
          ],
          "id": "g25"
        }
      ]
    },
    {
      "id": "p3",
      "title": "The future of work",
      "passage": [
        {
          "ref": "1",
          "text": "According to a leading business consultancy, 3-14% of the global workforce will need to switch to a different occupation within the next 10-15 years, and all workers will need to adapt as their occupations evolve alongside increasingly capable machines. Automation - or ‘embodied artificial intelligence (AI) - is one aspect of the disruptive effects of technology on the labour market. ‘Disembodied AI’, like the algorithms running in our smartphones, is another. Dr Stella Pachidi from Cambridge Judge Business School believes that some of the most fundamental changes are happening as a result of the ‘algorithmication’ of jobs that are dependent on data rather than on production - the so-called knowledge economy. Algorithms are capable of learning from data to undertake tasks that previously needed human judgement, such as reading legal contracts, analysing medical scans and gathering market intelligence. ‘In many cases, they can outperform humans,’ says Pachidi. ‘Organisations are attracted to using algorithms because they want to make choices based on what they consider is “perfect information”, as well as to reduce costs and enhance productivity.’ ‘But these enhancements are not without consequences,’ says Pachidi. ‘If routine cognitive tasks are taken over by AI, how do professions develop their future experts?’ she asks. ‘One way of learning about a job is “legitimate peripheral participation”- a novice stands next to experts and learns by observation. If this isn’t happening, then you need to find new ways to learn.’ Another issue is the extent to which the technology influences or even controls the workforce. For over two years, Pachidi monitored a telecommunications company. ‘The way telecoms salespeople work is through personal and frequent contact with clients, using the benefit of experience to assess a situation and reach a decision. However, the company had started using a[n] … algorithm that defined when account managers should contact certain customers about which kinds of campaigns and what to offer them.’ The algorithm - usually built by external designers - often becomes the keeper of knowledge, she explains. In cases like this, Pachidi believes, a short-sighted view begins to creep into working practices whereby workers learn through the ‘algorithm’s eyes’ and become dependent on its instructions. Alternative explorations - where experimentation and human instinct lead to progress and new ideas - are effectively discouraged."
        },
        {
          "ref": "2",
          "text": "Pachidi and colleagues even observed people developing strategies to make the algorithm work to their own advantage. ‘We are seeing cases where workers feed the algorithm with false data to reach their targets,’ she reports."
        },
        {
          "ref": "3",
          "text": "It’s scenarios like these that many researchers are working to avoid. Their objective is to make AI technologies more trustworthy and transparent, so that organisations and individuals understand how AI decisions are made. In the meantime, says Pachidi, ‘We need to make sure we fully understand the dilemmas that this new world raises regarding expertise, occupational boundaries and control.’ Economist Professor Hamish Low believes that the future of work will involve major transitions across the whole life course for everyone: ‘The traditional trajectory of full-time education followed by full-time work followed by a pensioned retirement is a thing of the past,’ says Low. Instead, he envisages a multistage employment life: one where retraining happens across the life course, and where multiple jobs and no job happen by choice at different stages."
        },
        {
          "ref": "4",
          "text": "On the subject of job losses, Low believes the predictions are founded on a fallacy: ‘It assumes that the number of jobs is fixed. If in 30 years, half of 100 jobs are being carried out by robots, that doesn’t mean we are left with just 50 jobs for humans. The number of jobs will increase: we would expect there to be 150 jobs.’ Dr Ewan McGaughey, at Cambridge’s Centre for Business Research and King’s College London, agrees that ‘apocalyptic’ views about the future of work are misguided. ‘It’s the laws that restrict the supply of capital to the job market, not the advent of new technologies that causes unemployment.’ His recently published research answers the question of whether automation, AI and robotics will mean a ‘jobless future’ by looking at the causes of unemployment. ‘History is clear that change can mean redundancies. But social policies can tackle this through retraining and redeployment.’ He adds: ‘If there is going to be change to jobs as a result of AI and robotics then I’d like to see governments seizing the opportunity to improve policy to enforce good job security. We can “reprogramme” the law to prepare for a fairer future of work and leisure.’ McGaughey’s findings are a call to arms to leaders of organisations, governments and banks to pre-empt the coming changes"
        },
        {
          "ref": "5",
          "text": "with bold new policies that guarantee full employment, fair incomes and a thriving economic democracy."
        },
        {
          "ref": "6",
          "text": "‘The promises of these new technologies are astounding. They deliver humankind the capacity to live in a way that nobody could have once imagined,’ he adds. 'Just as the industrial revolution brought people past subsistence agriculture, and the corporate revolution enabled mass production, a third revolution has been pronounced. But it will not only be one of technology. The next revolution will be social.'"
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
              "prompt": "The first paragraph tells us about",
              "options": [
                {
                  "key": "A",
                  "text": "the kinds of jobs that will be most affected by the growth of AI."
                },
                {
                  "key": "B",
                  "text": "the extent to which AI will after the nature of the work that people do."
                },
                {
                  "key": "C",
                  "text": "the proportion of the world’s labour force who will have jobs in AI in the future."
                },
                {
                  "key": "D",
                  "text": "the difference between ways that embodied and disembodied AI with impact on workers."
                }
              ],
              "answer": "B",
              "explanation": "Automation - or ‘embodied artificial intelligence (AI) - is one aspect of the disruptive effects of technology on the labour market.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Automation - or ‘embodied artificial intelligence (AI) - is one aspect of the disruptive effects of technology on the la"
              }
            },
            {
              "number": 28,
              "prompt": "According to the second paragraph, what is Stella Pachidi’s view of the ‘knowledge economy’?",
              "options": [
                {
                  "key": "A",
                  "text": "It is having an influence on the number of jobs available."
                },
                {
                  "key": "B",
                  "text": "It is changing people’s attitudes towards their occupations."
                },
                {
                  "key": "C",
                  "text": "It is the main reason why the production sector is declining."
                },
                {
                  "key": "D",
                  "text": "It is a key factor driving current developments in the workplace."
                }
              ],
              "answer": "D",
              "explanation": "Algorithms are capable of learning from data to undertake tasks that previously needed human judgement, such as reading legal contracts, analysing medical scans and gathering market intelligence.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Algorithms are capable of learning from data to undertake tasks that previously needed human judgement, such as reading "
              }
            },
            {
              "number": 29,
              "prompt": "What did Pachidi observe at the telecommunications company?",
              "options": [
                {
                  "key": "A",
                  "text": "staff disagreeing with the recommendations of AI"
                },
                {
                  "key": "B",
                  "text": "staff feeling resentful about the intrusion of AI in their work"
                },
                {
                  "key": "C",
                  "text": "staff making sure that AI produces the results that they want"
                },
                {
                  "key": "D",
                  "text": "staff allowing AI to carry out tasks they ought to do themselves"
                }
              ],
              "answer": "C",
              "explanation": "the company had started using a[n] … algorithm that defined when account managers should contact certain customers about which kinds of campaigns and what to offer them",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "the company had started using a[n] … algorithm that defined when account managers should contact certain customers about"
              }
            },
            {
              "number": 30,
              "prompt": "In his recently published research, Ewan McGaughey",
              "options": [
                {
                  "key": "A",
                  "text": "challenges the idea that redundancy is a negative thing."
                },
                {
                  "key": "B",
                  "text": "shows the profound effect of mass unemployment on society."
                },
                {
                  "key": "C",
                  "text": "highlights some differences between past and future job losses."
                },
                {
                  "key": "D",
                  "text": "illustrates how changes in the job market can be successfully handled."
                }
              ],
              "answer": "D",
              "explanation": "If there is going to be change to jobs as a result of AI and robotics then I’d like to see governments seizing the opportunity to improve policy to enforce good job security. We can “reprogramme” the law to prepare for a fairer future of work and leisure.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "If there is going to be change to jobs as a result of AI and robotics then I’d like to see governments seizing the oppor"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 31–34",
          "instructions": "Complete the summary using the list of words, A–G, below.",
          "summaryTitle": "",
          "summaryText": "The ‘algorithmication’ of jobs\nStella Pachidi of Cambridge Judge Business School has been focusing on the ‘algorithmication’\nof jobs which rely not on production but on {31} .\nWhile monitoring a telecommunications company, Pachidi observed a growing\n{32} on the recommendations made by AI, as workers begin to learn\nthrough the ‘algorithm’s eyes’. Meanwhile, staff are deterred from experimenting and using\ntheir own {33} , and are therefore prevented from achieving innovation.\nTo avoid the kind of situations which Pachidi observed, researchers are trying to make AI’s\ndecision-making process easier to comprehend, and to increase users’\n{34} with regard to the technology.\nA. pressure B. satisfactionC. intuition D. promotion E. reliance\nF. confidenceG. information",
          "wordBank": [
            {
              "key": "A",
              "text": "pressure"
            },
            {
              "key": "B",
              "text": "satisfaction"
            },
            {
              "key": "C",
              "text": "intuition"
            },
            {
              "key": "D",
              "text": "promotion"
            },
            {
              "key": "E",
              "text": "reliance"
            },
            {
              "key": "F",
              "text": "confidence"
            },
            {
              "key": "G",
              "text": "information"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "",
              "answer": "G",
              "explanation": "Dr Stella Pachidi from Cambridge Judge Business School believes that some of the most fundamental changes are happening as a result of the ‘algorithmication’ of jobs that are dependent on data rather than on production - the so-called knowledge economy.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Dr Stella Pachidi from Cambridge Judge Business School believes that some of the most fundamental changes are happening "
              }
            },
            {
              "number": 32,
              "prompt": "",
              "answer": "E",
              "explanation": "In cases like this, Pachidi believes, a short-sighted view begins to creep into working practices whereby workers learn through the ‘algorithm’s eyes’ and become dependent on its instructions.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "In cases like this, Pachidi believes, a short-sighted view begins to creep into working practices whereby workers learn "
              }
            },
            {
              "number": 33,
              "prompt": "",
              "answer": "C",
              "explanation": "Alternative explorations - where experimentation and human instinct lead to progress and new ideas - are effectively discouraged.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Alternative explorations - where experimentation and human instinct lead to progress and new ideas - are effectively dis"
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": "F",
              "explanation": "Their objective is to make AI technologies more trustworthy and transparent, so that organisations and individuals understand how AI decisions are made.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "Their objective is to make AI technologies more trustworthy and transparent, so that organisations and individuals under"
              }
            }
          ],
          "id": "g31"
        },
        {
          "type": "matching",
          "label": "Questions 35–40",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, A, B or C. You may use any letter more than once.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Stella Pachidi"
            },
            {
              "key": "B",
              "text": "Hamish Low"
            },
            {
              "key": "C",
              "text": "Ewan McGaughey"
            }
          ],
          "questions": [
            {
              "number": 35,
              "prompt": "Greater levels of automation will not result in lower employment.",
              "answer": "B",
              "explanation": "On the subject of job losses, Low believes the predictions are founded on a fallacy: ‘It assumes that the number of jobs is fixed. If in 30 years, half of 100 jobs are being carried out by robots, that doesn’t mean we are left with just 50 jobs for humans. The number of jobs will increase: we would expect there to be 150 jobs.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "On the subject of job losses, Low believes the predictions are founded on a fallacy: ‘It assumes that the number of jobs"
              }
            },
            {
              "number": 36,
              "prompt": "There are several reasons why AI is appealing to businesses.",
              "answer": "A",
              "explanation": "‘In many cases, they can outperform humans,’ says Pachidi. ‘Organisations are attracted to using algorithms because they want to make choices based on what they consider is “perfect information”, as well as to reduce costs and enhance productivity.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "‘In many cases, they can outperform humans,’ says Pachidi. ‘Organisations are attracted to using algorithms because they"
              }
            },
            {
              "number": 37,
              "prompt": "AI’s potential to transform people’s lives has parallels with major cultural",
              "answer": "C",
              "explanation": "‘The promises of these new technologies are astounding. They deliver humankind the capacity to live in a way that nobody could have once imagined,’ he adds. ‘Just as the industrial revolution brought people past subsistence agriculture, and the corporate revolution enabled mass production, a third revolution has been pronounced. But it will not only be one of technology. The next revolution will be social.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "‘The promises of these new technologies are astounding. They deliver humankind the capacity to live in a way that nobody"
              }
            },
            {
              "number": 38,
              "prompt": "It is important to be aware of the range of problems that AI causes.",
              "answer": "A",
              "explanation": "‘But these enhancements are not without consequences,’ says Pachidi. ‘If routine cognitive tasks are taken over by AI, how do professions develop their future experts?’ she asks.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "‘But these enhancements are not without consequences,’ says Pachidi. ‘If routine cognitive tasks are taken over by AI, h"
              }
            },
            {
              "number": 39,
              "prompt": "People are going to follow a less conventional career path than in the",
              "answer": "B",
              "explanation": "Economist Professor Hamish Low believes that the future of work will involve major transitions across the whole life course for everyone: ‘The traditional trajectory of full-time education followed by full-time work followed by a pensioned retirement is a thing of the past,’ says Low.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "Economist Professor Hamish Low believes that the future of work will involve major transitions across the whole life cou"
              }
            },
            {
              "number": 40,
              "prompt": "Authorities should take measures to ensure that there will be adequately",
              "answer": "C",
              "explanation": "McGaughey’s findings are a call to arms to leaders of organisations, governments and banks to pre-empt the coming changes with bold new policies that guarantee full employment, fair incomes and a thriving economic democracy.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "McGaughey’s findings are a call to arms to leaders of organisations, governments and banks to pre-empt the coming change"
              }
            }
          ],
          "id": "g35"
        }
      ]
    }
  ]
}
$c16t1r$,
  true
);
