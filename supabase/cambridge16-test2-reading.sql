DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 16',
  'Test 2',
  'academic',
  3600,
  $c16t2r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The White Horse of Uffington",
      "passage": [
        {
          "ref": "1",
          "text": "The cutting of huge figures or geoglyphs into the earth of English hillsides has taken place for more than 3,000 years. There are 56 hill figures scattered around England, with the vast majority on the chalk downlands of the country’s southern counties. The figures include giants, horses, crosses and regimental badges. Although the majority of these geoglyphs date within the last 300 years or so, there are one or two that are much older."
        },
        {
          "ref": "2",
          "text": "The most famous of these figures is perhaps also the most mysterious - the Uffington White Horse in Oxfordshire. The White Horse has recently been re-dated and shown to be even older than its previously assigned ancient pre-Roman Iron Age date. More controversial is the date of the enigmatic Long Man of Wilmington in Sussex. While many historians are convinced the figure is prehistoric, others believe that it was the work of an artistic monk from a nearby priory and was created between the 11th and 15th centuries."
        },
        {
          "ref": "3",
          "text": "The method of cutting these huge figures was simply to remove the overlying grass to reveal the gleaming white chalk below. However, the grass would soon grow over the geoglyph again unless it was regularly cleaned or scoured by a fairly large team of people. One reason that the vast majority of hill figures have disappeared is that when the traditions associated with the figures faded, people no longer bothered or remembered to clear away the grass to expose the chalk outline. Furthermore, over hundreds of years the outlines would sometimes change due to people not always cutting in exactly the same place, thus creating a different shape to the original geoglyph. The fact that any ancient hill figures survive at all in England today is testament to the strength and continuity of local customs and beliefs which, in one case at least, must stretch back over millennia."
        },
        {
          "ref": "4",
          "text": "The Uffington White Horse is a unique, stylised representation of a horse consisting of a long, sleek back, thin disjointed legs, a streaming tail, and a bird-like beaked head. The elegant creature almost melts into the landscape. The horse is situated 2.5 km from Uffington village on a steep slope close to the Late Bronze Age (c. 7th century BCE) hillfort of Uffington Castle and below the Ridgeway, a long-distance Neolithic track."
        },
        {
          "ref": "5",
          "text": "The Uffington Horse is also surrounded by Bronze Age burial mounds. It is not far from the Bronze Age cemetery of Lambourn Seven Barrows, which consists of more than 30 well-preserved burial mounds. The carving has been placed in such a way as to make it extremely difficult to see from close quarters, and like many geoglyphs is best appreciated from the air. Nevertheless, there are certain areas of the Vale of the White Horse, the valley containing and named after the enigmatic creature, from which an adequate impression may be gained. Indeed on a clear day the carving can be seen from up to 30 km away."
        },
        {
          "ref": "6",
          "text": "The earliest evidence of a horse at Uffington is from the 1070s CE when ‘White Horse Hill’ is mentioned in documents from the nearby Abbey of Abingdon, and the first reference to the horse itself is soon after, in 1190 CE. However, the carving is believed to date back much further than that. Due to the similarity of the Uffington White Horse to the stylised depictions of horses on 1st century BCE coins, it had been thought that the creature must also date to that period. However, in 1995 Optically Stimulated Luminescence (OSL) testing was carried out by the Oxford Archaeological Unit on soil from two of the lower layers of the horse’s body, and from another cut near the base. The result was a date for the horse’s construction somewhere between 1400 and 600 BCE - in other words, it had a Late Bronze Age or Early Iron Age origin. The latter end of this date range would tie the carving of the horse in with occupation of the nearby Uffington hillfort, indicating that it may represent a tribal emblem marking the land of the inhabitants of the hillfort. Alternatively, the carving may have been carried out during a Bronze or Iron Age ritual. Some researchers see the horse as representing the Celtic horse goddess Epona, who was worshipped as a protector of horses, and for her associations with fertility. However, the cult of Epona was not imported from Gaul (France) until around the first century CE. This date is at least six centuries after the Uffington Horse was probably carved. Nevertheless, the horse had great ritual and economic significance during the Bronze and Iron Ages, as attested by its depictions on jewellery and other metal objects. It is possible that the carving represents a goddess in native mythology, such as Rhiannon, described in later Welsh mythology as a beautiful woman dressed in gold and riding a white horse."
        },
        {
          "ref": "7",
          "text": "The fact that geoglyphs can disappear easily, along with their associated rituals and meaning, indicates that they were never intended to be anything more than temporary gestures. But this does not lessen their importance. These giant carvings are a fascinating glimpse into the minds of their creators and how they viewed the landscape in which they lived."
        }
      ],
      "groups": [
        {
          "type": "true_false_notgiven",
          "label": "Questions 1–8",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 1,
              "prompt": "Most geoglyphs in England are located in a particular area of the country.",
              "answer": "TRUE",
              "explanation": "There are 56 hill figures scattered around England, with the vast majority on the chalk downlands of the country’s southern counties.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "There are 56 hill figures scattered around England, with the vast majority on the chalk downlands of the country’s south"
              }
            },
            {
              "number": 2,
              "prompt": "There are more geoglyphs in the shape of a horse than any other creature.",
              "answer": "NOT GIVEN",
              "explanation": "Although the majority of these geoglyphs date within the last 300 years or so, there are one or two that are much older.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "Although the majority of these geoglyphs date within the last 300 years or so, there are one or two that are much older."
              }
            },
            {
              "number": 3,
              "prompt": "A recent dating of the Uffington White Horse indicates that people were mistaken about its age.",
              "answer": "TRUE",
              "explanation": "The White Horse has recently been re-dated and shown to be even older than its previously assigned ancient pre-Roman Iron Age date.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The White Horse has recently been re-dated and shown to be even older than its previously assigned ancient pre-Roman Iro"
              }
            },
            {
              "number": 4,
              "prompt": "Historians have come to an agreement about the origins of the Long Man of Wilmington.",
              "answer": "FALSE",
              "explanation": "More controversial is the date of the enigmatic Long Man of Wilmington in Sussex. While many historians are convinced the figure is prehistoric, others believe that it was the work of an artistic monk from a nearby priory and was created between the 11th and 15th centuries.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "More controversial is the date of the enigmatic Long Man of Wilmington in Sussex. While many historians are convinced th"
              }
            },
            {
              "number": 5,
              "prompt": "Geoglyphs were created by people placing white chalk on the hillside.",
              "answer": "FALSE",
              "explanation": "The method of cutting these huge figures was simply to remove the overlying grass to reveal the gleaming white chalk below.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "The method of cutting these huge figures was simply to remove the overlying grass to reveal the gleaming white chalk bel"
              }
            },
            {
              "number": 6,
              "prompt": "Many geoglyphs in England are no longer visible.",
              "answer": "TRUE",
              "explanation": "One reason that the vast majority of hill figures have disappeared is that when the traditions associated with the figures faded, people no longer bothered or remembered to clear away the grass to expose the chalk outline.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "One reason that the vast majority of hill figures have disappeared is that when the traditions associated with the figur"
              }
            },
            {
              "number": 7,
              "prompt": "The shape of some geoglyphs has been altered over time.",
              "answer": "TRUE",
              "explanation": "over hundreds of years the outlines would sometimes change due to people not always cutting in exactly the same place, thus creating a different shape to the original geoglyph.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "over hundreds of years the outlines would sometimes change due to people not always cutting in exactly the same place, t"
              }
            },
            {
              "number": 8,
              "prompt": "The fame of the Uffington White Horse is due to its size.",
              "answer": "NOT GIVEN",
              "explanation": "The Uffington White Horse is a unique, stylised representation of a horse consisting of a long, sleek back, thin disjointed legs, a streaming tail, and a bird-like beaked head.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "The Uffington White Horse is a unique, stylised representation of a horse consisting of a long, sleek back, thin disjoin"
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 9–13",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "near an ancient road known as the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": "close to an ancient cemetery that has a number of burial mounds Dating the Uffington White Horse: first reference to White Horse Hill appears in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "static",
              "text": "from the 1070s horses shown on coins from the period 100 BCE - 1 BCE are similar in appearance according to analysis of the surrounding",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 11
            },
            {
              "kind": "static",
              "text": ", the Horse is Late Bronze Age / Early Iron Age Possible reasons for creation of the Uffington White Horse: an emblem to indicate land ownership formed part of an ancient ritual was a representation of goddess Epona - associated with protection of horses and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 12
            },
            {
              "kind": "static",
              "text": "was a representation of a Welsh goddess called",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 13
            }
          ],
          "questions": [
            {
              "number": 9,
              "prompt": "near an ancient road known as the _______",
              "answer": [
                "Ridgeway"
              ],
              "wordLimit": 1,
              "explanation": "The horse is situated 2.5 km from Uffington village on a steep slope close to the Late Bronze Age (c. 7th century BCE) hillfort of Uffington Castle and below the Ridgeway, a long-distance Neolithic track.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "The horse is situated 2.5 km from Uffington village on a steep slope close to the Late Bronze Age (c. 7th century BCE) h"
              }
            },
            {
              "number": 10,
              "prompt": "to White Horse Hill appears in _______",
              "answer": [
                "documents"
              ],
              "wordLimit": 1,
              "explanation": "The earliest evidence of a horse at Uffington is from the 1070s CE when ‘White Horse Hill’ is mentioned in documents from the nearby Abbey of Abingdon, and the first reference to the horse itself is soon after, in 1190 CE.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "The earliest evidence of a horse at Uffington is from the 1070s CE when ‘White Horse Hill’ is mentioned in documents fro"
              }
            },
            {
              "number": 11,
              "prompt": "to analysis of the surrounding _______",
              "answer": [
                "soil"
              ],
              "wordLimit": 1,
              "explanation": "in 1995 Optically Stimulated Luminescence (OSL) testing was carried out by the Oxford Archaeological Unit on soil from two of the lower layers of the horse’s body, and from another cut near the base.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "in 1995 Optically Stimulated Luminescence (OSL) testing was carried out by the Oxford Archaeological Unit on soil from t"
              }
            },
            {
              "number": 12,
              "prompt": "with protection of horses and _______",
              "answer": [
                "fertility"
              ],
              "wordLimit": 1,
              "explanation": "Some researchers see the horse as representing the Celtic horse goddess Epona, who was worshipped as a protector of horses, and for her associations with fertility.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "Some researchers see the horse as representing the Celtic horse goddess Epona, who was worshipped as a protector of hors"
              }
            },
            {
              "number": 13,
              "prompt": "of a Welsh goddess called _______",
              "answer": [
                "Rhiannon"
              ],
              "wordLimit": 1,
              "explanation": "It is possible that the carving represents a goddess in native mythology, such as Rhiannon, described in later Welsh mythology as a beautiful woman dressed in gold and riding a white horse.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "It is possible that the carving represents a goddess in native mythology, such as Rhiannon, described in later Welsh myt"
              }
            }
          ],
          "formTitle": "The Uffington White Horse",
          "id": "g9"
        }
      ]
    },
    {
      "id": "p2",
      "title": "I contain multitudes Wendy Moore reviews Ed Yong’s book about microbes",
      "passage": [
        {
          "ref": "1",
          "text": "Microbes, most of them bacteria, have populated this planet since long before animal life developed and they will outlive us. Invisible to the naked eye, they are ubiquitous. They inhabit the soil, air, rocks and water and are present within every form of life, from seaweed and coral to dogs and humans. And, as Yong explains in his utterly absorbing and hugely important book, we mess with them at our peril."
        },
        {
          "ref": "2",
          "text": "Every species has its own colony of microbes, called a ‘microbiome’, and these microbes vary not only between species but also between individuals and within different parts of each individual. What is amazing is that while the number of human cells in the average person is about 30 trillion, the number of microbial ones is higher - about 39 trillion. At best, Yong informs us, we are only 50 per cent human. Indeed, some scientists even suggest we should think of each species and its microbes as a single unit, dubbed a ‘holobiont’."
        },
        {
          "ref": "3",
          "text": "In each human there are microbes that live only in the stomach, the mouth or the armpit and by and large they do so peacefully. So ‘bad’ microbes are just microbes out of context. Microbes that sit contentedly in the human gut (where there are more microbes than there are stars in the galaxy) can become deadly if they find their way into the bloodstream. These communities are constantly changing too. The right hand shares just one sixth of its microbes with the left hand. And, of course, we are surrounded by microbes. Every time we eat, we swallow a million microbes in each gram of food; we are continually swapping microbes with other humans, pets and the world at large."
        },
        {
          "ref": "4",
          "text": "It’s a fascinating topic and Yong, a young British science journalist, is an extraordinarily adept guide. Writing with lightness and panache, he has a knack of explaining complex science in terms that are both easy to understand and totally enthralling. Yong is on a mission. Leading us gently by the hand, he takes us into the world of microbes - a bizarre, alien planet - in a bid to persuade us to love them as much as he does. By the end, we do."
        },
        {
          "ref": "5",
          "text": "For most of human history we had no idea that microbes existed. The first man to see these extraordinarily potent creatures was a Dutch lens-maker called Antony van Leeuwenhoek in the"
        },
        {
          "ref": "6",
          "text": "1670s. Using microscopes of his own design that could magnify up to 270 times, he examined a drop of water from a nearby lake and found it teeming with tiny creatures he called ‘animalcules’. It wasn’t until nearly two hundred years later that the research of French biologist Louis Pasteur indicated that some microbes caused disease. It was Pasteur’s ‘germ theory’ that gave bacteria the poor image that endures today."
        },
        {
          "ref": "7",
          "text": "Yong’s book is in many ways a plea for microbial tolerance, pointing out that while fewer than one hundred species of bacteria bring disease, many thousands more play a vital role in maintaining our health. The book also acknowledges that our attitude towards bacteria is not a simple one. We tend to see the dangers posed by bacteria, yet at the same time we are sold yoghurts and drinks that supposedly nurture ‘friendly’ bacteria. In reality, says Yong, bacteria should not be viewed as either friends or foes, villains or heroes. Instead we should realise we have a symbiotic relationship, that can be mutually beneficial or mutually destructive."
        },
        {
          "ref": "8",
          "text": "What then do these millions of organisms do? The answer is pretty much everything. New research is now unravelling the ways in which bacteria aid digestion, regulate our immune systems, eliminate toxins, produce vitamins, affect our behaviour and even combat obesity. ‘They actually help us become who we are,’ says Yong. But we are facing a growing problem. Our obsession with hygiene, our overuse of antibiotics and our unhealthy, low-fibre diets are disrupting the bacterial balance and may be responsible for soaring rates of allergies and immune problems, such as inflammatory bowel disease (IBD)."
        },
        {
          "ref": "9",
          "text": "The most recent research actually turns accepted norms upside down. For example, there are studies indicating that the excessive use of household detergents and antibacterial products actually destroys the microbes that normally keep the more dangerous germs at bay. Other studies show that keeping a dog as a pet gives children early exposure to a diverse range of bacteria, which may help protect them against allergies later."
        },
        {
          "ref": "10",
          "text": "The readers of Yong’s book must be prepared for a decidedly unglamorous world. Among the less appealing case studies is one about a fungus that is wiping out entire populations of frogs and that can be halted by a rare microbial bacterium. Another is about squid that carry luminescent bacteria that protect them against predators. However, if you can overcome your distaste for some of the investigations, the reasons for Yong’s enthusiasm become clear. The microbial world is a place of wonder. Already, in an attempt to stop mosquitoes spreading dengue fever - a disease that infects 400 million people a year - mosquitoes are being loaded with a bacterium to block the disease. In the future, our ability to manipulate microbes means we could construct buildings with useful microbes built into their walls to fight off infections. Just imagine a neonatal hospital ward coated in a specially mixed cocktail of microbes so that babies get the best start in life."
        }
      ],
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 14–16",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 14,
              "prompt": "What point does the writer make about microbes in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "They adapt quickly to their environment."
                },
                {
                  "key": "B",
                  "text": "The risk they pose has been exaggerated."
                },
                {
                  "key": "C",
                  "text": "They are more plentiful in animal life than plant life."
                },
                {
                  "key": "D",
                  "text": "They will continue to exist for longer than the human race."
                }
              ],
              "answer": "D",
              "explanation": "they will outlive us.",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "they will outlive us."
              }
            },
            {
              "number": 15,
              "prompt": "In the second paragraph, the writer is impressed by the fact that",
              "options": [
                {
                  "key": "A",
                  "text": "each species tends to have vastly different microbes."
                },
                {
                  "key": "B",
                  "text": "some parts of the body contain relatively few microbes."
                },
                {
                  "key": "C",
                  "text": "the average individual has more microbial cells than human ones."
                },
                {
                  "key": "D",
                  "text": "scientists have limited understanding of how microbial cells behave."
                }
              ],
              "answer": "C",
              "explanation": "What is amazing is that while the number of human cells in the average person is about 30 trillion, the number of microbial ones is higher - about",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "What is amazing is that while the number of human cells in the average person is about 30 trillion, the number of microb"
              }
            },
            {
              "number": 16,
              "prompt": "What is the writer doing in the fifth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "explaining how a discovery was made"
                },
                {
                  "key": "B",
                  "text": "comparing scientists’ theories about microbes"
                },
                {
                  "key": "C",
                  "text": "describing confusion among scientists"
                },
                {
                  "key": "D",
                  "text": "giving details of how microbes cause disease"
                }
              ],
              "answer": "A",
              "explanation": "Using microscopes of his own design that could magnify up to 270 times, he examined a drop of water from a nearby lake and found it teeming with tiny creatures he called ‘animalcules’.",
              "evidence": {
                "sectionId": "p2",
                "ref": "6",
                "quote": "Using microscopes of his own design that could magnify up to 270 times, he examined a drop of water from a nearby lake a"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 17–20",
          "instructions": "Complete the summary using the list of words, A–H, below.",
          "summaryTitle": "",
          "summaryText": "We should be more tolerant of microbes\nYong’s book argues that we should be more tolerant of microbes. Many have a beneficial effect,\nand only a relatively small number lead to {17} . And although it is\nmisleading to think of microbes as ‘friendly’, we should also stop thinking of them as the\nenemy. In fact, we should accept that our relationship with microbes is one based on\n{18} .\nNew research shows that microbes have numerous benefits for humans. Amongst other things,\nthey aid digestion, remove poisons, produce vitamins and may even help reduce obesity.\nHowever, there is a growing problem. Our poor {19} , our overuse of\nantibiotics, and our excessive focus on {20} are upsetting the bacterial\nbalance and may be contributing to the huge increase in allergies and immune system\nproblems.\nA. solution B. partnership C. destructionD. exaggeration\nE. cleanlinessF. regulationsG. illness H. nutrition",
          "wordBank": [
            {
              "key": "A",
              "text": "solution"
            },
            {
              "key": "B",
              "text": "partnership"
            },
            {
              "key": "C",
              "text": "destruction"
            },
            {
              "key": "D",
              "text": "exaggeration"
            },
            {
              "key": "E",
              "text": "cleanliness"
            },
            {
              "key": "F",
              "text": "regulations"
            },
            {
              "key": "G",
              "text": "illness"
            },
            {
              "key": "H",
              "text": "nutrition"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "",
              "answer": "G",
              "explanation": "Yong’s book is in many ways a plea for microbial tolerance, pointing out that while fewer than one hundred species of bacteria bring disease, many thousands more play a vital role in maintaining our health.",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "Yong’s book is in many ways a plea for microbial tolerance, pointing out that while fewer than one hundred species of ba"
              }
            },
            {
              "number": 18,
              "prompt": "",
              "answer": "B",
              "explanation": "Instead we should realise we have a symbiotic relationship, that can be mutually beneficial or mutually destructive.",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "Instead we should realise we have a symbiotic relationship, that can be mutually beneficial or mutually destructive."
              }
            },
            {
              "number": 19,
              "prompt": "",
              "answer": "H",
              "explanation": "our unhealthy, low-fibre diets are disrupting the bacterial balance and may be responsible for soaring rates of allergies and immune problems, such as inflammatory bowel disease (IBD).",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "our unhealthy, low-fibre diets are disrupting the bacterial balance and may be responsible for soaring rates of allergie"
              }
            },
            {
              "number": 20,
              "prompt": "",
              "answer": "E",
              "explanation": "Our obsession with hygiene",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "Our obsession with hygiene"
              }
            }
          ],
          "id": "g17"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 21–26",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 2? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 21,
              "prompt": "It is possible that using antibacterial products in the home fails to have the desired effect. === PAGE 6 ===",
              "answer": "YES",
              "explanation": "the excessive use of household detergents and antibacterial products actually destroys the microbes that normally keep the more dangerous germs at bay.",
              "evidence": {
                "sectionId": "p2",
                "ref": "9",
                "quote": "the excessive use of household detergents and antibacterial products actually destroys the microbes that normally keep t"
              }
            },
            {
              "number": 22,
              "prompt": "It is a good idea to ensure that children come into contact with as few bacteria as possible.",
              "answer": "NO",
              "explanation": "keeping a dog as a pet gives children early exposure to a diverse range of bacteria, which may help protect them against allergies later.",
              "evidence": {
                "sectionId": "p2",
                "ref": "9",
                "quote": "keeping a dog as a pet gives children early exposure to a diverse range of bacteria, which may help protect them against"
              }
            },
            {
              "number": 23,
              "prompt": "Yong’s book contains more cause studies than are necessary.",
              "answer": "NOT GIVEN",
              "explanation": "The readers of Yong’s book must be prepared for a decidedly unglamorous world.",
              "evidence": {
                "sectionId": "p2",
                "ref": "10",
                "quote": "The readers of Yong’s book must be prepared for a decidedly unglamorous world."
              }
            },
            {
              "number": 24,
              "prompt": "The case study about bacteria that prevent squid from being attacked may have limited appeal.",
              "answer": "YES",
              "explanation": "Among the less appealing case studies is one about a fungus that is wiping out entire populations of frogs and that can be halted by a rare microbial bacterium. Another is about squid that carry luminescent bacteria that protect them against predators.",
              "evidence": {
                "sectionId": "p2",
                "ref": "10",
                "quote": "Among the less appealing case studies is one about a fungus that is wiping out entire populations of frogs and that can "
              }
            },
            {
              "number": 25,
              "prompt": "Efforts to control dengue fever have been surprisingly successful",
              "answer": "NOT GIVEN",
              "explanation": "Already, in an attempt to stop mosquitoes spreading dengue fever - a disease that infects 400 million people a year - mosquitoes are being loaded with a bacterium to block the disease.",
              "evidence": {
                "sectionId": "p2",
                "ref": "10",
                "quote": "Already, in an attempt to stop mosquitoes spreading dengue fever - a disease that infects 400 million people a year - mo"
              }
            },
            {
              "number": 26,
              "prompt": "Microbes that reduce the risk of infection have already been put inside the walls of some hospital wards.",
              "answer": "NO",
              "explanation": "In the future, our ability to manipulate microbes means we could construct buildings with useful microbes built into their walls to fight off infections.",
              "evidence": {
                "sectionId": "p2",
                "ref": "10",
                "quote": "In the future, our ability to manipulate microbes means we could construct buildings with useful microbes built into the"
              }
            }
          ],
          "id": "g21"
        }
      ]
    },
    {
      "id": "p3",
      "title": "How to make wise decisions",
      "passage": [
        {
          "ref": "1",
          "text": "Across cultures, wisdom has been considered one of the most revered human qualities. Although the truly wise may seem few and far between, empirical research examining wisdom suggests that it isn’t an exceptional trait possessed by a small handful of bearded philosophers after all - in fact, the latest studies suggest that most of us have the ability to make wise decisions, given the right context."
        },
        {
          "ref": "2",
          "text": "‘It appears that experiential, situational, and cultural factors are even more powerful in shaping wisdom than previously imagined,’ says Associate Professor Igor Grossmann of the University of Waterloo in Ontario, Canada. ‘Recent empirical findings from cognitive, developmental, social, and personality psychology cumulatively suggest that people’s ability to reason wisely varies dramatically across experiential and situational contexts. Understanding the role of such contextual factors offers unique insights into understanding wisdom in daily life, as well as how it can be enhanced and taught.’ It seems that it’s not so much that some people simply possess wisdom and others lack it, but that our ability to reason wisely depends on a variety of external factors. ‘It is impossible to characterize thought processes attributed to wisdom without considering the role of contextual factors,’ explains Grossmann. ‘In other words, wisdom is not solely an “inner quality” but rather unfolds as a function of situations people happen to be in. Some situations are more likely to promote wisdom than others.’ Coming up with a definition of wisdom is challenging, but Grossmann and his colleagues have identified four key characteristics as part of a framework of wise reasoning. One is intellectual humility or recognition of the limits of our own knowledge, and another is appreciation of perspectives wider than the issue at hand. Sensitivity to the possibility of change in social relations is also key, along with compromise or integration of different attitudes and beliefs. Grossmann and his colleagues have also found that one of the most reliable ways to support wisdom in our own day-to-day decisions is to look at scenarios from a third-party perspective, as though giving advice to a friend. Research suggests that when adopting a first-person viewpoint we focus on ‘the focal features of the environment’ and when we adopt a third-person, ‘observer’ viewpoint we reason more broadly and focus more on interpersonal and moral ideals such as"
        },
        {
          "ref": "3",
          "text": "justice and impartiality. Looking at problems from this more expansive viewpoint appears to foster cognitive processes related to wise decisions."
        },
        {
          "ref": "4",
          "text": "What are we to do, then, when confronted with situations like a disagreement with a spouse or negotiating a contract at work, that require us to take a personal stake? Grossmann argues that even when we aren’t able to change the situation, we can still evaluate these experiences from different perspectives."
        },
        {
          "ref": "5",
          "text": "For example, in one experiment that took place during the peak of a recent economic recession, graduating college seniors were asked to reflect on their job prospects. The students were instructed to imagine their career either ‘as if you were a distant observer’ or ‘before your own eyes as if you were right there’. Participants in the group assigned to the ‘distant observer’ role displayed more wisdom-related reasoning (intellectual humility and recognition of change) than did participants in the control group."
        },
        {
          "ref": "6",
          "text": "In another study, couples in long-term romantic relationships were instructed to visualize an unresolved relationship conflict either through the eyes of an outsider or from their own perspective. Participants then discussed the incident with their partner for 10 minutes, after which they wrote down their thoughts about it. Couples in the ‘other’s eyes’ condition were significantly more likely to rely on wise reasoning - recognizing others’ perspectives and searching for a compromise - compared to the couples in the egocentric condition."
        },
        {
          "ref": "7",
          "text": "‘Ego-decentering promotes greater focus on others and enables a bigger picture, conceptual view of the experience, affording recognition of intellectual humility and change,’ says Grossmann. We might associate wisdom with intelligence or particular personality traits, but research shows only a small positive relationship between wise thinking and crystallized intelligence and the personality traits of openness and agreeableness. ‘It is remarkable how much people can vary in their wisdom from one situation to the next, and how much stronger such contextual effects are for understanding the relationship between wise judgment and its social and affective outcomes as compared to the generalized “traits”,’ Grossmann explains. ‘That is, knowing how wisely a person behaves in a given situation is more informative for understanding their emotions or likelihood to forgive [or] retaliate as compared to knowing whether the person may be wise “in general”."
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
              "prompt": "What point does the writer make in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Wisdom appears to be unique to the human race."
                },
                {
                  "key": "B",
                  "text": "A basic assumption about wisdom may be wrong."
                },
                {
                  "key": "C",
                  "text": "Concepts of wisdom may depend on the society we belong to."
                },
                {
                  "key": "D",
                  "text": "There is still much to be discovered about the nature of wisdom."
                }
              ],
              "answer": "B",
              "explanation": "empirical research examining wisdom suggests that it isn’t an exceptional trait possessed by a small handful of bearded philosophers after all - in fact, the latest studies suggest that most of us have the ability to make wise decisions, given the right context.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "empirical research examining wisdom suggests that it isn’t an exceptional trait possessed by a small handful of bearded "
              }
            },
            {
              "number": 28,
              "prompt": "What does Igor Grossmann suggest about the ability to make wise decisions?",
              "options": [
                {
                  "key": "A",
                  "text": "It can vary greatly from one person to another."
                },
                {
                  "key": "B",
                  "text": "Earlier research into it was based on unreliable data."
                },
                {
                  "key": "C",
                  "text": "The importance of certain influences on it was underestimated."
                },
                {
                  "key": "D",
                  "text": "Various branches of psychology define it according to their own criteria."
                }
              ],
              "answer": "C",
              "explanation": "It appears that experiential, situational, and cultural factors are even more powerful in shaping wisdom than previously imagined",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "It appears that experiential, situational, and cultural factors are even more powerful in shaping wisdom than previously"
              }
            },
            {
              "number": 29,
              "prompt": "According to the third paragraph, Grossmann claims that the level of wisdom an individual shows",
              "options": [
                {
                  "key": "A",
                  "text": "can be greater than they think it is."
                },
                {
                  "key": "B",
                  "text": "will be different in different circumstances."
                },
                {
                  "key": "C",
                  "text": "may be determined by particular aspects of their personality."
                },
                {
                  "key": "D",
                  "text": "should develop over time as a result of their life experiences."
                }
              ],
              "answer": "B",
              "explanation": "people’s ability to reason wisely varies dramatically across experiential and situational contexts.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "people’s ability to reason wisely varies dramatically across experiential and situational contexts."
              }
            },
            {
              "number": 30,
              "prompt": "What is described in the fifth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "a difficulty encountered when attempting to reason wisely"
                },
                {
                  "key": "B",
                  "text": "an example of the type of person who is likely to reason wisely"
                },
                {
                  "key": "C",
                  "text": "a controversial view about the benefits of reasoning wisely"
                },
                {
                  "key": "D",
                  "text": "a recommended strategy that can help people to reason wisely"
                }
              ],
              "answer": "D",
              "explanation": "one of the most reliable ways to support wisdom in our own day-to-day decisions is to look at scenarios from a third-party perspective, as though giving advice to a friend.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "one of the most reliable ways to support wisdom in our own day-to-day decisions is to look at scenarios from a third-par"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 31–35",
          "instructions": "Complete the summary using the list of words, A–J, below.",
          "summaryTitle": "",
          "summaryText": "The characteristics of wise reasoning\nIgor Grossmann and colleagues have established four characteristics which enable us to make\nwise decisions. It is important to have a certain degree of {31} regarding\nthe extent of our knowledge, and to take into account {32} which may not\nbe the same as our own. We should also be able to take a broad {33} of\nany situation. Another key characteristic is being aware of the likelihood of alterations in the\nway that people relate to each other.\nGrossmann also believes that it is better to regard scenarios with {34} . By\navoiding the first-person perspective, we focus more on {35} and on other\nmoral ideals, which in turn leads to wiser decision-making.\nA. opinions B. confidenceC. view D. modesty E. problems\nF. objectivityG. fairness H. experiencesI. range J. reasons",
          "wordBank": [
            {
              "key": "A",
              "text": "opinions"
            },
            {
              "key": "B",
              "text": "confidence"
            },
            {
              "key": "C",
              "text": "view"
            },
            {
              "key": "D",
              "text": "modesty"
            },
            {
              "key": "E",
              "text": "problems"
            },
            {
              "key": "F",
              "text": "objectivity"
            },
            {
              "key": "G",
              "text": "fairness"
            },
            {
              "key": "H",
              "text": "experiences"
            },
            {
              "key": "I",
              "text": "range"
            },
            {
              "key": "J",
              "text": "reasons"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "",
              "answer": "D",
              "explanation": "One is intellectual humility or recognition of the limits of our own knowledge",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "One is intellectual humility or recognition of the limits of our own knowledge"
              }
            },
            {
              "number": 32,
              "prompt": "",
              "answer": "A",
              "explanation": "Sensitivity to the possibility of change in social relations is also key, along with compromise or integration of different attitudes and beliefs.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Sensitivity to the possibility of change in social relations is also key, along with compromise or integration of differ"
              }
            },
            {
              "number": 33,
              "prompt": "",
              "answer": "C",
              "explanation": "another is appreciation of perspectives wider than the issue at hand.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "another is appreciation of perspectives wider than the issue at hand."
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": "F",
              "explanation": "one of the most reliable ways to support wisdom in our own day-to-day decisions is to look at scenarios from a third-party perspective",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "one of the most reliable ways to support wisdom in our own day-to-day decisions is to look at scenarios from a third-par"
              }
            },
            {
              "number": 35,
              "prompt": "",
              "answer": "G",
              "explanation": "when we adopt a third-person, ‘observer’ viewpoint we reason more broadly and focus more on interpersonal and moral ideals such as justice and impartiality.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "when we adopt a third-person, ‘observer’ viewpoint we reason more broadly and focus more on interpersonal and moral idea"
              }
            }
          ],
          "id": "g31"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 36–40",
          "instructions": "Do the following statements agree with the information given in Reading Passage 3? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 36,
              "prompt": "Students participating in the job prospects experiment could choose one of two perspectives to take.",
              "answer": "FALSE",
              "explanation": "Participants in the group assigned to the ‘distant observer’ role displayed more wisdom-related reasoning (intellectual humility and recognition of change) than did participants in the control group.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "Participants in the group assigned to the ‘distant observer’ role displayed more wisdom-related reasoning (intellectual "
              }
            },
            {
              "number": 37,
              "prompt": "Participants in the couples experiment were aware that they were taking part in a study about wise reasoning.",
              "answer": "NOT GIVEN",
              "explanation": "In another study, couples in long-term romantic relationships were instructed to visualize an unresolved relationship conflict either through the eyes of an outsider or from their own perspective.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "In another study, couples in long-term romantic relationships were instructed to visualize an unresolved relationship co"
              }
            },
            {
              "number": 38,
              "prompt": "In the couples experiments, the length of the couples’ relationships had an impact on the results.",
              "answer": "NOT GIVEN",
              "explanation": "Couples in the ‘other’s eyes’ condition were significantly more likely to rely on wise reasoning - recognizing others’ perspectives and searching for a compromise - compared to the couples in the egocentric condition.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Couples in the ‘other’s eyes’ condition were significantly more likely to rely on wise reasoning - recognizing others’ p"
              }
            },
            {
              "number": 39,
              "prompt": "In both experiments, the participants who looked at the situation from a more detached viewpoint tended to make wiser decisions.",
              "answer": "TRUE",
              "explanation": "Ego-decentering promotes greater focus on others and enables a bigger picture, conceptual view of the experience, affording recognition of intellectual humility and change",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Ego-decentering promotes greater focus on others and enables a bigger picture, conceptual view of the experience, afford"
              }
            },
            {
              "number": 40,
              "prompt": "Grossmann believes that a person’s wisdom is determined by their intelligence to only a very limited extent. === PAGE 9 ===",
              "answer": "TRUE",
              "explanation": "research shows only a small positive relationship between wise thinking and crystallized intelligence and the personality traits of openness and agreeableness. ‘It is remarkable how much people can vary in their wisdom from one situation to the next, and how much stronger such contextual effects are for understanding the relationship between wise judgment and its social and affective outcomes as compared to the generalized “traits”,’ Grossmann explains.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "research shows only a small positive relationship between wise thinking and crystallized intelligence and the personalit"
              }
            }
          ],
          "id": "g36"
        }
      ]
    }
  ]
}
$c16t2r$,
  true
);
