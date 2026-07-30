DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 13' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 13',
  'Test 2',
  'academic',
  3600,
  $c13t2r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Bringing Cinnamon to Europe",
      "passage": [
        {
          "ref": "1",
          "text": "Cinnamon is a sweet, fragrant spice produced from the inner bark of trees of the genus Cinnamomum, which is native to the Indian sub-continent. It was known in biblical times, and is mentioned in several books of the Bible, both as an ingredient that was mixed with oils for anointing people's bodies, and also as a token indicating friendship among lovers and friends. In ancient Rome, mourners attending funerals burnt cinnamon to create a pleasant scent. Most often, however, the spice found its primary use as an additive to food and drink. In the Middle Ages, Europeans who could afford the spice used it to flavor food, particularly meat, and to impress those around them with their ability to purchase an expensive condiment from the ‘exotic’ East. At a banquet, a host would offer guests a plate with various spices piled upon it as a sign of the wealth at his or her disposal. Cinnamon was also reported to have health benefits, and was thought to cure various ailments, such as indigestion."
        },
        {
          "ref": "2",
          "text": "Toward the end of the Middle Ages, the European middle classes began to desire the lifestyle of the elite, including their consumption of spices. This led to a growth in demand for cinnamon and other spices. At that time, cinnamon was transported by Arab merchants, who closely guarded the secret of the source of the spice from potential rivals. They took it from India, where it was grown, on camels via an overland route to the Mediterranean. Their journey ended when they reached Alexandria. European traders sailed there to purchase their supply of cinnamon, then brought it back to Venice. The spice then travelled from that great trading city to markets all around Europe. Because the overland trade route allowed for only small quantities of the spice to reach Europe, and because Venice had a virtual monopoly of the trade, the Venetians could set the price of cinnamon exorbitantly high. These prices, coupled with the increasing demand, spurred the search for new routes to Asia by Europeans eager to take part in the spice trade."
        },
        {
          "ref": "3",
          "text": "Seeking the high profits promised by the cinnamon market, Portuguese traders arrived on the island of Ceylon in the Indian Ocean toward the end of the 15th century. Before Europeans arrived on the island, the state had organized the cultivation of cinnamon. People belonging to the ethnic group called the Salagama would peel the bark off young shoots of the cinnamon plant in the rainy season, when the wet bark was more pliable. During the peeling process, they curled the bark into the ‘stick’ shape still associated with the spice today. The Salagama then gave the finished product to the king as a form of tribute. When the Portuguese arrived, they needed to increase production significantly, and so enslaved many other members of the Ceylonese native population, forcing them to work in cinnamon harvesting. In 1518, the Portuguese built a fort on Ceylon, which enabled them to protect the island, so helping them to develop a monopoly in the cinnamon trade and generate very high profits. In the late 16th century, for example, they enjoyed a tenfold profit when shipping cinnamon over a journey of eight days from Ceylon to India."
        },
        {
          "ref": "4",
          "text": "When the Dutch arrived off the coast of southern Asia at the very beginning of the 17th century, they set their sights on displacing the Portuguese as kings of cinnamon. The Dutch allied themselves with Kandy, an inland kingdom on Ceylon. In return for payments of elephants and cinnamon, they protected the native king from the Portuguese. By 1649, the Dutch broke the 150- year Portuguese monopoly when they overran and occupied their factories. By 1658, they had permanently expelled the Portuguese from the island, thereby gaining control of the lucrative cinnamon trade."
        },
        {
          "ref": "5",
          "text": "In order to protect their hold on the market, the Dutch, like the Portuguese before them, treated the native inhabitants harshly. Because of the need to boost production and satisfy Europe's ever- increasing appetite for cinnamon, the Dutch began to alter the harvesting practices of the Ceylonese. Over time, the supply of cinnamon trees on the island became nearly exhausted, due to systematic stripping of the bark. Eventually, the Dutch began cultivating their own cinnamon trees to supplement the diminishing number of wild trees available for use."
        },
        {
          "ref": "6",
          "text": "Then, in 1796, the English arrived on Ceylon, thereby displacing the Dutch from their control of the cinnamon monopoly. By the middle of the 19th century, production of cinnamon reached 1,000 tons a year, after a lower grade quality of the spice became acceptable to European tastes. By that time, cinnamon was being grown in other parts of the Indian Ocean region and in the West Indies, Brazil, and Guyana. Not only was a monopoly of cinnamon becoming impossible, but the spice trade overall was diminishing in economic potential, and was eventually superseded by the rise of trade in coffee, tea, chocolate, and sugar."
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "completion",
          "label": "Questions 1–9",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "The Early History of Cinnamon",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Biblical times:"
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
              "kind": "subheader",
              "text": "Ancient Rome:"
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "subheader",
              "text": "Middle Ages:"
            },
            {
              "kind": "static",
              "text": "added to food, especially meat"
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
              "text": "Trade route:"
            },
            {
              "kind": "question",
              "number": 6
            },
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
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "added to _______",
              "answer": [
                "oils"
              ],
              "wordLimit": 1,
              "explanation": "Cinnamon was mixed with oils for anointing people's bodies.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "an ingredient that was mixed with oils for anointing people's bodies"
              }
            },
            {
              "number": 2,
              "prompt": "used to show _______ between people",
              "answer": [
                "friendship"
              ],
              "wordLimit": 1,
              "explanation": "Cinnamon was a token indicating friendship among lovers and friends.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "a token indicating friendship among lovers and friends"
              }
            },
            {
              "number": 3,
              "prompt": "used for its sweet smell at _______",
              "answer": [
                "funerals"
              ],
              "wordLimit": 1,
              "explanation": "In ancient Rome, mourners at funerals burnt cinnamon to create a pleasant scent.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "mourners attending funerals burnt cinnamon to create a pleasant scent"
              }
            },
            {
              "number": 4,
              "prompt": "was an indication of a person's _______",
              "answer": [
                "wealth"
              ],
              "wordLimit": 1,
              "explanation": "A host offering spices was displaying the wealth at their disposal.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "a host would offer guests a plate with various spices piled upon it as a sign of the wealth at his or her disposal"
              }
            },
            {
              "number": 5,
              "prompt": "known as a treatment for _______ and other health problems",
              "answer": [
                "indigestion"
              ],
              "wordLimit": 1,
              "explanation": "Cinnamon was thought to cure ailments such as indigestion.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "was thought to cure various ailments, such as indigestion"
              }
            },
            {
              "number": 6,
              "prompt": "grown in _______",
              "answer": [
                "India"
              ],
              "wordLimit": 1,
              "explanation": "Arab merchants took cinnamon from India where it was grown.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "They took it from India, where it was grown"
              }
            },
            {
              "number": 7,
              "prompt": "merchants used _______ to bring it to the Mediterranean",
              "answer": [
                "camels"
              ],
              "wordLimit": 1,
              "explanation": "Arab merchants transported cinnamon on camels via an overland route.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "on camels via an overland route to the Mediterranean"
              }
            },
            {
              "number": 8,
              "prompt": "arrived in the Mediterranean at _______",
              "answer": [
                "Alexandria"
              ],
              "wordLimit": 1,
              "explanation": "The merchants' journey ended when they reached Alexandria.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Their journey ended when they reached Alexandria"
              }
            },
            {
              "number": 9,
              "prompt": "traders took it to _______ and sold it to destinations around Europe",
              "answer": [
                "Venice"
              ],
              "wordLimit": 1,
              "explanation": "European traders brought the cinnamon back to Venice.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "European traders sailed there to purchase their supply of cinnamon, then brought it back to Venice"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "true_false_notgiven",
          "label": "Questions 10–13",
          "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 10,
              "prompt": "The Portuguese had control over the cinnamon trade in Ceylon throughout the 16th century.",
              "answer": "TRUE",
              "explanation": "The Portuguese built a fort in 1518 and developed a monopoly that lasted until the Dutch broke it in 1649.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "In 1518, the Portuguese built a fort on Ceylon, which enabled them to protect the island, so helping them to develop a monopoly in the cinnamon trade"
              }
            },
            {
              "number": 11,
              "prompt": "The Dutch took over the cinnamon trade from the Portuguese as soon as they arrived in Ceylon.",
              "answer": "FALSE",
              "explanation": "The Dutch arrived at the beginning of the 17th century but did not expel the Portuguese until 1658.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "When the Dutch arrived off the coast of southern Asia at the very beginning of the 17th century"
              }
            },
            {
              "number": 12,
              "prompt": "The trees planted by the Dutch produced larger quantities of cinnamon than the wild trees.",
              "answer": "NOT GIVEN",
              "explanation": "The passage says the Dutch cultivated trees to supplement wild ones, but makes no comparison of quantities.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "the Dutch began cultivating their own cinnamon trees to supplement the diminishing number of wild trees available for use"
              }
            },
            {
              "number": 13,
              "prompt": "The spice trade maintained its economic importance during the 19th century.",
              "answer": "FALSE",
              "explanation": "The spice trade was diminishing in economic potential and was superseded by coffee, tea, chocolate and sugar.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "the spice trade overall was diminishing in economic potential, and was eventually superseded by the rise of trade in coffee, tea, chocolate, and sugar"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "Oxytocin",
      "passage": [
        {
          "ref": "A",
          "text": "Oxytocin is a chemical, a hormone produced in the pituitary gland in the brain. It was through various studies focusing on animals that scientists first became aware of the influence of oxytocin. They discovered that it helps reinforce the bonds between prairie voles, which mate for life, and triggers the motherly behaviour that sheep show towards their newborn lambs. It is also released by women in childbirth, strengthening the attachment between mother and baby. Few chemicals have as positive a reputation as oxytocin, which is sometimes referred to as the ‘love hormone’. One sniff of it can, it is claimed, make a person more trusting, empathetic, generous and cooperative. It is time, however, to revise this wholly optimistic view. A new wave of studies has shown that its effects vary greatly depending on the person and the circumstances, and it can impact on our social interactions for worse as well as for better."
        },
        {
          "ref": "B",
          "text": "Oxytocin’s role in human behaviour first emerged in 2005. In a groundbreaking experiments, Markus Heinrichs and his colleagues at the University of Freiburg, Germany, asked volunteers to do an activity in which they could invest money with an anonymous person who was not guaranteed to be honest. The team found the participants who had sniffed oxytocin via a nasal spray beforehand invested more money than those who received a placebo instead. The study was the start of research into the effects of oxytocin on human interactions. ‘For eight years, it was quite a lonesome field,’ Heinrichs recalls. ‘Now, everyone is interested.’ These follow-up studies have shown that after a sniff of the hormone, people become more charitable, better at reading emotions on others’ faces and at communicating constructively in arguments. Together, the results fuelled the view that oxytocin universally enhanced the positive aspects of our social nature. Cc Then, after a few years, contrasting findings began to emerge. Simone Shamay-Tsoory at the at the University of Haifa, Israel, found that when volunteers played a competitive game, those who inhaled the hormone showed more pleasure when they beat other players, and felt more envy when others won. What's more, administering oxytocin also has sharply contrasting outcomes depending on a person's disposition. Jennifer Bartz from Mount Sinai School of Medicine, New York, found that it improves people's ability to read emotions, but only if they are not very socially adept to begin with. Her research also shows that oxytocin in fact reduces cooperation in subjects who are particularly anxious or sensitive to rejection."
        },
        {
          "ref": "D",
          "text": "Another discovery is that oxytocin’s effects vary depending on who we are interacting with. Studies conducted by Carolyn DeClerck of the University of Antwerp, Belgium, revealed that people who had received a dose of oxytocin actually became less cooperative when dealing with complete strangers. Meanwhile, Carsten De Dreu at the University of Amsterdam in the Netherlands discovered that volunteers given oxytocin showed favouritism: Dutch men became quicker to associate positive words with Dutch names than with foreign ones, for example. According to De Dreu, oxytocin drives people to care for those in their social circles and defend them from outside dangers. So, it appears that oxytocin strengthens biases, rather than promoting general goodwill, as was previously thought. There were signs of these subtleties from the start. Bartz has recently shown that in almost half of the existing research results, oxytocin influenced only certain individuals or in certain circumstances. Where once researchers took no notice of such findings, now a more nuanced understanding of oxytocin’s effects is propelling investigations down new lines. To Bartz, the key to understanding what the hormone does lies in pinpointing its core function rather than in cataloguing its seemingly endless effects. There are several hypotheses which are not mutually exclusive. Oxytocin could help to reduce anxiety and fear. Or it could simply motivate people to seek out social connections. She believes that oxytocin acts as a chemical spotlight that shines on social clues — a shift in posture, a flicker of the eyes, a dip in the voice —- making people more attuned to their social environment. This would explain why it makes us more likely to look others in the eye and improves our ability to identify emotions. But it could also make things worse for people who are overly sensitive or prone to interpreting social cues in the worst light. === PAGE 4 === Perhaps we should not be surprised that the oxytocin story has become more perplexing. The hormone is found in everything from octopuses to sheep, and its evolutionary roots stretch back half a billion years. ‘It's a very simple and ancient molecule that has been co-opted for many different functions,’ says Sue Carter at the University of Illinois, Chicago, USA. ‘It affects primitive parts of the brain like the amygdala, so it’s going to have many effects on just about everything.’ Bartz agrees. ‘Oxytocin probably does some very basic things, but once you add our higher-order thinking and social situations, these basic processes could manifest in different ways depending on individual differences and context.’"
        }
      ],
      "groups": [
        {
          "id": "g3",
          "type": "matching",
          "label": "Questions 14–17",
          "instructions": "The Reading Passage has six paragraphs, A–F. Which paragraph contains the following information? You may use any letter more than once.",
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
              "prompt": "reference to research showing the beneficial effects of oxytocin on people",
              "answer": "B",
              "explanation": "Paragraph B describes how oxytocin makes people more charitable, better at reading emotions, and more cooperative.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "after a sniff of the hormone, people become more charitable, better at reading emotions on others' faces and at communicating constructively in arguments"
              }
            },
            {
              "number": 15,
              "prompt": "reasons why the effects of oxytocin are complex",
              "answer": "F",
              "explanation": "Paragraph F explains that oxytocin is ancient and affects primitive brain areas, creating many different effects.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "It's a very simple and ancient molecule that has been co-opted for many different functions"
              }
            },
            {
              "number": 16,
              "prompt": "mention of a period in which oxytocin attracted little scientific attention",
              "answer": "B",
              "explanation": "Paragraph B notes that for eight years after the first study, the field was a 'lonesome' area.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "For eight years, it was quite a lonesome field"
              }
            },
            {
              "number": 17,
              "prompt": "reference to people ignoring certain aspects of their research data",
              "answer": "E",
              "explanation": "Paragraph E notes that where once researchers took no notice of findings showing oxytocin had limited effects, they now pay attention.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Where once researchers took no notice of such findings, now a more nuanced understanding of oxytocin's effects is propelling investigations down new lines"
              }
            }
          ]
        },
        {
          "id": "g4",
          "type": "matching",
          "label": "Questions 18–20",
          "instructions": "Look at the following research findings and the list of researchers below. Match each research finding with the correct researcher, A–F.",
          "options": [
            {
              "key": "A",
              "text": "Markus Heinrichs"
            },
            {
              "key": "B",
              "text": "Simone Shamay-Tsoory"
            },
            {
              "key": "C",
              "text": "Jennifer Bartz"
            },
            {
              "key": "D",
              "text": "Carolyn DeClerck"
            },
            {
              "key": "E",
              "text": "Carsten De Dreu"
            },
            {
              "key": "F",
              "text": "Sue Carter"
            }
          ],
          "questions": [
            {
              "number": 18,
              "prompt": "People are more trusting when affected by oxytocin.",
              "answer": "A",
              "explanation": "Heinrichs found that participants who sniffed oxytocin invested more money with an anonymous person.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "participants who had sniffed oxytocin via a nasal spray beforehand invested more money than those who received a placebo instead"
              }
            },
            {
              "number": 19,
              "prompt": "Oxytocin increases people's feelings of jealousy.",
              "answer": "B",
              "explanation": "Shamay-Tsoory found that volunteers who inhaled oxytocin felt more envy when others won a game.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "those who inhaled the hormone showed more pleasure when they beat other players, and felt more envy when others won"
              }
            },
            {
              "number": 20,
              "prompt": "The effect of oxytocin varies from one type of person to another.",
              "answer": "C",
              "explanation": "Bartz found that oxytocin's effects depend sharply on a person's disposition.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "administering oxytocin also has sharply contrasting outcomes depending on a person's disposition"
              }
            }
          ]
        },
        {
          "id": "g5",
          "type": "short_answer",
          "label": "Questions 21–26",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "summaryTitle": "Oxytocin research",
          "summaryText": "The earliest findings about oxytocin and bonding came from research involving {21}. It was also discovered that humans produce oxytocin during {22}. An experiment in 2005, in which participants were given either oxytocin or a {23}, reinforced the belief that the hormone had a positive effect. However, later research suggests that this is not always the case. A study at the University of Haifa where participants took part in a {24} revealed the negative emotions which oxytocin can trigger. A study at the University of Antwerp showed people's lack of willingness to help {25} while under the influence of oxytocin. Meanwhile, research at the University of Amsterdam revealed that people who have been given oxytocin consider that {26} that are familiar to them in their own country to have more positive associations than those from other cultures.",
          "questions": [
            {
              "number": 21,
              "prompt": "",
              "answer": [
                "animals"
              ],
              "wordLimit": 1,
              "explanation": "Scientists first became aware of oxytocin through studies focusing on animals.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "It was through various studies focusing on animals that scientists first became aware of the influence of oxytocin"
              }
            },
            {
              "number": 22,
              "prompt": "",
              "answer": [
                "childbirth"
              ],
              "wordLimit": 1,
              "explanation": "Oxytocin is released by women in childbirth.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "It is also released by women in childbirth, strengthening the attachment between mother and baby"
              }
            },
            {
              "number": 23,
              "prompt": "",
              "answer": [
                "placebo"
              ],
              "wordLimit": 1,
              "explanation": "Control participants received a placebo rather than oxytocin.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "invested more money than those who received a placebo instead"
              }
            },
            {
              "number": 24,
              "prompt": "",
              "answer": [
                "game"
              ],
              "wordLimit": 1,
              "explanation": "Shamay-Tsoory had volunteers play a competitive game.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "when volunteers played a competitive game, those who inhaled the hormone showed more pleasure when they beat other players"
              }
            },
            {
              "number": 25,
              "prompt": "",
              "answer": [
                "strangers"
              ],
              "wordLimit": 1,
              "explanation": "DeClerck found people became less cooperative when dealing with complete strangers.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "people who had received a dose of oxytocin actually became less cooperative when dealing with complete strangers"
              }
            },
            {
              "number": 26,
              "prompt": "",
              "answer": [
                "names"
              ],
              "wordLimit": 1,
              "explanation": "De Dreu found Dutch men were quicker to associate positive words with Dutch names than foreign ones.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "Dutch men became quicker to associate positive words with Dutch names than with foreign ones"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "Making the Most of Trends",
      "passage": [
        {
          "ref": "1",
          "text": "Experts from Harvard Business School give advice to managers Most managers can identify the major trends of the day. But it the course of conducting research in a number of industries and working directly with companies, we have discovered that managers often fail to recognize the less obvious but profound ways these trends are influencing consumers’ aspirations, attitudes, and behaviors. This is especially true of trends that managers view as peripheral to their core markets."
        },
        {
          "ref": "2",
          "text": "Many ignore trends in their innovation strategies or adopt a wait-and-see approach and let competitors take the lead. At a minimum, such responses mean missed profit opportunities. At the extreme, they can jeopardize a company by ceding to rivals the opportunity to transform the industry. The purpose of this article is twofold: to spur managers to think more expansively about how trends could engender new value propositions in their core markets, and to provide some high-level advice on how to make market research and product development personnel more adept at analyzing and exploiting trends."
        },
        {
          "ref": "3",
          "text": "One strategy, known as ‘infuse and augment’, is to design a product or service that retains most of the attributes and functions of existing products in the category but adds others that address the needs and desires unleashed by a major trend. A case in point in the Poppy range of handbags, which the firm Coach created in response to the economic downturn of 2008. The Coach brand had been a symbol of opulence and luxury for nearly 70 years, and the most obvious reaction to the downturn would have been to lower prices. However, that would have risked cheapening the brand's image. Instead, they initiated a consumer-research project which revealed that customers were eager to lift themselves and the country out of tough times. Using these insights, Coach launched the lower-priced Poppy handbags, which were in vibrant colors, and looked more youthful and playful than conventional Coach products. Creating the sub-brand allowed Coach to avert an across-the-board price cut. In contrast to the many companies that responded to the recession by cutting prices, Coach saw the new consumer mindset as an opportunity for innovation and renewal."
        },
        {
          "ref": "4",
          "text": "A further example of this strategy was supermarket Tesco's response to consumers’ growing concerns about the environment. With that in mind, Tesco, one of the world’s top five retailers, introduced its Greener Living program, which demonstrates the company’s commitment to protecting the environment by involving consumers in ways that produce tangible results. For example, Tesco customers can accumulate points for such activities as reusing bags, recycling cans and printer cartridges, and buying home-insulation materials. Like points earned on regular purchases, these green points can be redeemed for cash. Tesco has not abandoned its traditional retail offering but augmented its business with these innovations, thereby infusing its value proposition with a green streak."
        },
        {
          "ref": "5",
          "text": "A more radical strategy is ‘combine and transcend’. This entails combining aspects of the product's existing value proposition with attributes addressing changes arising from a trend, to create a novel experience — one that may land the company in an entirely new market space. At first glance, spending resources to incorporate elements of a seemingly irrelevant trend into one’s core offerings sounds like it's hardly worthwhile. But consider Nike's move to integrate the digital revolution into its reputation for high-performance athletic footwear. In 2006, they teamed up with technology company Apple to launch Nike+, a digital sports kit comprising a sensor that attaches to the running shoe and a wireless receiver that connects to the user's iPod. By combining Nike's original value proposition for amateur athletes with one for digital consumers, the Nike+ sports kit and web interface moved the company from a focus on athletic apparel to a new plane of engagement with its customers."
        },
        {
          "ref": "6",
          "text": "A third approach, known as ‘counteract and reaffirm’, involves developing products or services that stress the values traditionally associated with the category in ways that allow consumers to oppose -or at least temporarily escape from — the aspects of trends they view as undesirable. A product that accomplished this is the ME2, a video game created by Canada’s iToys. By reaffirming the toy category's association with physical play, the ME2 counteracted some of the widely perceived negative impacts of digital gaming devices. Like other handheld games, the device featured a host of exciting interactive games, a full-color LCD screen, and advanced 3D graphics. What set it apart was that it incorporated the traditional physical component of children’s play: it contained a pedometer, which tracked and awarded points for physical activity (walking, running, biking, skateboarding, climbing stairs). The child could use the points to enhance various virtual skills needed for the video game. The ME2, introduced in mid-2008, catered to kids’ huge desire to play video games while countering the negatives, such as associations with lack of exercise and obesity. Once you have gained perspective on how trend-related changes in consumer opinions and behaviors impact on your category, you can determine which of our three innovation strategies to pursue. When your category's basic value proposition continues to be meaningful for consumers influenced by the trend, the infuse-and-augment strategy will allow you to reinvigorate the category. If analysis reveals an increasing disparity between your category and consumers’ new focus, your innovations need to transcend the category to integrate the two worlds. Finally, if aspects of the category clash with undesired outcomes of a trend, such as associations with unhealthy lifestyles, there is an opportunity to counteract those changes by reaffirming the core values of your category."
        },
        {
          "ref": "7",
          "text": "Trends - technological, economic, environmental, social, or political — that affect how people perceive the world around them and shape what they expect from products and services present firms with unique opportunities for growth."
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
              "prompt": "In the first paragraph, the writer says that most managers",
              "options": [
                {
                  "key": "A",
                  "text": "fail to spot the key consumer trends of the moment."
                },
                {
                  "key": "B",
                  "text": "make the mistake of focusing only on the principal consumer trends."
                },
                {
                  "key": "C",
                  "text": "misinterpret market research data relating to current consumer trends."
                },
                {
                  "key": "D",
                  "text": "are unaware of the significant impact that trends have on consumers' lives."
                }
              ],
              "answer": "D",
              "explanation": "Managers fail to recognise the profound ways trends influence consumers' aspirations, attitudes and behaviours.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "managers often fail to recognize the less obvious but profound ways these trends are influencing consumers' aspirations, attitudes, and behaviors"
              }
            },
            {
              "number": 28,
              "prompt": "According to the third paragraph, Coach was anxious to",
              "options": [
                {
                  "key": "A",
                  "text": "follow what some of its competitors were doing."
                },
                {
                  "key": "B",
                  "text": "maintain its prices throughout its range."
                },
                {
                  "key": "C",
                  "text": "safeguard its reputation as a manufacturer of luxury goods."
                },
                {
                  "key": "D",
                  "text": "modify the entire look of its brand to suit the economic climate."
                }
              ],
              "answer": "C",
              "explanation": "Lowering prices would have risked cheapening the brand's image, so Coach found another way.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "that would have risked cheapening the brand's image"
              }
            },
            {
              "number": 29,
              "prompt": "What point is made about Tesco's Greener Living programme?",
              "options": [
                {
                  "key": "A",
                  "text": "It did not require Tesco to modify its core business activities."
                },
                {
                  "key": "B",
                  "text": "It succeeded in attracting a more eco-conscious clientele."
                },
                {
                  "key": "C",
                  "text": "Its main aim was to raise consumers' awareness of environmental issues."
                },
                {
                  "key": "D",
                  "text": "It was not the first time that Tesco had implemented such an initiative."
                }
              ],
              "answer": "A",
              "explanation": "Tesco augmented its business with these innovations without abandoning its traditional retail offering.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Tesco has not abandoned its traditional retail offering but augmented its business with these innovations"
              }
            },
            {
              "number": 30,
              "prompt": "What does the writer suggest about Nike's strategy?",
              "options": [
                {
                  "key": "A",
                  "text": "It was an extremely risky strategy at the time."
                },
                {
                  "key": "B",
                  "text": "It was a strategy that only a major company could afford to follow."
                },
                {
                  "key": "C",
                  "text": "It was the type of strategy that would not have been possible in the past."
                },
                {
                  "key": "D",
                  "text": "It was the kind of strategy which might appear to have few obvious benefits."
                }
              ],
              "answer": "D",
              "explanation": "At first glance, spending resources to incorporate a seemingly irrelevant trend sounds hardly worthwhile.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "At first glance, spending resources to incorporate elements of a seemingly irrelevant trend into one's core offerings sounds like it's hardly worthwhile"
              }
            },
            {
              "number": 31,
              "prompt": "What was original about the ME2?",
              "options": [
                {
                  "key": "A",
                  "text": "It contained technology that had been developed for the sports industry."
                },
                {
                  "key": "B",
                  "text": "It appealed to young people who were keen to improve their physical fitness."
                },
                {
                  "key": "C",
                  "text": "It took advantage of a current trend for video games with colourful 3D graphics."
                },
                {
                  "key": "D",
                  "text": "It was a handheld game that addressed people's concerns about unhealthy lifestyles."
                }
              ],
              "answer": "D",
              "explanation": "The ME2 catered to kids' desire to play video games while countering negatives such as lack of exercise and obesity.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "The ME2, introduced in mid-2008, catered to kids' huge desire to play video games while countering the negatives, such as associations with lack of exercise and obesity"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "matching",
          "label": "Questions 32–37",
          "instructions": "Look at the following statements and the list of companies below. Match each statement with the correct company, A, B, C or D. You may use any letter more than once.",
          "options": [
            {
              "key": "A",
              "text": "Coach"
            },
            {
              "key": "B",
              "text": "Tesco"
            },
            {
              "key": "C",
              "text": "Nike"
            },
            {
              "key": "D",
              "text": "iToys"
            }
          ],
          "questions": [
            {
              "number": 32,
              "prompt": "It turned the notion that its products could have harmful effects to its own advantage.",
              "answer": "D",
              "explanation": "iToys' ME2 counteracted the perceived negative impacts of digital gaming devices.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "By reaffirming the toy category's association with physical play, the ME2 counteracted some of the widely perceived negative impacts of digital gaming devices"
              }
            },
            {
              "number": 33,
              "prompt": "It extended its offering by collaborating with another manufacturer.",
              "answer": "C",
              "explanation": "Nike teamed up with Apple to launch the Nike+ sports kit.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "In 2006, they teamed up with technology company Apple to launch Nike+"
              }
            },
            {
              "number": 34,
              "prompt": "It implemented an incentive scheme to demonstrate its corporate social responsibility.",
              "answer": "B",
              "explanation": "Tesco's Greener Living programme awarded customers points for eco-friendly activities.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Tesco customers can accumulate points for such activities as reusing bags, recycling cans and printer cartridges"
              }
            },
            {
              "number": 35,
              "prompt": "It discovered that customers had a positive attitude towards dealing with difficult circumstances.",
              "answer": "A",
              "explanation": "Coach's research revealed customers were eager to lift themselves out of tough times.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "they initiated a consumer-research project which revealed that customers were eager to lift themselves and the country out of tough times"
              }
            },
            {
              "number": 36,
              "prompt": "It responded to a growing lifestyle trend in an unrelated product sector.",
              "answer": "C",
              "explanation": "Nike integrated the digital revolution into athletic footwear — a seemingly irrelevant trend.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "consider Nike's move to integrate the digital revolution into its reputation for high-performance athletic footwear"
              }
            },
            {
              "number": 37,
              "prompt": "It successfully avoided having to charge its customers less for its core products.",
              "answer": "A",
              "explanation": "Creating the Poppy sub-brand allowed Coach to avert an across-the-board price cut.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "Creating the sub-brand allowed Coach to avert an across-the-board price cut"
              }
            }
          ]
        },
        {
          "id": "g8",
          "type": "matching",
          "label": "Questions 38–40",
          "instructions": "Complete each sentence with the correct ending, A, B, C or D below.",
          "options": [
            {
              "key": "A",
              "text": "employ a combination of strategies to maintain your consumer base."
            },
            {
              "key": "B",
              "text": "identify the most appropriate innovation strategy to use."
            },
            {
              "key": "C",
              "text": "emphasise your brand's traditional values with the counteract-and-reaffirm strategy."
            },
            {
              "key": "D",
              "text": "use the combine-and-transcend strategy to integrate the two worlds."
            }
          ],
          "questions": [
            {
              "number": 38,
              "prompt": "If there are any trend-related changes impacting on your category, you should",
              "answer": "B",
              "explanation": "The passage says to determine which of the three innovation strategies to pursue.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "you can determine which of our three innovation strategies to pursue"
              }
            },
            {
              "number": 39,
              "prompt": "If a current trend highlights a negative aspect of your category, you should",
              "answer": "C",
              "explanation": "Counteract those changes by reaffirming the core values of your category.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "there is an opportunity to counteract those changes by reaffirming the core values of your category"
              }
            },
            {
              "number": 40,
              "prompt": "If the consumers' new focus has an increasing lack of connection with your offering, you should",
              "answer": "D",
              "explanation": "Your innovations need to transcend the category to integrate the two worlds.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "your innovations need to transcend the category to integrate the two worlds"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c13t2r$,
  true
);
