DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 21',
  'Test 4',
  'academic',
  3600,
  $c21t4r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The problems and benefits created by the spread of the water hyacinth in Kenya",
      "passage": [
        {
          "ref": "1",
          "text": "Water hyacinth (Eichhornia crassipes), an aquatic plant native to South America, first appeared in countries in Africa in the early 1900s. Scientists there called it the 'world's worst aquatic weed', after it spread from the southernmost tip of Africa in the early 1900s and started obstructing major dams and rivers."
        },
        {
          "ref": "2",
          "text": "In east Africa the plant arrived with Belgian colonists in Rwanda, who liked the look of its glossy leaves and delicate purple flowers floating in their ponds. But by the 1980s, it had 'escaped' out of the country via the Kagera river and made its way downstream to Lake Victoria. There, with no natural predators and perfect temperature conditions, the plant began spreading in the open water, blocking fishing routes and providing a new habitat for disease-carrying mosquitoes. For the women who smoke fish from the lake to sell it has meant declining income, as the boats that once brought the fish to shore by the hundreds struggle to navigate through the mass of plants. But water hyacinth isn't their only headache. In order to smoke the fish that they buy, they must gather huge quantities of firewood, sometimes walking as far as 10km each way to collect enough to complete their work. And each day as they cook, they breathe in the thick, grey smoke. About three out of four families in Kenya depend on wood or charcoal to cook their daily meals, and the rate is even higher in rural areas, Kenya's latest demographic and health survey shows. Using solid fuels like these for cooking increases indoor pollution. The World Health Organization estimates that about 14,300 Kenyans die annually as a result of indoor air pollution - most of which is caused by cooking and heating sources."
        },
        {
          "ref": "3",
          "text": "Some years ago, on the shores of Lake Victoria, huge piles of water hyacinth that villagers had taken out of the water in an attempt to clear it were a common sight. But buried in those decaying waxy leaves was a renewable energy gold mine. It turns out the floating plant isn't just good at spreading - its foliage also contains a high ratio of carbon to nitrogen. It's a magic combination"
        },
        {
          "ref": "4",
          "text": "that has captivated researchers' imaginations since as early as the 1980s when, across the world, they began to explore its potential as a biofuel. Just about 4kg of the dried plant would be enough to cater for a large family's daily energy needs, early research predicted. In 2014, Nigerian academics announced they had got better yields of biofuel gas when they mixed the plant with chicken manure. A few years later, Kenyan scientists confirmed what their Nigerian peers and others had already found: manure worked to improve the process of converting the weed into gas."
        },
        {
          "ref": "5",
          "text": "In 2018, the technology came to a village on the shore of Lake Victoria, called Dunga. The project promised a two-for-one solution to the dual menaces of the water hyacinth and dependence on firewood. The community received a pair of donated biogas digesters - machines that would transform a mix of water hyacinth and cow dung into biogas for cooking."
        },
        {
          "ref": "6",
          "text": "The digesters work a bit like a stomach. The mixture goes in one end - think of it as a mouth - and over the next 20 to 30 days, it goes through a fermentation process and breaks down, giving off gas that comes out the other end. From there, the clean-burning gas is passed through pipes to the point of use, just like traditional domestic gas. In Dunga, the machines produce enough gas to serve about 60% of the village's population. It is used in domestic stoves and for other household tasks such as purifying water and incubating chicks."
        },
        {
          "ref": "7",
          "text": "The project is testing whether biogas can provide an effective alternative to firewood and charcoal in rural Kenyan communities. Results indicate that the programme seems to be working. The women who smoke the lake fish are already getting sick less often. Besides, they don't have to devote a lot of time every day to gathering firewood, which is a great relief. As a result, they're able to make more money for their families from other enterprises."
        },
        {
          "ref": "8",
          "text": "Kanyiva Muindi is an epidemiologist and air pollution research fellow at the African Population and Health Research Centre in Nairobi. She says families who switch to the smokeless cooking method could expect fewer respiratory diseases. Women, young girls and children are particularly vulnerable because they are the ones who cook in the kitchen or outside over fires. How much better the biogas stoves will be for the community's health still needs more research, says Dominic Kahumbu Wanjihia, Biogas International's chief executive. But unless the price of the machines drops, it's pretty clear that most communities will never be able to afford any, since they sell for about $750."
        },
        {
          "ref": "9",
          "text": "Kanyiva says affordability is a challenge worth addressing, given the huge health and environmental dangers posed by 'dirty' fuels such as wood, charcoal and kerosene. If biogas could become affordable on a large scale, she says it 'would be life-changing for millions on the African continent and beyond'."
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
              "prompt": "Water hyacinth was introduced as a decorative plant in east Africa.",
              "answer": "TRUE",
              "explanation": "In east Africa the plant arrived with Belgian colonists in Rwanda, who liked the look of its glossy leaves and delicate purple flowers floating in their ponds",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "In east Africa the plant arrived with Belgian colonists in Rwanda, who liked the look of its glossy leaves and delicate "
              }
            },
            {
              "number": 2,
              "prompt": "Fishermen took some water hyacinth plants to Lake Victoria.",
              "answer": "FALSE",
              "explanation": "it had ‘escaped’ out of the country via the Kagera river and made its way downstream to Lake Victoria"
            },
            {
              "number": 3,
              "prompt": "It is now difficult to force boats through the thick water hyacinth on Lake Victoria.",
              "answer": "TRUE",
              "explanation": "as the boats that once brought the fish to shore by the hundreds struggle to navigate through the mass of plants",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "as the boats that once brought the fish to shore by the hundreds struggle to navigate through the mass of plants"
              }
            },
            {
              "number": 4,
              "prompt": "Chemicals produced by the water hyacinth plants are affecting the numbers of fish in Lake Victoria.",
              "answer": "NOT GIVEN",
              "explanation": "There, with no natural predators and perfect temperature conditions, the plant began spreading in the open water, blocking fishing routes and providing a new habitat for disease-carrying mosquitoes",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "There, with no natural predators and perfect temperature conditions, the plant began spreading in the open water, blocki"
              }
            },
            {
              "number": 5,
              "prompt": "Cooking with charcoal has been proved to be even worse for people's health than cooking with wood. === PAGE 5 ===",
              "answer": "NOT GIVEN",
              "explanation": "About three out of four families in Kenya depend on wood or charcoal to cook their daily meals, and the rate is even higher in rural areas, Kenya’s latest demographic and health survey shows. Using solid fuels like these for cooking increases indoor pollution",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "About three out of four families in Kenya depend on wood or charcoal to cook their daily meals, and the rate is even hig"
              }
            },
            {
              "number": 6,
              "prompt": "People found it impossible to remove much water hyacinth from Lake Victoria.",
              "answer": "FALSE",
              "explanation": "Some years ago, on the shores of Lake Victoria, huge piles of water hyacinth that villagers had taken out of the water in an attempt to clear it were a common sight",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "Some years ago, on the shores of Lake Victoria, huge piles of water hyacinth that villagers had taken out of the water i"
              }
            },
            {
              "number": 7,
              "prompt": "Scientists started investigating the possibility of using water hyacinth to generate biogas in the last century.",
              "answer": "TRUE",
              "explanation": "It’s a magic combination that has captivated researchers’ imaginations since as early as the 1980s when, across the world, they began to explore its potential as a biofuel"
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 8–10",
          "instructions": "Complete the flow-chart below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "↓"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "subheader",
              "text": "↓"
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "subheader",
              "text": "↓"
            }
          ],
          "questions": [
            {
              "number": 8,
              "prompt": "First, place water hyacinth together with some _______ into a digester",
              "answer": [
                "cow"
              ],
              "wordLimit": 2,
              "explanation": "dung The community received a pair of donated biogas digesters - machines that would transform a mix of water hyacinth and cow dung into biogas for cooking"
            },
            {
              "number": 9,
              "prompt": "Leave the mixture until the _______ is completed",
              "answer": [
                "fermentation"
              ],
              "wordLimit": 2,
              "explanation": "(process) The mixture goes in one end - think of it as a mouth - and over the next 20 to 30 days, it goes through a fermentation process and breaks down, giving off gas that comes out the other end"
            },
            {
              "number": 10,
              "prompt": "Capture the gas emitted by the digester and use _______ to transport it to individual homes",
              "answer": [
                "pipes"
              ],
              "wordLimit": 2,
              "explanation": "From there, the clean-burning gas is passed through pipes to the point of use, just like traditional domestic gas",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "From there, the clean-burning gas is passed through pipes to the point of use, just like traditional domestic gas"
              }
            }
          ],
          "formTitle": "Generating biogas for domestic use in Dunga",
          "id": "g8"
        },
        {
          "type": "completion",
          "label": "Questions 11–13",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Benefits for the women in the village of cooking with biogas no need for them to spend so much"
            },
            {
              "kind": "question",
              "number": 11
            },
            {
              "kind": "static",
              "text": "collecting fuel they can focus on different tasks that bring in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 12
            },
            {
              "kind": "static",
              "text": "they are less likely to experience certain diseases connected to burning wood",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 13
            }
          ],
          "questions": [
            {
              "number": 11,
              "prompt": "_______",
              "answer": [
                "time"
              ],
              "wordLimit": 1,
              "explanation": "Besides, they don’t have to devote a lot of time every day to gathering firewood, which is a great relief"
            },
            {
              "number": 12,
              "prompt": "_______",
              "answer": [
                "money"
              ],
              "wordLimit": 1,
              "explanation": "As a result, they’re able to make more money for their families from other enterprises"
            },
            {
              "number": 13,
              "prompt": "Drawbacks of changing to biogas the _______ of the digesters is beyond the reach of most villages",
              "answer": [
                "price"
              ],
              "wordLimit": 1,
              "explanation": "But unless the price of the machines drops, it’s pretty clear that most communities will never be able to afford any, since they sell for about $750",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "But unless the price of the machines drops, it’s pretty clear that most communities will never be able to afford any, si"
              }
            }
          ],
          "formTitle": "Cooking with biogas in Dunga",
          "id": "g11"
        }
      ]
    },
    {
      "id": "p2",
      "title": "How could multilingualism benefit India's poorest schoolchildren?",
      "passage": [
        {
          "ref": "1",
          "text": "The crowded and bustling streets of Delhi teem with life. Stop to listen and, above the din of rickshaws and buses, you'll hear a multitude of languages, as more than 20 million people go about their daily lives. Many were born and raised here, and many millions more have recently made India's capital their home, having moved from surrounding neighbourhoods, cities and states or across the country, often in the hope of gaining better jobs and a better life. Some arrive speaking fluent Hindi, the dominant language in Delhi (and the official language of government), but many arrive speaking any number of India's 22 officially recognised languages, let alone the hundreds of regional languages in a country of more than 1.3 billion people."
        },
        {
          "ref": "2",
          "text": "A team of researchers led by Professor Ianthi Tsimpli of Cambridge University is currently working on a project collecting data on 1,000 primary-age children in Delhi and the cities of Hyderabad and Bihar. The overriding aim of the four-year project, called 'Multilingualism and Multiliteracy', is to find out why in a country where multilingualism is so common (more than 255 million people in India speak at least two languages, and nearly 90 million speak three or more languages), the many benefits of speaking more than one language, observed in schools in Europe for instance, do not apply to many of India's schoolchildren."
        },
        {
          "ref": "3",
          "text": "'Each year across India, 600,000 children are tested, and year after year over 50% of children in Standard 5 [ten-year-olds] cannot read a Standard 2 [seven-year-olds] task fluently, and just under 50% of them cannot solve a Standard 2 subtraction task,' says Tsimpli. She explains that low educational achievement can lead to many of these students dropping out of school - a problem disproportionately affecting female students."
        },
        {
          "ref": "4",
          "text": "Tsimpli and her colleagues are investigating whether these low learning outcomes could be caused by an Indian school system where the language that children are taught in often differs from the language used at home. The research project, which focuses on 8 to 11-year-old schoolchildren in rural and urban areas, collects data on whether the schoolchildren live in slum* or non-slum areas. Many of the children have moved from remote, rural areas to urban areas. They are so poor they"
        },
        {
          "ref": "5",
          "text": "have to live in slums and, as a result of migration, they may speak languages that are different from the regional language."
        },
        {
          "ref": "6",
          "text": "Having already tested 1,000 children, the researchers will now embark on retesting them. They intend to look not only at test results, but also at variables such as the standard of schooling, the environment and the teaching practices themselves. It's possible that one of the causes of low performance is the lack of pupil-centred teaching methods; in many Indian primary schools the teacher dominates and there is little room for independent learning."
        },
        {
          "ref": "7",
          "text": "Although the findings are at a preliminary stage, Tsimpli and her team have found that the medium of instruction used in schools, especially English, may hold back those children who have little familiarity with, or exposure to, the language before starting school and outside of school life. According to Tsimpli, most of the evidence from this and other projects shows that English instruction for children from low socio-economic areas might not be the best way for them to learn, at least in the first three years of primary education."
        },
        {
          "ref": "8",
          "text": "'What we would recommend for everyone, not just low socio-economic status children, would be to start learning in the language they feel comfortable learning in ... English can still be used, but perhaps not as the medium of instruction in primary schools. It could, for example, be one of the subjects that are being taught alongside other subjects. We are not suggesting that English be withdrawn - that ship has sailed - but we perhaps have to think more about learner needs. There is perhaps too much uniformity in teaching and less tailoring to the children's language abilities and needs,' says Tsimpli."
        },
        {
          "ref": "9",
          "text": "While the preliminary results show there is no difference in general intelligence among boys and girls from slum areas versus those from urban poor backgrounds, an unanticipated finding has been that children from slum backgrounds do not seem to lag behind children from other urban poor backgrounds - and in some cases outperform them (e.g. in numeracy and literacy tasks). According to the researchers, this unexpected finding may be down to the life experiences of children growing up in slums. They are likely to mature faster and come into closer contact with the numeracy skills essential for day-to-day survival."
        },
        {
          "ref": "10",
          "text": "The project has already caught the attention of government ministers, who are keen to use the findings of the study to inform and adjust school policy in Delhi and the wider state. 'They are as keen as us to understand how the challenging context of deprivation can be attenuated when focusing on the languages children learn and use while at school. Our findings don't mean you're"
        },
        {
          "ref": "11",
          "text": "doomed if you're poor. It may be that these low learning outcomes are because of the way education is provided in India, with a huge focus on Hindi and English as the mediums of instruction, to the potential detriment of children unfamiliar with those languages,' explains Tsimpli. 'Language is central to the way knowledge is transferred - so the medium of instruction is obviously hugely influential. We hope to ... show that problem solving, numeracy and literacy can and do improve in children who are educated in a language of instruction they know. The trick may be to bridge school skills with life skills and make use of the richness of a child's life experience to help them learn in the most effective ways possible,' says Tsimpli."
        },
        {
          "ref": "12",
          "text": "* slum: a very densely populated area in which the infrastructure is incomplete and services inadequate or non-existent"
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 14–19",
          "instructions": "Complete the summary using the list of words, A–J, below.",
          "summaryTitle": "",
          "summaryText": "Complete the summary using the list of words, A-J, below.\nMultilingualism in Delhi\nThe city of Delhi has a {14} and as you walk through its streets you hear\npeople speaking a variety of languages. Some of them have spent their entire life in Delhi, while\nothers are {15} . Whether they have come from a\n{16} or have travelled from the other side of India, they have all come in\nsearch of things such as improved {17} .\nA team of researchers led by Professor Ianthi Tsimpli of Cambridge University is collecting data\non primary-age schoolchildren in Delhi and other Indian cities. The {18} of\nthe research is to discover why multilingual Indian schoolchildren do not experience\n{19} to those that multilingual schoolchildren in Europe experience.\nA. basic outlookB. employment opportunities C. wealthy visitors\nD. distant country E. primary objective F. similar advantages\nG. thriving economyH. nearby districtI. dense population\nJ. new immigrants",
          "wordBank": [
            {
              "key": "A",
              "text": "basic outlook"
            },
            {
              "key": "B",
              "text": "employment opportunities"
            },
            {
              "key": "C",
              "text": "wealthy visitors"
            },
            {
              "key": "D",
              "text": "distant country"
            },
            {
              "key": "E",
              "text": "primary objective"
            },
            {
              "key": "F",
              "text": "similar advantages"
            },
            {
              "key": "G",
              "text": "thriving economy"
            },
            {
              "key": "H",
              "text": "nearby district"
            },
            {
              "key": "I",
              "text": "dense population"
            },
            {
              "key": "J",
              "text": "new immigrants"
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "",
              "answer": "I",
              "explanation": "The crowded and bustling streets of Delhi teem with life. Stop to listen and, above the din of rickshaws and buses, you’ll hear a multitude of languages, as more than 20 million people go about their daily lives",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "The crowded and bustling streets of Delhi teem with life. Stop to listen and, above the din of rickshaws and buses, you’"
              }
            },
            {
              "number": 15,
              "prompt": "",
              "answer": "J",
              "explanation": "Many were born and raised here, and many millions more have recently made India’s capital their home, having moved from surrounding neighbourhoods, cities and states or across the country, often in the hope of gaining better jobs and a better life",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "Many were born and raised here, and many millions more have recently made India’s capital their home, having moved from "
              }
            },
            {
              "number": 16,
              "prompt": "",
              "answer": "H",
              "explanation": "Many were born and raised here, and many millions more have recently made India’s capital their home, having moved from surrounding neighbourhoods, cities and states or across the country, often in the hope of gaining better jobs and a better life",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "Many were born and raised here, and many millions more have recently made India’s capital their home, having moved from "
              }
            },
            {
              "number": 17,
              "prompt": "",
              "answer": "B",
              "explanation": "Many were born and raised here, and many millions more have recently made India’s capital their home, having moved from surrounding neighbourhoods, cities and states or across the country, often in the hope of gaining better jobs and a better life",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "Many were born and raised here, and many millions more have recently made India’s capital their home, having moved from "
              }
            },
            {
              "number": 18,
              "prompt": "",
              "answer": "E",
              "explanation": "The overriding aim of the four-year project, called ‘Multilingualism and Multiliteracy’, is to find out why in a country where multilingualism is so common (more than 255 million people in India speak at least two languages, and nearly 90 million speak three or more languages), the many benefits of speaking more than one language, observed in schools in Europe for instance, do not apply to many of India’s schoolchildren",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "The overriding aim of the four-year project, called ‘Multilingualism and Multiliteracy’, is to find out why in a country"
              }
            },
            {
              "number": 19,
              "prompt": "",
              "answer": "F",
              "explanation": "The overriding aim of the four-year project, called 'Multilingualism and Multiliteracy', is to find out why in a country where multilingualism is so common (more than 255 million people in India speak at least two languages, and nearly 90 million speak three or more languages), the many benefits of speaking more than one language, observed in schools in Europe for instance, do not apply to many of India's schoolchildren",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "The overriding aim of the four-year project, called 'Multilingualism and Multiliteracy', is to find out why in a country"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 20–23",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 2? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 20,
              "prompt": "Ten-year-old Indian schoolchildren tend to perform better in literacy tests than in numeracy tests. === PAGE 11 ===",
              "answer": "NO",
              "explanation": "‘Each year across India, 600,000 children are tested, and year after year over 50% of children in Standard 5 [ten-year-olds] cannot read a Standard 2 [seven-year-olds] task fluently, and just under 50% of them cannot solve a Standard 2 subtraction task,’ says Tsimpli"
            },
            {
              "number": 21,
              "prompt": "Tsimpli had problems convincing some female students to take part in the study.",
              "answer": "NOT GIVEN",
              "explanation": "She explains that low educational achievement can lead to many of these students dropping out of school - a problem disproportionately affecting female students",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "She explains that low educational achievement can lead to many of these students dropping out of school - a problem disp"
              }
            },
            {
              "number": 22,
              "prompt": "Tsimpli and her team wanted to know if there is a connection between poor academic performance and being taught in an unfamiliar language.",
              "answer": "YES",
              "explanation": "Tsimpli and her colleagues are investigating whether these low learning outcomes could be caused by an Indian school system where the language that children are taught in often differs from the language used at home",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "Tsimpli and her colleagues are investigating whether these low learning outcomes could be caused by an Indian school sys"
              }
            },
            {
              "number": 23,
              "prompt": "The researchers have decided against investigating the impact teaching methodology may have on learning outcomes.",
              "answer": "NO",
              "explanation": "They intend to look not only at test results, but also at variables such as the standard of schooling, the environment and the teaching practices themselves",
              "evidence": {
                "sectionId": "p2",
                "ref": "6",
                "quote": "They intend to look not only at test results, but also at variables such as the standard of schooling, the environment a"
              }
            }
          ],
          "id": "g20"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 24–26",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 24,
              "prompt": "What point does the writer make about primary schools in India in the sixth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Exposure to English outside of school is of limited benefit."
                },
                {
                  "key": "B",
                  "text": "Children learn English more easily when they are well motivated."
                },
                {
                  "key": "C",
                  "text": "Poor children may be disadvantaged further by being instructed in English."
                },
                {
                  "key": "D",
                  "text": "There is little consistency across schools with regard to instruction in English."
                }
              ],
              "answer": "C",
              "explanation": "According to Tsimpli, most of the evidence from this and other projects shows that English instruction for children from low socio-economic areas might not be the best way for them to learn, at least in the first three years of primary education",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "According to Tsimpli, most of the evidence from this and other projects shows that English instruction for children from"
              }
            },
            {
              "number": 25,
              "prompt": "What is Tsimpli suggesting when she uses the phrase 'that ship has sailed'?",
              "options": [
                {
                  "key": "A",
                  "text": "The findings of the report may be of little help to some Indian schoolchildren."
                },
                {
                  "key": "B",
                  "text": "Instruction in English could be better adapted to the needs of schoolchildren."
                },
                {
                  "key": "C",
                  "text": "Schools have had limited success in teaching English as a separate subject."
                },
                {
                  "key": "D",
                  "text": "It is too late to remove English completely as a language of instruction in schools."
                }
              ],
              "answer": "D",
              "explanation": "We are not suggesting that English be withdrawn - that ship has sailed - but we perhaps have to think more about learner needs",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "We are not suggesting that English be withdrawn - that ship has sailed - but we perhaps have to think more about learner"
              }
            },
            {
              "number": 26,
              "prompt": "In the eighth paragraph, what do we learn has surprised researchers?",
              "options": [
                {
                  "key": "A",
                  "text": "Boys and girls from low socio-economic groups have similar general intelligence levels."
                },
                {
                  "key": "B",
                  "text": "The age at which children move into a slum does not affect their academic performance."
                },
                {
                  "key": "C",
                  "text": "Slum children and children from other urban poor backgrounds have similar life experiences."
                },
                {
                  "key": "D",
                  "text": "The literacy and numeracy skills of slum children are not lower than those of children from other urban poor backgrounds."
                }
              ],
              "answer": "D",
              "explanation": "an unanticipated finding has been that children from slum backgrounds do not seem to lag behind children from other urban poor backgrounds - and in some cases outperform them (e.g. in numeracy and literacy tasks)",
              "evidence": {
                "sectionId": "p2",
                "ref": "9",
                "quote": "an unanticipated finding has been that children from slum backgrounds do not seem to lag behind children from other urba"
              }
            }
          ],
          "id": "g24"
        }
      ]
    },
    {
      "id": "p3",
      "title": "You should spend 20 minutes on Questions 27-40, which are based on Reading Passa",
      "passage": [
        {
          "ref": "1",
          "text": "You should spend 20 minutes on Questions 27-40, which are based on Reading Passage 3 below. The Globemakers: The Curious Story of an Ancient Craft A review of Peter Bellerby's book The Globemakers In 2008, Peter Bellerby, who lived in London, wanted to give his father a model globe for his eightieth birthday. What seemed simple enough to start with triggered an almost obsessive, decade-long journey, marked by a series of obstacles that would have deterred anyone less determined. It ended with his establishing the world's only bespoke globemaking company. The first surprise in The Globemakers, Bellerby's account of this impulsive enterprise, is that obtaining such a globe was not simply a matter of a quick online order and a repressed sigh at the shipping costs. After all, contrary to stubbornly held popular views of our ancestors' geographical ignorance, we have known that the world is spherical since at least the 6th century BCE. The ancient Greek philosopher Plato in his work Phaedo likened it to a leather ball, while the accolade of producing the first recorded globe goes to the ancient Greek philosopher Crates of Mallus, who is said to have made one in around 150 BCE. Surely, Bellerby reasoned, a good-quality globe wouldn't be difficult to find."
        },
        {
          "ref": "2",
          "text": "Nearly two millennia later, however, it seemed that the art of globemaking had been largely forgotten. Bellerby came across shoddy commercial versions designed for school classrooms and genuine antiques in auction houses that would have bust his budget. Even his trips to Morocco and India, where surely the knowledge of artisan cartographers* had been preserved, drew a blank. Not one to be easily thwarted, Bellerby decided to make his own good-quality globe. In the process, almost everything that could possibly go wrong did so. Even the shape of the Earth posed a problem, as it is not quite a perfect sphere, but oblate (slightly flattened at the poles). Having decided to compromise and opt for two half-spherical pieces that could be fitted together, he was unable to discover anyone capable of casting moulds with sufficient accuracy to ensure that he would not be left with two half-spheres that were not quite the same circumference. Even after he eventually resolved this issue, extracting these from the moulds resulted in piles of cracked plaster of Paris** and clouds of choking dust in the workshop he had set up at the rear of his house."
        },
        {
          "ref": "3",
          "text": "This series of abortive experiments taught Bellerby a lot about the challenges of making globes, which he communicates here to the reader. Finding just the right way to prise the globes from the mould - a high-end air compressor finally did the trick - and locating the right paper and inks with which to make the gores (the sections of flat sheet mapping that are pasted onto the spherical globe) without the ink seeping out to create a mushy, unreadable mess took months and an alarming chunk out of his bank balance. Bellerby's frustration at the painstaking process of attaching the gores to the globe surface - after having found a glue with precisely the right adhesive qualities - is palpable. Right at the end of the process, he learnt that the paper had stretched slightly and so the final one overlapped the first by a centimetre (which may not seem a great deal, but when that represents 2 per cent of the Earth's diameter, it's equivalent to obliterating the Himalayas or wiping out Chile)."
        },
        {
          "ref": "4",
          "text": "Bellerby's account of the technical challenges of globe production is interspersed with a series of interludes on great globemakers of the past and cartographic history in general. Purists might wish for more map-making details, but Bellerby clearly found a kindred spirit in Martin Behaim. He was the Nuremberg entrepreneur who in 1492 created the Erdapfel, the world's oldest surviving globe, beautifully finished by a workshop of painters and other craftsmen, only to find that the explorer Christopher Columbus had stumbled upon the Americas the very same year, rendering his masterpiece instantly out of date. Something of Bellerby's unflinching ambition is reflected in the even more heroic efforts of the Italian cartographer Vincenzo Coronelli, who, in the seventeenth century, created two globes for Louis XIV of France. It took him twenty years to complete the monstrous pair, whose vast bulk - each with a diameter of around four metres - can still be admired in the National Library of France in Paris."
        },
        {
          "ref": "5",
          "text": "Although a celebration of the revival of an ancient craft, Bellerby's book is also a lament for the fading away of centuries-old traditions. When he embarked on his globemaking odyssey, he struggled to find artisans with the skills to make the right moulds for the globes or foundries that could shape the meridians (the metal frames which girdle globes) in just the right way. Although he finally located the right craftsmen, some simply dropping in, serendipitously, to his workshop (by now in more suitable premises than his back room), many of these have now retired or passed away."
        },
        {
          "ref": "6",
          "text": "Bellerby's father finally did receive his eightieth birthday present, albeit two years late. Bellerby went on to found a company which now turns out over six hundred globes a year for customers who can have their own tiny village marked or more unusual requests fulfilled. His book, beautifully"
        },
        {
          "ref": "7",
          "text": "illustrated with photographs of the various stages of his venture and a few illustrations of historic globes and maps, is hardly a blueprint for commercial success. But it is more than enough to stir up admiration for the craftsmanship of the great mapmakers of the past and the obsessive determination of a modern successor who revived their almost moribund art. * cartographer: someone involved in the science or practice of drawing maps ** plaster of Paris: a quick-setting plaster consisting of a fine white powder that hardens when moistened and allowed to dry"
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 27–32",
          "instructions": "Complete the summary using the list of words, A–J, below.",
          "summaryTitle": "",
          "summaryText": "A birthday gift\nPeter Bellerby's plan to give his father a globe for his birthday was an unexpectedly\n{27} for which he had to overcome {28} .\nHe soon learnt that a straightforward {29} would not be possible. Some\n{30} that had been intended for {31} were available,\nas were some expensive antique globes, but these were beyond his budget. He even travelled\nto places where people might still have the {32} , but Bellerby could not\nfind what he wanted.\nA. educational useB. rare materials C. inferior makes\nD. product exchange markets E. necessary skills F. international\nG. challenging taskH. memorable objectI. internet purchase\nJ. numerous problems",
          "wordBank": [
            {
              "key": "A",
              "text": "educational use"
            },
            {
              "key": "B",
              "text": "rare materials"
            },
            {
              "key": "C",
              "text": "inferior makes"
            },
            {
              "key": "D",
              "text": "product exchange markets"
            },
            {
              "key": "E",
              "text": "necessary skills"
            },
            {
              "key": "F",
              "text": "international"
            },
            {
              "key": "G",
              "text": "challenging task"
            },
            {
              "key": "H",
              "text": "memorable object"
            },
            {
              "key": "I",
              "text": "internet purchase"
            },
            {
              "key": "J",
              "text": "numerous problems"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "",
              "answer": "G",
              "explanation": "What seemed simple enough to start with triggered an almost obsessive, decade-long journey, marked by a series of obstacles that would have deterred anyone less determined",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "What seemed simple enough to start with triggered an almost obsessive, decade-long journey, marked by a series of obstac"
              }
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "J",
              "explanation": "In the process, almost everything that could possibly go wrong did so",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "In the process, almost everything that could possibly go wrong did so"
              }
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "I",
              "explanation": "The first surprise in The Globemakers, Bellerby’s account of this impulsive enterprise, is that obtaining such a globe was not simply a matter of a quick online order and a repressed sigh at the shipping costs",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "The first surprise in The Globemakers, Bellerby’s account of this impulsive enterprise, is that obtaining such a globe w"
              }
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "C",
              "explanation": "Bellerby came across shoddy commercial versions designed for school classrooms",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Bellerby came across shoddy commercial versions designed for school classrooms"
              }
            },
            {
              "number": 31,
              "prompt": "",
              "answer": "A",
              "explanation": "Bellerby came across shoddy commercial versions designed for school classrooms",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Bellerby came across shoddy commercial versions designed for school classrooms"
              }
            },
            {
              "number": 32,
              "prompt": "",
              "answer": "E",
              "explanation": "Even his trips to Morocco and India, where surely the knowledge of artisan cartographers* had been preserved, drew a blank",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Even his trips to Morocco and India, where surely the knowledge of artisan cartographers* had been preserved, drew a bla"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 33–36",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 33,
              "prompt": "The assumption today that people in the past knew very little about geography is correct.",
              "answer": "NO",
              "explanation": "After all, contrary to stubbornly held popular views of our ancestors’ geographical ignorance, we have known that the world is spherical since at least the 6th century BCE",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "After all, contrary to stubbornly held popular views of our ancestors’ geographical ignorance, we have known that the wo"
              }
            },
            {
              "number": 34,
              "prompt": "Plato was criticised for saying the world was shaped like a leather ball. === PAGE 17 ===",
              "answer": "NOT GIVEN",
              "explanation": "The ancient Greek philosopher Plato in his work Phaedo likened it to a leather ball",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "The ancient Greek philosopher Plato in his work Phaedo likened it to a leather ball"
              }
            },
            {
              "number": 35,
              "prompt": "The globe made by Crates of Mallus was an accurate representation of the known world.",
              "answer": "NOT GIVEN",
              "explanation": "the accolade of producing the first recorded globe goes to the ancient Greek philosopher Crates of Mallus, who is said to have made one in around 150 BCE",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "the accolade of producing the first recorded globe goes to the ancient Greek philosopher Crates of Mallus, who is said t"
              }
            },
            {
              "number": 36,
              "prompt": "Bellerby assumed he would have few problems locating a well-made globe.",
              "answer": "YES",
              "explanation": "Surely, Bellerby reasoned, a good-quality globe wouldn’t be difficult to find",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Surely, Bellerby reasoned, a good-quality globe wouldn’t be difficult to find"
              }
            }
          ],
          "id": "g33"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 37–40",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 37,
              "prompt": "When Bellerby had to attach the gores to the globe surface,",
              "options": [
                {
                  "key": "A",
                  "text": "he decided it was best to work quickly."
                },
                {
                  "key": "B",
                  "text": "he became aware of an unexpected issue."
                },
                {
                  "key": "C",
                  "text": "he was worried about the quality of his materials."
                },
                {
                  "key": "D",
                  "text": "he nearly gave up the whole project."
                }
              ],
              "answer": "B",
              "explanation": "Bellerby’s frustration at the painstaking process of attaching the gores to the globe surface - after having found a glue with precisely the right adhesive qualities - is palpable. Right at the end of the process, he learnt that the paper had stretched slightly and so the final one overlapped the first by a centimetre"
            },
            {
              "number": 38,
              "prompt": "The reviewer mentions other globe makers of the past because",
              "options": [
                {
                  "key": "A",
                  "text": "Bellerby was particularly inspired by them."
                },
                {
                  "key": "B",
                  "text": "their achievements are not widely known."
                },
                {
                  "key": "C",
                  "text": "Bellerby had something in common with each of them."
                },
                {
                  "key": "D",
                  "text": "their difficulties could have been avoided."
                }
              ],
              "answer": "C",
              "explanation": "Bellerby clearly found a kindred spirit in Martin Behaim Something of Bellerby’s unflinching ambition is reflected in the even more heroic efforts of the Italian cartographer Vincenzo Coronelli",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Bellerby clearly found a kindred spirit in Martin Behaim Something of Bellerby’s unflinching ambition is reflected in th"
              }
            },
            {
              "number": 39,
              "prompt": "What point is made about Bellerby in the seventh paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "He had long working relationships with numerous craftsmen."
                },
                {
                  "key": "B",
                  "text": "He understands the lack of interest in traditional crafts."
                },
                {
                  "key": "C",
                  "text": "He appreciates the importance of careful planning."
                },
                {
                  "key": "D",
                  "text": "He regrets the loss of many globe-making skills."
                }
              ],
              "answer": "D",
              "explanation": "Although a celebration of the revival of an ancient craft, Bellerby’s book is also a lament for the fading away of centuries-old traditions",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Although a celebration of the revival of an ancient craft, Bellerby’s book is also a lament for the fading away of centu"
              }
            },
            {
              "number": 40,
              "prompt": "What does the reviewer say about Bellerby's book in the final paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "It does not tell you how to create a profitable business."
                },
                {
                  "key": "B",
                  "text": "It overlooks some important mapmakers."
                },
                {
                  "key": "C",
                  "text": "It fails to discuss the future of globe-making."
                },
                {
                  "key": "D",
                  "text": "It does not give enough details about individual customers."
                }
              ],
              "answer": "A",
              "explanation": "His book, beautifully illustrated with photographs of the various stages of his venture and a few illustrations of historic globes and maps, is hardly a blueprint for commercial success",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "His book, beautifully illustrated with photographs of the various stages of his venture and a few illustrations of histo"
              }
            }
          ],
          "id": "g37"
        }
      ]
    }
  ]
}
$c21t4r$,
  true
);
