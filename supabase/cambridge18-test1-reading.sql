DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 18',
  'Test 1',
  'academic',
  3600,
  $c18t1r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Urban farming",
      "passage": [
        {
          "ref": "1",
          "text": "In Paris, urban farmers are trying a soil-free approach to agriculture that uses less space and fewer resources. Could it help cities face the threats to our food supplies?"
        },
        {
          "ref": "2",
          "text": "On top of a striking new exhibition hall in southern Paris, the world’s largest urban rooftop farm has started to bear fruit. Strawberries that are small, intensely flavoured and resplendently red sprout abundantly from large plastic tubes. Peer inside and you see the tubes are completely hollow, the roots of dozens of strawberry plants dangling down inside them. From identical vertical tubes nearby burst row upon row of lettuces; near those are aromatic herbs, such as basil, sage and peppermint. Opposite, in narrow, horizontal trays packed not with soil but with coconut fibre, grow cherry tomatoes, shiny aubergines and brightly coloured chards."
        },
        {
          "ref": "3",
          "text": "Pascal Hardy, an engineer and sustainable development consultant, began experimenting with vertical farming and aeroponic growing towers- as the soil-free plastic tubes are known - on his Paris apartment block roof five years ago. The urban rooftop space above the exhibition hall is somewhat bigger: 14,000 square metres and almost exactly the size of a couple of football pitches. Already, the team of young urban farmers who tend it have picked, in one day, 3,000 lettuces and 150 punnets of strawberries. When the remaining two thirds of the vast open area are in production, 20 staff will harvest up to 1,000 kg of perhaps 35 different varieties of fruit and vegetables, every day. ‘We’re not ever, obviously, going to feed the whole city this way,’ cautions Hardy. ‘In the urban environment you’re working with very significant practical constraints, clearly, on what you can do and where. But if enough unused space can be developed like this, there’s no reason why you shouldn’t eventually target maybe between 5% and 10% of consumption.’ Perhaps most significantly, however, this is a real-life showcase for the work of Hardy’s flourishing urban agriculture consultancy, Agripolis, which is currently fielding enquiries from around the world to design, build and equip a new breed of soil-free inner-city farm. ‘The method’s advantages are many,’ he says. ‘First, I don’t much like the fact that most of the fruit and vegetables we eat have been treated with something like 17 different pesticides, or that the intensive farming techniques that produced them are such huge generators of greenhouse gases. I don’t much like the fact, either, that they’ve travelled an average of 2,000 refrigerated kilometres to my plate, that their quality is so poor, because the varieties are selected for their capacity to withstand such substantial journeys, or that 80% of the price I pay goes to wholesalers and transport companies, not the producers.’ Produce grown using this soil-free method, on the other hand- which relies solely on a small quantity of water, enriched with organic nutrients, pumped around a closed circuit of pipes, towers and trays- is ‘produced up here, and sold locally, just down there. It barely travels at all,’ Hardy says. ‘You can select crop varieties for their flavour, not their resistance to the transport and storage chain, and you can pick them when they’re really at their best, and not before.’ No soil is exhausted, and the water that gently showers the plants’ roots every 12 minutes is recycled, so the method uses 90% less water than a classic intensive farm for the same yield."
        },
        {
          "ref": "4",
          "text": "Urban farming is not, of course, a new phenomenon. Inner-city agriculture is booming from Shanghai to Detroit and Tokyo to Bangkok. Strawberries are being grown in disused shipping containers, mushrooms in underground carparks. Aeroponic farming, he says, is ‘virtuous’. The equipment weighs little, can be installed on almost any flat surface and is cheap to buy: roughly €100 to €150 per square metre. It is cheap to run, too, consuming a tiny fraction of the electricity used by some techniques. Produce grown this way typically sells at prices that, while generally higher than those of classic intensive agriculture, are lower than soil-based organic growers. There are limits to what farmers can grow this way, of course, and much of the produce is suited to the summer months. ‘Root vegetables we cannot do, at least not yet,’ he says. ‘Radishes are OK, but carrots, potatoes, that kind of thing- the roots are simply too long. Fruit trees are obviously not an option. And beans tend to take up a lot of space for not much return.’ Nevertheless, urban farming of the kind being practised in Paris is one part of a bigger and fast-changing picture that is bringing food production closer to our lives."
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–3",
          "instructions": "Complete the sentences below. Choose NO MORE THAN TWO WORDS AND/OR A NUMBER from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Vertical tubes are used to grow strawberries,",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "and herbs. There will eventually be a daily harvest of as much as",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "in weight of fruit and vegetables. It may be possible that the farm’s produce will account for as much as 10% of the city’s",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "overall.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "are used to grow strawberries, _______ and herbs",
              "answer": [
                "lettuces"
              ],
              "wordLimit": 2,
              "explanation": "From identical vertical tubes nearby burst row upon row of lettuces; near those are aromatic herbs, such as basil, sage and peppermint.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "From identical vertical tubes nearby burst row upon row of lettuces; near those are aromatic herbs, such as basil, sage "
              }
            },
            {
              "number": 2,
              "prompt": "be a daily harvest of as much as _______",
              "answer": [
                "1,000 kg",
                "1000"
              ],
              "wordLimit": 2,
              "explanation": "kg When the remaining two thirds of the vast open area are in production, 20 staff will harvest up to 1,000 kg of perhaps 35 different varieties of fruit and vegetables, every day."
            },
            {
              "number": 3,
              "prompt": "for as much as 10% of the city’s _______ overall",
              "answer": [
                "consumption"
              ],
              "wordLimit": 2,
              "explanation": "/ food consumption ‘We’re not ever, obviously, going to feed the whole city this way,’ cautions Hardy. ‘In the urban environment you’re working with very significant practical constraints, clearly, on what you can do and where. But if enough unused space can be developed like this, there’s no reason why you shouldn’t eventually target maybe between 5% and 10% of consumption.’"
            }
          ],
          "formTitle": "Urban farming in Paris",
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 4–7",
          "instructions": "Complete the table below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Growth Selection Sale"
            },
            {
              "kind": "static",
              "text": "Intensive farming wide range of"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "used techniques pollute air quality not good varieties of fruit and vegetables chosen that can survive long",
              "noBullet": true
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
              "kind": "static",
              "text": "receive very little of overall income",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "pesticides"
              ],
              "wordLimit": 1,
              "explanation": "First, I don’t much like the fact that most of the fruit and vegetables we eat have been treated with something like 17 different pesticides",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "First, I don’t much like the fact that most of the fruit and vegetables we eat have been treated with something like 17 "
              }
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "journeys"
              ],
              "wordLimit": 1,
              "explanation": "because the varieties are selected for their capacity to withstand such substantial journeys",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "because the varieties are selected for their capacity to withstand such substantial journeys"
              }
            },
            {
              "number": 6,
              "prompt": "_______",
              "answer": [
                "producers"
              ],
              "wordLimit": 1,
              "explanation": "80% of the price I pay goes to wholesalers and transport companies, not the producers",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "80% of the price I pay goes to wholesalers and transport companies, not the producers"
              }
            },
            {
              "number": 7,
              "prompt": "Aeroponic urban farming no soil used nutrients added to water, which is recycled produce chosen because of its _______",
              "answer": [
                "flavour"
              ],
              "wordLimit": 1,
              "explanation": "/ flavor You can select crop varieties for their flavour, not their resistance to the transport and storage chain"
            }
          ],
          "formTitle": "Intensive farming versus aeroponic urban farming",
          "id": "g4"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 8–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 8,
              "prompt": "Urban farming can take place above or below ground.",
              "answer": "TRUE",
              "explanation": "Strawberries are being grown in disused shipping containers, mushrooms in underground carparks",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Strawberries are being grown in disused shipping containers, mushrooms in underground carparks"
              }
            },
            {
              "number": 9,
              "prompt": "Some of the equipment used in aeroponic farming can be made by hand. === PAGE 3 ===",
              "answer": "NOT GIVEN",
              "explanation": "The equipment weighs little, can be installed on almost any flat surface and is cheap to buy: roughly €100 to €150 per square metre",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "The equipment weighs little, can be installed on almost any flat surface and is cheap to buy: roughly €100 to €150 per s"
              }
            },
            {
              "number": 10,
              "prompt": "Urban farming relies more on electricity than some other types of farming.",
              "answer": "FALSE",
              "explanation": "It is cheap to run, too, consuming a tiny fraction of the electricity used by some techniques",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "It is cheap to run, too, consuming a tiny fraction of the electricity used by some techniques"
              }
            },
            {
              "number": 11,
              "prompt": "Fruit and vegetables grown on an aeroponic urban farm are cheaper than traditionally grown organic produce.",
              "answer": "TRUE",
              "explanation": "Produce grown this way typically sells at prices that, while generally higher than those of classic intensive agriculture, are lower than soil-based organic growers",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Produce grown this way typically sells at prices that, while generally higher than those of classic intensive agricultur"
              }
            },
            {
              "number": 12,
              "prompt": "Most produce can be grown on an aeroponic urban farm at any time of the year.",
              "answer": "FALSE",
              "explanation": "There are limits to what farmers can grow this way, of course, and much of the produce is suited to the summer months",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "There are limits to what farmers can grow this way, of course, and much of the produce is suited to the summer months"
              }
            },
            {
              "number": 13,
              "prompt": "Beans take longer to grow on an urban farm than other vegetables.",
              "answer": "NOT GIVEN",
              "explanation": "And beans tend to take up a lot of space for not much return",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "And beans tend to take up a lot of space for not much return"
              }
            }
          ],
          "id": "g8"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Forest management in Pennsylvania, USA",
      "passage": [
        {
          "ref": "A",
          "text": "A tree’s ‘value’ depends on several factors including its species, size, form, condition, quality, function, and accessibility, and depends on the management goals for a given forest. The same tree can be valued very differently by each person who looks at it. A large, straight black cherry tree has high value as timber to be cut into logs or made into furniture, but for a landowner more interested in wildlife habitat, the real value of that stem (or trunk) may be the food it provides to animals. Likewise, if the tree suffers from black knot disease, its value for timber decreases, but to a woodworker interested in making bowls, it brings an opportunity for a unique and beautiful piece of art."
        },
        {
          "ref": "B",
          "text": "In the past, Pennsylvania landowners were solely interested in the value of their trees as high-quality timber. The norm was to remove the stems of highest quality and leave behind poorly formed trees that were not as well suited to the site where they grew. This practice, called ‘high-grading’, has left a legacy of ‘low-use wood’ in the forests. Some people even call these ‘junk trees’, and they are abundant in Pennsylvania. These trees have lower economic value for traditional timber markets, compete for growth with higher-value trees, shade out desirable regeneration and decrease the health of a stand leaving it more vulnerable to poor weather and disease. Management that specifically targets low-use wood can help landowners manage these forest health issues, and wood energy markets help promote this."
        },
        {
          "ref": "C",
          "text": "Wood energy markets can accept less expensive wood material of lower quality than would be suitable for traditional timber markets. Most wood used for energy in Pennsylvania is used to produce heat or electricity through combustion. Many schools and hospitals use wood boiler systems to heat and power their facilities, many homes are primarily heated with wood, and some coal plants incorporate wood into their coal streams to produce electricity. Wood can also be gasified for electrical generation and can even be made into liquid fuels like ethanol and gasoline for lorries and cars. All these products are made primarily from low-use wood. Several tree- and plant-cutting approaches, which could greatly improve the long-term quality of a forest, focus strongly or solely on the use of wood for those markets."
        },
        {
          "ref": "D",
          "text": "One such approach is called a Timber Stand Improvement (TSI) Cut. In a TSI Cut, really poor-quality tree and plant material is cut down to allow more space, light, and other resources to the highest-valued stems that remain. Removing invasive plants might be another primary goal of a TSI Cut. The stems that are left behind might then grow in size and develop more foliage and larger crowns or tops that produce more coverage for wildlife; they have a better chance to regenerate in a less crowded environment. TSI Cuts can be tailored to one farmer’s specific management goals for his or her land."
        },
        {
          "ref": "E",
          "text": "Another approach that might yield a high amount of low-use wood is a Salvage Cut. With the many pests and pathogens visiting forests including hemlock wooly adelgid, Asian longhomed beetle, emerald ash borer, and gypsy moth, to name just a few, it is important to remember that those working in the forests can help ease these issues through cutting procedures. These types of cut reduce the number of sick trees and seek to manage the future spread of a pest problem. They leave vigorous trees that have stayed healthy enough to survive the outbreak."
        },
        {
          "ref": "F",
          "text": "A Shelterwood Cut, which only takes place in a mature forest that has already been thinned several times, involves removing all the mature trees when other seedlings have become established. This then allows the forester to decide which tree species are regenerated. It leaves a young forest where all trees are at a similar point in their growth. It can also be used to develop a two-tier forest so that there are two harvests and the money that comes in is spread out over a decade or more."
        },
        {
          "ref": "G",
          "text": "Thinnings and dense and dead wood removal for fire prevention also center on the production of low- use wood. However, it is important to remember that some retention of what many would classify as low-use wood is very important. The tops of trees that have been cut down should be left on the site so that their nutrients cycle back into the soil. In addition, trees with many cavities are extremely important habitats for insect predators like woodpeckers, bats and small mammals. They help control problem insects and increase the health and resilience of the forest. It is also important to remember that not all small trees are low-use. For example, many species like hawthorn provide food for wildlife. Finally, rare species of trees in a forest should also stay behind as they add to its structural diversity. ----- *Stand - An area covered with trees that have common features (e.g. size)"
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–18",
          "instructions": "Reading Passage 2 has seven paragraphs, A–G. Which paragraph contains the following information? You may use any letter more than once.",
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
              "number": 14,
              "prompt": "bad outcomes for a forest when people focus only on its",
              "answer": "B",
              "explanation": "In the past, Pennsylvania landowners were solely interested in the value of their trees as high-quality timber. The norm was to remove the stems of highest quality and leave behind poorly formed trees that were not as well suited to the site where they grew. This practice, called ‘high-grading’, has left a legacy of ‘low- use wood’ in the forests.",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "In the past, Pennsylvania landowners were solely interested in the value of their trees as high-quality timber. The norm"
              }
            },
            {
              "number": 15,
              "prompt": "reference to the aspects of any tree that contribute to its",
              "answer": "A",
              "explanation": "A tree’s ‘value’ depends on several factors including its species, size, form, condition, quality, function, and accessibility, and depends on the management goals for a given forest.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "A tree’s ‘value’ depends on several factors including its species, size, form, condition, quality, function, and accessi"
              }
            },
            {
              "number": 16,
              "prompt": "mention of the potential use of wood to help run vehicles",
              "answer": "C",
              "explanation": "Wood can also be gasified for electrical generation and can even be made into liquid fuels like ethanol and gasoline for lorries and cars.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Wood can also be gasified for electrical generation and can even be made into liquid fuels like ethanol and gasoline for"
              }
            },
            {
              "number": 17,
              "prompt": "examples of insects that attack trees",
              "answer": "E",
              "explanation": "With the many pests and pathogens visiting forests including hemlock wooly adelgid, Asian longhomed beetle, emerald ash borer, and gypsy moth, to name just a few,",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "With the many pests and pathogens visiting forests including hemlock wooly adelgid, Asian longhomed beetle, emerald ash "
              }
            },
            {
              "number": 18,
              "prompt": "aan alternative name for trees that produce low-use",
              "answer": "B",
              "explanation": "Some people even call these ‘junk trees’,",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Some people even call these ‘junk trees’,"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "matching",
          "label": "Questions 19–21",
          "instructions": "Look at the following purposes and the list of timber cuts below. Match each purpose with the correct timber cut, A, B or C. You may use any letter more than once.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "a TSI Cut"
            },
            {
              "key": "B",
              "text": "a Salvage Cut"
            },
            {
              "key": "C",
              "text": "a Shelterwood Cut"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "to remove trees that are diseased",
              "answer": "B",
              "explanation": "These types of cut reduce the number of sick trees and seek to manage the future spread of a pest problem.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "These types of cut reduce the number of sick trees and seek to manage the future spread of a pest problem."
              }
            },
            {
              "number": 20,
              "prompt": "to generate income across a number of years",
              "answer": "C",
              "explanation": "It can also be used to develop a two-tier forest so that there are two harvests and the money that comes in is spread out over a decade or more.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "It can also be used to develop a two-tier forest so that there are two harvests and the money that comes in is spread ou"
              }
            },
            {
              "number": 21,
              "prompt": "to create a forest whose trees are close in age",
              "answer": "C",
              "explanation": "involves removing all the mature trees when other seedlings have become established. This then allows the forester to decide which tree species are regenerated. It leaves a young forest where all trees are at a similar point in their growth.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "involves removing all the mature trees when other seedlings have become established. This then allows the forester to de"
              }
            }
          ],
          "id": "g19"
        },
        {
          "type": "completion",
          "label": "Questions 22–26",
          "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Some dead wood is removed to avoid the possibility of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 22
            },
            {
              "kind": "static",
              "text": ". The",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "static",
              "text": "from the tops of cut trees can help improve soil quality. Some damaged trees should be left, as their",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": "provide habitats for a range of creatures. Some trees that are small, such as",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": ", are a source of food for animals and insects. Any trees that are",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": "should be left to grow, as they add to the variety of species in the forest.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 22,
              "prompt": "to avoid the possibility of _______",
              "answer": [
                "fire"
              ],
              "wordLimit": 1,
              "explanation": "Thinnings and dense and dead wood removal for fire prevention also center on the production of low-use wood.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Thinnings and dense and dead wood removal for fire prevention also center on the production of low-use wood."
              }
            },
            {
              "number": 23,
              "prompt": "_______ [23]",
              "answer": [
                "nutrients"
              ],
              "wordLimit": 1,
              "explanation": "The tops of trees that have been cut down should be left on the site so that their nutrients cycle back into the soil.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "The tops of trees that have been cut down should be left on the site so that their nutrients cycle back into the soil."
              }
            },
            {
              "number": 24,
              "prompt": "trees should be left, as their _______",
              "answer": [
                "cavities"
              ],
              "wordLimit": 1,
              "explanation": "In addition, trees with many cavities are extremely important habitats for insect predators like woodpeckers, bats and small mammals.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "In addition, trees with many cavities are extremely important habitats for insect predators like woodpeckers, bats and s"
              }
            },
            {
              "number": 25,
              "prompt": "Some trees that are small, such as _______",
              "answer": [
                "hawthorn"
              ],
              "wordLimit": 1,
              "explanation": "For example, many species like hawthorn provide food for wildlife.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "For example, many species like hawthorn provide food for wildlife."
              }
            },
            {
              "number": 26,
              "prompt": "Any trees that are _______",
              "answer": [
                "rare"
              ],
              "wordLimit": 1,
              "explanation": "Finally, rare species of trees in a forest should also stay behind as they add to its structural diversity.",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Finally, rare species of trees in a forest should also stay behind as they add to its structural diversity."
              }
            }
          ],
          "id": "g22"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Conquering Earth’s space junk problem",
      "passage": [
        {
          "ref": "A",
          "text": "Last year, commercial companies, military and civil departments and amateurs sent more than 400 satellites into orbit, over four times the yearly average in the previous decade. Numbers could rise even more sharply if leading space companies follow through on plans to deploy hundreds to thousands of large constellations of satellites to space in the next few years. All that traffic can lead to disaster. Ten years ago, a US commercial Iridium satellite smashed into an inactive Russian communications satellite called Cosmos-2251, creating thousands of new pieces of space shrapnel that now threaten other satellites in low Earth orbit - the zone stretching up to 2,000 kilometres in altitude. Altogether, there are roughly 20,000 human-made objects in orbit, from working satellites to small rocket pieces. And satellite operators can’t steer away from every potential crash, because each move consumes time and fuel that could otherwise be used for the spacecraft’s main job."
        },
        {
          "ref": "B",
          "text": "Concern about space junk goes back to the beginning of the satellite era, but the number of objects in orbit is rising so rapidly that researchers are investigating new ways of attacking the problem. Several teams are trying to improve methods for assessing what is in orbit, so that satellite operators can work more efficiently in ever-more-crowded space. Some researchers are now starting to compile a massive data set that includes the best possible information on where everything is in orbit. Others are developing taxonomies of space - working on measuring properties such as the shape and size of an object, so that satellite operators know how much to worry about what’s coming their way. The alternative, many say, is unthinkable. Just a few uncontrolled space crashes could generate enough debris to set off a runaway cascade of fragments, rendering near-Earth space unusable. ‘If we go on like this, we will reach a point of no return,’ says Carolin Frueh, an astrodynamical researcher at Purdue University in West Lafayette, Indiana."
        },
        {
          "ref": "C",
          "text": "Even as our ability to monitor space objects increases, so too does the total number of items in orbit. That means companies, governments and other players in space are collaborating in new ways to avoid a shared threat. International groups such as the Inter-Agency Space Debris Coordination Committee have developed guidelines on space sustainability. Those include inactivating satellites at the end of their useful life by venting pressurised materials or leftover fuel that might lead to explosions. The intergovernmental groups also advise lowering satellites deep enough into the atmosphere that they will burn up or disintegrate within 25 years. But so far, only about half of all missions have abided by this 25-year goal, says Holger Krag, head of the European Space Agency’s space-debris office in Darmstadt, Germany. Operators of the planned large constellations of satellites say they will be responsible stewards in their enterprises in space, but Krag worries that problems could increase, despite their best intentions. ‘What happens to those that fail or go bankrupt?’ he asks. They are probably not going to spend money to remove their satellites from space.’"
        },
        {
          "ref": "D",
          "text": "In theory, given the vastness of space, satellite operators should have plenty of room for all these missions to fly safely without ever nearing another object. So some scientists are tackling the problem of space junk by trying to find out where all the debris is to a high degree of precision. That would alleviate the need for many of the unnecessary manoeuvres that are carried out to avoid potential collisions. ‘If you knew precisely where everything was, you would almost never have a problem,’ says Marlon Sorge, a space-debris specialist at the Aerospace Corporation in El Segundo, California."
        },
        {
          "ref": "E",
          "text": "The field is called space traffic management, because it’s similar to managing traffic on the roads or in the air. Think about a busy day at an airport, says Moriba Jah, an astrodynamicist at the University of Texas at Austin: planes line up in the sky, landing and taking off close to one another in a carefully choreographed routine. Air-traffic controllers know the location of the planes down to one metre in accuracy. The same can’t be said for space debris. Not all objects in orbit are known, and even those included in databases are not tracked consistently."
        },
        {
          "ref": "F",
          "text": "An additional problem is that there is no authoritative catalogue that accurately lists the orbits of all known space debris. Jah illustrates this with a web-based database that he has developed. It draws on several sources, such as catalogues maintained by the US and Russian governments, to visualise where objects are in space. When he types in an identifier for a particular space object, the database draws a purple line to designate its orbit. Only this doesn’t quite work for a number of objects, such as a Russian rocket body designated in the database as object number 32280. When Jah enters that number, the database draws two purple lines: the US and Russian sources contain two completely different orbits for the same object. Jah says that it is almost impossible to tell which is correct, unless a third source of information made it possible to cross-correlate. Jah describes himself as a space environmentalist: ‘I want to make space a place that is safe to operate, that is free and useful for generations to come.’ Until that happens, he argues, the space community will continue devolving into a tragedy in which all spaceflight operators are polluting a common resource."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 27–31",
          "instructions": "Reading Passage 3 has six sections, A–F. Which section contains the following information?",
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
              "number": 27,
              "prompt": "a reference to the cooperation that takes place to try and",
              "answer": "C",
              "explanation": "That means companies, governments and other players in space are collaborating in new ways to avoid a shared threat.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "That means companies, governments and other players in space are collaborating in new ways to avoid a shared threat."
              }
            },
            {
              "number": 28,
              "prompt": "an explanation of a person’s aims",
              "answer": "F",
              "explanation": "Jah describes himself as a space environmentalist: ‘I want to make space a place that is safe to operate, that is free and useful for generations to come.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "Jah describes himself as a space environmentalist: ‘I want to make space a place that is safe to operate, that is free a"
              }
            },
            {
              "number": 29,
              "prompt": "a description of a major collision that occurred in space",
              "answer": "A",
              "explanation": "Ten years ago, a US commercial Iridium satellite smashed into an inactive Russian communications satellite called Cosmos-2251, creating thousands of new pieces of space shrapnel that now threaten other satellites in low Earth orbit",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "Ten years ago, a US commercial Iridium satellite smashed into an inactive Russian communications satellite called Cosmos"
              }
            },
            {
              "number": 30,
              "prompt": "a comparison between tracking objects in space and the",
              "answer": "E",
              "explanation": "Air-traffic controllers know the location of the planes down to one metre in accuracy. The same can’t be said for space debris. Not all objects in orbit are known, and even those included in databases are not tracked consistently.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "Air-traffic controllers know the location of the planes down to one metre in accuracy. The same can’t be said for space "
              }
            },
            {
              "number": 31,
              "prompt": "a reference to efforts to classify space junk",
              "answer": "B",
              "explanation": "Others are developing taxonomies of space - working on measuring properties such as the shape and size of an object, so that satellite operators know how much to worry about what’s coming their way.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "Others are developing taxonomies of space - working on measuring properties such as the shape and size of an object, so "
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 32–35",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "The committee gives advice on how the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "of space can be achieved. The committee advises that when satellites are no longer active, any unused",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "or pressurised material that could cause",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "should be removed. Although operators of large satellite constellations accept that they have obligations as stewards of space, Holger Krag points out that the operators that become",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "are unlikely to prioritise removing their satellites from space.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 32,
              "prompt": "committee gives advice on how the _______",
              "answer": [
                "sustainability"
              ],
              "wordLimit": 1,
              "explanation": "International groups such as the Inter-Agency Space Debris Coordination Committee have developed guidelines on space sustainability.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "International groups such as the Inter-Agency Space Debris Coordination Committee have developed guidelines on space sus"
              }
            },
            {
              "number": 33,
              "prompt": "are no longer active, any unused _______",
              "answer": [
                "fuel"
              ],
              "wordLimit": 1,
              "explanation": "Those include inactivating satellites at the end of their useful life by venting pressurised materials or leftover fuel",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "Those include inactivating satellites at the end of their useful life by venting pressurised materials or leftover fuel"
              }
            },
            {
              "number": 34,
              "prompt": "material that could cause _______",
              "answer": [
                "explosions"
              ],
              "wordLimit": 1,
              "explanation": "that might lead to explosions",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "that might lead to explosions"
              }
            },
            {
              "number": 35,
              "prompt": "out that the operators that become _______",
              "answer": [
                "bankrupt"
              ],
              "wordLimit": 1,
              "explanation": "‘What happens to those that fail or go bankrupt?’",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "‘What happens to those that fail or go bankrupt?’"
              }
            }
          ],
          "formTitle": "The Inter-Agency Space Debris Coordination Committee",
          "id": "g32"
        },
        {
          "type": "matching",
          "label": "Questions 36–40",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, A, B, C or D. You may use any letter more than once.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Carolin Frueh"
            },
            {
              "key": "B",
              "text": "Holger Krag"
            },
            {
              "key": "C",
              "text": "Marlon Sorge"
            },
            {
              "key": "D",
              "text": "Moriba Jah"
            }
          ],
          "questions": [
            {
              "number": 36,
              "prompt": "Knowing the exact location of space junk would help prevent any possible",
              "answer": "C",
              "explanation": "‘If you knew precisely where everything was, you would almost never have a problem,’ says Marlon Sorge",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "‘If you knew precisely where everything was, you would almost never have a problem,’ says Marlon Sorge"
              }
            },
            {
              "number": 37,
              "prompt": "Space should be available to everyone and should be preserved for the",
              "answer": "D",
              "explanation": "Jah describes himself as a space environmentalist: ‘I want to make space a place that is safe to operate, that is free and useful for generations to come.’",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "Jah describes himself as a space environmentalist: ‘I want to make space a place that is safe to operate, that is free a"
              }
            },
            {
              "number": 38,
              "prompt": "A recommendation regarding satellites is widely ignored.",
              "answer": "B",
              "explanation": "But so far, only about half of all missions have abided by this 25-year goal, says Holger Krag",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "But so far, only about half of all missions have abided by this 25-year goal, says Holger Krag"
              }
            },
            {
              "number": 39,
              "prompt": "There is conflicting information about where some satellites are in space.",
              "answer": "D",
              "explanation": "When Jah enters that number, the database draws two purple lines: the US and Russian sources contain two completely different orbits for the same object. Jah says that it is almost impossible to tell which is correct, unless a third source of information made it possible to cross-correlate.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "When Jah enters that number, the database draws two purple lines: the US and Russian sources contain two completely diff"
              }
            },
            {
              "number": 40,
              "prompt": "There is a risk we will not be able to undo the damage that occurs in",
              "answer": "A",
              "explanation": "‘If we go on like this, we will reach a point of no return,’ says Carolin Frueh",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "‘If we go on like this, we will reach a point of no return,’ says Carolin Frueh"
              }
            }
          ],
          "id": "g36"
        }
      ]
    }
  ]
}
$c18t1r$,
  true
);
