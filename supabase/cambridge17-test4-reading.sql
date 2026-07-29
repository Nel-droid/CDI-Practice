DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 17',
  'Test 4',
  'academic',
  3600,
  $c17t4r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Bats to the rescue How Madagascar’s bats are helping to save the rainforest",
      "passage": [
        {
          "ref": "1",
          "text": "There are few places in the world where relations between agriculture and conservation are more strained. Madagascar’s forests are being converted to agricultural land at a rate of one percent every year. Much of this destruction is fuelled by the cultivation of the country’s main staple crop: rice. And a key reason for this destruction is that insect pests are destroying vast quantities of what is grown by local subsistence farmers, leading them to clear forest to create new paddy fields. The result is devastating habitat and biodiversity loss on the island, but not all species are suffering. In fact, some of the island’s insectivorous bats are currently thriving and this has important implications for farmers and conservationists alike."
        },
        {
          "ref": "2",
          "text": "Enter University of Cambridge zoologist Ricardo Rocha. He’s passionate about conservation, and bats. More specifically, he’s interested in how bats are responding to human activity and deforestation in particular. Rocha’s new study shows that several species of bats are giving Madagascar’s rice farmers a vital pest control service by feasting on plagues of insects. And this, he believes, can ease the financial pressure on farmers to turn forest into fields. Bats comprise roughly one-fifth of all mammal species in Madagascar and thirty-six recorded bat species are native to the island, making it one of the most important regions for conservation of this animal group anywhere in the world."
        },
        {
          "ref": "3",
          "text": "Co-leading an international team of scientists, Rocha found that several species of indigenous bats are taking advantage of habitat modification to hunt insects swarming above the country’s rice fields. They include the Malagasy mouse-eared bat, Major’s long-fingered bat, the Malagasy white- bellied free-tailed bat and Peters’ wrinkle-lipped bat."
        },
        {
          "ref": "4",
          "text": "‘These winner species are providing a valuable free service to Madagascar as biological pest suppressors,’ says Rocha. ‘We found that six species of bat are preying on rice pests, including the paddy swarming caterpillar and grass webworm. The damage which these insects cause puts the island’s farmers under huge financial pressure and that encourages deforestation.’ The study, now published in the journal Agriculture, Ecosystems and Environment, set out to investigate the feeding activity of insectivorous bats in the farmland bordering the Ranomafana National Park in the southeast of the country."
        },
        {
          "ref": "5",
          "text": "Rocha and his team used state-of-the-art ultrasonic recorders to record over a thousand bat ‘feeding buzzes’ (echolocation sequences used by bats to target their prey) at 54 sites, in order to identify the favourite feeding spots of the bats. They next used DNA barcoding techniques to analyse droppings collected from bats at the different sites."
        },
        {
          "ref": "6",
          "text": "The recordings revealed that bat activity over rice fields was much higher than it was in continuous forest - seven times higher over rice fields which were on flat ground, and sixteen times higher over fields on the sides of hills - leaving no doubt that the animals are preferentially foraging in these man-made ecosystems. The researchers suggest that the bats favour these fields because lack of water and nutrient run-off make these crops more susceptible to insect pest infestations. DNA analysis showed that all six species of bat had fed on economically important insect pests. While the findings indicated that rice farming benefits most from the bats, the scientists also found indications that the bats were consuming pests of other crops, including the black twig borer (which infests coffee plants), the sugarcane cicada, the macadamia nut-borer, and the sober tabby (a pest of citrus fruits)."
        },
        {
          "ref": "7",
          "text": "‘The effectiveness of bats as pest controllers has already been proven in the USA and Catalonia,’ said co-author James Kemp, from the University of Lisbon. ‘But our study is the first to show this happening in Madagascar, where the stakes for both farmers and conservationists are so high.’ Local people may have a further reason to be grateful to their bats. While the animal is often associated with spreading disease, Rocha and his team found evidence that Malagasy bats feed not just on crop pests but also on mosquitoes - carriers of malaria, Rift Valley fever virus and elephantiasis - as well as blackflies, which spread river blindness."
        },
        {
          "ref": "8",
          "text": "Rocha points out that the relationship is complicated. When food is scarce, bats become a crucial source of protein for local people. Even the children will hunt them. And as well as roosting in trees, the bats sometimes roost in buildings, but are not welcomed there because they make them unclean. At the same time, however, they are associated with sacred caves and the ancestors, so they can be viewed as beings between worlds, which makes them very significant in the culture of the people. And one potential problem is that while these bats are benefiting from farming, at the same time deforestation is reducing the places where they can roost, which could have long-term"
        },
        {
          "ref": "9",
          "text": "effects on their numbers. Rocha says, ‘With the right help, we hope that farmers can promote this mutually beneficial relationship by installing bat houses.’ Rocha and his colleagues believe that maximising bat populations can help to boost crop yields and promote sustainable livelihoods. The team is now calling for further research to quantify this contribution. ‘I’m very optimistic,’ says Rocha. ‘If we give nature a hand, we can speed up the process of regeneration.’"
        }
      ],
      "groups": [
        {
          "type": "true_false_notgiven",
          "label": "Questions 1–6",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 1,
              "prompt": "Many Madagascan forests are being destroyed by attacks from insects.",
              "answer": "FALSE",
              "explanation": "Madagascar’s forests are being converted to agricultural land at a rate of one percent every year. Much of this destruction is fuelled by the cultivation of the country’s main staple crop: rice.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "Madagascar’s forests are being converted to agricultural land at a rate of one percent every year. Much of this destruct"
              }
            },
            {
              "number": 2,
              "prompt": "Loss of habitat has badly affected insectivorous bats in Madagascar.",
              "answer": "FALSE",
              "explanation": "The result is devastating habitat and biodiversity loss on the island, but not all species are suffering. In fact, some of the island’s insectivorous bats are currently thriving and this has important implications for farmers and conservationists alike.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "The result is devastating habitat and biodiversity loss on the island, but not all species are suffering. In fact, some "
              }
            },
            {
              "number": 3,
              "prompt": "Ricardo Rocha has carried out studies of bats in different parts of the world.",
              "answer": "NOT GIVEN",
              "explanation": "Rocha’s new study shows that several species of bats are giving Madagascar’s rice farmers a vital pest control service by feasting on plagues of insects.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Rocha’s new study shows that several species of bats are giving Madagascar’s rice farmers a vital pest control service b"
              }
            },
            {
              "number": 4,
              "prompt": "Habitat modification has resulted in indigenous bats in Madagascar becoming useful to farmers. === PAGE 3 ===",
              "answer": "TRUE",
              "explanation": "Rocha found that several species of indigenous bats are taking advantage of habitat modification to hunt insects swarming above the country’s rice fields.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "Rocha found that several species of indigenous bats are taking advantage of habitat modification to hunt insects swarmin"
              }
            },
            {
              "number": 5,
              "prompt": "The Malagasy mouse-eared bat is more common than other indigenous bat species in Madagascar.",
              "answer": "NOT GIVEN",
              "explanation": "They include the Malagasy mouse-eared bat, Major’s long-fingered bat, the Malagasy white-bellied free-tailed bat and Peters’ wrinkle-lipped bat.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "They include the Malagasy mouse-eared bat, Major’s long-fingered bat, the Malagasy white-bellied free-tailed bat and Pet"
              }
            },
            {
              "number": 6,
              "prompt": "Bats may feed on paddy swarming caterpillars and grass webworms.",
              "answer": "TRUE",
              "explanation": "We found that six species of bat are preying on rice pests, including the paddy swarming caterpillar and grass webworm.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "We found that six species of bat are preying on rice pests, including the paddy swarming caterpillar and grass webworm."
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–13",
          "instructions": "Complete the table below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Aim to investigate the feeding habits of bats in farmland near the"
            },
            {
              "kind": "subheader",
              "text": "Ranomafana National Park"
            },
            {
              "kind": "static",
              "text": "Method ultrasonic recording to identify favourite feeding spots"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "subheader",
              "text": "Findings the bats"
            },
            {
              "kind": "static",
              "text": "- were most active in rice fields located on hills"
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
              "prompt": "DNA analysis of bat _______",
              "answer": [
                "droppings"
              ],
              "wordLimit": 1,
              "explanation": "They next used DNA barcoding techniques to analyse droppings collected from bats at the different sites.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "They next used DNA barcoding techniques to analyse droppings collected from bats at the different sites."
              }
            },
            {
              "number": 8,
              "prompt": "- ate pests of rice, _______ , sugarcane, nuts and fruit",
              "answer": [
                "coffee"
              ],
              "wordLimit": 1,
              "explanation": "the scientists also found indications that the bats were consuming pests of other crops, including the black twig borer (which infests coffee plants), the sugarcane cicada, the macadamia nut-borer, and the sober tabby (a pest of citrus fruits).",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "the scientists also found indications that the bats were consuming pests of other crops, including the black twig borer "
              }
            },
            {
              "number": 9,
              "prompt": "- prevent the spread of disease by eating _______ and blackflies local attitudes to bats are mixed:",
              "answer": [
                "mosquitoes"
              ],
              "wordLimit": 1,
              "explanation": "/ mosquitos Rocha and his team found evidence that Malagasy bats feed not just on crop pests but also on mosquitoes - carriers of malaria, Rift Valley fever virus and elephantiasis - as well as blackflies, which spread river blindness."
            },
            {
              "number": 10,
              "prompt": "- they provide food rich in _______",
              "answer": [
                "protein"
              ],
              "wordLimit": 1,
              "explanation": "When food is scarce, bats become a crucial source of protein for local people.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "When food is scarce, bats become a crucial source of protein for local people."
              }
            },
            {
              "number": 11,
              "prompt": "- the buildings where they roost become _______",
              "answer": [
                "unclean"
              ],
              "wordLimit": 1,
              "explanation": "And as well as roosting in trees, the bats sometimes roost in buildings, but are not welcomed there because they make them unclean.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "And as well as roosting in trees, the bats sometimes roost in buildings, but are not welcomed there because they make th"
              }
            },
            {
              "number": 12,
              "prompt": "- they play an important role in local _______",
              "answer": [
                "culture"
              ],
              "wordLimit": 1,
              "explanation": "At the same time, however, they are associated with sacred caves and the ancestors, so they can be viewed as beings between worlds, which makes them very significant in the culture of the people.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "At the same time, however, they are associated with sacred caves and the ancestors, so they can be viewed as beings betw"
              }
            },
            {
              "number": 13,
              "prompt": "Recommendation farmers should provide special _______ to support the bat population",
              "answer": [
                "houses"
              ],
              "wordLimit": 1,
              "explanation": "Rocha says, ‘With the right help, we hope that farmers can promote this mutually beneficial relationship by installing bat houses.",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "Rocha says, ‘With the right help, we hope that farmers can promote this mutually beneficial relationship by installing b"
              }
            }
          ],
          "formTitle": "The study carried out by Rocha’s team",
          "id": "g7"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Does education fuel economic growth?",
      "passage": [
        {
          "ref": "A",
          "text": "Over the last decade, a huge database about the lives of southwest German villagers between 1600 and 1900 has been compiled by a team led by Professor Sheilagh Ogilvie at Cambridge University’s Faculty of Economics. It includes court records, guild ledgers, parish registers, village censuses, tax lists and - the most recent addition - 9,000 handwritten inventories listing over a million personal possessions belonging to ordinary women and men across three centuries. Ogilvie, who discovered the inventories in the archives of two German communities 30 years ago, believes they may hold the answer to a conundrum that has long puzzled economists: the lack of evidence for a causal link between education and a country’s economic growth."
        },
        {
          "ref": "B",
          "text": "As Ogilvie explains, ‘Education helps us to work more productively, invent better technology, and earn more ... surely it must be critical for economic growth? But, if you look back through history, there’s no evidence that having a high literacy rate made a country industrialise earlier.’ Between 1600 and 1900, England had only mediocre literacy rates by European standards, yet its economy grew fast and it was the first country to industrialise. During this period, Germany and Scandinavia had excellent literacy rates, but their economies grew slowly and they industrialised late. ‘Modern cross-country analyses have also struggled to find evidence that education causes economic growth, even though there is plenty of evidence that growth increases education,’ she adds."
        },
        {
          "ref": "C",
          "text": "In the handwritten inventories that Ogilvie is analysing are the belongings of women and men at marriage, remarriage and death. From badger skins to Bibles, sewing machines to scarlet bodices - the villagers’ entire worldly goods are included. Inventories of agricultural equipment and craft tools reveal economic activities; ownership of books and education-related objects like pens and slates suggests how people learned. In addition, the tax lists included in the database record the value of farms, workshops, assets and debts; signatures and people’s estimates of their age indicate literacy and numeracy levels; and court records reveal obstacles (such as the activities of the guilds*) that stifled industry. Previous studies usually had just one way of linking education with economic growth - the presence of schools and printing presses, perhaps, or school enrolment, or the ability to sign names. According to Ogilvie, the database provides multiple indicators for the same individuals, making it possible to analyse links between literacy, numeracy, wealth, and industriousness, for individual women and men over the long term."
        },
        {
          "ref": "D",
          "text": "Ogilvie and her team have been building the vast database of material possessions on top of their full demographic reconstruction of the people who lived in these two German communities. ‘We can follow the same people - and their descendants - across 300 years of educational and economic change,’ she says. Individual lives have unfolded before their eyes. Stories like that of the 24-year-olds Ana Regina and Magdalena Riethmullerin, who were chastised in 1707 for reading books in church instead of listening to the sermon. ‘This tells us they were continuing to develop their reading skills at least a decade after leaving school,’ explains Ogilvie. The database also reveals the case of Juliana Schweickherdt, a 50-year-old spinster living in the small Black Forest community of Wildberg, who was reprimanded in 1752 by the local weavers’ guild for ‘weaving cloth and combing wool, counter to the guild ordinance’. When Juliana continued taking jobs reserved for male guild members, she was summoned before the guild court and told to pay a fine equivalent to one third of a servant’s annual wage. It was a small act of defiance by today’s standards, but it reflects a time when laws in Germany and elsewhere regulated people’s access to labour markets. The dominance of guilds not only prevented people from using their skills, but also held back even the simplest industrial innovation."
        },
        {
          "ref": "E",
          "text": "The data-gathering phase of the project has been completed and now, according to Ogilvie, it is time ‘to ask the big questions’. One way to look at whether education causes economic growth is to ‘hold wealth constant’. This involves following the lives of different people with the same level of wealth over a period of time. If wealth is constant, it is possible to discover whether education was, for example, linked to the cultivation of new crops, or to the adoption of industrial innovations like sewing machines. The team will also ask what aspect of education helped people engage more with productive and innovative activities. Was it, for instance, literacy, numeracy, book ownership, years of schooling? Was there a threshold level - a tipping point - that needed to be reached to affect economic performance?"
        },
        {
          "ref": "F",
          "text": "Ogilvie hopes to start finding answers to these questions over the next few years. One thing is already clear, she says: the relationship between education and economic growth is far from straightforward. ‘German-speaking central Europe is an excellent laboratory for testing theories of economic growth,’ she explains. Between 1600 and 1900, literacy rates and book ownership were high and yet the region remained poor. It was also the case that local guilds and merchant associations were extremely powerful and legislated against anything that undermined their monopolies. In villages throughout the region, guilds blocked labour migration and resisted changes that might reduce their influence. ‘Early findings suggest that the potential benefits of education for the economy can be held back by other barriers, and this has implications for today,’ says Ogilvie. ‘Huge amounts are spent improving education in developing countries, but this spending can fail to deliver economic growth if restrictions block people - especially women and the poor - from using their education in economically productive ways. If economic institutions are poorly set up, for instance, education can’t lead to growth.’ *guild: an association of artisans or merchants which oversees the practice of their craft or trade in a particular area"
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–18",
          "instructions": "Reading Passage 2 has six sections, A–F. Which section contains the following information?",
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
              "prompt": "an explanation of the need for research to focus on",
              "answer": "E",
              "explanation": "according to Ogilvie, it is time ‘to ask the big questions’. One way to look at whether education causes economic growth is to ‘hold wealth constant’. This involves following the lives of different people with the same level of wealth over a period of time.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "according to Ogilvie, it is time ‘to ask the big questions’. One way to look at whether education causes economic growth"
              }
            },
            {
              "number": 15,
              "prompt": "examples of the sources the database has been compiled",
              "answer": "A",
              "explanation": "Over the last decade, a huge database about the lives of southwest German villagers between 1600 and 1900 has been compiled by a team led by Professor Sheilagh Ogilvie at Cambridge University’s Faculty of Economics.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "Over the last decade, a huge database about the lives of southwest German villagers between 1600 and 1900 has been compi"
              }
            },
            {
              "number": 16,
              "prompt": "an account of one individual’s refusal to obey an order",
              "answer": "D",
              "explanation": "The database also reveals the case of Juliana Schweickherdt, a 50-year-old spinster living in the small Black Forest community of Wildberg, who was reprimanded in 1752 by the local weavers’ guild for ‘weaving cloth and combing wool, counter to the guide ordinance’.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "The database also reveals the case of Juliana Schweickherdt, a 50-year-old spinster living in the small Black Forest com"
              }
            },
            {
              "number": 17,
              "prompt": "a reference to a region being particularly suited to",
              "answer": "F",
              "explanation": "German-speaking central Europe is an excellent laboratory for testing theories of economic growth",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "German-speaking central Europe is an excellent laboratory for testing theories of economic growth"
              }
            },
            {
              "number": 18,
              "prompt": "examples of the items included in a list of personal",
              "answer": "C",
              "explanation": "In the handwritten inventories that Ogilvie is analysing are the belongings of women and men at marriage, remarriage and death. From badger skins to Bibles, sewing machines to scarlet bodices - the villagers’ entire worldly goods are included.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "In the handwritten inventories that Ogilvie is analysing are the belongings of women and men at marriage, remarriage and"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 19–22",
          "instructions": "Complete the summary below. Choose ONE WORD from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "individuals, as well as those of their",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "static",
              "text": ", over a 300-year period. For example, Ana Regina and Magdalena Riethmüllerin were reprimanded for reading while they should have been paying attention to a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": ". There was also Juliana Schweickherdt, who came to the notice of the weavers’ guild in the year 1752 for breaking guild rules. As a punishment, she was later given a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": ". Cases like this illustrate how the guilds could prevent",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": "and stop skilled people from working",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "as well as those of their _______",
              "answer": [
                "descendants"
              ],
              "wordLimit": 1,
              "explanation": "We can follow the same people - and their descendants - across 300 years of educational and economic change",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "We can follow the same people - and their descendants - across 300 years of educational and economic change"
              }
            },
            {
              "number": 20,
              "prompt": "have been paying attention to a _______",
              "answer": [
                "sermon"
              ],
              "wordLimit": 1,
              "explanation": "Stories like that of the 24-year-olds Ana Regina and Magdalena Riethmullerin, who were chastised in 1707 for reading books in church instead of listening to the sermon.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "Stories like that of the 24-year-olds Ana Regina and Magdalena Riethmullerin, who were chastised in 1707 for reading boo"
              }
            },
            {
              "number": 21,
              "prompt": "punishment, she was later given a _______",
              "answer": [
                "fine"
              ],
              "wordLimit": 1,
              "explanation": "When Juliana continued taking jobs reserved for male guild members, she was summoned before the guild court and told to pay a fine equivalent to one third of a servant’s annual wage.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "When Juliana continued taking jobs reserved for male guild members, she was summoned before the guild court and told to "
              }
            },
            {
              "number": 22,
              "prompt": "how the guilds could prevent _______",
              "answer": [
                "innovation"
              ],
              "wordLimit": 1,
              "explanation": "The dominance of guilds not only prevented people from using their skills, but also held back even the simplest industrial innovation.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "The dominance of guilds not only prevented people from using their skills, but also held back even the simplest industri"
              }
            }
          ],
          "formTitle": "Demographic reconstruction of two German communities",
          "id": "g19"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO of the following statements does the writer make about literacy rates in Section B?",
          "options": [
            {
              "key": "A",
              "text": "Very little research has been done into the link between high literacy rates and improved earnings."
            },
            {
              "key": "B",
              "text": "Literacy rates in Germany between 1600 and 1900 were very good."
            },
            {
              "key": "C",
              "text": "There is strong evidence that high literacy rates in the modern world result in economic growth."
            },
            {
              "key": "D",
              "text": "England is a good example of how high literacy rates helped a country industrialise."
            },
            {
              "key": "E",
              "text": "Economic growth can help to improve literacy rates."
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO of the following statements does the writer make about literacy rates in Section B?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Between 1600 and 1900, England had only mediocre literacy rates by European standards, yet its economy grew fast and it was the first country to industrialise. During this period, Germany and Scandinavia had excellent literacy rates, but their economies grew slowly and they industrialised late. Modern cross-country analyses have also struggled to find evidence that education causes economic growth, even though there is plenty of evidence that growth increases education",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Between 1600 and 1900, England had only mediocre literacy rates by European stan"
              }
            },
            {
              "number": 24,
              "prompt": "Which TWO of the following statements does the writer make about literacy rates in Section B?",
              "answer": [
                "B",
                "E"
              ],
              "explanation": "Between 1600 and 1900, England had only mediocre literacy rates by European standards, yet its economy grew fast and it was the first country to industrialise. During this period, Germany and Scandinavia had excellent literacy rates, but their economies grew slowly and they industrialised late. Modern cross-country analyses have also struggled to find evidence that education causes economic growth, even though there is plenty of evidence that growth increases education",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Between 1600 and 1900, England had only mediocre literacy rates by European stan"
              }
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO of the following statements does the writer make in Section F about guilds in German-speaking Central Europe between 1600 and 1900?",
          "options": [
            {
              "key": "A",
              "text": "They helped young people to learn a skill."
            },
            {
              "key": "B",
              "text": "They were opposed to people moving to an area for work."
            },
            {
              "key": "C",
              "text": "They kept better records than guilds in other parts of the world."
            },
            {
              "key": "D",
              "text": "They opposed practices that threatened their control over a trade."
            },
            {
              "key": "E",
              "text": "They predominantly consisted of wealthy merchants."
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO of the following statements does the writer make in Section F about guilds in German-speaking Central Europe between 1600 and 1900?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "In villages throughout the region, guilds blocked labour migration resisted changes that might reduce their influence",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "In villages throughout the region, guilds blocked labour migration resisted chan"
              }
            },
            {
              "number": 26,
              "prompt": "Which TWO of the following statements does the writer make in Section F about guilds in German-speaking Central Europe between 1600 and 1900?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "In villages throughout the region, guilds blocked labour migration resisted changes that might reduce their influence",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "In villages throughout the region, guilds blocked labour migration resisted chan"
              }
            }
          ],
          "id": "g25"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Timur Gareyev - blindfold chess champion",
      "passage": [
        {
          "ref": "A",
          "text": "Next month, a chess player named Timur Gareyev will take on nearly 50 opponents at once. But that is not the hard part. While his challengers will play the games as normal, Gareyev himself will be blindfolded. Even by world record standards, it sets a high bar for human performance. The 28- year-old already stands out in the rarefied world of blindfold chess. He has a fondness for bright clothes and unusual hairstyles, and he gets his kicks from the adventure sport of BASE jumping. He has already proved himself a strong chess player, too. In a 10-hour chess marathon in 2013, Gareyev played 33 games in his head simultaneously. He won 29 and lost none. The skill has become his brand: he calls himself the Blindfold King."
        },
        {
          "ref": "B",
          "text": "But Gareyev’s prowess has drawn interest from beyond the chess-playing community. In the hope of understanding how he and others like him can perform such mental feats, researchers at the University of California in Los Angeles (UCLA) called him in for tests. They now have their first results. The ability to play a game of chess with your eyes closed is not a far reach for most accomplished players,’ said Jesse Rissman, who runs a memory lab at UCLA. ‘But the thing that’s so remarkable about Timur and a few other individuals is the number of games they can keep active at once. To me it is simply astonishing.’"
        },
        {
          "ref": "C",
          "text": "Gareyev learned to play chess in his native Uzbekistan when he was six years old. Tutored by his grandfather, he entered his first tournament aged eight and soon became obsessed with competitions. At 16, he was crowned Asia’s youngest ever chess grandmaster. He moved to the US soon after, and as a student helped his university win its first national chess championship. In 2013, Gareyev was ranked the third best chess player in the US."
        },
        {
          "ref": "D",
          "text": "To the uninitiated, blindfold chess seems to call for superhuman skill. But displays of the feat go back centuries. The first recorded game in Europe was played in 13th-century Florence. In 1947, the Argentinian grandmaster Miguel Najdorf played 45 simultaneous games in his mind, winning 39 in the 24-hour session."
        },
        {
          "ref": "E",
          "text": "Accomplished players can develop the skill of playing blind even without realising it. The nature of the game is to run through possible moves in the mind to see how they play out. From this, regular players develop a memory for the patterns the pieces make, the defences and attacks. ‘You recreate it in your mind,’ said Gareyev. ‘A lot of players are capable of doing what I’m doing.’ The real mental challenge comes from playing multiple games at once in the head. Not only must the positions of each piece on every board be memorised, they must be recalled faithfully when needed, updated with each player’s moves, and then reliably stored again, so the brain can move on to the next board. First moves can be tough to remember because they are fairly uninteresting. But the ends of games are taxing too, as exhaustion sets in. When Gareyev is tired, his recall can get patchy. He sometimes makes moves based on only a fragmented memory of the pieces’ positions."
        },
        {
          "ref": "F",
          "text": "The scientists first had Gareyev perform some standard memory tests. These assessed his ability to hold numbers, pictures and words in mind. One classic test measures how many numbers a person can repeat, both forwards and backwards, soon after hearing them. Most people manage about seven. ‘He was not exceptional on any of these standard tests,’ said Rissman. ‘We didn’t find anything other than playing chess that he seems to be supremely gifted at.’ But next came the brain scans. With Gareyev lying down in the machine, Rissman looked at how well connected the various regions of the chess player’s brain were. Though the results are tentative and as yet unpublished, the scans found much greater than average communication between parts of Gareyev’s brain that make up what is called the frontoparietal control network. Of 63 people scanned alongside the chess player, only one or two scored more highly on the measure. ‘You use this network in almost any complex task. It helps you to allocate attention, keep rules in mind, and work out whether you should be responding or not,’ said Rissman."
        },
        {
          "ref": "G",
          "text": "It was not the only hint of something special in Gareyev’s brain. The scans also suggest that Gareyev’s visual network is more highly connected to other brain parts than usual. Initial results suggest that the areas of his brain that process visual images - such as chess boards - may have stronger links to other brain regions, and so be more powerful than normal. While the analyses are not finalised yet, they may hold the first clues to Gareyev’s extraordinary ability."
        },
        {
          "ref": "H",
          "text": "For the world record attempt, Gareyev hopes to play 47 blindfold games at once in about 16 hours. He will need to win 80% to claim the title. ‘I don’t worry too much about the winning percentage, that’s never been an issue for me,’ he said. ‘The most important part of blindfold chess for me is that I have found the one thing that I can fully dedicate myself to. I miss having an obsession.’"
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 27–32",
          "instructions": "Reading Passage 3 has eight paragraphs, A–H. Which paragraph contains the following information? You may use any letter more than once.",
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
              "number": 27,
              "prompt": "a reference to earlier examples of blindfold chess",
              "answer": "D",
              "explanation": "The first recorded game in Europe was played in 13th-century Florence. In 1947, the Argentinian grandmaster Miguel Najdorf played 45 simultaneous games in his mind, winning 39 in the 24-hour session.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "The first recorded game in Europe was played in 13th-century Florence. In 1947, the Argentinian grandmaster Miguel Najdo"
              }
            },
            {
              "number": 28,
              "prompt": "an outline of what blindfold chess involves",
              "answer": "E",
              "explanation": "The nature of the game is to run through possible moves in the mind to see how they play out.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "The nature of the game is to run through possible moves in the mind to see how they play out."
              }
            },
            {
              "number": 29,
              "prompt": "a claim that Gareyev’s skill is limited to chess",
              "answer": "F",
              "explanation": "‘He was not exceptional on any of these standard tests,’ said Rissman. ‘We didn’t find anything other than playing chess that he seems to be supremely gifted at.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "‘He was not exceptional on any of these standard tests,’ said Rissman. ‘We didn’t find anything other than playing chess"
              }
            },
            {
              "number": 30,
              "prompt": "why Gareyev’s skill is of interest to scientists",
              "answer": "B",
              "explanation": "But the thing that’s so remarkable about Timur and a few other individuals is the number of games they can keep active at once. To me it is simply astonishing.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "But the thing that’s so remarkable about Timur and a few other individuals is the number of games they can keep active a"
              }
            },
            {
              "number": 31,
              "prompt": "an outline of Gareyev’s priorities",
              "answer": "H",
              "explanation": "The most important part of blindfold chess for me is that I have found the one thing that I can fully dedicate myself to. I miss having an obsession.",
              "evidence": {
                "sectionId": "p3",
                "ref": "H",
                "quote": "The most important part of blindfold chess for me is that I have found the one thing that I can fully dedicate myself to"
              }
            },
            {
              "number": 32,
              "prompt": "a reason why the last part of a game may be difficult",
              "answer": "E",
              "explanation": "But the ends of games are taxing too, as exhaustion sets in. When Gareyev is tired, his recall can get patchy. He sometimes makes moves based on only a fragmented memory of the pieces’ positions.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "But the ends of games are taxing too, as exhaustion sets in. When Gareyev is tired, his recall can get patchy. He someti"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 33–36",
          "instructions": "Do the following statements agree with the information given in Reading Passage 3? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 33,
              "prompt": "In the forthcoming games, all the participants will be blindfolded. === PAGE 9 ===",
              "answer": "FALSE",
              "explanation": "While his challengers will play the games as normal, Gareyev himself will be blindfolded.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "While his challengers will play the games as normal, Gareyev himself will be blindfolded."
              }
            },
            {
              "number": 34,
              "prompt": "Gareyev has won competitions in BASE jumping.",
              "answer": "NOT GIVEN",
              "explanation": "He has a fondness for bright clothes and unusual hairstyles, and he gets his kicks from the adventure sport of BASE jumping.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "He has a fondness for bright clothes and unusual hairstyles, and he gets his kicks from the adventure sport of BASE jump"
              }
            },
            {
              "number": 35,
              "prompt": "UCLA is the first university to carry out research into blindfold chess players.",
              "answer": "NOT GIVEN",
              "explanation": "researchers at the University of California in Los Angeles (UCLA) called him in for tests. They now have their first results.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "researchers at the University of California in Los Angeles (UCLA) called him in for tests. They now have their first res"
              }
            },
            {
              "number": 36,
              "prompt": "Good chess players are likely to be able to play blindfold chess.",
              "answer": "TRUE",
              "explanation": "Accomplished players can develop the skill of playing blind even without realising it.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "Accomplished players can develop the skill of playing blind even without realising it."
              }
            }
          ],
          "id": "g33"
        },
        {
          "type": "completion",
          "label": "Questions 37–40",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "The researchers started by testing Gareyev’s",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": "; for example, he was required to recall a string of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "in order and also in reverse order. Although his performance was normal, scans showed an unusual amount of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "within the areas of Gareyev’s brain that are concerned with directing attention. In addition, the scans raised the possibility of unusual strength in the parts of his brain that deal with",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "input.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 37,
              "prompt": "started by testing Gareyev’s _______ ; for example",
              "answer": [
                "memory"
              ],
              "wordLimit": 1,
              "explanation": "The scientists first had Gareyev perform some standard memory tests.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "The scientists first had Gareyev perform some standard memory tests."
              }
            },
            {
              "number": 38,
              "prompt": "was required to recall a string of _______",
              "answer": [
                "numbers"
              ],
              "wordLimit": 1,
              "explanation": "One classic test measures how many numbers a person can repeat, both forwards and backwards, soon after hearing them.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "One classic test measures how many numbers a person can repeat, both forwards and backwards, soon after hearing them."
              }
            },
            {
              "number": 39,
              "prompt": "scans showed an unusual amount of _______",
              "answer": [
                "communication"
              ],
              "wordLimit": 1,
              "explanation": "Though the results are tentative and as yet unpublished, the scans found much greater than average communication between parts of Gareyev’s brain that make up what is called the frontoparietal control network.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "Though the results are tentative and as yet unpublished, the scans found much greater than average communication between"
              }
            },
            {
              "number": 40,
              "prompt": "parts of his brain that deal with _______ input",
              "answer": [
                "visual"
              ],
              "wordLimit": 1,
              "explanation": "The scans also suggest that Gareyev’s visual network is more highly connected to other brain parts than usual.",
              "evidence": {
                "sectionId": "p3",
                "ref": "G",
                "quote": "The scans also suggest that Gareyev’s visual network is more highly connected to other brain parts than usual."
              }
            }
          ],
          "formTitle": "Write the correct letter in boxes on your answer sheet.",
          "id": "g37"
        }
      ]
    }
  ]
}
$c17t4r$,
  true
);
