DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 13' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 13',
  'Test 4',
  'academic',
  3600,
  $c13t4r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Cutty Sark: The Fastest Sailing Ship of All Time",
      "passage": [
        {
          "ref": "1",
          "text": "The nineteenth century was a period of great technological development in Britain, and for shipping the major changes were from wind to steam power, and from wood to iron and steel. The fastest commercial sailing vessels of all time were clippers, three-masted ships built to transport goods around the world, although some also took passengers. From the 1840s until 1869, when the Suez Canal opened and steam propulsion was replacing sail, clippers dominated world trade. Although many were built, only one has survived more or less intact: Cutty Sark, now on display in Greenwich, southeast London."
        },
        {
          "ref": "2",
          "text": "Cutty Sark's unusual name comes from the poem Tam O'Shanter by the Scottish poet Robert Burns. Tam, a farmer, is chased by a witch called Nannie, who is wearing a ‘cutty sark’ — an old Scottish name for a short nightdress. The witch is depicted in Cutty Sark's figurehead — the carving of a woman typically at the front of old sailing ships. In legend, and in Burns's poem, witches cannot cross water, so this was a rather strange choice of name for a ship."
        },
        {
          "ref": "3",
          "text": "Cutty Sark was built in Dumbarton, Scotland, in 1869, for a shipping company owned by John Willis. To carry out construction, Willis chose a new shipbuilding firm, Scott & Linton, and ensured that the contract with them put him in a very strong position. In the end, the firm was forced out of business, and the ship was finished by a competitor."
        },
        {
          "ref": "4",
          "text": "Willis's company was active in the tea trade between China and Britain, where speed could bring shipowners both profits and prestige, so Cutty Sark was designed to make the journey more quickly than any other ship. On her maiden voyage, in 1870, she set sail from London, carrying large amounts of goods to China. She returned laden with tea, making the journey back to London in four months. However, Cutty Sark never lived up to the high expectations of her owner, as a result of bad winds and various misfortunes. On one occasion, in 1872, the ship and a rival clipper, Thermopylae, left port in China on the same day. Crossing the Indian Ocean, Cutty Sark gained a lead of over 400 miles, but then her rudder was severely damaged in stormy seas, making her impossible to steer. The ship's crew had the daunting task of repairing the rudder at sea, and only succeeded at the second attempt. Cutty Sark reached London a week after Thermopylae."
        },
        {
          "ref": "5",
          "text": "Steam ships posed a growing threat to clippers, as their speed and cargo capacity increased. In addition, the opening of the Suez Canal in 1869, the same year that Cutty Sark was launched, had a serious impact. While steam ships could make use of the quick, direct route between the Mediterranean and the Red Sea, the canal was of no use to sailing ships, which needed the much stronger winds of the oceans, and so had to sail a far greater distance. Steam ships reduced the journey time between Britain and China by approximately two months."
        },
        {
          "ref": "6",
          "text": "By 1878, tea traders weren't interested in Cutty Sark, and instead, she took on the much less prestigious work of carrying any cargo between any two ports in the world. In 1880, violence aboard the ship led ultimately to the replacement of the captain with an incompetent drunkard who stole the crew's wages. He was suspended from service, and a new captain appointed. This marked a turnaround and the beginning of the most successful period in Cutty Sark's working life, transporting wool from Australia to Britain. One such journey took just under 12 weeks, beating every other ship sailing that year by around a month."
        },
        {
          "ref": "7",
          "text": "The ship's next captain, Richard Woodget, was an excellent navigator, who got the best out of both his ship and his crew. As a sailing ship, Cutty Sark depended on the strong trade winds of the southern hemisphere, and Woodget took her further south than any previous captain, bringing her dangerously close to icebergs off the southern tip of South America. His gamble paid off, though, and the ship was the fastest vessel in the wool trade for ten years."
        },
        {
          "ref": "8",
          "text": "As competition from steam ships increased in the 1890s, and Cutty Sark approached the end of her life expectancy, she became less profitable. She was sold to a Portuguese firm, which renamed her Ferreira. For the next 25 years, she again carried miscellaneous cargoes around the world. Badly damaged in a gale in 1922, she was put into Falmouth harbor in southwest England, for repairs. Wilfred Dowman, a retired sea captain who owned a training vessel, recognised her and tried to buy her, but without success. She returned to Portugal and was sold to another Portuguese company. Dowman was determined, however, and offered a high price: this was accepted, and the ship returned to Falmouth the following year and had her original name restored."
        },
        {
          "ref": "9",
          "text": "Dowman used Cutty Sark as a training ship, and she continued in this role after his death. When she was no longer required, in 1954, she was transferred to dry dock at Greenwich to go on public display. The ship suffered from fire in 2007, and again, less seriously, in 2014, but now Cutty Sark attracts a quarter of a million visitors a year."
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "true_false_notgiven",
          "label": "Questions 1–8",
          "instructions": "Do the following statements agree with the information given in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 1,
              "prompt": "Clippers were originally intended to be used as passenger ships.",
              "answer": "FALSE",
              "explanation": "Clippers were built to transport goods; some also took passengers, but that was not their original purpose.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "three-masted ships built to transport goods around the world, although some also took passengers"
              }
            },
            {
              "number": 2,
              "prompt": "Cutty Sark was given the name of a character in a poem.",
              "answer": "FALSE",
              "explanation": "The name 'cutty sark' refers to the short nightdress the witch was wearing, not to a character.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Cutty Sark's unusual name comes from the poem Tam O'Shanter by the Scottish poet Robert Burns. Tam, a farmer, is chased by a witch called Nannie, who is wearing a 'cutty sark' — an old Scottish name for a short nightdress"
              }
            },
            {
              "number": 3,
              "prompt": "The contract between John Willis and Scott & Linton favoured Willis.",
              "answer": "TRUE",
              "explanation": "Willis ensured the contract put him in a very strong position, eventually forcing the firm out of business.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "ensured that the contract with them put him in a very strong position. In the end, the firm was forced out of business"
              }
            },
            {
              "number": 4,
              "prompt": "John Willis wanted Cutty Sark to be the fastest tea clipper travelling between the UK and China.",
              "answer": "TRUE",
              "explanation": "Cutty Sark was designed to make the journey more quickly than any other ship.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Cutty Sark was designed to make the journey more quickly than any other ship"
              }
            },
            {
              "number": 5,
              "prompt": "Despite storm damage, Cutty Sark beat Thermopylae back to London.",
              "answer": "FALSE",
              "explanation": "Cutty Sark reached London a week after Thermopylae, not before.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Cutty Sark reached London a week after Thermopylae"
              }
            },
            {
              "number": 6,
              "prompt": "The opening of the Suez Canal meant that steam ships could travel between Britain and China faster than clippers.",
              "answer": "TRUE",
              "explanation": "Steam ships using the Suez Canal reduced the journey time between Britain and China by approximately two months.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "Steam ships reduced the journey time between Britain and China by approximately two months"
              }
            },
            {
              "number": 7,
              "prompt": "Steam ships sometimes used the ocean route to travel between London and China.",
              "answer": "NOT GIVEN",
              "explanation": "The passage says clippers needed the ocean route and the canal was of no use to sailing ships, but does not say steam ships used the ocean route.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "the canal was of no use to sailing ships, which needed the much stronger winds of the oceans"
              }
            },
            {
              "number": 8,
              "prompt": "Captain Woodget put Cutty Sark at risk of hitting an iceberg.",
              "answer": "TRUE",
              "explanation": "Woodget took the ship dangerously close to icebergs off the southern tip of South America.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "bringing her dangerously close to icebergs off the southern tip of South America"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "completion",
          "label": "Questions 9–13",
          "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
          "questions": [
            {
              "number": 9,
              "prompt": "After 1880, Cutty Sark carried _______ as its main cargo during its most successful time.",
              "answer": [
                "wool"
              ],
              "wordLimit": 1,
              "explanation": "The most successful period involved transporting wool from Australia to Britain.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "the beginning of the most successful period in Cutty Sark's working life, transporting wool from Australia to Britain"
              }
            },
            {
              "number": 10,
              "prompt": "As a captain and _______, Woodget was very skilled.",
              "answer": [
                "navigator"
              ],
              "wordLimit": 1,
              "explanation": "Richard Woodget was an excellent navigator who got the best out of his ship and crew.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "The ship's next captain, Richard Woodget, was an excellent navigator"
              }
            },
            {
              "number": 11,
              "prompt": "Ferreira went to Falmouth to repair damage that a _______ had caused.",
              "answer": [
                "gale"
              ],
              "wordLimit": 1,
              "explanation": "She was badly damaged in a gale in 1922 and put into Falmouth harbour for repairs.",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "Badly damaged in a gale in 1922, she was put into Falmouth harbor in southwest England, for repairs"
              }
            },
            {
              "number": 12,
              "prompt": "Between 1923 and 1954, Cutty Sark was used for _______.",
              "answer": [
                "training"
              ],
              "wordLimit": 1,
              "explanation": "Dowman used Cutty Sark as a training ship, and she continued in this role after his death.",
              "evidence": {
                "sectionId": "p1",
                "ref": "10",
                "quote": "Dowman used Cutty Sark as a training ship, and she continued in this role after his death"
              }
            },
            {
              "number": 13,
              "prompt": "Cutty Sark has twice been damaged by _______ in the 21st century.",
              "answer": [
                "fire"
              ],
              "wordLimit": 1,
              "explanation": "The ship suffered from fire in 2007 and again, less seriously, in 2014.",
              "evidence": {
                "sectionId": "p1",
                "ref": "10",
                "quote": "The ship suffered from fire in 2007, and again, less seriously, in 2014"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "Saving the Soil",
      "passage": [
        {
          "ref": "A",
          "text": "More than a third of the world’s soil is endangered, according to a recent UN report. If we don't slow the decline, all farmable soil could be gone in 60 years. Since soil grows 95% of our food, and sustains human life in other more surprising ways, that is a huge problem."
        },
        {
          "ref": "B",
          "text": "Peter Groffman, from the Cary Institute of Ecosystem Studies in New York, points out that soil scientists have been warning about the degradation of the world’s soil for decades. At the same time, our understanding of its importance to humans has grown. A single gram of healthy soil might contain 100 million bacteria, as well as other microorganisms such as viruses and fungi, living amid decomposing plants and various minerals. That means soils do not just grow our food, but are the source of nearly all our existing antibiotics, and could be our best hope in the fight against antibiotic-resistant bacteria. Soil is also an ally against climate change: as microorganisms within soil digest dead animals and plants, they lock in their carbon content, holding three times the amount of carbon as does the entire atmosphere. Soils also store water, preventing flood damage: in the UK, damage to buildings, roads and bridges from floods caused by soil degradation costs £233 million every year. Cc If the soil loses its ability to perform these functions, the human race could be in big trouble. The danger is not that the soil will disappear completely, but that the microorganisms that give it its special properties will be lost. And once this has happened, it may take the soil thousands of years to recover. Agriculture is by far the biggest problem. In the wild, when plants grow they remove nutrients from the soil, but then when the plants die and decay these nutrients are returned directly to the soil. Humans tend not to return unused parts of harvested crops directly to the soil to enrich it, meaning === PAGE 4 === that the soil gradually becomes less fertile. In the past we developed strategies to get around the problem, such as regularly varying the types of crops grown, or leaving fields uncultivated for a season."
        },
        {
          "ref": "D",
          "text": "But these practices became inconvenient as populations grew and agriculture had to be run on more commercial lines. A solution came in the early 20\" century with the Haber-Bosch process for manufacturing ammonium nitrate. Farmers have been putting this synthetic fertiliser on their fields ever since. But over the past few decades, it has become clear this wasn’t such a bright idea. Chemical fertilisers can release polluting nitrous oxide into the atmosphere and excess is often washed away with the rain, releasing nitrogen into rivers. More recently, we have found that indiscriminate use of fertilisers hurts the soil itself, turning it acidic and salty, and degrading the soil they are supposed to nourish. One of the people looking for a solution to this problem is Pius Floris, who started out running a tree-care business in the Netherlands, and now advises some of the world’s top soil scientists. He came to realise that the best way to ensure his trees flourished was to take care of the soil, and has developed a cocktail of beneficial bacteria, fungi and humus* to do this. Researchers at the University of Valladolid in Spain recently used this cocktail on soils destroyed by years of fertiliser overuse. When they applied Floris’s mix to the desert-like test plots, a good crop of plants emerged that were not just healthy at the surface, but had roots strong enough to pierce dirt as hard as rock. The few plants that grew in the control plots, fed with traditional fertilisers, were small and weak However, measures like this are not enough to solve the global soil degradation problem. To assess our options on a global scale we first need an accurate picture of what types of soil are out there, and the problems they face. That's not easy. For one thing, there is no agreed international system for classifying soil. In an attempt to unify the different approaches, the UN has created the Global Soil Map project. Researchers from nine countries are working together to create a map linked to a database that can be fed measurements from field surveys, drone surveys, satellite imagery, lab analyses and so on to provide real-time data on the state of the soil. Within the next four years, they aim to have mapped soils worldwide to a depth of 100 metres, with the results freely accessible to all."
        },
        {
          "ref": "G",
          "text": "But this is only a first step. We need ways of presenting the problem that bring it home to governments and the wider public, says Pamela Chasek at the International Institute for Sustainable Development, in Winnipeg, Canada. ‘Most scientists don't speak language that policy-makers can understand, and vice versa.’ Chasek and her colleagues have proposed a goal of ‘zero net land degradation’. Like the idea of carbon neutrality, it is an easily understood target that can help shape expectations and encourage action. For soils on the brink, that may be too late. Several researchers are agitating for the immediate creation of protected zones for endangered soils. One difficulty here is defining what these areas should conserve: areas where the greatest soil diversity is present? Or areas of unspoilt soils that could act as a future benchmark of quality? Whatever we do, if we want our soils to survive, we need to take action now. === PAGE 5 ==="
        }
      ],
      "groups": [
        {
          "id": "g3",
          "type": "short_answer",
          "label": "Questions 14–17",
          "instructions": "Complete the summary below. Write ONE WORD ONLY from the passage for each answer.",
          "summaryTitle": "Why soil degradation could be a disaster for humans",
          "summaryText": "Healthy soil contains a large variety of bacteria and other microorganisms, as well as plant remains and {14}. It provides us with food and also with antibiotics, and its function in storing {15} has a significant effect on the climate. In addition, it prevents damage to property and infrastructure because it holds {16}. If these microorganisms are lost, soil may lose its special properties. The main factor contributing to soil degradation is the {17} carried out by humans.",
          "questions": [
            {
              "number": 14,
              "prompt": "",
              "answer": [
                "minerals"
              ],
              "wordLimit": 1,
              "explanation": "A single gram of healthy soil contains bacteria and other microorganisms living amid decomposing plants and various minerals.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "living amid decomposing plants and various minerals"
              }
            },
            {
              "number": 15,
              "prompt": "",
              "answer": [
                "carbon"
              ],
              "wordLimit": 1,
              "explanation": "Microorganisms within soil lock in the carbon content of dead animals and plants.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "they lock in their carbon content, holding three times the amount of carbon as does the entire atmosphere"
              }
            },
            {
              "number": 16,
              "prompt": "",
              "answer": [
                "water"
              ],
              "wordLimit": 1,
              "explanation": "Soils store water, preventing flood damage.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Soils also store water, preventing flood damage"
              }
            },
            {
              "number": 17,
              "prompt": "",
              "answer": [
                "agriculture"
              ],
              "wordLimit": 1,
              "explanation": "Agriculture is by far the biggest problem for soil degradation.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Agriculture is by far the biggest problem"
              }
            }
          ]
        },
        {
          "id": "g4",
          "type": "matching",
          "label": "Questions 18–21",
          "instructions": "Complete each sentence with the correct ending, A–F below.",
          "options": [
            {
              "key": "A",
              "text": "may improve the number and quality of plants growing there."
            },
            {
              "key": "B",
              "text": "may contain data from up to nine countries."
            },
            {
              "key": "C",
              "text": "may not be put back into the soil."
            },
            {
              "key": "D",
              "text": "may help governments to be more aware of soil-related issues."
            },
            {
              "key": "E",
              "text": "may cause damage to different aspects of the environment."
            },
            {
              "key": "F",
              "text": "may be better for use at a global level."
            }
          ],
          "questions": [
            {
              "number": 18,
              "prompt": "Nutrients contained in the unused parts of harvested crops",
              "answer": "C",
              "explanation": "Humans tend not to return unused parts of harvested crops directly to the soil.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Humans tend not to return unused parts of harvested crops directly to the soil to enrich it"
              }
            },
            {
              "number": 19,
              "prompt": "Synthetic fertilisers produced with the Haber-Bosch process",
              "answer": "E",
              "explanation": "Chemical fertilisers can release polluting nitrous oxide and turn soil acidic and salty.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "Chemical fertilisers can release polluting nitrous oxide into the atmosphere and excess is often washed away with the rain, releasing nitrogen into rivers"
              }
            },
            {
              "number": 20,
              "prompt": "Addition of a mixture developed by Pius Floris to the soil",
              "answer": "A",
              "explanation": "When Floris's mix was applied to destroyed soils, a good crop of plants emerged.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "When they applied Floris's mix to the desert-like test plots, a good crop of plants emerged"
              }
            },
            {
              "number": 21,
              "prompt": "The idea of zero net soil degradation",
              "answer": "D",
              "explanation": "Zero net land degradation is an easily understood target that can help shape expectations and encourage governmental action.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "it is an easily understood target that can help shape expectations and encourage action"
              }
            }
          ]
        },
        {
          "id": "g5",
          "type": "matching",
          "label": "Questions 22–26",
          "instructions": "The Reading Passage has seven paragraphs, A–G. Which section contains the following information? You may use any letter more than once.",
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
              "number": 22,
              "prompt": "a reference to one person's motivation for a soil-improvement project",
              "answer": "D",
              "explanation": "Floris came to realise the best way to ensure his trees flourished was to take care of the soil.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "He came to realise that the best way to ensure his trees flourished was to take care of the soil"
              }
            },
            {
              "number": 23,
              "prompt": "an explanation of how soil stayed healthy before the development of farming",
              "answer": "C",
              "explanation": "In the wild, nutrients removed by plants are returned when the plants die and decay.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "In the wild, when plants grow they remove nutrients from the soil, but then when the plants die and decay these nutrients are returned directly to the soil"
              }
            },
            {
              "number": 24,
              "prompt": "examples of different ways of collecting information on soil degradation",
              "answer": "F",
              "explanation": "The Global Soil Map project collects data from field surveys, drone surveys, satellite imagery, and lab analyses.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "a database that can be fed measurements from field surveys, drone surveys, satellite imagery, lab analyses and so on"
              }
            },
            {
              "number": 25,
              "prompt": "a suggestion for a way of keeping some types of soil safe in the near future",
              "answer": "G",
              "explanation": "Several researchers are pushing for the immediate creation of protected zones for endangered soils.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Several researchers are agitating for the immediate creation of protected zones for endangered soils"
              }
            },
            {
              "number": 26,
              "prompt": "a reason why it is difficult to provide an overview of soil degradation",
              "answer": "F",
              "explanation": "There is no agreed international system for classifying soil, making a global overview hard.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "there is no agreed international system for classifying soil"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "The Happiness Industry",
      "passage": [
        {
          "ref": "1",
          "text": "The Happiness Industry: How the Government and Big Business Sold Us Well-Being By William Davies ‘Happiness is the ultimate goal because it is self-evidently good. If we are asked why happiness matters we can give no further external reason. It just obviously does matter.’ This pronouncement by Richard Layard, an economist and advocate of ‘positive psychology’, summarises the beliefs of many people today. For Layard and others like him, it is obvious that the purpose of government is to promote a state of collective well-being. The only question is how to achieve it, and here positive psychology — a supposed science that not only identifies what makes people happy but also allows their happiness to be measured — can show the way. Equipped with this science, they say, governments can secure happiness in society in a way they never could in the past."
        },
        {
          "ref": "2",
          "text": "It is an astonishingly crude and simple-minded way of thinking, and for that very reason increasingly popular. Those who think in this way are oblivious to the vast philosophical literature in which the meaning and value of happiness have been explored and questioned, and write as if nothing of any importance had been thought on the subject until it came to their attention. It was the philosopher Jeremy Bentham (1748-1832) who was more than anyone else responsible for the development of this way of thinking. For Bentham it was obvious that the human good consists of pleasure and the absence of pain. The Greek philosopher Aristotle may have identified happiness with self-realisation in the 4th century BC, and thinkers throughout the ages may have struggled to reconcile the pursuit of happiness with other human values, but for Bentham all this was mere metaphysics or fiction. Without knowing anything much of him or the school of moral theory he established — since they are by education and intellectual conviction illiterate in the history of ideas - our advocates of positive psychology follow in his tracks in rejecting as outmoded and irrelevant pretty much the entirety of ethical reflection on human happiness to date."
        },
        {
          "ref": "3",
          "text": "But as William Davies notes in his recent book The Happiness Industry, the view that happiness is the only self-evident good is actually a way of limiting moral inquiry. One of the virtues of this rich, lucid and arresting book is that it places the current cult of happiness in a well-defined historical framework. Rightly, Davies begins his story with Bentham, noting that he was far more than a philosopher. Davies writes, ‘Bentham’s activities were those which we might now associate with a public sector management consultant’. In the 1790s, he wrote to the Home Office suggesting that the departments of government be linked together through a set of ‘conversation tubes’, and to the Bank of England with a design for a printing device that could produce unforgeable banknotes. He drew up plans for a ‘frigidarium’ to keep provisions such as meat, fish, fruit and vegetables fresh. His celebrated design for a prison to be known as a ‘Panopticon’, in which prisoners would be kept in solitary confinement while being visible at all times to the guards, was very nearly adopted. (Surprisingly, Davies does not discuss the fact that Bentham meant his Panopticon not just as a model prison but also as an instrument of control that could be applied to schools and factories.) Bentham was also a pioneer of the ‘science of happiness’. If happiness is to be regarded as a science, it has to be measured, and Bentham suggested two ways in which this might be done. Viewing happiness as a complex of pleasurable sensations, he suggested that it might be quantified by measuring the human pulse rate. Alternatively, money could be used as the standard for quantification: if two different goods have the same price, it can be claimed that they produce the same quantity of pleasure in the consumer. Bentham was more attracted by the latter measure. By associating money so closely to inner experience, Davies writes, Bentham ‘set the stage for the entangling of psychological research and capitalism that would shape the business practices of the twentieth century’."
        },
        {
          "ref": "4",
          "text": "The Happiness Industry describes how the project of a science of happiness has become integral to capitalism. We learn much that is interesting about how economic problems are being redefined and treated as psychological maladies. In addition, Davies shows how the belief that inner states of pleasure and displeasure can be objectively measured has informed management studies and advertising. The tendency of thinkers such as J B Watson, the founder of behaviourism*, was that human beings could be shaped, or manipulated, by policymakers and managers. Watson had no factual basis for his view of human action. When he became president of the American Psychological Association in 1915, he ‘had never even studied a single human being’: his research had been confined to experiments on white rats. Yet Watson's reductive model is now widely applied, with ‘behaviour change’ becoming the goal of governments: in Britain, a ‘Behaviour Insights Team’ has been established by the government to study how people can be encouraged, at minimum cost to the public purse, to live in what are considered to be socially desirable ways. Modern industrial societies appear to need the possibility of ever-increasing happiness to motivate them in their labours. But whatever its intellectual pedigree, the idea that governments should be responsible for promoting happiness is always a threat to human freedom."
        },
        {
          "ref": "5",
          "text": "* 'behaviourism’: a branch of psychology which is concerned with observable behaviour"
        }
      ],
      "groups": [
        {
          "id": "g6",
          "type": "multiple_choice",
          "label": "Questions 27–29",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 27,
              "prompt": "What is the reviewer's attitude to advocates of positive psychology?",
              "options": [
                {
                  "key": "A",
                  "text": "They are wrong to reject the ideas of Bentham."
                },
                {
                  "key": "B",
                  "text": "They are over-influenced by their study of Bentham's theories."
                },
                {
                  "key": "C",
                  "text": "They have a fresh new approach to ideas on human happiness."
                },
                {
                  "key": "D",
                  "text": "They are ignorant about the ideas they should be considering."
                }
              ],
              "answer": "D",
              "explanation": "Advocates are described as 'oblivious to the vast philosophical literature' on happiness.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Those who think in this way are oblivious to the vast philosophical literature in which the meaning and value of happiness have been explored and questioned"
              }
            },
            {
              "number": 28,
              "prompt": "The reviewer refers to the Greek philosopher Aristotle in order to suggest that happiness",
              "options": [
                {
                  "key": "A",
                  "text": "may not be just pleasure and the absence of pain."
                },
                {
                  "key": "B",
                  "text": "should not be the main goal of humans."
                },
                {
                  "key": "C",
                  "text": "is not something that should be fought for."
                },
                {
                  "key": "D",
                  "text": "is not just an abstract concept."
                }
              ],
              "answer": "A",
              "explanation": "Aristotle identified happiness with self-realisation, contrasting with Bentham's view that it is simply pleasure and the absence of pain.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "The Greek philosopher Aristotle may have identified happiness with self-realisation in the 4th century BC, and thinkers throughout the ages may have struggled to reconcile the pursuit of happiness with other human values"
              }
            },
            {
              "number": 29,
              "prompt": "According to Davies, Bentham's suggestion for linking the price of goods to happiness was significant because",
              "options": [
                {
                  "key": "A",
                  "text": "it was the first successful way of assessing happiness."
                },
                {
                  "key": "B",
                  "text": "it established a connection between psychology and capitalism."
                },
                {
                  "key": "C",
                  "text": "it was the first successful example of psychological research."
                },
                {
                  "key": "D",
                  "text": "it involved consideration of the rights of consumers."
                }
              ],
              "answer": "B",
              "explanation": "Davies writes that Bentham 'set the stage for the entangling of psychological research and capitalism that would shape the business practices of the twentieth century'.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "set the stage for the entangling of psychological research and capitalism that would shape the business practices of the twentieth century"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "short_answer",
          "label": "Questions 30–34",
          "instructions": "Complete the summary using the list of words A–G below.",
          "summaryTitle": "Jeremy Bentham",
          "summaryText": "Jeremy Bentham was active in other areas besides philosophy. In the 1790s he suggested a type of technology to improve {30} for different Government departments. He developed a new way of printing banknotes to increase {31} and also designed a method for the {32} of food. He also drew up plans for a prison which allowed the {33} of prisoners at all times, and believed the same design could be used for other institutions as well. When researching happiness, he investigated possibilities for its {34}, and suggested some methods of doing this.",
          "wordBank": [
            {
              "key": "A",
              "text": "measurement"
            },
            {
              "key": "B",
              "text": "security"
            },
            {
              "key": "C",
              "text": "implementation"
            },
            {
              "key": "D",
              "text": "profits"
            },
            {
              "key": "E",
              "text": "observation"
            },
            {
              "key": "F",
              "text": "communication"
            },
            {
              "key": "G",
              "text": "preservation"
            }
          ],
          "questions": [
            {
              "number": 30,
              "prompt": "",
              "answer": [
                "communication",
                "F"
              ],
              "wordLimit": 1,
              "explanation": "Bentham suggested linking government departments through 'conversation tubes' — a communications technology.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "he wrote to the Home Office suggesting that the departments of government be linked together through a set of 'conversation tubes'"
              }
            },
            {
              "number": 31,
              "prompt": "",
              "answer": [
                "security",
                "B"
              ],
              "wordLimit": 1,
              "explanation": "Bentham designed a printing device that could produce unforgeable banknotes — increasing security.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "a design for a printing device that could produce unforgeable banknotes"
              }
            },
            {
              "number": 32,
              "prompt": "",
              "answer": [
                "preservation",
                "G"
              ],
              "wordLimit": 1,
              "explanation": "Bentham drew up plans for a 'frigidarium' to keep provisions fresh — a preservation method.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "He drew up plans for a 'frigidarium' to keep provisions such as meat, fish, fruit and vegetables fresh"
              }
            },
            {
              "number": 33,
              "prompt": "",
              "answer": [
                "observation",
                "E"
              ],
              "wordLimit": 1,
              "explanation": "The Panopticon prison design kept prisoners visible to guards at all times — enabling observation.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "prisoners would be kept in solitary confinement while being visible at all times to the guards"
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": [
                "measurement",
                "A"
              ],
              "wordLimit": 1,
              "explanation": "Bentham suggested happiness had to be measured, and proposed two ways of doing so.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "If happiness is to be regarded as a science, it has to be measured, and Bentham suggested two ways in which this might be done"
              }
            }
          ]
        },
        {
          "id": "g8",
          "type": "yes_no_notgiven",
          "label": "Questions 35–40",
          "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 35,
              "prompt": "One strength of The Happiness Industry is its discussion of the relationship between psychology and economics.",
              "answer": "YES",
              "explanation": "Davies shows how economic problems are redefined as psychological maladies, and describes the book as rich, lucid and arresting.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "The Happiness Industry describes how the project of a science of happiness has become integral to capitalism. We learn much that is interesting about how economic problems are being redefined and treated as psychological maladies"
              }
            },
            {
              "number": 36,
              "prompt": "It is more difficult to measure some emotions than others.",
              "answer": "NOT GIVEN",
              "explanation": "The passage discusses measuring happiness but makes no comparison of difficulty across different emotions.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Bentham suggested two ways in which this might be done"
              }
            },
            {
              "number": 37,
              "prompt": "Watson's ideas on behaviourism were supported by research on humans he carried out before 1915.",
              "answer": "NO",
              "explanation": "When he became president of the APA in 1915, Watson had never even studied a single human being; his research was confined to experiments on white rats.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "when he became president of the American Psychological Association in 1915, he 'had never even studied a single human being'"
              }
            },
            {
              "number": 38,
              "prompt": "Watson's ideas have been most influential on governments outside America.",
              "answer": "NOT GIVEN",
              "explanation": "The passage gives a UK example but does not state Watson's ideas were most influential outside America.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "in Britain, a 'Behaviour Insights Team' has been established by the government"
              }
            },
            {
              "number": 39,
              "prompt": "The need for happiness is linked to industrialisation.",
              "answer": "YES",
              "explanation": "Modern industrial societies appear to need the possibility of ever-increasing happiness to motivate them in their labours.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Modern industrial societies appear to need the possibility of ever-increasing happiness to motivate them in their labours"
              }
            },
            {
              "number": 40,
              "prompt": "A main aim of government should be to increase the happiness of the population.",
              "answer": "NO",
              "explanation": "The writer says that governments promoting happiness is always a threat to human freedom.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "the idea that governments should be responsible for promoting happiness is always a threat to human freedom"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c13t4r$,
  true
);
