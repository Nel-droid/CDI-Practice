-- Remove any existing C15 Test 3 rows (by metadata AND by known stale UUIDs)
DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 15' AND test_label = 'Test 3';
DELETE FROM public.tests WHERE id = '1a60a0ba-8b44-4a95-b5a5-c25bc41b23aa';
DELETE FROM public.tests WHERE id = '3c26c211-8b81-4e0f-a51c-191de55cd29e';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 15',
  'Test 3',
  'academic',
  3600,
  $c15t3r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Henry Moore (1898–1986)",
      "passage": [
        {
          "ref": "1",
          "text": "The British sculptor Henry Moore was a leading figure in the 20th-century art world Henry Moore was born in Castleford, a small town near Leeds in the north of England. He was the seventh child of Raymond Moore and his wife Mary Baker. He studied at Castleford Grammar School from 1909 to 1915, where his early interest in art was encouraged by his teacher Alice Gostick. After leaving school, Moore hoped to become a sculptor, but instead he complied with his father's wish that he train as a schoolteacher. He had to abandon his training in 1917 when he was sent to France to fight in the First World War."
        },
        {
          "ref": "2",
          "text": "After the war, Moore enrolled at the Leeds School of Art, where he studied for two years. In his first year, he spent most of his time drawing. Although he wanted to study sculpture, no teacher was appointed until his second year. At the end of that year, he passed the sculpture examination and was awarded a scholarship to the Royal College of Art in London. In September 1921, he moved to London and began three years of advanced study in sculpture."
        },
        {
          "ref": "3",
          "text": "Alongside the instruction he received at the Royal College, Moore visited many of the London museums, particularly the British Museum, which had a wide-ranging collection of ancient sculpture. During these visits, he discovered the power and beauty of ancient Egyptian and African sculpture. As he became increasingly interested in these ‘primitive’ forms of art, he turned away from European sculptural traditions."
        },
        {
          "ref": "4",
          "text": "After graduating, Moore spent the first six months of 1925 travelling in France. When he visited the Trocadero Museum in Paris, he was impressed by a cast of a Mayan* sculpture of the rain spirit. It was a male reclining figure with its knees drawn up together, and its head at a right angle to its body. Moore became fascinated with this stone sculpture, which he thought had a power and originality that no other stone sculpture possessed. He himself started carving a variety of subjects in stone, including depiction of reclining women, mother-and-child groups, and masks."
        },
        {
          "ref": "5",
          "text": "Moore's exceptional talent soon gained recognition, and in 1926 he started work as a sculpture instructor at the Royal College. In 1933, he became a member of a group of young artists called Unit One. The aim of the group was to convince the English public of the merits of the emerging international movement in modern art and architecture."
        },
        {
          "ref": "6",
          "text": "Around this time, Moore moved away from the human figure to experiment with abstract shapes. In 1931, he held an exhibition at the Leicester Galleries in London. His work was enthusiastically welcomed by fellow sculptors, but the reviews in the press were extremely negative and turned Moore into a notorious figure. There were calls for his resignation from the Royal College, and the following year, when his contract expired, he left to start a sculpture department at the Chelsea School of Art in London."
        },
        {
          "ref": "7",
          "text": "Throughout the 1930s, Moore did not show any inclination to please the British public. He became interested in the paintings of the Spanish artist Pablo Picasso, whose work inspired him to distort the human body in a radical way. At times, he seemed to abandon the human figure altogether. The pages of his sketchbooks from this period show his ideas for abstract sculptures that bore little resemblance to the human form."
        },
        {
          "ref": "8",
          "text": "In 1940, during the Second World War, Moore stopped teaching at the Chelsea School and moved to a farmhouse about 20 miles north of London. A shortage of materials forced him to focus on drawing. He did numerous small sketches of Londoners, later turning these ideas into large coloured drawings in his studio. In 1942, he returned to Castleford to make a series of sketches of the miners who worked there."
        },
        {
          "ref": "9",
          "text": "In 1944, Harlow, a town near London, offered Moore a commission for a sculpture depicting a family. The resulting work signifies a dramatic change in Moore's style, away from the experimentation of the 1930s towards a more natural and humanistic subject matter. He did dozens of studies in clay for the sculpture, and these were cast in bronze and issued in editions of seven to nine copies each. In this way, Moore's work became available to collectors all over the world. The boost to his income enabled him to take on ambitious projects and start working on the scale he felt his sculpture demanded."
        },
        {
          "ref": "10",
          "text": "Critics who had begun to think that Moore had become less revolutionary were proven wrong by the appearance, in 1950, of the first of Moore's series of standing figures in bronze, with their harsh and angular pierced forms and distinct impression of menace. Moore also varied his subject matter in the 1950s with such works as Warrior with Shield and Falling Warrior. These were rare examples of Moore's use of the male figure and owe something to his visit to Greece in 1951, when he had the opportunity to study ancient works of art."
        },
        {
          "ref": "11",
          "text": "In his final years, Moore created the Henry Moore Foundation to promote art appreciation and to display his work. Moore was the first modern English sculptor to achieve international critical acclaim and he is still regarded as one of the most important sculptors of the 20th century. *Mayan: belonging to an ancient civilisation that inhabited parts of current-day Mexico, Guatemala, Belize, El Salvador and Honduras."
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "true_false_notgiven",
          "label": "Questions 1–7",
          "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 1,
              "prompt": "On leaving school, Moore did what his father wanted him to do.",
              "answer": "TRUE",
              "explanation": "Moore complied with his father's wish that he train as a schoolteacher.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "instead he complied with his father's wish that he train as a schoolteacher"
              }
            },
            {
              "number": 2,
              "prompt": "Moore began studying sculpture in his first term at the Leeds School of Art.",
              "answer": "FALSE",
              "explanation": "In his first year at Leeds he spent most of his time drawing; no sculpture teacher was appointed until his second year.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "In his first year, he spent most of his time drawing. Although he wanted to study sculpture, no teacher was appointed until his second year"
              }
            },
            {
              "number": 3,
              "prompt": "When Moore started at the Royal College of Art, its reputation for teaching sculpture was excellent.",
              "answer": "NOT GIVEN",
              "explanation": "The passage mentions Moore winning a scholarship to the Royal College but says nothing about its reputation.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "he passed the sculpture examination and was awarded a scholarship to the Royal College of Art in London"
              }
            },
            {
              "number": 4,
              "prompt": "Moore became aware of ancient sculpture as a result of visiting London museums.",
              "answer": "TRUE",
              "explanation": "Moore visited London museums, particularly the British Museum, where he discovered ancient Egyptian and African sculpture.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "Moore visited many of the London museums, particularly the British Museum...During these visits, he discovered the power and beauty of ancient Egyptian and African sculpture"
              }
            },
            {
              "number": 5,
              "prompt": "The Trocadero Museum's Mayan sculpture attracted a lot of public interest.",
              "answer": "NOT GIVEN",
              "explanation": "The passage describes Moore's personal fascination with the Mayan sculpture but says nothing about public interest in it.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "he was impressed by a cast of a Mayan sculpture of the rain spirit"
              }
            },
            {
              "number": 6,
              "prompt": "Moore thought the Mayan sculpture was similar in certain respects to other stone sculptures.",
              "answer": "FALSE",
              "explanation": "Moore thought the Mayan sculpture had a power and originality that no other stone sculpture possessed.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "he thought had a power and originality that no other stone sculpture possessed"
              }
            },
            {
              "number": 7,
              "prompt": "The artists who belonged to Unit One wanted to make modern art and architecture more popular.",
              "answer": "TRUE",
              "explanation": "Unit One's aim was to convince the English public of the merits of the emerging international movement in modern art and architecture.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "The aim of the group was to convince the English public of the merits of the emerging international movement in modern art and architecture"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "completion",
          "label": "Questions 8–13",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "Moore's career as an artist",
          "formContent": [
            {
              "kind": "subheader",
              "text": "1930s"
            },
            {
              "kind": "static",
              "text": "Moore's exhibition at the Leicester Galleries is criticised by the press"
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "subheader",
              "text": "1940s"
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
            },
            {
              "kind": "subheader",
              "text": "1950s"
            },
            {
              "kind": "static",
              "text": "Moore's series of bronze figures marks a further change in his style"
            }
          ],
          "questions": [
            {
              "number": 8,
              "prompt": "Moore is urged to offer his _______ and leave the Royal College",
              "answer": [
                "resignation"
              ],
              "wordLimit": 1,
              "explanation": "There were calls for his resignation from the Royal College.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "There were calls for his resignation from the Royal College"
              }
            },
            {
              "number": 9,
              "prompt": "Moore turns to drawing because _______ for sculpting are not readily available",
              "answer": [
                "materials"
              ],
              "wordLimit": 1,
              "explanation": "A shortage of materials forced him to focus on drawing.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "A shortage of materials forced him to focus on drawing"
              }
            },
            {
              "number": 10,
              "prompt": "While visiting his hometown, Moore does some drawings of _______",
              "answer": [
                "miners"
              ],
              "wordLimit": 1,
              "explanation": "In 1942, Moore returned to Castleford to make sketches of the miners who worked there.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "he returned to Castleford to make a series of sketches of the miners who worked there"
              }
            },
            {
              "number": 11,
              "prompt": "Moore is employed to produce a sculpture of a _______",
              "answer": [
                "family"
              ],
              "wordLimit": 1,
              "explanation": "Harlow offered Moore a commission for a sculpture depicting a family.",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "offered Moore a commission for a sculpture depicting a family"
              }
            },
            {
              "number": 12,
              "prompt": "_______ start to buy Moore's work",
              "answer": [
                "collectors"
              ],
              "wordLimit": 1,
              "explanation": "Moore's work became available to collectors all over the world.",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "Moore's work became available to collectors all over the world"
              }
            },
            {
              "number": 13,
              "prompt": "Moore's increased _______ makes it possible for him to do more ambitious sculptures",
              "answer": [
                "income"
              ],
              "wordLimit": 1,
              "explanation": "The boost to his income enabled him to take on ambitious projects.",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "The boost to his income enabled him to take on ambitious projects"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "The Desolenator: producing clean water",
      "passage": [
        {
          "ref": "A",
          "text": "Travelling around Thailand in the 1990s, William Janssen was impressed with the basic rooftop solar heating systems that were on many homes, where energy from the sun was absorbed by a plate and then used to heat water for domestic use. Two decades later Janssen developed that basic idea he saw in Southeast Asia into a portable device that uses the power from the sun to purify water."
        },
        {
          "ref": "B",
          "text": "The Desolenator operates as a mobile desalination unit that can take water from different places, such as the sea, rivers, boreholes and rain, and purify it for human consumption. It is particularly valuable in regions where natural groundwater reserves have been polluted, or where seawater is the only water source available. Janssen saw that there was a need for a sustainable way to clean water in both the developing and the developed countries when he moved to the United Arab Emirates and saw large-scale water processing. 'I was confronted with the enormous carbon footprint that the Gulf nations have because of all of the desalination that they do,' he says."
        },
        {
          "ref": "C",
          "text": "The Desolenator can produce 15 litres of drinking water per day, enough to sustain a family for cooking and drinking. Its main selling point is that unlike standard desalination techniques, it doesn't require a generated power supply: just sunlight. It measures 120 cm by 90 cm, and it is easy to transport, thanks to its two wheels. Water enters through a pipe, and flows as a thin film between a sheet of double glazing and the surface of a solar panel, where it is heated by the sun. The warm water flows into a small boiler (heated by a solar-powered battery) where it is converted to steam. When impurities such as salt are removed in this way, the steam is passed through a thin pipe where it condenses back into water. The device has a very simple filter to trap particles, and this purified water then flows into a separate container. One tube carries the waste — salt from seawater, fluoride, etc. — and another tube carries purified water. The performance of the unit is shown on an LCD screen and transmitted to the company which provides servicing when necessary."
        },
        {
          "ref": "D",
          "text": "A recent analysis found that a single Desolenator in a community in India would need an average subsidy of $500 over its 20-year lifespan to be commercially viable. 'That's a pretty small number,' Janssen says. 'You are talking about a fraction of the cost of alternatives like water trucking, water kiosks and conventional desalination technologies.' The target market is the 780 million people in the world who don't have access to clean water. Janssen estimates that the device could deliver water in the developing world at a cost of less than half a US cent per litre compared to as much as 12 cents per litre for water delivered by truck. 'It's not like you are trying to feed one person, you are trying to feed and water a whole community. It has to be done in a cheap, scalable way so it is a really bad situation.'"
        },
        {
          "ref": "E",
          "text": "The device is aimed at much more than just private customers. 'Our target is large-scale deployments of 1,000 units or more,' Janssen says. He would like to see them used in large refugee camps or put to use after natural disasters. The machine is already in use in Haiti and has been deployed in communities in India, Indonesia, Ghana and Kenya. 'The crucial thing is,' Janssen says, 'that systems need to be able to operate autonomously: we can't have engineers flying in from Europe every time there is a problem. It needs to be reliable and it needs to be locally serviceable.' There are other water purification products on the market, but Janssen claims the Desolenator has certain advantages. 'Other competing products are solar-powered but rely on a battery to store energy to continue to work at night. We are not working in this way — we have a small battery but only for the electronics and control systems. The rest runs on direct solar power — for the military, for instance.'"
        },
        {
          "ref": "F",
          "text": "Prices will vary, depending on the quantity ordered and local conditions, but Janssen says that the device should cost no more than $1,000 per unit when bought in bulk. A recent funding round raised $1.5 million for the company and there is also interest from two separate overseas governments, one of which has signed a memorandum of understanding to buy 5,000 units. The company is also considering licensing the technology. The next generation of Desolenators will be capable of producing 20 litres per day. 'You need to look at what does the community actually need,' says Janssen. 'Whether it is a one-, two-, three- or four-person household, the family is central to what we do. But yes, ultimately it's about the whole community. Because having just a few won't be enough. You have to get it to scale — that's the bottom line to keep in mind,' he says."
        },
        {
          "ref": "G",
          "text": "The company itself is based at Imperial College London, although Janssen, its chief executive, still lives in the UAE. It has raised £340,000 in funding so far. Within two years, he says, the company aims to be selling 1,000 units a month, mainly in the humanitarian field. They are expected to be sold in areas such as Australia, northern Chile, Peru, Texas and California."
        }
      ],
      "groups": [
        {
          "id": "g3",
          "type": "matching",
          "label": "Questions 14–20",
          "instructions": "The Reading Passage has seven paragraphs, A–G. Choose the correct heading for each section from the list of headings below. Write the correct number, i–x, in boxes on your answer sheet.",
          "options": [
            {
              "key": "i",
              "text": "Getting the finance for production"
            },
            {
              "key": "ii",
              "text": "An unexpected benefit"
            },
            {
              "key": "iii",
              "text": "From initial inspiration to new product"
            },
            {
              "key": "iv",
              "text": "The range of potential customers for the device"
            },
            {
              "key": "v",
              "text": "What makes the device different from alternatives"
            },
            {
              "key": "vi",
              "text": "Cleaning water from a range of sources"
            },
            {
              "key": "vii",
              "text": "Overcoming production difficulties"
            },
            {
              "key": "viii",
              "text": "Profit not the primary goal"
            },
            {
              "key": "ix",
              "text": "A warm welcome for the device"
            },
            {
              "key": "x",
              "text": "The number of people affected by water shortages"
            }
          ],
          "questions": [
            {
              "number": 14,
              "prompt": "Paragraph A",
              "answer": "iii",
              "explanation": "Paragraph A describes Janssen's initial inspiration in Thailand leading to a new product.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "Two decades later Janssen developed that basic idea he saw in Southeast Asia into a portable device"
              }
            },
            {
              "number": 15,
              "prompt": "Paragraph B",
              "answer": "vi",
              "explanation": "Paragraph B describes the Desolenator taking water from the sea, rivers, boreholes and rain.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "can take water from different places, such as the sea, rivers, boreholes and rain"
              }
            },
            {
              "number": 16,
              "prompt": "Paragraph C",
              "answer": "v",
              "explanation": "Paragraph C describes what makes the Desolenator different — it doesn't require a generated power supply.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "unlike standard desalination techniques, it doesn't require a generated power supply: just sunlight"
              }
            },
            {
              "number": 17,
              "prompt": "Paragraph D",
              "answer": "x",
              "explanation": "Paragraph D discusses the number of people facing water scarcity.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "at least two-thirds of the world's population lives with severe water scarcity for at least a month every year"
              }
            },
            {
              "number": 18,
              "prompt": "Paragraph E",
              "answer": "iv",
              "explanation": "Paragraph E describes the wide variety of users — from developing-world homeowners to off-grid rural US residents.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "The device is aimed at a wide variety of users"
              }
            },
            {
              "number": 19,
              "prompt": "Paragraph F",
              "answer": "viii",
              "explanation": "Paragraph F states the company has a social mission and is aware profit is not the primary goal.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "We are a venture with a social mission"
              }
            },
            {
              "number": 20,
              "prompt": "Paragraph G",
              "answer": "i",
              "explanation": "Paragraph G discusses the company's funding — it has raised £340,000 so far.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "It has raised £340,000 in funding so far"
              }
            }
          ]
        },
        {
          "id": "g4",
          "type": "completion",
          "label": "Questions 21–26",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "How the Desolenator works",
          "formContent": [
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "question",
              "number": 26
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "The device can be used in different locations, as it has _______",
              "answer": [
                "wheels"
              ],
              "wordLimit": 1,
              "explanation": "The device is easy to transport, thanks to its two wheels.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "it easy to transport, thanks to its two wheels"
              }
            },
            {
              "number": 22,
              "prompt": "Water is fed into a pipe, and a _______ of water flows over a solar panel",
              "answer": [
                "film"
              ],
              "wordLimit": 1,
              "explanation": "Water flows as a thin film between a sheet of double glazing and the surface of a solar panel.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "flows as a thin film between a sheet of double glazing and the surface of a solar panel"
              }
            },
            {
              "number": 23,
              "prompt": "Any particles in the water are caught in a _______",
              "answer": [
                "filter"
              ],
              "wordLimit": 1,
              "explanation": "The device has a very simple filter to trap particles.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "The device has a very simple filter to trap particles"
              }
            },
            {
              "number": 24,
              "prompt": "all types of _______ come out through another tube",
              "answer": [
                "waste"
              ],
              "wordLimit": 1,
              "explanation": "One tube carries the waste — salt from seawater, fluoride, etc.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "one for the waste — salt from seawater, fluoride, etc."
              }
            },
            {
              "number": 25,
              "prompt": "A screen displays the _______ of the device",
              "answer": [
                "performance"
              ],
              "wordLimit": 1,
              "explanation": "The performance of the unit is shown on an LCD screen.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "The performance of the unit is shown on an LCD screen"
              }
            },
            {
              "number": 26,
              "prompt": "and transmits the information to the company so that they know when the Desolenator requires _______",
              "answer": [
                "servicing"
              ],
              "wordLimit": 1,
              "explanation": "Information is transmitted to the company which provides servicing when necessary.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "transmitted to the company which provides servicing when necessary"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "Why fairy tales are really scary tales",
      "passage": [
        {
          "ref": "1",
          "text": "Some people think that fairy tales are just stories to amuse children, but their universal and enduring appeal may be due to more serious reasons People of every culture tell each other fairy tales but the same story often takes a variety of forms in different parts of the world. In the story of Little Red Riding Hood that European children are familiar with, a young girl on the way to see her grandmother meets a wolf and tells him where she is going. The wolf runs on ahead and disposes of the grandmother, then gets into bed dressed in the grandmother's clothes to wait for Little Red Riding Hood. You may think you know the story — but which version? In some versions, the wolf swallows up the grandmother, while in others it locks her in a cupboard. In some stories Red Riding Hood gets the better of the wolf on her own, while in others a hunter or a woodcutter hears her cries and comes to her rescue."
        },
        {
          "ref": "2",
          "text": "The universal appeal of these tales is frequently attributed to the idea that they contain cautionary messages: in the case of Little Red Riding Hood, to listen to your mother, and avoid talking to strangers. ‘It might be what we find interesting about this story is that it’s got this survival-relevant information in it,’ says anthropologist Jamie Tehrani at Durham University in the UK. But his research suggests otherwise. ‘We have this huge gap in our knowledge about the history and prehistory of storytelling, despite the fact that we know this genre is an incredibly ancient one,’ he says. That hasn't stopped anthropologists, folklorists* and other academics devising theories to explain the importance of fairy tales in human society. Now Tehrani has found a way to test these ideas, borrowing a technique from evolutionary biologists."
        },
        {
          "ref": "3",
          "text": "To work out the evolutionary history, development and relationships among groups of organisms, biologists compare the characteristics of living species in a process called ‘phylogenetic analysis’. Tehrani has used the same approach to compare related versions of fairy tales to discover how they have evolved and which elements have survived longest."
        },
        {
          "ref": "4",
          "text": "Tehrani's analysis focused on Little Red Riding Hood in its many forms, which include another Western fairy tale known as The Wolf and the Kids. Checking for variants of these two tales and similar stories from Africa, East Asia and other regions, he ended up with 58 stories recorded from oral traditions. Once his phylogenetic analysis had established that they were indeed related, he used the same methods to explore how they have developed and altered over time."
        },
        {
          "ref": "5",
          "text": "First he tested some assumptions about which aspects of the story alter least as it evolves, indicating their importance. Folklorists believe that what happens in a story is more central to the story than the characters in it - that visiting a relative, only to be met by a scary animal in disguise, is more fundamental than whether the visitor is a little girl or three siblings, or the animal is a tiger instead of a wolf."
        },
        {
          "ref": "6",
          "text": "However, Tehrani found no significant difference in the rate of evolution of incidents compared with that of characters. ‘Certain episodes are very stable because they are crucial to the story, but there are lots of other details that can evolve quite freely,’ he says. Neither did his analysis support the theory that the central section of a story is the most conserved part. He found no significant difference in the flexibility of events there compared with the beginning or the end."
        },
        {
          "ref": "7",
          "text": "But the really big surprise came when he looked at the cautionary elements of the story. ‘Studies on hunter-gatherer folk tales suggest that these narratives include really important information about the environment and the possible dangers that may be faced there — stuff that’s relevant to survival,’ he says. Yet in his analysis such elements were just as flexible as seemingly trivial details."
        },
        {
          "ref": "8",
          "text": "What, then, is important enough to be reproduced from generation to generation?"
        },
        {
          "ref": "9",
          "text": "The answer, it would appear, is fear — blood-thirsty and gruesome aspects of the story, such as the eating of the grandmother by the wolf, turned out to be the best preserved of all. Why are these details retained by generations of storytellers, when other features are not? Tehrani has an idea: ‘In an oral context, a story won't survive because of one great teller. It also needs to be interesting when it's told by someone who's not necessarily a great storyteller.’ Maybe being swallowed whole by a wolf, then cut out of its stomach alive is so gripping that it helps the story remain popular, no matter how badly it’s told."
        },
        {
          "ref": "10",
          "text": "Jack Zipes at the University of Minnesota, Minneapolis, is unconvinced by Tehrani’s views on fairy tales. ‘Even if they're gruesome, they won't stick unless they matter,’ he says. He believes the perennial theme of women as victims in stories like Little Red Riding Hood explains why they continue to feel relevant. But Tehrani points out that although this is often the case in Western versions, it is not always true elsewhere. In Chinese and Japanese versions, often known as The Tiger Grandmother, the villain is a woman, and in both Iran and Nigeria, the victim is a boy."
        },
        {
          "ref": "11",
          "text": "Mathias Clasen at Aarhus University in Denmark isn't surprised by Tehrani’s findings. ‘Habits and morals change, but the things that scare us, and the fact that we seek out entertainment that's designed to scare us — those are constant,’ he says. Clasen believes that scary stories teach us what it feels like to be afraid without having to experience real danger, and so build up resistance to negative emotions. *Folklorists: those who study traditional stories"
        }
      ],
      "groups": [
        {
          "id": "g5",
          "type": "matching",
          "label": "Questions 27–31",
          "instructions": "Complete each sentence with the correct ending, A–F, below. Write the correct letter, A–F, in boxes on your answer sheet.",
          "options": [
            {
              "key": "A",
              "text": "may be provided through methods used in biological research."
            },
            {
              "key": "B",
              "text": "are the reason for their survival."
            },
            {
              "key": "C",
              "text": "show considerable global variation."
            },
            {
              "key": "D",
              "text": "contain animals which transform to become humans."
            },
            {
              "key": "E",
              "text": "were originally spoken rather than written."
            },
            {
              "key": "F",
              "text": "have been developed without factual basis."
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "In fairy tales, details of the plot",
              "answer": "C",
              "explanation": "The same story often takes a variety of forms in different parts of the world — details show considerable global variation.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "the same story often takes a variety of forms in different parts of the world"
              }
            },
            {
              "number": 28,
              "prompt": "Tehrani rejects the idea that the useful lessons for life in fairy tales",
              "answer": "B",
              "explanation": "Tehrani's research suggests cautionary messages are not what explains the tales' survival — the gruesome elements are more important.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "But his research suggests otherwise"
              }
            },
            {
              "number": 29,
              "prompt": "Various theories about the social significance of fairy tales",
              "answer": "F",
              "explanation": "Tehrani found that cautionary elements were just as flexible as seemingly trivial details — suggesting theories are not well founded.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "such elements were just as flexible as seemingly trivial details"
              }
            },
            {
              "number": 30,
              "prompt": "Insights into the development of fairy tales",
              "answer": "A",
              "explanation": "Tehrani borrowed the phylogenetic analysis technique from evolutionary biologists.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "borrowing a technique from evolutionary biologists"
              }
            },
            {
              "number": 31,
              "prompt": "All the fairy tales analysed by Tehrani",
              "answer": "E",
              "explanation": "The 58 stories were recorded from oral traditions.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "he ended up with 58 stories recorded from oral traditions"
              }
            }
          ]
        },
        {
          "id": "g6",
          "type": "completion",
          "label": "Questions 32–36",
          "instructions": "Complete the summary using the list of words, A–I, below. Write the correct letter, A–I, in boxes on your answer sheet.",
          "summaryTitle": "Phylogenetic analysis of Little Red Riding Hood",
          "summaryText": "Tehrani used techniques from evolutionary biology to find out if {32} existed among 58 stories from around the world. He also wanted to know which aspects of the stories had fewest {33}, as he believed these aspects would be the most important ones. Contrary to other beliefs, he found that some {34} that were included in a story tended to change over time, and that the middle of a story seemed no more important than the other parts. He was also surprised that parts of a story which seemed to provide some sort of {35} were unimportant. The aspect that he found most important in a story's survival was {36}.",
          "wordBank": [
            {
              "key": "A",
              "text": "ending"
            },
            {
              "key": "B",
              "text": "events"
            },
            {
              "key": "C",
              "text": "warning"
            },
            {
              "key": "D",
              "text": "links"
            },
            {
              "key": "E",
              "text": "records"
            },
            {
              "key": "F",
              "text": "variations"
            },
            {
              "key": "G",
              "text": "horror"
            },
            {
              "key": "H",
              "text": "people"
            },
            {
              "key": "I",
              "text": "plot"
            }
          ],
          "questions": [
            {
              "number": 32,
              "prompt": "",
              "answer": "D",
              "explanation": "Tehrani compared related versions of fairy tales to discover how they were linked and evolved.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "compare related versions of fairy tales to discover how they have evolved"
              }
            },
            {
              "number": 33,
              "prompt": "",
              "answer": "F",
              "explanation": "Tehrani looked for which aspects had the fewest variations (were most stable/conserved).",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "which aspects of the story alter least as it evolves, indicating their importance"
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": "B",
              "explanation": "Tehrani found no significant difference in the rate of evolution of incidents (events) compared with characters.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "no significant difference in the rate of evolution of incidents compared with that of characters"
              }
            },
            {
              "number": 35,
              "prompt": "",
              "answer": "C",
              "explanation": "Cautionary elements were just as flexible as trivial details — a warning was not what made a story survive.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "such elements were just as flexible as seemingly trivial details"
              }
            },
            {
              "number": 36,
              "prompt": "",
              "answer": "G",
              "explanation": "Blood-thirsty and gruesome (horror) aspects were the best preserved of all.",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "blood-thirsty and gruesome aspects of the story...turned out to be the best preserved of all"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "multiple_choice",
          "label": "Questions 37–40",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 37,
              "prompt": "What method did Jamie Tehrani use to test his ideas about fairy tales?",
              "options": [
                {
                  "key": "A",
                  "text": "He compared oral and written forms of the same stories."
                },
                {
                  "key": "B",
                  "text": "He looked at many different forms of the same basic story."
                },
                {
                  "key": "C",
                  "text": "He looked at unrelated stories from many different countries."
                },
                {
                  "key": "D",
                  "text": "He contrasted the development of fairy tales with that of living creatures."
                }
              ],
              "answer": "B",
              "explanation": "Tehrani used phylogenetic analysis to compare related versions of fairy tales across 58 stories.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Checking for variants of these two tales and similar stories from Africa, East Asia and other regions, he ended up with 58 stories"
              }
            },
            {
              "number": 38,
              "prompt": "When discussing Tehrani's views, Jack Zipes suggests that",
              "options": [
                {
                  "key": "A",
                  "text": "Tehrani ignores key changes in the role of women."
                },
                {
                  "key": "B",
                  "text": "stories which are too horrific are not always taken seriously."
                },
                {
                  "key": "C",
                  "text": "Tehrani overemphasises the importance of violence in stories."
                },
                {
                  "key": "D",
                  "text": "features of stories only survive if they have a deeper significance."
                }
              ],
              "answer": "D",
              "explanation": "Zipes says 'Even if they're gruesome, they won't stick unless they matter' — they need deeper significance.",
              "evidence": {
                "sectionId": "p3",
                "ref": "9",
                "quote": "Even if they're gruesome, they won't stick unless they matter"
              }
            },
            {
              "number": 39,
              "prompt": "Why does Tehrani refer to Chinese and Japanese fairy tales?",
              "options": [
                {
                  "key": "A",
                  "text": "to indicate that Jack Zipes' theory is incorrect"
                },
                {
                  "key": "B",
                  "text": "to suggest that crime is a global problem"
                },
                {
                  "key": "C",
                  "text": "to imply that all fairy tales have a similar meaning"
                },
                {
                  "key": "D",
                  "text": "to add more evidence for Jack Zipes' ideas"
                }
              ],
              "answer": "A",
              "explanation": "Tehrani points out that in Chinese and Japanese versions the villain is a woman, and in Iran and Nigeria the victim is a boy — countering Zipes' claim that women-as-victims explains relevance.",
              "evidence": {
                "sectionId": "p3",
                "ref": "9",
                "quote": "in Chinese and Japanese versions...the villain is a woman, and in both Iran and Nigeria, the victim is a boy"
              }
            },
            {
              "number": 40,
              "prompt": "What does Mathias Clasen believe about fairy tales?",
              "options": [
                {
                  "key": "A",
                  "text": "They are a safe way of learning to deal with fear."
                },
                {
                  "key": "B",
                  "text": "They are a type of entertainment that some people avoid."
                },
                {
                  "key": "C",
                  "text": "They reflect the changing values of our society."
                },
                {
                  "key": "D",
                  "text": "They reduce our ability to deal with real-world problems."
                }
              ],
              "answer": "A",
              "explanation": "Clasen believes scary stories teach us what it feels like to be afraid without real danger, building resistance to negative emotions.",
              "evidence": {
                "sectionId": "p3",
                "ref": "10",
                "quote": "scary stories teach us what it feels like to be afraid without having to experience real danger, and so build up resistance to negative emotions"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c15t3r$,
  true
);
