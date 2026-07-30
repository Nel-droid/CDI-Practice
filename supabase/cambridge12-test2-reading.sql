DELETE FROM public.tests WHERE book='Cambridge IELTS 12' AND test_label='Test 2' AND skill='reading';
INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 12',
  'Test 2',
  'academic',
  3600,
  $c12t2r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The risks agriculture faces in developing countries",
      "passage": [
        {
          "ref": "A",
          "text": "Two things distinguish food production from all other productive activities: first, every single person needs food each day and has a right to it; and second, it is hugely dependent on nature. These two unique aspects, one political, the other natural, make food production highly vulnerable and different from any other business. At the same time, cultural values are highly entrenched in food and agricultural systems worldwide."
        },
        {
          "ref": "B",
          "text": "Farmers everywhere face major risks, including extreme weather, long-term climate change, and price volatility in input and product markets. However, smallholder farmers in developing countries must in addition deal with adverse environments, both natural, in terms of soil quality, rainfall, etc., and human, in terms of infrastructure, financial systems, markets, knowledge and technology. Counter-intuitively, hunger is prevalent among many smallholder farmers in the developing world."
        },
        {
          "ref": "C",
          "text": "Participants in the online debate argued that our biggest challenge is to address the underlying causes of the agricultural system’s inability to ensure sufficient food for all, and they identified as drivers of this problem our dependency on fossil fuels and unsupportive government policies."
        },
        {
          "ref": "D",
          "text": "On the question of mitigating the risks farmers face, most essayists called for greater state intervention. In his essay, Kanayo F. Nwanze, President of the International Fund for Agricultural Development, argued that governments can significantly reduce risks for farmers by providing basic services like roads to get produce more efficiently to markets, or water and food storage facilities to reduce losses. Sophia Murphy, senior advisor to the Institute for Agriculture and Trade Policy, suggested that the procurement and holding of stocks by governments can also help mitigate wild swings in food prices by alleviating uncertainties about market supply."
        },
        {
          "ref": "E",
          "text": "Shenggen Fan, Director General of the International Food Policy Research Institute, held up social safety nets and public welfare programmes in Ethiopia, Brazil and Mexico as valuable ways to address poverty among farming families and reduce their vulnerability to agriculture shocks. However, some commentators responded that cash transfers to poor families do not necessarily translate into increased food security, as these programmes do not always strengthen food production or raise incomes. Regarding state subsidies for agriculture, Rokeya Kabir, Executive Director of Bangladesh Nari Progati Sangha, commented in her essay that these ‘have not compensated for the stranglehold exercised by private traders. In fact, studies show that sixty percent of beneficiaries of subsidies are not poor, but rich landowners and non-farmer traders.’"
        },
        {
          "ref": "F",
          "text": "Nwanze, Murphy and Fan argued that private risk management tools, like private insurance, commodity futures markets, and rural finance can help small-scale producers mitigate risk and allow for investment in improvements. Kabir warned that financial support schemes often encourage the adoption of high-input agricultural practices, which in the medium term may raise production costs beyond the value of their harvests. Murphy noted that when futures markets become excessively financialised they can contribute to short-term price volatility, which increases farmers’ food insecurity. Many participants and commentators emphasised that greater transparency in markets is needed to mitigate the impact of volatility, and make evident whether adequate stocks and supplies are available. Others contended that agribusiness companies should be held responsible for paying for negative side effects."
        },
        {
          "ref": "G",
          "text": "Many essayists mentioned climate change and its consequences for small-scale agriculture. Fan explained that ‘in addition to reducing crop yields, climate change increases the magnitude and frequency of extreme weather events, which increase smallholder vulnerability.’ The growing unpredictability of weather patterns increases farmers’ difficulty in managing weather-related risks. According to this author, one solution would be to develop crop varieties that are more resilient to new climate trends and extreme weather patterns. Accordingly, Pat Mooney, co-founder and executive director of the ETC Group, suggested that ‘if we are to survive climate change, we must === PAGE 2 === adopt policies that let peasants diversify the plant and animal species and varieties/breeds that make up our menus.’"
        },
        {
          "ref": "H",
          "text": "Some participating authors and commentators argued in favour of community-based and autonomous risk management strategies through collective action groups, co-operatives or producers’ groups. Such groups enhance market opportunities for small-scale producers, reduce marketing costs and synchronise buying and selling with seasonal price conditions. According to Murphy, ‘collective action offers an important way for farmers to strengthen their political and economic bargaining power, and to reduce their business risks.’ One commentator, Giel Ton, warned that collective action does not come as a free good. It takes time, effort and money to organise, build trust and to experiment. Others, like Marcel Vernooij and Marcel Beukeboom, suggested that in order to ‘apply what we already know’, all stakeholders, including business, government, scientists and civil society, must work together, starting at the beginning of the value chain."
        },
        {
          "ref": "I",
          "text": "Some participants explained that market price volatility is often worsened by the presence of intermediary purchasers who, taking advantage of farmers’ vulnerability, dictate prices. One commentator suggested farmers can gain greater control over prices and minimise price volatility by selling directly to consumers. Similarly, Sonali Bisht, founder and advisor to the Institute of Himalayan Environmental Research and Education (INHERE), India, wrote that community- supported agriculture, where consumers invest in local farmers by subscription and guarantee producers a fair price, is a risk-sharing model worth more attention. Direct food distribution systems not only encourage small-scale agriculture but also give consumers more control over the food they consume, she wrote. ——————— * The personal names in the text refer to the authors of written contributions to the online debate"
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "matching",
          "label": "Questions 1–3",
          "instructions": "The Reading Passage has nine paragraphs, A–I. Which paragraph contains the following information?",
          "options": [
            {
              "key": "A",
              "text": "Paragraph A"
            },
            {
              "key": "B",
              "text": "Paragraph B"
            },
            {
              "key": "C",
              "text": "Paragraph C"
            },
            {
              "key": "D",
              "text": "Paragraph D"
            },
            {
              "key": "E",
              "text": "Paragraph E"
            },
            {
              "key": "F",
              "text": "Paragraph F"
            },
            {
              "key": "G",
              "text": "Paragraph G"
            },
            {
              "key": "H",
              "text": "Paragraph H"
            },
            {
              "key": "I",
              "text": "Paragraph I"
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "a reference to characteristics that only apply to food production",
              "answer": "A",
              "explanation": "Paragraph A describes two unique aspects that distinguish food production from all other activities.",
              "evidence": {
                "sectionId": "p1",
                "ref": "A",
                "quote": "Two things distinguish food production from all other productive activities"
              }
            },
            {
              "number": 2,
              "prompt": "a reference to challenges faced only by farmers in certain parts of the world",
              "answer": "B",
              "explanation": "Paragraph B notes that smallholder farmers in developing countries face additional adverse environments.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "smallholder farmers in developing countries must in addition deal with adverse environments"
              }
            },
            {
              "number": 3,
              "prompt": "a reference to difficulties in bringing about co-operation between farmers",
              "answer": "H",
              "explanation": "Paragraph H warns that collective action takes time, effort and money to organise and build trust.",
              "evidence": {
                "sectionId": "p1",
                "ref": "H",
                "quote": "collective action does not come as a free good. It takes time, effort and money to organise, build trust and to experiment"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "matching",
          "label": "Questions 4–9",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, A–G. NB You may use any letter more than once.",
          "options": [
            {
              "key": "A",
              "text": "Kanayo F. Nwanze"
            },
            {
              "key": "B",
              "text": "Sophia Murphy"
            },
            {
              "key": "C",
              "text": "Shenggen Fan"
            },
            {
              "key": "D",
              "text": "Rokeya Kabir"
            },
            {
              "key": "E",
              "text": "Pat Mooney"
            },
            {
              "key": "F",
              "text": "Giel Ton"
            },
            {
              "key": "G",
              "text": "Sonali Bisht"
            }
          ],
          "questions": [
            {
              "number": 4,
              "prompt": "Financial assistance from the government does not always go to the farmers who most need it.",
              "answer": "D",
              "explanation": "Rokeya Kabir stated that sixty percent of beneficiaries of subsidies are not poor, but rich landowners.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "sixty percent of beneficiaries of subsidies are not poor, but rich landowners and non-farmer traders"
              }
            },
            {
              "number": 5,
              "prompt": "Farmers can benefit from collaborating as a group.",
              "answer": "B",
              "explanation": "Murphy said collective action offers an important way for farmers to strengthen their political and economic bargaining power.",
              "evidence": {
                "sectionId": "p1",
                "ref": "H",
                "quote": "collective action offers an important way for farmers to strengthen their political and economic bargaining power"
              }
            },
            {
              "number": 6,
              "prompt": "Financial assistance from the government can improve the standard of living of farmers.",
              "answer": "C",
              "explanation": "Shenggen Fan held up social safety nets as valuable ways to address poverty among farming families.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "Shenggen Fan … held up social safety nets and public welfare programmes … as valuable ways to address poverty among farming families"
              }
            },
            {
              "number": 7,
              "prompt": "Farmers may be helped if there is financial input by the same individuals who buy from them.",
              "answer": "G",
              "explanation": "Sonali Bisht wrote about community-supported agriculture where consumers invest in local farmers by subscription.",
              "evidence": {
                "sectionId": "p1",
                "ref": "I",
                "quote": "community-supported agriculture, where consumers invest in local farmers by subscription and guarantee producers a fair price"
              }
            },
            {
              "number": 8,
              "prompt": "Governments can help to reduce variation in prices.",
              "answer": "B",
              "explanation": "Murphy suggested procurement and holding of stocks by governments can mitigate wild swings in food prices.",
              "evidence": {
                "sectionId": "p1",
                "ref": "D",
                "quote": "the procurement and holding of stocks by governments can also help mitigate wild swings in food prices"
              }
            },
            {
              "number": 9,
              "prompt": "Improvements to infrastructure can have a major impact on risk for farmers.",
              "answer": "A",
              "explanation": "Nwanze argued governments can reduce risks by providing basic services like roads.",
              "evidence": {
                "sectionId": "p1",
                "ref": "D",
                "quote": "governments can significantly reduce risks for farmers by providing basic services like roads to get produce more efficiently to markets"
              }
            }
          ]
        },
        {
          "id": "g3",
          "type": "choose_two",
          "label": "Questions 10–11",
          "instructions": "Choose TWO letters, A–E. Which TWO problems are mentioned which affect farmers with small farms in developing countries?",
          "paired": true,
          "options": [
            {
              "key": "A",
              "text": "lack of demand for locally produced food"
            },
            {
              "key": "B",
              "text": "lack of irrigation programmes"
            },
            {
              "key": "C",
              "text": "being unable to get insurance"
            },
            {
              "key": "D",
              "text": "the effects of changing weather patterns"
            },
            {
              "key": "E",
              "text": "having to sell their goods to intermediary buyers"
            }
          ],
          "questions": [
            {
              "number": 10,
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Changing weather patterns and intermediary buyers who dictate prices are mentioned as problems for small-scale farmers.",
              "evidence": {
                "sectionId": "p1",
                "ref": "G",
                "quote": "The growing unpredictability of weather patterns increases farmers’ difficulty"
              }
            },
            {
              "number": 11,
              "answer": [
                "D",
                "E"
              ],
              "explanation": "Changing weather patterns and intermediary buyers who dictate prices are mentioned as problems for small-scale farmers.",
              "evidence": {
                "sectionId": "p1",
                "ref": "I",
                "quote": "market price volatility is often worsened by the presence of intermediary purchasers who, taking advantage of farmers’ vulnerability, dictate prices"
              }
            }
          ]
        },
        {
          "id": "g4",
          "type": "choose_two",
          "label": "Questions 12–13",
          "instructions": "Choose TWO letters, A–E. Which TWO actions are recommended for improving conditions for farmers?",
          "paired": true,
          "options": [
            {
              "key": "A",
              "text": "reducing the size of food stocks"
            },
            {
              "key": "B",
              "text": "attempting to ensure that prices rise at certain times of the year"
            },
            {
              "key": "C",
              "text": "organising co-operation between a wide range of interested parties"
            },
            {
              "key": "D",
              "text": "encouraging consumers to take a financial stake in farming"
            },
            {
              "key": "E",
              "text": "making customers aware of the reasons for changing food prices"
            }
          ],
          "questions": [
            {
              "number": 12,
              "answer": [
                "C",
                "D"
              ],
              "explanation": "Stakeholder collaboration (C) and consumer investment in farms (D) are both recommended.",
              "evidence": {
                "sectionId": "p1",
                "ref": "H",
                "quote": "all stakeholders, including business, government, scientists and civil society, must work together"
              }
            },
            {
              "number": 13,
              "answer": [
                "C",
                "D"
              ],
              "explanation": "Stakeholder collaboration (C) and consumer investment in farms (D) are both recommended.",
              "evidence": {
                "sectionId": "p1",
                "ref": "I",
                "quote": "community-supported agriculture, where consumers invest in local farmers by subscription"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "The Lost City",
      "passage": [
        {
          "ref": "A",
          "text": "When the US explorer and academic Hiram Bingham arrived in South America in 1911, he was ready for what was to be the greatest achievement of his life: the exploration of the remote hinterland to the west of Cusco, the old capital of the Inca empire in the Andes mountains of Peru. His goal was to locate the remains of a city called Vitcos, the last capital of the Inca civilisation. Cusco lies on a high plateau at an elevation of more than 3,000 metres, and Bingham’s plan was to descend from this plateau along the valley of the Urubamba river, which takes a circuitous route down to the Amazon and passes through an area of dramatic canyons and mountain ranges."
        },
        {
          "ref": "B",
          "text": "When Bingham and his team set off down the Urubamba in late July, they had an advantage over travelers who had preceded them: a track had recently been blasted down the valley canyon to enable rubber to be brought up by mules from the jungle. Almost all previous travelers had left the river at Ollantaytambo and taken a high pass across the mountains to rejoin the river lower down, thereby cutting a substantial corner, but also therefore never passing through the area around Machu Picchu."
        },
        {
          "ref": "C",
          "text": "On 24 July they were a few days into their descent of the valley. The day began slowly, with Bingham trying to arrange sufficient mules for the next stage of the trek. His companions showed no interest in accompanying him up the nearby hill to see some ruins that a local farmer, Melchor Arteaga, had told them about the night before. The morning was dull and damp, and Bingham also seems to have been less than keen on the prospect of climbing the hill. In his book Lost City of the Incas, he relates that he made the ascent without having the least expectation that he would find anything at the top."
        },
        {
          "ref": "D",
          "text": "Bingham writes about the approach in vivid style in his book. First, as he climbs up the hill, he describes the ever-present possibility of deadly snakes, ‘capable of making considerable springs when in pursuit of their prey’; not that he sees any. Then there’s a sense of mounting discovery as he comes across great sweeps of terraces, then a mausoleum, followed by monumental staircases and, finally, the grand ceremonial buildings of Machu Picchu. ‘It seemed like an unbelievable dream … the sight held me spellbound …’ he wrote."
        },
        {
          "ref": "E",
          "text": "We should remember, however, that Lost City of the Incas is a work of hindsight, not written until 1948, many years after his journey. His journal entries of the time reveal a much more gradual appreciation of his achievement. He spent the afternoon at the ruins noting down the dimensions of some of the buildings, then descended and rejoined his companions, to whom he seems to have said little about his discovery. At this stage, Bingham didn’t realise the extent or the importance of the site, nor did he realise what use he could make of the discovery."
        },
        {
          "ref": "F",
          "text": "However, soon after returning it occurred to him that he could make a name for himself from this discovery. When he came to write the National Geographic magazine article that broke the story to the world in April 1913, he knew he had to produce a big idea. He wondered whether it could have been the birthplace of the very first Inca, Manco the Great, and whether it could also have been === PAGE 5 === what chroniclers described as ‘the last city of the Incas’. This term refers to Vilcabamba, the settlement where the Incas had fled from Spanish invaders in the 1530s. Bingham made desperate attempts to prove this belief for nearly 40 years. Sadly, his vision of the site as both the beginning and end of the Inca civilisation, while a magnificent one, is inaccurate. We now know that Vilcabamba actually lies 65 kilometres away in the depths of the jungle."
        },
        {
          "ref": "G",
          "text": "One question that has perplexed visitors, historians and archaeologists alike ever since Bingham, is why the site seems to have been abandoned before the Spanish Conquest. There are no references to it by any of the Spanish chroniclers – and if they had known of its existence so close to Cusco they would certainly have come in search of gold. An idea which has gained wide acceptance over the past few years is that Machu Picchu was a moya, a country estate built by an Inca emperor to escape the cold winters of Cusco, where the elite could enjoy monumental architecture and spectacular views. Furthermore, the particular architecture of Machu Picchu suggests that it was constructed at the time of the greatest of all the Incas, the emperor Pachacuti (c. 1438-71). By custom, Pachacuti’s descendants built other similar estates for their own use, and so Machu Picchu would have been abandoned after his death, some 50 years before the Spanish Conquest."
        }
      ],
      "groups": [
        {
          "id": "g5",
          "type": "matching",
          "label": "Questions 14–20",
          "instructions": "The Reading Passage has seven paragraphs, A–G. Choose the correct heading for each paragraph from the list of headings below.",
          "options": [
            {
              "key": "i",
              "text": "Different accounts of the same journey"
            },
            {
              "key": "ii",
              "text": "Bingham gains support"
            },
            {
              "key": "iii",
              "text": "A common belief"
            },
            {
              "key": "iv",
              "text": "The aim of the trip"
            },
            {
              "key": "v",
              "text": "A dramatic description"
            },
            {
              "key": "vi",
              "text": "A new route"
            },
            {
              "key": "vii",
              "text": "Bingham publishes his theory"
            },
            {
              "key": "viii",
              "text": "Bingham’s lack of enthusiasm"
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "Paragraph A",
              "answer": "iv",
              "explanation": "Paragraph A describes Bingham’s goal: to locate the remains of Vitcos, the last Inca capital.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "His goal was to locate the remains of a city called Vitcos, the last capital of the Inca civilisation"
              }
            },
            {
              "number": 15,
              "prompt": "Paragraph B",
              "answer": "vi",
              "explanation": "Paragraph B describes a new route down the Urubamba valley that previous travellers had not taken.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Almost all previous travelers had left the river at Ollantaytambo and taken a high pass across the mountains"
              }
            },
            {
              "number": 16,
              "prompt": "Paragraph C",
              "answer": "viii",
              "explanation": "Paragraph C describes Bingham’s lack of enthusiasm for climbing the hill that day.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Bingham also seems to have been less than keen on the prospect of climbing the hill"
              }
            },
            {
              "number": 17,
              "prompt": "Paragraph D",
              "answer": "v",
              "explanation": "Paragraph D gives Bingham’s dramatic description of ascending to Machu Picchu.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "It seemed like an unbelievable dream … the sight held me spellbound"
              }
            },
            {
              "number": 18,
              "prompt": "Paragraph E",
              "answer": "i",
              "explanation": "Paragraph E contrasts Bingham’s later published account with his journal entries at the time.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Lost City of the Incas is a work of hindsight, not written until 1948, many years after his journey. His journal entries of the time reveal a much more gradual appreciation"
              }
            },
            {
              "number": 19,
              "prompt": "Paragraph F",
              "answer": "vii",
              "explanation": "Paragraph F describes Bingham publishing his theory in the National Geographic article.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "When he came to write the National Geographic magazine article that broke the story to the world in April 1913"
              }
            },
            {
              "number": 20,
              "prompt": "Paragraph G",
              "answer": "iii",
              "explanation": "Paragraph G discusses the common belief that Machu Picchu was a royal country estate.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "An idea which has gained wide acceptance over the past few years is that Machu Picchu was a moya, a country estate built by an Inca emperor"
              }
            }
          ]
        },
        {
          "id": "g6",
          "type": "true_false_notgiven",
          "label": "Questions 21–24",
          "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 21,
              "prompt": "Bingham went to South America in search of an Inca city.",
              "answer": "TRUE",
              "explanation": "His goal was to locate the remains of Vitcos, the last capital of the Inca civilisation.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "His goal was to locate the remains of a city called Vitcos, the last capital of the Inca civilisation"
              }
            },
            {
              "number": 22,
              "prompt": "Bingham chose a particular route down the Urubamba valley because it was the most common route used by travellers.",
              "answer": "FALSE",
              "explanation": "Almost all previous travellers had taken a different route via a high pass; Bingham’s route was a new one.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Almost all previous travelers had left the river at Ollantaytambo and taken a high pass across the mountains to rejoin the river lower down"
              }
            },
            {
              "number": 23,
              "prompt": "Bingham understood the significance of Machu Picchu as soon as he saw it.",
              "answer": "FALSE",
              "explanation": "His journal reveals a much more gradual appreciation; he didn’t realise the extent or importance of the site.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "His journal entries of the time reveal a much more gradual appreciation of his achievement … Bingham didn’t realise the extent or the importance of the site"
              }
            },
            {
              "number": 24,
              "prompt": "Bingham returned to Machu Picchu in order to find evidence to support his theory.",
              "answer": "NOT GIVEN",
              "explanation": "The passage says he made desperate attempts to prove his belief but does not say he returned to the site.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "Bingham made desperate attempts to prove this belief for nearly 40 years"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "completion",
          "label": "Questions 25–26",
          "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
          "questions": [
            {
              "number": 25,
              "prompt": "The track that took Bingham down the Urubamba valley had been created for the transportation of _______",
              "answer": [
                "rubber"
              ],
              "wordLimit": 1,
              "explanation": "A track had recently been blasted to enable rubber to be brought up by mules from the jungle.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "a track had recently been blasted down the valley canyon to enable rubber to be brought up by mules from the jungle"
              }
            },
            {
              "number": 26,
              "prompt": "Bingham found out about the ruins of Machu Picchu from a _______ in the Urubamba valley.",
              "answer": [
                "farmer"
              ],
              "wordLimit": 1,
              "explanation": "A local farmer, Melchor Arteaga, had told them about the ruins.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "ruins that a local farmer, Melchor Arteaga, had told them about the night before"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "The Benefits of Being Bilingual",
      "passage": [
        {
          "ref": "A",
          "text": "According to the latest figures, the majority of the world’s population is now bilingual or multilingual, having grown up speaking two or more languages. In the past, such children were considered to be at a disadvantage compared with their monolingual peers. Over the past few decades, however, technological advances have allowed researchers to look more deeply at how bilingualism interacts with and changes the cognitive and neurological systems, thereby identifying several clear benefits of being bilingual."
        },
        {
          "ref": "B",
          "text": "Research shows that when a bilingual person uses one language, the other is active at the same time. When we hear a word, we don’t hear the entire word all at once: the sounds arrive in sequential order. Long before the word is finished, the brain’s language system begins to guess what that word might be. If you hear ‘can’, you will likely activate words like ‘candy’ and ‘candle’ as well, at least during the earlier stages of word recognition. For bilingual people, this activation is not limited to a single language; auditory input activates corresponding words regardless of the language to which they belong. Some of the most compelling evidence for this phenomenon, called ‘language co-activation’, comes from studying eye movements. A Russian-English bilingual asked to ‘pick up a marker’ from a set of objects would look more at a stamp than someone who doesn’t know Russian, because the Russian word for ‘stamp’, marka, sounds like the English word he or she heard, ‘marker’. In cases like this, language co-activation occurs because what the listener hears could map onto words in either language."
        },
        {
          "ref": "C",
          "text": "Having to deal with this persistent linguistic competition can result in difficulties, however. For instance, knowing more than one language can cause speakers to name pictures more slowly, and can increase ‘tip-of-the-tongue states’, when you can almost, but not quite, bring a word to mind. As a result, the constant juggling of two languages creates a need to control how much a person accesses a language at any given time. For this reason, bilingual people often perform better on tasks that require conflict management. In the classic Stroop Task, people see a word and are asked === PAGE 7 === to name the colour of the word’s font. When the colour and the word match (i.e., the word ‘red’ printed in red), people correctly name the colour more quickly than when the colour and the word don’t match (i.e., the word ‘red’ printed in blue). This occurs because the word itself (‘red’) and its font colour (blue) conflict. Bilingual people often excel at tasks such as this, which tap into the ability to ignore competing perceptual information and focus on the relevant aspects of the input. Bilinguals are also better at switching between two tasks; for example, when bilinguals have to switch from categorizing objects by colour (red or green) to categorizing them by shape (circle or triangle), they do so more quickly than monolingual people, reflecting better cognitive control when having to make rapid changes of strategy."
        },
        {
          "ref": "D",
          "text": "It also seems that the neurological roots of the bilingual advantage extend to brain areas more traditionally associated with sensory processing. When monolingual and bilingual adolescents listen to simple speech sounds without any intervening background noise, they show highly similar brain stem responses. When researchers play the same sound to both groups in the presence of background noise, however, the bilingual listeners’ neural response is considerably larger, reflecting better encoding of the sound’s fundamental frequency, a feature of sound closely related to pitch perception."
        },
        {
          "ref": "E",
          "text": "Such improvements in cognitive and sensory processing may help a bilingual person to process information in the environment, and help explain why bilingual adults acquire a third language better than monolingual adults master a second language. This advantage may be rooted in the skill of focussing on information about the new language while reducing interference from the languages they already know."
        },
        {
          "ref": "F",
          "text": "Research also indicates that bilingual experience may help to keep the cognitive mechanisms sharp by recruiting alternate brain networks to compensate for those that become damaged during aging. Older bilinguals enjoy improved memory relative to monolingual people, which can lead to real-world health benefits. In a study of over 200 patients with Alzheimer’s disease, a degenerative brain disease, bilingual patients reported showing initial symptoms of the disease an average of five years later than monolingual patients. In a follow-up study, researchers compared the brains of bilingual and monolingual patients matched on the severity of Alzheimer’s symptoms. Surprisingly, the bilinguals’ brains had more physical signs of disease than their monolingual counterparts, even though their outward behaviour and abilities were the same. If the brain is an engine, bilingualism may help it to go farther on the same amount of fuel."
        },
        {
          "ref": "G",
          "text": "Furthermore, the benefits associated with bilingual experience seem to start very early. In one study, researchers taught seven-month-old babies growing up in monolingual or bilingual homes that when they heard a tinkling sound, a puppet appeared on one side of a screen. Halfway through the study, the puppet began appearing on the opposite side of the screen. In order to get a reward, the infants had to adjust the rule they’d learned; only the bilingual babies were able to successfully learn the new rule. This suggests that for very young children, as well as for older people, navigating a multilingual environment imparts advantages that transfer far beyond language. === PAGE 8 ==="
        }
      ],
      "groups": [
        {
          "id": "g8",
          "type": "completion",
          "label": "Questions 27–31",
          "instructions": "Complete the table below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "questions": [
            {
              "number": 27,
              "prompt": "Observing the _______ of Russian-English bilingual people when asked to select certain objects",
              "answer": [
                "eye movements"
              ],
              "wordLimit": 2,
              "explanation": "Some of the most compelling evidence comes from studying eye movements.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "Some of the most compelling evidence for this phenomenon … comes from studying eye movements"
              }
            },
            {
              "number": 28,
              "prompt": "Bilingual people engage both languages simultaneously: a mechanism known as _______",
              "answer": [
                "language co-activation"
              ],
              "wordLimit": 2,
              "explanation": "This phenomenon is called language co-activation.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "this phenomenon, called ‘language co-activation’"
              }
            },
            {
              "number": 29,
              "prompt": "A test called the _______, focusing on naming colours",
              "answer": [
                "Stroop Task"
              ],
              "wordLimit": 2,
              "explanation": "In the classic Stroop Task, people see a word and are asked to name the colour of the word’s font.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "In the classic Stroop Task, people see a word and are asked to name the colour of the word’s font"
              }
            },
            {
              "number": 30,
              "prompt": "Bilingual people are more able to handle tasks involving a skill called _______",
              "answer": [
                "conflict management"
              ],
              "wordLimit": 2,
              "explanation": "Bilingual people often perform better on tasks that require conflict management.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "bilingual people often perform better on tasks that require conflict management"
              }
            },
            {
              "number": 31,
              "prompt": "When changing strategies, bilingual people have superior _______",
              "answer": [
                "cognitive control"
              ],
              "wordLimit": 2,
              "explanation": "Bilinguals switch between tasks more quickly, reflecting better cognitive control.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "they do so more quickly than monolingual people, reflecting better cognitive control when having to make rapid changes of strategy"
              }
            }
          ]
        },
        {
          "id": "g9",
          "type": "yes_no_notgiven",
          "label": "Questions 32–36",
          "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 32,
              "prompt": "Attitudes towards bilingualism have changed in recent years.",
              "answer": "YES",
              "explanation": "In the past bilingual children were considered at a disadvantage; now researchers have identified clear benefits.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "In the past, such children were considered to be at a disadvantage compared with their monolingual peers. Over the past few decades, however … several clear benefits of being bilingual"
              }
            },
            {
              "number": 33,
              "prompt": "Bilingual people are better than monolingual people at guessing correctly what words are before they are finished.",
              "answer": "NOT GIVEN",
              "explanation": "The passage describes language co-activation in bilinguals but does not compare their word-guessing accuracy with monolinguals.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "the brain’s language system begins to guess what that word might be"
              }
            },
            {
              "number": 34,
              "prompt": "Bilingual people consistently name images faster than monolingual people.",
              "answer": "NO",
              "explanation": "Knowing more than one language can cause speakers to name pictures more slowly.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "knowing more than one language can cause speakers to name pictures more slowly"
              }
            },
            {
              "number": 35,
              "prompt": "Bilingual people’s brains process single sounds more efficiently than monolingual people in all situations.",
              "answer": "NO",
              "explanation": "Without background noise both groups show highly similar brain stem responses; bilinguals are better only with background noise.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "When monolingual and bilingual adolescents listen to simple speech sounds without any intervening background noise, they show highly similar brain stem responses"
              }
            },
            {
              "number": 36,
              "prompt": "Fewer bilingual people than monolingual people suffer from brain disease in old age.",
              "answer": "NOT GIVEN",
              "explanation": "The passage states bilingual patients show symptoms later on average, but does not state that fewer bilinguals suffer brain disease.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "bilingual patients reported showing initial symptoms of the disease an average of five years later than monolingual patients"
              }
            }
          ]
        },
        {
          "id": "g10",
          "type": "matching",
          "label": "Questions 37–40",
          "instructions": "The Reading Passage has seven paragraphs, A–G. Which paragraph contains the following information?",
          "options": [
            {
              "key": "A",
              "text": "Paragraph A"
            },
            {
              "key": "B",
              "text": "Paragraph B"
            },
            {
              "key": "C",
              "text": "Paragraph C"
            },
            {
              "key": "D",
              "text": "Paragraph D"
            },
            {
              "key": "E",
              "text": "Paragraph E"
            },
            {
              "key": "F",
              "text": "Paragraph F"
            },
            {
              "key": "G",
              "text": "Paragraph G"
            }
          ],
          "questions": [
            {
              "number": 37,
              "prompt": "an example of how bilingual and monolingual people’s brains respond differently to a certain type of non-verbal auditory input",
              "answer": "D",
              "explanation": "Paragraph D discusses brain stem responses to speech sounds with and without background noise.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "It also seems that the neurological roots of the bilingual advantage extend to brain areas more traditionally associated with sensory processing"
              }
            },
            {
              "number": 38,
              "prompt": "a demonstration of how a bilingual upbringing has benefits even before we learn to speak",
              "answer": "G",
              "explanation": "Paragraph G describes seven-month-old bilingual babies adjusting to a new rule faster than monolingual babies.",
              "evidence": {
                "sectionId": "p3",
                "ref": "G",
                "quote": "researchers taught seven-month-old babies growing up in monolingual or bilingual homes … only the bilingual babies were able to successfully learn the new rule"
              }
            },
            {
              "number": 39,
              "prompt": "a description of the process by which people identify words that they hear",
              "answer": "B",
              "explanation": "Paragraph B describes how the brain’s language system begins to guess words before they are fully heard.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "Long before the word is finished, the brain’s language system begins to guess what that word might be"
              }
            },
            {
              "number": 40,
              "prompt": "reference to some negative consequences of being bilingual",
              "answer": "C",
              "explanation": "Paragraph C mentions that bilinguals can name pictures more slowly and experience more tip-of-the-tongue states.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "knowing more than one language can cause speakers to name pictures more slowly, and can increase ‘tip-of-the-tongue states’"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c12t2r$,
  true
);
