DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 17',
  'Test 2',
  'academic',
  3600,
  $c17t2r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The Dead Sea Scrolls",
      "passage": [
        {
          "ref": "1",
          "text": "In late 1946 or early 1947, three Bedouin teenagers were tending their goats and sheep near the ancient settlement of Qumran, located on the northwest shore of the Dead Sea in what is now known as the West Bank. One of these young shepherds tossed a rock into an opening on the side of a cliff and was surprised to hear a shattering sound. He and his companions later entered the cave and stumbled across a collection of large clay jars, seven of which contained scrolls with writing on them. The teenagers took the seven scrolls to a nearby town where they were sold for a small sum to a local antiquities dealer. Word of the find spread, and Bedouins and archaeologists eventually unearthed tens of thousands of additional scroll fragments from 10 nearby caves; together they make up between 800 and 900 manuscripts. It soon became clear that this was one of the greatest archaeological discoveries ever made."
        },
        {
          "ref": "2",
          "text": "The origin of the Dead Sea Scrolls, which were written around 2,000 years ago between 150 BCE and 70 CE, is still the subject of scholarly debate even today. According to the prevailing theory, they are the work of a population that inhabited the area until Roman troops destroyed the settlement around 70 CE. The area was known as Judea at that time, and the people are thought to have belonged to a group called the Essenes, a devout Jewish sect."
        },
        {
          "ref": "3",
          "text": "The majority of the texts on the Dead Sea Scrolls are in Hebrew, with some fragments written in an ancient version of its alphabet thought to have fallen out of use in the fifth century BCE. But there are other languages as well. Some scrolls are in Aramaic, the language spoken by many inhabitants of the region from the sixth century BCE to the siege of Jerusalem in 70 CE. In addition, several texts feature translations of the Hebrew Bible into Greek."
        },
        {
          "ref": "4",
          "text": "The Dead Sea Scrolls include fragments from every book of the Old Testament of the Bible except for the Book of Esther. The only entire book of the Hebrew Bible preserved among the manuscripts from Qumran is Isaiah; this copy, dated to the first century BCE, is considered the earliest biblical manuscript still in existence. Along with biblical texts, the scrolls include documents about sectarian regulations and religious writings that do not appear in the Old Testament. The writing on the Dead Sea Scrolls is mostly in black or occasionally red ink, and the scrolls themselves are nearly all made of either parchment (animal skin) or an early form of paper called ‘papyrus’. The only exception is the scroll numbered 3Q15, which was created out of a combination of copper and tin. Known as the Copper Scroll, this curious document features letters chiselled onto metal - perhaps, as some have theorized, to better withstand the passage of time. One of the most intriguing manuscripts from Qumran, this is a sort of ancient treasure map that lists dozens of gold and silver caches. Using an unconventional vocabulary and odd spelling, it describes 64 underground hiding places that supposedly contain riches buried for safekeeping. None of these hoards have been recovered, possibly because the Romans pillaged Judea during the first century CE. According to various hypotheses, the treasure belonged to local people, or was rescued from the Second Temple before its destruction or never existed to begin with. Some of the Dead Sea Scrolls have been on interesting journeys. In 1948, a Syrian Orthodox archbishop known as Mar Samuel acquired four of the original seven scrolls from a Jerusalem shoemaker and part-time antiquity dealer, paying less than $100 for them. He then travelled to the United States and unsuccessfully offered them to a number of universities, including Yale. Finally, in 1954, he placed an advertisement in the business newspaper The Wall Street Journal - under the category ‘Miscellaneous Items for Sale’ - that read: ‘Biblical Manuscripts dating back to at least 200 B.C. are for sale. This would be an ideal gift to an educational or religious institution by an individual or group.’ Fortunately, Israeli archaeologist and statesman Yigael Yadin negotiated their purchase and brought the scrolls back to Jerusalem, where they remain to this day. In 2017, researchers from the University of Haifa restored and deciphered one of the last untranslated scrolls. The university’s Eshbal Ratson and Jonathan Ben-Dov spent one year reassembling the 60 fragments that make up the scroll. Deciphered from a band of coded text on parchment, the find provides insight into the community of people who wrote it and the 364-day calendar they would have used. The scroll names celebrations that indicate shifts in seasons and details two yearly religious events known from another Dead Sea Scroll. Only one more known scroll remains untranslated."
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–5",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Discovery"
            },
            {
              "kind": "static",
              "text": "Qumran, 1946/7 three Bedouin shepherds in their teens were near an opening on side of cliff heard a noise of breaking when one teenager threw a"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "teenagers went into the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "and found a number of containers made of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "The scrolls date from between 150 BCE and 70 CE thought to have been written by group of people known as the"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "written mainly in the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "language most are on religious topics, written using ink on parchment or papyrus",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______",
              "answer": [
                "rock"
              ],
              "wordLimit": 1,
              "explanation": "One of these young shepherds tossed a rock into an opening on the side of a cliff and was surprised to hear a shattering sound",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "One of these young shepherds tossed a rock into an opening on the side of a cliff and was surprised to hear a shattering"
              }
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "cave"
              ],
              "wordLimit": 1,
              "explanation": "He and his companions later entered the cave",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "He and his companions later entered the cave"
              }
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "clay"
              ],
              "wordLimit": 1,
              "explanation": "and stumbled across a collection of large clay jars, seven of which contained scrolls with writing on them",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "and stumbled across a collection of large clay jars, seven of which contained scrolls with writing on them"
              }
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "Essenes"
              ],
              "wordLimit": 1,
              "explanation": "The area was known as Judea at that time, and the people are thought to have belonged to a group called the Essenes, a devout Jewish sect",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The area was known as Judea at that time, and the people are thought to have belonged to a group called the Essenes, a d"
              }
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "Hebrew"
              ],
              "wordLimit": 1,
              "explanation": "The majority of the texts on the Dead Sea Scrolls are in Hebrew",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "The majority of the texts on the Dead Sea Scrolls are in Hebrew"
              }
            }
          ],
          "formTitle": "The Dead Sea Scrolls",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 6–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 6,
              "prompt": "The Bedouin teenagers who found the scrolls were disappointed by how little money they received for them.",
              "answer": "NOT GIVEN",
              "explanation": "The teenagers took the seven scrolls to a nearby town where they were sold for a small sum to a local antiquities dealer.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "The teenagers took the seven scrolls to a nearby town where they were sold for a small sum to a local antiquities dealer"
              }
            },
            {
              "number": 7,
              "prompt": "There is agreement among academics about the origin of the Dead Sea Scrolls.",
              "answer": "FALSE",
              "explanation": "The origin of the Dead Sea Scrolls, which were written around 2,000 years ago between 150 BCE and 70 CE, is still the subject of scholarly debate even today.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The origin of the Dead Sea Scrolls, which were written around 2,000 years ago between 150 BCE and 70 CE, is still the su"
              }
            },
            {
              "number": 8,
              "prompt": "Most of the books of the Bible written on the scrolls are incomplete.",
              "answer": "TRUE",
              "explanation": "The Dead Sea Scrolls include fragments from every book of the Old Testament of the Bible except for the Book of Esther.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "The Dead Sea Scrolls include fragments from every book of the Old Testament of the Bible except for the Book of Esther."
              }
            },
            {
              "number": 9,
              "prompt": "The information on the Copper Scroll is written in an unusual way.",
              "answer": "TRUE",
              "explanation": "Using an unconventional vocabulary and odd spelling, it describes 64 underground hiding places that supposedly contain riches buried for safekeeping.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Using an unconventional vocabulary and odd spelling, it describes 64 underground hiding places that supposedly contain r"
              }
            },
            {
              "number": 10,
              "prompt": "Mar Samuel was given some of the scrolls as a gift.",
              "answer": "FALSE",
              "explanation": "In 1948, a Syrian Orthodox archbishop known as Mar Samuel acquired four of the original seven scrolls from a Jerusalem shoemaker and part-time antiquity dealer, paying less than $100 for them.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "In 1948, a Syrian Orthodox archbishop known as Mar Samuel acquired four of the original seven scrolls from a Jerusalem s"
              }
            },
            {
              "number": 11,
              "prompt": "In the early 1950s, a number of educational establishments in the US were keen to buy scrolls from Mar Samuel. === PAGE 3 ===",
              "answer": "FALSE",
              "explanation": "He then travelled to the United States and unsuccessfully offered them to a number of universities, including Yale.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "He then travelled to the United States and unsuccessfully offered them to a number of universities, including Yale."
              }
            },
            {
              "number": 12,
              "prompt": "The scroll that was pieced together in 2017 contains information about annual occasions in the Qumran area 2,000 years ago.",
              "answer": "TRUE",
              "explanation": "In 2017, researchers from the University of Haifa restored and deciphered one of the last untranslated scrolls. The university’s Eshbal Ratson and Jonathan Ben-Dov spent one year reassembling the 60 fragments that make up the scroll.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "In 2017, researchers from the University of Haifa restored and deciphered one of the last untranslated scrolls. The univ"
              }
            },
            {
              "number": 13,
              "prompt": "Academics at the University of Haifa are currently researching how to decipher the final scroll.",
              "answer": "NOT GIVEN",
              "explanation": "Only one more known scroll remains untranslated.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Only one more known scroll remains untranslated."
              }
            }
          ],
          "id": "g6"
        }
      ]
    },
    {
      "id": "p2",
      "title": "A second attempt at domesticating the tomato",
      "passage": [
        {
          "ref": "A",
          "text": "It took at least 3,000 years for humans to learn how to domesticate the wild tomato and cultivate it for food. Now two separate teams in Brazil and China have done it all over again in less than three years. And they have done it better in some ways, as the re-domesticated tomatoes are more nutritious than the ones we eat at present. This approach relies on the revolutionary CRISPR genome editing technique, in which changes are deliberately made to the DNA of a living cell, allowing genetic material to be added, removed or altered. The technique could not only improve existing crops, but could also be used to turn thousands of wild plants into useful and appealing foods. In fact, a third team in the US has already begun to do this with a relative of the tomato called the groundcherry. This fast-track domestication could help make the world’s food supply healthier and far more resistant to diseases, such as the rust fungus devastating wheat crops. 'This could transform what we eat,' says Jorg Kudla at the University of Munster in Germany, a member of the Brazilian team. 'There are 50,000 edible plants in the world, but 90 percent of our energy comes from just 15 crops.' ‘We can now mimic the known domestication course of major crops like rice, maize, sorghum or others,’ says Caixia Gao of the Chinese Academy of Sciences in Beijing. Then we might try to domesticate plants that have never been domesticated.’"
        },
        {
          "ref": "B",
          "text": "Wild tomatoes, which are native to the Andes region in South America, produce pea-sized fruits. Over many generations, peoples such as the Aztecs and Incas transformed the plant by selecting and breeding plants with mutations* in their genetic structure, which resulted in desirable traits such as larger fruit. But every time a single plant with a mutation is taken from a larger population for breeding, much genetic diversity is lost. And sometimes the desirable mutations come with less desirable traits. For instance, the tomato strains grown for supermarkets have lost much of their flavour. By comparing the genomes of modern plants to those of their wild relatives, biologists have been working out what genetic changes occurred as plants were domesticated. The teams in Brazil and China have now used this knowledge to reintroduce these changes from scratch while maintaining or even enhancing the desirable traits of wild strains."
        },
        {
          "ref": "C",
          "text": "Kudla’s team made six changes altogether. For instance, they tripled the size of fruit by editing a gene called FRUIT WEIGHT, and increased the number of tomatoes per truss by editing another called MULTIFLORA. While the historical domestication of tomatoes reduced levels of the red pigment lycopene - thought to have potential health benefits - the team in Brazil managed to boost it instead. The wild tomato has twice as much lycopene as cultivated ones; the newly domesticated one has five times as much. 'They are quite tasty,' says Kudla. ‘A little bit strong. And very aromatic.’ The team in China re-domesticated several strains of wild tomatoes with desirable traits lost in domesticated tomatoes. In this way they managed to create a strain resistant to a common disease called bacterial spot race, which can devastate yields. They also created another strain that is more salt tolerant - and has higher levels of vitamin C."
        },
        {
          "ref": "D",
          "text": "Meanwhile, Joyce Van Eck at the Boyce Thompson Institute in New York state decided to use the same approach to domesticate the groundcherry or goldenberry (Physalis pruinosa) for the first time. This fruit looks similar to the closely related Cape gooseberry (Physalis peruviana). Groundcherries are already sold to a limited extent in the US but they are hard to produce because the plant has a sprawling growth habit and the small fruits fall off the branches when ripe. Van Eck’s team has edited the plants to increase fruit size, make their growth more compact and to stop fruits dropping. ‘There’s potential for this to be a commercial crop,’ says Van Eck. But she adds that taking the work further would be expensive because of the need to pay for a licence for the CRISPR technology and get regulatory approval."
        },
        {
          "ref": "E",
          "text": "This approach could boost the use of many obscure plants, says Jonathan Jones of the Sainsbury Lab in the UK. But it will be hard for new foods to grow so popular with farmers and consumers that they become new staple crops, he thinks. The three teams already have their eye on other plants that could be ‘catapulted into the mainstream’, including foxtail, oat-grass and cowpea. By choosing wild plants that are drought or heat tolerant, says Gao, we could create crops that will thrive even as the planet warms. But Kudla didn’t want to reveal which species were in his team’s sights, because CRISPR has made the process so easy. ‘Any one with the right skills could go to their lab and do this.’ *mutations: changes in an organism’s genetic structure that can be passed down to later generations"
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–18",
          "instructions": "Reading Passage 2 has five sections, A–E. Which section contains the following information? You may use any letter more than once.",
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
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "a reference to a type of tomato that can resist a dangerous",
              "answer": "C",
              "explanation": "The team in China re-domesticated several strains of wild tomatoes with desirable traits lost in domesticated tomatoes. In this way they managed to create a strain resistant to a common disease called bacterial spot race, which can devastate yields.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "The team in China re-domesticated several strains of wild tomatoes with desirable traits lost in domesticated tomatoes. "
              }
            },
            {
              "number": 15,
              "prompt": "an explanation of how problems can arise from focusing only",
              "answer": "B",
              "explanation": "But every time a single plant with a mutation is taken from a larger population for breeding, much genetic diversity is lost. And sometimes the desirable mutations come with less desirable traits.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "But every time a single plant with a mutation is taken from a larger population for breeding, much genetic diversity is "
              }
            },
            {
              "number": 16,
              "prompt": "a number of examples of plants that are not cultivated at",
              "answer": "E",
              "explanation": "The three teams already have their eye on other plants that could be ‘catapulted into the mainstream’, including foxtail, oat-grass and cowpea. By choosing wild plants that are drought or heat tolerant, says Gao, we could create crops that will thrive even as the planet warms.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "The three teams already have their eye on other plants that could be ‘catapulted into the mainstream’, including foxtail"
              }
            },
            {
              "number": 17,
              "prompt": "a comparison between the early domestication of the tomato",
              "answer": "A",
              "explanation": "It took at least 3,000 years for humans to learn how to domesticate the wild tomato and cultivate it for food. Now two separate teams in Brazil and China have done it all over again in less than three years. And they have done it better in some ways, as the re-domesticated tomatoes are more nutritious than the ones we eat at present.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "It took at least 3,000 years for humans to learn how to domesticate the wild tomato and cultivate it for food. Now two s"
              }
            },
            {
              "number": 18,
              "prompt": "a personal reaction to the flavour of a tomato that has been",
              "answer": "C",
              "explanation": "‘They are quite tasty,’ says Kudla. ‘A little bit strong. And very aromatic.’",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "‘They are quite tasty,’ says Kudla. ‘A little bit strong. And very aromatic.’"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "matching",
          "label": "Questions 19–23",
          "instructions": "Look at the following statements and the list of researchers below. Match each statement with the correct researcher, A-D. You may use any letter more than once.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Jorg Kudla"
            },
            {
              "key": "B",
              "text": "Caixia Gao"
            },
            {
              "key": "C",
              "text": "Joyce Van Eck"
            },
            {
              "key": "D",
              "text": "Jonathan Jones"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "Domestication of certain plants could allow them to adapt to future",
              "answer": "B",
              "explanation": "By choosing wild plants that are drought or heat tolerant, says Gao, we could create crops that will thrive even as the planet warms.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "By choosing wild plants that are drought or heat tolerant, says Gao, we could create crops that will thrive even as the "
              }
            },
            {
              "number": 20,
              "prompt": "The idea of growing and eating unusual plants may not be accepted",
              "answer": "D",
              "explanation": "This approach could boost the use of many obscure plants, says Jonathan Jones of the Sainsbury Lab in the UK. But it will be hard for new foods to grow so popular with farmers and consumers that they become new staple crops, he thinks.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "This approach could boost the use of many obscure plants, says Jonathan Jones of the Sainsbury Lab in the UK. But it wil"
              }
            },
            {
              "number": 21,
              "prompt": "It is not advisable for the future direction of certain research to be",
              "answer": "A",
              "explanation": "But Kudla didn’t want to reveal which species were in his team’s sights, because CRISPR has made the process so easy. ‘Any one with the right skills could go to their lab and do this.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "But Kudla didn’t want to reveal which species were in his team’s sights, because CRISPR has made the process so easy. ‘A"
              }
            },
            {
              "number": 22,
              "prompt": "Present efforts to domesticate one wild fruit are limited by the costs",
              "answer": "C",
              "explanation": "‘There’s potential for this to be a commercial crop,’ says Van Eck. But she adds that taking the work further would be expensive because of the need to pay for a licence for the CRISPR technology and get regulatory approval.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "‘There’s potential for this to be a commercial crop,’ says Van Eck. But she adds that taking the work further would be e"
              }
            },
            {
              "number": 23,
              "prompt": "Humans only make use of a small proportion of the plant food",
              "answer": "A",
              "explanation": "This could transform what we eat,’ says Jorg Kudla at the University of Munster in Germany, a member of the Brazilian team. ‘There are 50,000 edible plants in the world, but 90 percent of our energy comes from just 15 crops.’",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "This could transform what we eat,’ says Jorg Kudla at the University of Munster in Germany, a member of the Brazilian te"
              }
            }
          ],
          "id": "g19"
        },
        {
          "type": "completion",
          "label": "Questions 24–26",
          "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "An undesirable trait such as loss of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": "may be caused by a mutation in a tomato gene. By modifying one gene in a tomato plant, researchers made the tomato three times its original",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": "A type of tomato which was not badly affected by",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": ", and was rich in vitamin C, was produced by a team of researchers in China.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 24,
              "prompt": "undesirable trait such as loss of _______",
              "answer": [
                "flavour"
              ],
              "wordLimit": 1,
              "explanation": "/ flavor And sometimes the desirable mutations come with less desirable traits. For instance, the tomato strains grown for supermarkets have lost much of their flavour."
            },
            {
              "number": 25,
              "prompt": "tomato three times its original _______",
              "answer": [
                "size"
              ],
              "wordLimit": 1,
              "explanation": "For instance, they tripled the size of fruit by editing a gene called FRUIT WEIGHT, and increased the number of tomatoes per truss by editing another called MULTIFLORA.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "For instance, they tripled the size of fruit by editing a gene called FRUIT WEIGHT, and increased the number of tomatoes"
              }
            },
            {
              "number": 26,
              "prompt": "which was not badly affected by _______",
              "answer": [
                "salt"
              ],
              "wordLimit": 1,
              "explanation": "They also created another strain that is more salt tolerant - and has higher levels of vitamin C.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "They also created another strain that is more salt tolerant - and has higher levels of vitamin C."
              }
            }
          ],
          "id": "g24"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Insight or evolution? Two scientists consider the origins of discoveries and other innovative behavior",
      "passage": [
        {
          "ref": "1",
          "text": "Scientific discovery is popularly believed to result from the sheer genius of such intellectual stars as naturalist Charles Darwin and theoretical physicist Albert Einstein. Our view of such unique contributions to science often disregards the person’s prior experience and the efforts of their lesser-known predecessors. Conventional wisdom also places great weight on insight in promoting breakthrough scientific achievements, as if ideas spontaneously pop into someone’s head - fully formed and functional."
        },
        {
          "ref": "2",
          "text": "There may be some limited truth to this view. However, we believe that it largely misrepresents the real nature of scientific discovery, as well as that of creativity and innovation in many other realms of human endeavor."
        },
        {
          "ref": "3",
          "text": "Setting aside such greats as Darwin and Einstein - whose monumental contributions are duly celebrated - we suggest that innovation is more a process of trial and error, where two steps forward may sometimes come with one step back, as well as one or more steps to the right or left. This evolutionary view of human innovation undermines the notion of creative genius and recognizes the cumulative nature of scientific progress."
        },
        {
          "ref": "4",
          "text": "Consider one unheralded scientist: John Nicholson, a mathematical physicist working in the 1910s who postulated the existence of‘proto-elements’ in outer space. By combining different numbers of weights of these proto-elements’ atoms, Nicholson could recover the weights of all the elements in the then-known periodic table. These successes are all the more noteworthy given the fact that Nicholson was wrong about the presence of proto-elements: they do not actually exist. Yet, amid his often fanciful theories and wild speculations, Nicholson also proposed a novel theory about the structure of atoms. Niels Bohr, the Nobel prize-winning father of modern atomic theory, jumped off from this interesting idea to conceive his now-famous model of the atom. What are we to make of this story? One might simply conclude that science is a collective and cumulative enterprise. That may be true, but there may be a deeper insight to be gleaned. We propose that science is constantly evolving, much as species of animals do. In biological systems, organisms may display new characteristics that result from random genetic mutations. In the same way, random, arbitrary or accidental mutations of ideas may help pave the way for advances in science. If mutations prove beneficial, then the animal or the scientific theory will continue to thrive and perhaps reproduce."
        },
        {
          "ref": "5",
          "text": "Support for this evolutionary view of behavioral innovation comes from many domains. Consider one example of an influential innovation in US horseracing. The so-called ‘acey-deucy’ stirrup placement, in which the rider’s foot in his left stirrup is placed as much as 25 centimeters lower than the right, is believed to confer important speed advantages when turning on oval tracks. It was developed by a relatively unknown jockey named Jackie Westrope. Had Westrope conducted methodical investigations or examined extensive film records in a shrewd plan to outrun his rivals? Had he foreseen the speed advantage that would be conferred by riding acey-deucy? No. He suffered a leg injury, which left him unable to fully bend his left knee. His modification just happened to coincide with enhanced left-hand turning performance. This led to the rapid and widespread adoption of riding acey-deucy by many riders, a racing style which continues in today’s thoroughbred racing."
        },
        {
          "ref": "6",
          "text": "Plenty of other stories show that fresh advances can arise from error, misadventure, and also pure serendipity - a happy accident. For example, in the early 1970s, two employees of the company 3M each had a problem: Spencer Silver had a product - a glue which was only slightly sticky - and no use for it, while his colleague Art Fry was trying to figure out how to affix temporary bookmarks in his hymn book without damaging its pages. The solution to both these problems was the invention of the brilliantly simple yet phenomenally successful Post-It note. Such examples give lie to the claim that ingenious, designing minds are responsible for human creativity and invention. Far more banal and mechanical forces may be at work; forces that are fundamentally connected to the laws of science."
        },
        {
          "ref": "7",
          "text": "The notions of insight, creativity and genius are often invoked, but they remain vague and of doubtful scientific utility, especially when one considers the diverse and enduring contributions of individuals such as Plato, Leonardo da Vinci, Shakespeare, Beethoven, Galileo, Newton, Kepler, Curie, Pasteur and Edison. These notions merely label rather than explain the evolution of human innovations. We need another approach, and there is a promising candidate. The Law of Effect was advanced by psychologist Edward Thorndike in 1898, some 40 years after Charles Darwin published his groundbreaking work on biological evolution, On the Origin of Species. This simple law holds that organisms tend to repeat successful behaviors and to refrain from performing unsuccessful ones. Just like Darwin’s Law of Natural Selection, the Law of Effect"
        },
        {
          "ref": "8",
          "text": "involves an entirely mechanical process of variation and selection, without any end objective in sight."
        },
        {
          "ref": "9",
          "text": "Of course, the origin of human innovation demands much further study. In particular, the provenance of the raw material on which the Law of Effect operates is not as clearly known as that of the genetic mutations on which the Law of Natural Selection operates. The generation of novel ideas and behaviors may not be entirely random, but constrained by prior successes and failures - of the current individual (such as Bohr) or of predecessors (such as Nicholson). The time seems right for abandoning the naive notions of intelligent design and genius, and for scientifically exploring the true origins of creative behavior."
        }
      ],
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 27–31",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 27,
              "prompt": "The purpose of the first paragraph is to",
              "options": [
                {
                  "key": "A",
                  "text": "defend particular ideas."
                },
                {
                  "key": "B",
                  "text": "compare certain beliefs."
                },
                {
                  "key": "C",
                  "text": "disprove a widely held view."
                },
                {
                  "key": "D",
                  "text": "outline a common assumption."
                }
              ],
              "answer": "D",
              "explanation": "Scientific discovery is popularly believed to result from the sheer genius of such intellectual stars as naturalist Charles Darwin and theoretical physicist Albert Einstein.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Scientific discovery is popularly believed to result from the sheer genius of such intellectual stars as naturalist Char"
              }
            },
            {
              "number": 28,
              "prompt": "What are the writers doing in the second paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "criticising an opinion"
                },
                {
                  "key": "B",
                  "text": "justifying a standpoint"
                },
                {
                  "key": "C",
                  "text": "explaining an approach"
                },
                {
                  "key": "D",
                  "text": "supporting an argument"
                }
              ],
              "answer": "A",
              "explanation": "However, we believe that it largely misrepresents the real nature of scientific discovery, as well as that of creativity and innovation in many other realms of human endeavor.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "However, we believe that it largely misrepresents the real nature of scientific discovery, as well as that of creativity"
              }
            },
            {
              "number": 29,
              "prompt": "In the third paragraph, what do the writers suggest about Darwin and Einstein?",
              "options": [
                {
                  "key": "A",
                  "text": "They represent an exception to a general rule."
                },
                {
                  "key": "B",
                  "text": "Their way of working has been misunderstood."
                },
                {
                  "key": "C",
                  "text": "They are an ideal which others should aspire to."
                },
                {
                  "key": "D",
                  "text": "Their achievements deserve greater recognition."
                }
              ],
              "answer": "A",
              "explanation": "Setting aside such greats as Darwin and Einstein - whose monumental contributions are duly celebrated - we suggest that innovation is more a process of trial and error, where two steps forward may sometimes come with one step back, as well as one or more steps to the right or left.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "Setting aside such greats as Darwin and Einstein - whose monumental contributions are duly celebrated - we suggest that "
              }
            },
            {
              "number": 30,
              "prompt": "John Nicholson is an example of a person whose idea",
              "options": [
                {
                  "key": "A",
                  "text": "established his reputation as an influential scientist."
                },
                {
                  "key": "B",
                  "text": "was only fully understood at a later point in history."
                },
                {
                  "key": "C",
                  "text": "laid the foundations for someone else’s breakthrough."
                },
                {
                  "key": "D",
                  "text": "initially met with scepticism from the scientific community."
                }
              ],
              "answer": "C",
              "explanation": "Niels Bohr, the Nobel prize-winning father of modern atomic theory, jumped off from this interesting idea to conceive his now-famous model of the atom.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Niels Bohr, the Nobel prize-winning father of modern atomic theory, jumped off from this interesting idea to conceive hi"
              }
            },
            {
              "number": 31,
              "prompt": "What is the key point of interest about the ‘acey-deucy’ stirrup placement?",
              "options": [
                {
                  "key": "A",
                  "text": "the simple reason why it was invented"
                },
                {
                  "key": "B",
                  "text": "the enthusiasm with which it was adopted"
                },
                {
                  "key": "C",
                  "text": "the research that went into its development"
                },
                {
                  "key": "D",
                  "text": "the cleverness of the person who first used it"
                }
              ],
              "answer": "A",
              "explanation": "No. He suffered a leg injury, which left him unable to fully bend his left knee. His modification just happened to coincide with enhanced left-hand turning performance.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "No. He suffered a leg injury, which left him unable to fully bend his left knee. His modification just happened to coinc"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 32–36",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 32,
              "prompt": "Acknowledging people such as Plato or da Vinci as geniuses will help us understand the process by which great minds create new ideas.",
              "answer": "NO",
              "explanation": "These notions merely label rather than explain the evolution of human innovations. We need another approach, and there is a promising candidate.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "These notions merely label rather than explain the evolution of human innovations. We need another approach, and there i"
              }
            },
            {
              "number": 33,
              "prompt": "The Law of Effect was discovered at a time when psychologists were seeking a scientific reason why creativity occurs.",
              "answer": "NOT GIVEN",
              "explanation": "The Law of Effect was advanced by psychologist Edward Thorndike in 1898, some 40 years after Charles Darwin published his groundbreaking work on biological evolution, On the Origin of Species.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "The Law of Effect was advanced by psychologist Edward Thorndike in 1898, some 40 years after Charles Darwin published hi"
              }
            },
            {
              "number": 34,
              "prompt": "The Law of Effect states that no planning is involved in the behaviour of organisms.",
              "answer": "YES",
              "explanation": "the Law of Effect involves an entirely mechanical process of variation and selection, without any end objective in sight."
            },
            {
              "number": 35,
              "prompt": "The Law of Effect sets out clear explanations about the sources of new ideas and behaviours.",
              "answer": "NO",
              "explanation": "In particular, the provenance of the raw material on which the Law of Effect operates is not as clearly known as that of the genetic mutations on which the Law of Natural Selection operates.",
              "evidence": {
                "sectionId": "p3",
                "ref": "9",
                "quote": "In particular, the provenance of the raw material on which the Law of Effect operates is not as clearly known as that of"
              }
            },
            {
              "number": 36,
              "prompt": "Many scientists are now turning away from the notion of intelligent design and genius.",
              "answer": "NOT GIVEN",
              "explanation": "The time seems right for abandoning the naive notions of intelligent design and genius, and for scientifically exploring the true origins of creative behavior.",
              "evidence": {
                "sectionId": "p3",
                "ref": "9",
                "quote": "The time seems right for abandoning the naive notions of intelligent design and genius, and for scientifically exploring"
              }
            }
          ],
          "id": "g32"
        },
        {
          "type": "completion",
          "label": "Questions 37–40",
          "instructions": "Complete the summary using the list of words, A–G, below.",
          "summaryTitle": "",
          "summaryText": "The origins of creative behaviour\nThe traditional view of scientific discovery is that breakthroughs happen when a single great\nmind has sudden {37} . Although this can occur, it is not often the case.\nAdvances are more likely to be the result of a longer process. In some cases, this process\ninvolves {38} , such as Nicholson’s theory about proto-elements. In others,\nsimple necessity may provoke innovation, as with Westrope’s decision to modify the position of\nhis riding stirrups. There is also often an element of {39} , for example, the\ncoincidence of ideas that led to the invention of the Post-It note. With both the Law of Natural\n\nSelection and the Law of Effect, there may be no clear {40} involved, but\nmerely a process of variation and selection.\n \nA. invention B. goals C. compromise D. mistakes E. luck\nF. inspirationG. experiments",
          "wordBank": [
            {
              "key": "A",
              "text": "invention"
            },
            {
              "key": "B",
              "text": "goals"
            },
            {
              "key": "C",
              "text": "compromise"
            },
            {
              "key": "D",
              "text": "mistakes"
            },
            {
              "key": "E",
              "text": "luck"
            },
            {
              "key": "F",
              "text": "inspiration"
            },
            {
              "key": "G",
              "text": "experiments"
            }
          ],
          "questions": [
            {
              "number": 37,
              "prompt": "",
              "answer": "F",
              "explanation": "Conventional wisdom also places great weight on insight in promoting breakthrough scientific achievements, as if ideas spontaneously pop into someone’s head - fully formed and functional.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Conventional wisdom also places great weight on insight in promoting breakthrough scientific achievements, as if ideas s"
              }
            },
            {
              "number": 38,
              "prompt": "",
              "answer": "D",
              "explanation": "These successes are all the more noteworthy given the fact that Nicholson was wrong about the presence of proto-elements: they do not actually exist.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "These successes are all the more noteworthy given the fact that Nicholson was wrong about the presence of proto-elements"
              }
            },
            {
              "number": 39,
              "prompt": "",
              "answer": "E",
              "explanation": "Plenty of other stories show that fresh advances can arise from error, misadventure, and also pure serendipity - a happy accident.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Plenty of other stories show that fresh advances can arise from error, misadventure, and also pure serendipity - a happy"
              }
            },
            {
              "number": 40,
              "prompt": "",
              "answer": "B",
              "explanation": "the Law of Effect involves an entirely mechanical process of variation and selection, without any end objective in sight."
            }
          ],
          "id": "g37"
        }
      ]
    }
  ]
}
$c17t2r$,
  true
);
