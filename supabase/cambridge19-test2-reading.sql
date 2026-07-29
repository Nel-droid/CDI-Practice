DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 19',
  'Test 2',
  'academic',
  3600,
  $c19t2r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The Industrial Revolution in Britain",
      "passage": [
        {
          "ref": "1",
          "text": "The Industrial Revolution began in Britain in the mid-1700s and by the 1830s and 1840s had spread to many other parts of the world, including the United States. In Britain, it was a period when a largely rural, agrarian* society was transformed into an industrialised, urban one. Goods that had once been crafted by hand started to be produced in mass quantities by machines in factories, thanks to the invention of steam power and the introduction of new machines and manufacturing techniques in textiles, iron-making and other industries."
        },
        {
          "ref": "2",
          "text": "The foundations of the Industrial Revolution date back to the early 1700s, when the English inventor Thomas Newcomen designed the first modern steam engine. Called the ‘atmospheric steam engine’, Newcomen’s invention was originally used to power machines that pumped water out of mines. In the 1760s, the Scottish engineer James Watt started to adapt one of Newcomen’s models, and succeeded in making it far more efficient. Watt later worked with the English manufacturer Matthew Boulton to invent a new steam engine driven by both the forward and backward strokes of the piston, while the gear mechanism it was connected to produced rotary motion. It was a key innovation that would allow steam power to spread across British industries. The demand for coal, which was a relatively cheap energy source, grew rapidly during the Industrial Revolution, as it was needed to run not only the factories used to produce manufactured goods, but also steam-powered transportation. In the early 1800s, the English engineer Richard Trevithick built a steam-powered locomotive, and by 1830 goods and passengers were being transported between the industrial centres of Manchester and Liverpool. In addition, steam-powered boats and ships were widely used to carry goods along Britain’s canals as well as across the Atlantic. Britain had produced textiles like wool, linen and cotton, for hundreds of years, but prior to the Industrial Revolution, the British textile business was a true ‘cottage industry’, with the work performed in small workshops or even homes by individual spinners, weavers and dyers. Starting in the mid-1700s, innovations like the spinning jenny and the power loom made weaving cloth and spinning yarn and thread much easier. With these machines, relatively little labour was required to"
        },
        {
          "ref": "3",
          "text": "produce cloth, and the new, mechanised textile factories that opened around the country were quickly able to meet customer demand for cloth both at home and abroad."
        },
        {
          "ref": "4",
          "text": "The British iron industry also underwent major change as it adopted new innovations. Chief among the new techniques was the smelting of iron ore with coke (a material made by heating coal) instead of the traditional charcoal. This method was cheaper and produced metals that were of a higher quality, enabling Britain’s iron and steel production to expand in response to demand created by the Napoleonic Wars (1803-15) and the expansion of the railways from the 1830s. The latter part of the Industrial Revolution also saw key advances in communication methods, as people increasingly saw the need to communicate efficiently over long distances. In 1837, British inventors William Cooke and Charles Wheatstone patented the first commercial telegraphy system. In the 1830s and 1840s, Samuel Morse and other inventors worked on their own versions in the United States. Cooke and Wheatstone’s system was soon used for railway signalling in the UK. As the speed of the new locomotives increased, it was essential to have a fast and effective means of avoiding collisions."
        },
        {
          "ref": "5",
          "text": "The impact of the Industrial Revolution on people’s lives was immense. Although many people in Britain had begun moving to the cities from rural areas before the Industrial Revolution, this accelerated dramatically with industrialisation, as the rise of large factories turned smaller towns into major cities in just a few decades. This rapid urbanisation brought significant challenges, as overcrowded cities suffered from pollution and inadequate sanitation."
        },
        {
          "ref": "6",
          "text": "Although industrialisation increased the country’s economic output overall and improved the standard of living for the middle and upper classes, many poor people continued to struggle. Factory workers had to work long hours in dangerous conditions for extremely low wages. These conditions along with the rapid pace of change fuelled opposition to industrialisation. A group of British workers who became known as ‘Luddites’ were British weavers and textile workers who objected to the increased use of mechanised looms and knitting frames. Many had spent years learning their craft, and they feared that unskilled machine operators were robbing them of their livelihood. A few desperate weavers began breaking into factories and smashing textile machines. They called themselves Luddites after Ned Ludd, a young apprentice who was rumoured to have wrecked a textile machine in 1779."
        },
        {
          "ref": "7",
          "text": "The first major instances of machine breaking took place in 1811 in the city of Nottingham, and the practice soon spread across the country. Machine-breaking Luddites attacked and burned factories,"
        },
        {
          "ref": "8",
          "text": "and in some cases they even exchanged gunfire with company guards and soldiers. The workers wanted employers to stop installing new machinery, but the British government responded to the uprisings by making machine-breaking punishable by death. The unrest finally reached its peak in April 1812, when a few Luddites were shot during an attack on a mill near Huddersfield. In the days that followed, other Luddites were arrested, and dozens were hanged or transported to Australia. By 1813, the Luddite resistance had all but vanished."
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Steam power"
            },
            {
              "kind": "static",
              "text": "- Newcomen’s steam engine was used in mines to remove water."
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
              "text": "Textile industry"
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
              "kind": "subheader",
              "text": "Iron industry"
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
              "kind": "subheader",
              "text": "Communications"
            },
            {
              "kind": "static",
              "text": "- Cooke and Wheatstone patented the first telegraphy system."
            },
            {
              "kind": "static",
              "text": "- The telegraphy system was used to prevent locomotives colliding."
            },
            {
              "kind": "subheader",
              "text": "Urbanisation"
            },
            {
              "kind": "static",
              "text": "- Small towns turned into cities very quickly."
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "- In Watt and Boulton’s steam engine, the movement of the _______ was linked to a gear system.",
              "answer": [
                "piston"
              ],
              "wordLimit": 1,
              "explanation": "Watt later worked with the English manufacturer Matthew Boulton to invent a new steam engine driven by both the forward and backward strokes of the piston, while the gear mechanism it was connected to produced rotary motion.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Watt later worked with the English manufacturer Matthew Boulton to invent a new steam engine driven by both the forward "
              }
            },
            {
              "number": 2,
              "prompt": "- A greater supply of _______ was required to power steam engines.",
              "answer": [
                "coal"
              ],
              "wordLimit": 1,
              "explanation": "The demand for coal, which was a relatively cheap energy source, grew rapidly during the Industrial Revolution, as it was needed to run not only the factories used to produce manufactured goods, but also steam-powered transportation",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The demand for coal, which was a relatively cheap energy source, grew rapidly during the Industrial Revolution, as it wa"
              }
            },
            {
              "number": 3,
              "prompt": "- Before the Industrial Revolution, spinners and weavers worked at home and in _______",
              "answer": [
                "workshops"
              ],
              "wordLimit": 1,
              "explanation": "but prior to the Industrial Revolution, the British textile business was a true ‘cottage industry’, with the work performed in small workshops or even homes by individual spinners, weavers and dyers",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "but prior to the Industrial Revolution, the British textile business was a true ‘cottage industry’, with the work perfor"
              }
            },
            {
              "number": 4,
              "prompt": "- Not as much _______ was needed to produce cloth once the spinning jenny and power loom were invented.",
              "answer": [
                "labour"
              ],
              "wordLimit": 1,
              "explanation": "With these machines, relatively little labour was required to produce cloth",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "With these machines, relatively little labour was required to produce cloth"
              }
            },
            {
              "number": 5,
              "prompt": "- Smelting of iron ore with coke resulted in material that was better _______",
              "answer": [
                "quality"
              ],
              "wordLimit": 1,
              "explanation": "This method was cheaper and produced metals that were of a higher quality",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "This method was cheaper and produced metals that were of a higher quality"
              }
            },
            {
              "number": 6,
              "prompt": "- Demand for iron increased with the growth of the _______",
              "answer": [
                "railways"
              ],
              "wordLimit": 1,
              "explanation": "This method was cheaper and produced metals that were of a higher quality, enabling Britain’s iron and steel production to expand in response to demand created by the Napoleonic Wars (1803-15) and the expansion of the railways from the 1830s.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "This method was cheaper and produced metals that were of a higher quality, enabling Britain’s iron and steel production "
              }
            },
            {
              "number": 7,
              "prompt": "- The new cities were dirty, crowded and lacked sufficient _______",
              "answer": [
                "sanitation"
              ],
              "wordLimit": 1,
              "explanation": "This rapid urbanisation brought significant challenges, as overcrowded cities suffered from pollution and inadequate sanitation.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "This rapid urbanisation brought significant challenges, as overcrowded cities suffered from pollution and inadequate san"
              }
            }
          ],
          "formTitle": "Britain’s Industrial Revolution",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 8–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 8,
              "prompt": "Britain’s canal network grew rapidly so that more goods could be transported around the country.",
              "answer": "NOT GIVEN",
              "explanation": "In addition, steam-powered boats and ships were widely used to carry goods along Britain’s canals as well as across the Atlantic.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "In addition, steam-powered boats and ships were widely used to carry goods along Britain’s canals as well as across the "
              }
            },
            {
              "number": 9,
              "prompt": "Costs in the iron industry rose when the technique of smelting iron ore with coke was introduced.",
              "answer": "FALSE",
              "explanation": "This method was cheaper and produced metals that were of a higher quality",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "This method was cheaper and produced metals that were of a higher quality"
              }
            },
            {
              "number": 10,
              "prompt": "Samuel Morse's communication system was more reliable than that developed by William Cooke and Charles Wheatstone. === PAGE 6 ===",
              "answer": "NOT GIVEN",
              "explanation": "In 1837, British inventors William Cooke and Charles Wheatstone patented the first commercial telegraphy system",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "In 1837, British inventors William Cooke and Charles Wheatstone patented the first commercial telegraphy system"
              }
            },
            {
              "number": 11,
              "prompt": "The economic benefits of industrialisation were limited to certain sectors of society.",
              "answer": "TRUE",
              "explanation": "Although industrialisation increased the country’s economic output overall and improved the standard of living for the middle and upper classes, many poor people continued to struggle.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "Although industrialisation increased the country’s economic output overall and improved the standard of living for the m"
              }
            },
            {
              "number": 12,
              "prompt": "Some skilled weavers believed that the introduction of the new textile machines would lead to job losses.",
              "answer": "TRUE",
              "explanation": "A group of British workers who became known as ‘Luddites’ were British weavers and textile workers who objected to the increased use of mechanised looms and knitting frames. Many had spent years learning their craft, and they feared that unskilled machine operators were robbing them of their livelihood.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "A group of British workers who became known as ‘Luddites’ were British weavers and textile workers who objected to the i"
              }
            },
            {
              "number": 13,
              "prompt": "There was some sympathy among local people for the Luddites who were arrested near Huddersfield. === PAGE 7 ===",
              "answer": "NOT GIVEN",
              "explanation": "In the days that followed, other Luddites were arrested, and dozens were hanged or transported to Australia. By 1813, the Luddite resistance had all but vanished.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "In the days that followed, other Luddites were arrested, and dozens were hanged or transported to Australia. By 1813, th"
              }
            }
          ],
          "id": "g8"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Athletes and stress",
      "passage": [
        {
          "ref": "A",
          "text": "It isn’t easy being a professional athlete. Not only are the physical demands greater than most people could handle, athletes also face intense psychological pressure during competition. This is something that British tennis player Emma Raducanu wrote about on social media following her withdrawal from the 2021 Wimbledon tournament. Though the young player had been doing well in the tournament, she began having difficulty regulating her breathing and heart rate during a match, which she later attributed to ’the accumulation of the excitement and the buzz’."
        },
        {
          "ref": "B",
          "text": "For athletes, some level of performance stress is almost unavoidable. But there are many different factors that dictate just how people’s minds and bodies respond to stressful events. Typically, stress is the result of an exchange between two factors: demands and resources. An athlete may feel stressed about an event if they feel the demands on them are greater than they can handle. These demands include the high level of physical and mental effort required to succeed, and also the athlete’s concerns about the difficulty of the event, their chance of succeeding, and any potential dangers such as injury. Resources, on the other hand, are a person’s ability to cope with these demands. These include factors such as the competitor’s degree of confidence, how much they believe they can control the situation’s outcome, and whether they’re looking forward to the event or not."
        },
        {
          "ref": "C",
          "text": "Each new demand or change in circumstances affects whether a person responds positively or negatively to stress. Typically, the more resources a person feels they have in handling the situation, the more positive their stress response. This positive stress response is called a challenge state. But should the person feel there are too many demands placed on them, the more likely they are to experience a negative stress response -known as a threat state. Research shows that the challenge states lead to good performance, while threat states lead to poorer performance. So, in Emma Raducanu’s case, a much larger audience, higher expectations and facing a more skilful opponent, may all have led her to feel there were greater demands being placed on her at Wimbledon -but she didn’t have the resources to tackle them. This led to her experiencing a threat response."
        },
        {
          "ref": "D",
          "text": "Our challenge and threat responses essentially influence how our body responds to stressful situations, as both affect the production of adrenaline and cortisol-also known as ‘stress hormones’. During a challenge state, adrenaline increases the amount of blood pumped from the heart and expands the blood vessels, which allows more energy to be delivered to the muscles and brain. This increase of blood and decrease of pressure in the blood vessels has been consistently related to superior sport performance in everything from cricket batting, to golf putting and football penalty taking. But during a threat state, cortisol inhibits the positive effect of adrenaline, resulting in tighter blood vessels, higher blood pressure, slower psychological responses, and a faster heart rate. In short, a threat state makes people more anxious -they make worse decisions and perform more poorly. In tennis players, cortisol has been associated with more unsuccessful serves and greater anxiety."
        },
        {
          "ref": "E",
          "text": "That said, anxiety is also a common experience for athletes when they’re under pressure. Anxiety can increase heart rate and perspiration, cause heart palpitations, muscle tremors and shortness of breath, as well as headaches, nausea, stomach pain, weakness and a desire to escape in more extreme cases. Anxiety can also reduce concentration and self-control and cause overthinking. The intensity with which a person experiences anxiety depends on the demands and resources they have. Anxiety may also manifest itself in the form of excitement or nervousness depending on the stress response. Negative stress responses can be damaging to both physical and mental health - and repeated episodes of anxiety coupled with negative responses can increase risk of heart disease and depression."
        },
        {
          "ref": "F",
          "text": "But there are many ways athletes can ensure they respond positively under pressure. Positive stress responses can be promoted through the language that they and others - such as coaches or parents - use. Psychologists can also help athletes change how they see their physiological responses - such as helping them see a higher heart rate as excitement, rather than nerves. Developing psychological skills, such as visualisation, can also help decrease physiological responses to threat. Visualisation may involve the athlete recreating a mental picture of a time when they performed well, or picturing themselves doing well in the future. This can help create a feeling of control over the stressful event. Recreating competitive pressure during training can also help athletes learn how to deal with stress. An example of this might be scoring athletes against their peers to create a sense of competition. This would increase the demands which players experience compared to a normal training session, while still allowing them to practise coping with stress."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–18",
          "instructions": "Reading Passage 2 has six paragraphs, A–F. Which paragraph contains the following information? You may use any letter more than once.",
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
              "prompt": "reference to two chemical compounds which impact on",
              "answer": "D",
              "explanation": "Our challenge and threat responses essentially influence how our body responds to stressful situations, as both affect the production of adrenaline and cortisol-also known as ‘stress hormones’. During a challenge state, adrenaline increases the amount of blood pumped from the heart and expands the blood vessels, which allows more energy to be delivered to the muscles and brain.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "Our challenge and threat responses essentially influence how our body responds to stressful situations, as both affect t"
              }
            },
            {
              "number": 15,
              "prompt": "examples of strategies for minimising the effects of stress",
              "answer": "F",
              "explanation": "Recreating competitive pressure during training can also help athletes learn how to deal with stress. An example of this might be scoring athletes against their peers to create a sense of competition.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "Recreating competitive pressure during training can also help athletes learn how to deal with stress. An example of this"
              }
            },
            {
              "number": 16,
              "prompt": "how a sportsperson accounted for their own experience of",
              "answer": "A",
              "explanation": "she began having difficulty regulating her breathing and heart rate during a match, which she later attributed to ’the accumulation of the excitement and the buzz’.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "she began having difficulty regulating her breathing and heart rate during a match, which she later attributed to ’the a"
              }
            },
            {
              "number": 17,
              "prompt": "study results indicating links between stress responses and",
              "answer": "C",
              "explanation": "they are to experience a negative stress response -known as a threat state. Research shows that the challenge states lead to good performance, while threat states lead to poorer performance.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "they are to experience a negative stress response -known as a threat state. Research shows that the challenge states lea"
              }
            },
            {
              "number": 18,
              "prompt": "mention of people who can influence how athletes",
              "answer": "F",
              "explanation": "Psychologists can also help athletes change how they see their physiological responses - such as helping them see a higher heart rate as excitement, rather than nerves.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "Psychologists can also help athletes change how they see their physiological responses - such as helping them see a high"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 19–22",
          "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "possible risk of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "static",
              "text": "Cortisol can cause tennis players to produce fewer good",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": "Psychologists can help athletes to view their physiological responses as the effect of a positive feeling such as",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": "is an example of a psychological technique which can reduce an athlete’s stress responses.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "coping with the possible risk of _______",
              "answer": [
                "injury"
              ],
              "wordLimit": 1,
              "explanation": "These demands include the high level of physical and mental effort required to succeed, and also the athlete’s concerns about the difficulty of the event, their chance of succeeding, and any potential dangers such as injury.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "These demands include the high level of physical and mental effort required to succeed, and also the athlete’s concerns "
              }
            },
            {
              "number": 20,
              "prompt": "players to produce fewer good _______",
              "answer": [
                "serves"
              ],
              "wordLimit": 1,
              "explanation": "In tennis players, cortisol has been associated with more unsuccessful serves and greater anxiety.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "In tennis players, cortisol has been associated with more unsuccessful serves and greater anxiety."
              }
            },
            {
              "number": 21,
              "prompt": "of a positive feeling such as _______",
              "answer": [
                "excitement"
              ],
              "wordLimit": 1,
              "explanation": "Psychologists can also help athletes change how they see their physiological responses - such as helping them see a higher heart rate as excitement, rather than nerves.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "Psychologists can also help athletes change how they see their physiological responses - such as helping them see a high"
              }
            },
            {
              "number": 22,
              "prompt": "of a positive feeling such as _______",
              "answer": [
                "visualisation"
              ],
              "wordLimit": 1,
              "explanation": "/ visualization Developing psychological skills, such as visualisation, can also help decrease physiological responses to threat."
            }
          ],
          "formTitle": "Performance stress involves many demands on the athlete, for example, coping with the",
          "id": "g19"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 23–24",
          "instructions": "Choose TWO letters, A–E. Which TWO facts about Emma Raducanu’s withdrawal from the Wimbledon tournamentare mentioned in the text?",
          "options": [
            {
              "key": "A",
              "text": "the stage at which she dropped out of the tournament"
            },
            {
              "key": "B",
              "text": "symptoms of her performance stress at the tournament"
            },
            {
              "key": "C",
              "text": "measures which she had taken to manage her stress levels"
            },
            {
              "key": "D",
              "text": "aspects of the Wimbledon tournament which increased her stress levels"
            },
            {
              "key": "E",
              "text": "reactions to her social media posts about her experience at Wimbledon"
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "Which TWO facts about Emma Raducanu’s withdrawal from the Wimbledon tournamentare mentioned in the text?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "This is something that British tennis player Emma Raducanu wrote about on social media following her withdrawal from the 2021 Wimbledon tournament. Though the young player had been doing well in the tournament, she began having difficulty regulating her breathing and heart rate during a match, which she later attributed to ’the accumulation of the excitement and the buzz’. So, in Emma Raducanu’s case, a much larger audience, higher expectations and facing a more skilful opponent, may all have led her to feel there were greater demands being placed on her at Wimbledon -but she didn’t have the resources to tackle them.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "This is something that British tennis player Emma Raducanu wrote about on social"
              }
            },
            {
              "number": 24,
              "prompt": "Which TWO facts about Emma Raducanu’s withdrawal from the Wimbledon tournamentare mentioned in the text?",
              "answer": [
                "B",
                "D"
              ],
              "explanation": "This is something that British tennis player Emma Raducanu wrote about on social media following her withdrawal from the 2021 Wimbledon tournament. Though the young player had been doing well in the tournament, she began having difficulty regulating her breathing and heart rate during a match, which she later attributed to ’the accumulation of the excitement and the buzz’. So, in Emma Raducanu’s case, a much larger audience, higher expectations and facing a more skilful opponent, may all have led her to feel there were greater demands being placed on her at Wimbledon -but she didn’t have the resources to tackle them.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "This is something that British tennis player Emma Raducanu wrote about on social"
              }
            }
          ],
          "id": "g23"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 25–26",
          "instructions": "Choose TWO letters, A–E. Which TWO facts about anxiety are mentioned in Paragraph E of the text?",
          "options": [
            {
              "key": "A",
              "text": "the factors which determine how severe it may be"
            },
            {
              "key": "B",
              "text": "how long it takes for its effects to become apparent"
            },
            {
              "key": "C",
              "text": "which of its symptoms is most frequently encountered"
            },
            {
              "key": "D",
              "text": "the types of athletes who are most likely to suffer from it"
            },
            {
              "key": "E",
              "text": "the harm that can result if athletes experience it too often"
            }
          ],
          "questions": [
            {
              "number": 25,
              "prompt": "Which TWO facts about anxiety are mentioned in Paragraph E of the text?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "The intensity with which a person experiences anxiety depends on the demands and resources they have. Negative stress responses can be damaging to both physical and mental health - and repeated episodes of anxiety coupled with negative responses can increase risk of heart disease and depression.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "The intensity with which a person experiences anxiety depends on the demands and"
              }
            },
            {
              "number": 26,
              "prompt": "Which TWO facts about anxiety are mentioned in Paragraph E of the text?",
              "answer": [
                "A",
                "E"
              ],
              "explanation": "The intensity with which a person experiences anxiety depends on the demands and resources they have. Negative stress responses can be damaging to both physical and mental health - and repeated episodes of anxiety coupled with negative responses can increase risk of heart disease and depression.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "The intensity with which a person experiences anxiety depends on the demands and"
              }
            }
          ],
          "id": "g25"
        }
      ]
    },
    {
      "id": "p3",
      "title": "An inquiry into the existence of the gifted child",
      "passage": [
        {
          "ref": "1",
          "text": "Let us start by looking at a modern ‘genius’, Maryam Mirzakhani, who died at the early age of 40. She was the only woman to win the Fields Medal the mathematical equivalent of a Nobel prize. It would be easy to assume that someone as special as Mirzakhani must have been one of those ‘gifted’ children, those who have an extraordinary ability in a specific sphere of activity or knowledge. But look closer and a different story emerges. Mirzakhani was born in Tehran, Iran. She went to a highly selective girls’ school but maths wasn’t her interest - reading was. She loved novels and would read anything she could lay her hands on. As for maths, she did rather poorly at it for the first couple of years in her middle school, but became interested when her elder brother told her about what he’d learned. He shared a famous maths problem from a magazine that fascinated her and she was hooked."
        },
        {
          "ref": "2",
          "text": "In adult life it is clear that she was curious, excited by what she did and also resolute in the face of setbacks. One of her comments sums it up. ‘Of course, the most rewarding part is the “Alia” moment, the excitement of discovery and enjoyment of understanding something new … But most of the time, doing mathematics for me is like being on a long hike with no trail and no end in sight.’ That trail took her to the heights of original research into mathematics. Is her background unusual? Apparently not. Most Nobel prize winners were unexceptional in childhood. Einstein was slow to talk as a baby. He failed the general part of the entry test to Zurich Polytechnic - though they let him in because of high physics and maths scores. He struggled at work initially, but he kept plugging away and eventually rewrote the laws of Newtonian mechanics with his theory of relativity."
        },
        {
          "ref": "3",
          "text": "There has been a considerable amount of research on high performance over the last century that suggests it goes way beyond tested intelligence. On top of that, research is clear that brains are flexible, new neural pathways can be created, and IQ isn’t fixed. For example, just because you can read stories with hundreds of pages at the age of five doesn’t mean you will still be ahead of your contemporaries in your teens. While the jury is out on giftedness being innate and other factors potentially making the difference, what is certain is that the behaviours associated with high levels of performance are replicable and most can be taught even traits such as curiosity."
        },
        {
          "ref": "4",
          "text": "According to my colleague Prof Deborah Eyre, with whom I’ve collaborated on the book Great Minds and How to Crow Them, the latest neuroscience and psychological research suggests most individuals can reach levels of performance associated in school with the gifted and talented. However, they must be taught the right attitudes and approaches to their learning and develop the attributes of high performers-curiosity, persistence and hard work, for example an approach Eyre calls ‘high performance learning’. Critically, they need the right support in developing those approaches at home as well as at school."
        },
        {
          "ref": "5",
          "text": "Prof Anders Ericsson, an eminent education psychologist at Florida State University, US, is the co- author of Peak: Secrets from the New Science of Expertise. After research going back to 1980 into diverse achievements, from music to memory to sport, he doesn’t think unique and innate talents are at the heart of performance. Deliberate practice, that stretches you every step of the way, and around 10,000 hours of it, is what produces the goods. It’s not a magic number the highest performers move on to doing a whole lot more, of course. Ericsson’s memory research is particularly interesting because random students, trained in memory techniques for the study, went on to outperform others thought to have innately superior memories those who you might call gifted."
        },
        {
          "ref": "6",
          "text": "But it is perhaps the work of Benjamin Bloom, another distinguished American educationist working in the 1980s, that gives the most pause for thought. Bloom’s team looked at a group of extraordinarily high achieving people in disciplines as varied as ballet, swimming, piano, tennis, maths, sculpture and neurology. He found a pattern of parents encouraging and supporting their children, often in areas they enjoyed themselves. Bloom’s outstanding people had worked very hard and consistently at something they had become hooked on when at a young age, and their parents all emerged as having strong work ethics themselves."
        },
        {
          "ref": "7",
          "text": "Eyre says we know how high performers learn. From that she has developed a high performing learning approach. She is working on this with a group of schools, both in Britain and abroad. Some spin-off research, which looked in detail at 24 of the 3,000 children being studied who were succeeding despite difficult circumstances, found something remarkable. Half were getting free school meals because of poverty, more than half were living with a single parent, and four in five were living in disadvantaged areas. Interviews uncovered strong evidence of an adult or adults in the child’s life who valued and supported education, either in the immediate or extended family or in the child’s wider community. Children talked about the need to work hard at school, to listen in class and keep trying."
        },
        {
          "ref": "8",
          "text": "Let us end with Einstein, the epitome of a genius. He clearly had curiosity, character and determination. He struggled against rejection in early life but was undeterred. Did he think he was a genius or even gifted? He once wrote: ‘It’s not that I’m so smart, it’s just that I stay with problems longer. Most people say it is the intellect which makes a great scientist. They are wrong: it is character.’"
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 27–32",
          "instructions": "Complete the summary using the list of words, A–J, below.",
          "summaryTitle": "",
          "summaryText": "J satisfaction K intent\nMaryam Mirzakhani\nMaryam Mirzakhani is regarded as {27} in the field of mathematics because\nshe was the only female holder of the prestigious Fields Medal - a record that she retained at the\ntime of her death. However, maths held little {28} for her as a child and in fact\nher performance was below average until she was {29} by a difficult puzzle\nthat one of her siblings showed her.\nLater, as a professional mathematician, she had an inquiring mind and proved herself to be\n{30} when things did not go smoothly. She said she got the greatest\n{31} from making ground-breaking discoveries and in fact she was\nresponsible for some extremely {32} mathematical studies.\nA. appeal B. determined C. intriguedD. single E. achievement\nF. devoted G. involved H. unique I. innovative J. satisfaction\nK. intent",
          "wordBank": [
            {
              "key": "A",
              "text": "appeal"
            },
            {
              "key": "B",
              "text": "determined"
            },
            {
              "key": "C",
              "text": "intrigued"
            },
            {
              "key": "D",
              "text": "single"
            },
            {
              "key": "E",
              "text": "achievement"
            },
            {
              "key": "F",
              "text": "devoted"
            },
            {
              "key": "G",
              "text": "involved"
            },
            {
              "key": "H",
              "text": "unique"
            },
            {
              "key": "I",
              "text": "innovative"
            },
            {
              "key": "J",
              "text": "satisfaction"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "",
              "answer": "H",
              "explanation": "Let us start by looking at a modern ‘genius’, Maryam Mirzakhani, who died at the early age of 40. She was the only woman to win the Fields Medal the mathematical equivalent of a Nobel prize.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Let us start by looking at a modern ‘genius’, Maryam Mirzakhani, who died at the early age of 40. She was the only woman"
              }
            },
            {
              "number": 28,
              "prompt": "",
              "answer": "A",
              "explanation": "Mirzakhani was born in Tehran, Iran. She went to a highly selective girls’ school but maths wasn’t her interest - reading was.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Mirzakhani was born in Tehran, Iran. She went to a highly selective girls’ school but maths wasn’t her interest - readin"
              }
            },
            {
              "number": 29,
              "prompt": "",
              "answer": "C",
              "explanation": "As for maths, she did rather poorly at it for the first couple of years in her middle school, but became interested when her elder brother told her about what he’d learned. He shared a famous maths problem from a magazine that fascinated her and she was hooked.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "As for maths, she did rather poorly at it for the first couple of years in her middle school, but became interested when"
              }
            },
            {
              "number": 30,
              "prompt": "",
              "answer": "B",
              "explanation": "In adult life it is clear that she was curious, excited by what she did and also resolute in the face of setbacks",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "In adult life it is clear that she was curious, excited by what she did and also resolute in the face of setbacks"
              }
            },
            {
              "number": 31,
              "prompt": "",
              "answer": "J",
              "explanation": "One of her comments sums it up. ‘Of course, the most rewarding part is the “Alia” moment, the excitement of discovery and enjoyment of understanding something new",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "One of her comments sums it up. ‘Of course, the most rewarding part is the “Alia” moment, the excitement of discovery an"
              }
            },
            {
              "number": 32,
              "prompt": "",
              "answer": "I",
              "explanation": "That trail took her to the heights of original research into mathematics.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "That trail took her to the heights of original research into mathematics."
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 33–37",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 33,
              "prompt": "Many people who ended up winning prestigious intellectual prizes only reached an average standard when young.",
              "answer": "YES",
              "explanation": "Most Nobel prize winners were unexceptional in childhood. Einstein was slow to talk as a baby. He failed the general part of the entry test to Zurich Polytechnic - though they let him in because of high physics and maths scores.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Most Nobel prize winners were unexceptional in childhood. Einstein was slow to talk as a baby. He failed the general par"
              }
            },
            {
              "number": 34,
              "prompt": "Einstein's failures as a young man were due to his lack of confidence.",
              "answer": "NOT GIVEN",
              "explanation": "He failed the general part of the entry test to Zurich Polytechnic - though they let him in because of high physics and maths scores. He struggled at work initially, but he kept plugging away and eventually rewrote the laws of Newtonian mechanics with his theory of relativity.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "He failed the general part of the entry test to Zurich Polytechnic - though they let him in because of high physics and "
              }
            },
            {
              "number": 35,
              "prompt": "It is difficult to reach agreement on whether some children are actually born gifted.",
              "answer": "YES",
              "explanation": "While the jury is out on giftedness being innate and other factors potentially making the difference, what is certain is that the behaviours associated with high levels of performance are replicable and most can be taught even traits such as curiosity.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "While the jury is out on giftedness being innate and other factors potentially making the difference, what is certain is"
              }
            },
            {
              "number": 36,
              "prompt": "Einstein was upset by the public's view of his life's work.",
              "answer": "NOT GIVEN",
              "explanation": "He struggled at work initially, but he kept plugging away and eventually rewrote the laws of Newtonian mechanics with his theory of relativity.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "He struggled at work initially, but he kept plugging away and eventually rewrote the laws of Newtonian mechanics with hi"
              }
            },
            {
              "number": 37,
              "prompt": "Einstein put his success down to the speed at which he dealt with scientific questions. === PAGE 17 ===",
              "answer": "NO",
              "explanation": "He once wrote: ‘It’s not that I’m so smart, it’s just that I stay with problems longer. Most people say it is the intellect which makes a great scientist. They are wrong: it is character.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "He once wrote: ‘It’s not that I’m so smart, it’s just that I stay with problems longer. Most people say it is the intell"
              }
            }
          ],
          "id": "g33"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 38–40",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 38,
              "prompt": "What does Eyre believe is needed for children to equal ’gifted’ standards?",
              "options": [
                {
                  "key": "A",
                  "text": "strict discipline from the teaching staff"
                },
                {
                  "key": "B",
                  "text": "assistance from their peers in the classroom"
                },
                {
                  "key": "C",
                  "text": "the development of a spirit of inquiry towards their studies"
                },
                {
                  "key": "D",
                  "text": "the determination to surpass everyone else’s achievements"
                }
              ],
              "answer": "C",
              "explanation": "According to my colleague Prof Deborah Eyre, with whom I’ve collaborated on the book Great Minds and How to Crow Them, the latest neuroscience and psychological research suggests most individuals can reach levels of performance associated in school with the gifted and talented. However, they must be taught the right attitudes and approaches to their learning and develop the attributes of high performers-curiosity",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "According to my colleague Prof Deborah Eyre, with whom I’ve collaborated on the book Great Minds and How to Crow Them, t"
              }
            },
            {
              "number": 39,
              "prompt": "What is the result of Ericsson’s research?",
              "options": [
                {
                  "key": "A",
                  "text": "Very gifted students do not need to work on improving memory skills."
                },
                {
                  "key": "B",
                  "text": "Being born with a special gift is not the key factor in becoming expert."
                },
                {
                  "key": "C",
                  "text": "Including time for physical exercise is crucial in raising performance."
                },
                {
                  "key": "D",
                  "text": "10,000 hours of relevant and demanding work will create a genius."
                }
              ],
              "answer": "B",
              "explanation": "After research going back to 1980 into diverse achievements, from music to memory to sport, he doesn’t think unique and innate talents are at the heart of performance.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "After research going back to 1980 into diverse achievements, from music to memory to sport, he doesn’t think unique and "
              }
            },
            {
              "number": 40,
              "prompt": "In the penultimate paragraph, it is stated the key to some deprived children's success is",
              "options": [
                {
                  "key": "A",
                  "text": "a regular and nourishing diet at home."
                },
                {
                  "key": "B",
                  "text": "the loving support of more than one parent."
                },
                {
                  "key": "C",
                  "text": "a community which has well-funded facilities for learning."
                },
                {
                  "key": "D",
                  "text": "the guidance of someone who recognises the benefits of learning."
                }
              ],
              "answer": "D",
              "explanation": "Some spin-off research, which looked in detail at 24 of the 3,000 children being studied who were succeeding despite difficult circumstances, found something remarkable. Half were getting free school meals because of poverty, more than half were living with a single parent, and four in five were living in disadvantaged areas.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Some spin-off research, which looked in detail at 24 of the 3,000 children being studied who were succeeding despite dif"
              }
            }
          ],
          "id": "g38"
        }
      ]
    }
  ]
}
$c19t2r$,
  true
);
