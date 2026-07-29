DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 19' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 19',
  'Test 4',
  'academic',
  3600,
  $c19t4r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The impact of climate change on butterflies in Britain",
      "passage": [
        {
          "ref": "1",
          "text": "According to conservationists, populations of around two thirds of butterfly species have declined in Britain over the past 40 years. If this trend continues, it might have unpredictable knock-on effects for other species in the ecosystem. Butterfly eggs develop into caterpillars and these insects, which are the second stage in a new butterfly’s lifecycle, consume vast quantities of plant material, and in turn act as prey for birds as well as bats and other small mammals. Only by arming themselves with an understanding of why butterfly numbers are down can conservationists hope to halt or reverse the decline."
        },
        {
          "ref": "2",
          "text": "Butterflies prefer outdoor conditions to be ‘just right’, which means neither too hot nor too cold. Under the conditions of climate change, the temperature at any given time in summer is generally getting warmer, leaving butterflies with the challenge of how to deal with this. One of the main ways in which species are ensuring conditions suit them is by changing the time of year at which they are active and reproduce. Scientists refer to the timing of such lifecycle events as ‘phenology’, so when an animal or plant starts to do something earlier in the year than it usually does, it is said to be ‘advancing its phenology’."
        },
        {
          "ref": "3",
          "text": "These advances have been observed already in a wide range of butterflies - indeed, most species are advancing their phenology to some extent. In Britain, as the average spring temperature has increased by roughly 0.5°C over the past 20 years, species have advanced by between three days and a week on average, to keep in line with cooler temperatures. Is this a sign that butterflies are well equipped to cope with climate change, and readily adjust to new temperatures? Or are these populations under stress, being dragged along unwillingly by unnaturally fast changes? The answer is still unknown, but a new study is seeking to answer these questions."
        },
        {
          "ref": "4",
          "text": "First, the researchers pulled together data from millions of records that had been submitted by butterfly enthusiasts-people who spend their free time observing the activities of different species. This provided information on 130 species of butterflies in Great Britain every year for a 20-year period. They then estimated the abundance and distribution of each species across this time, along"
        },
        {
          "ref": "5",
          "text": "with how far north in the country they had moved. The data also, crucially, allowed researchers to estimate subtle changes in what time of the year each species was changing into an adult butterfly. Analyzing the trends in each variable, the researchers discovered that species with more flexible lifecycles were more likely to be able to benefit from an earlier emergence driven by climate change. Some species are able to go from caterpillar to butterfly twice or more per year, so that the individual butterflies you see flying in the spring are the grandchildren or great-grandchildren of the individuals seen a year previously."
        },
        {
          "ref": "6",
          "text": "Among these species, researchers observed that those which have been advancing their phenology the most over the 20-year study period also had the most positive trends in abundance, distribution and northwards extent. For these species, such as Britain’s tiniest butterfly, the dainty Small Blue, whose colonies are up to a hundred strong, some develop into butterflies early in spring, allowing their summer generations to complete another reproductive cycle by autumn so that more population growth occurs."
        },
        {
          "ref": "7",
          "text": "Other species, however, are less flexible and restricted to a single reproductive cycle per year. For these species, there was no evidence of any benefit to emerging earlier. Indeed, worryingly, it was found that the species in this group that specialize in very specific habitat types, often related to the caterpillar’s preferred diet, actually tended to be most at harm from advancing phenology. The beautiful High Brown Fritillary, often described as Britain’s most endangered butterfly, is in this group. It is found only in coppiced woodland and limestone pavement habitats. It is also a single- generation butterfly that has advanced its phenology. This suggests that climate change, while undoubtedly not the sole cause, might have played a part in the downfall of this species. All is not lost, however. Many of Britain’s single-generation species show the capacity, in continental Europe, to add a second generation in years that are sufficiently warm. Therefore, as the climate continues to warm, species like the Silver-studded Blue might be able to switch to multiple generations in the UK as well, and so begin to extract benefits from the additional warmth, potentially leading to population increases."
        },
        {
          "ref": "8",
          "text": "More immediately, conservationists can arm themselves with all this knowledge to spot the warning signs of species that may be at risk. The White Admiral of southern England, a much sought-after butterfly, experienced a significant increase in numbers from the 1920s but has shown a considerable decline in the past 20 years. This may be because the caterpillar exists solely on a diet of a plant called honeysuckle. But it is also likely to be due to climate change."
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
              "prompt": "Forty years ago, there were fewer butterflies in Britain than at present.",
              "answer": "FALSE",
              "explanation": "According to conservationists, populations of around two thirds of butterfly species have declined in Britain over the past 40 years.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "According to conservationists, populations of around two thirds of butterfly species have declined in Britain over the p"
              }
            },
            {
              "number": 2,
              "prompt": "Caterpillars are eaten by a number of different predators.",
              "answer": "TRUE",
              "explanation": "Butterfly eggs develop into caterpillars and these insects, which are the second stage in a new butterfly’s lifecycle, consume vast quantities of plant material, and in turn act as prey for birds as well as bats and other small mammals.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "Butterfly eggs develop into caterpillars and these insects, which are the second stage in a new butterfly’s lifecycle, c"
              }
            },
            {
              "number": 3,
              "prompt": "‘Phenology’ is a term used to describe a creature’s ability to alter the location of a lifecycle event.",
              "answer": "FALSE",
              "explanation": "Scientists refer to the timing of such lifecycle events as ‘phenology’, so when an animal or plant starts to do something earlier in the year than it usually does, it is said to be ‘advancing its phenology’.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Scientists refer to the timing of such lifecycle events as ‘phenology’, so when an animal or plant starts to do somethin"
              }
            },
            {
              "number": 4,
              "prompt": "Some species of butterfly have a reduced lifespan due to spring temperature increases. === PAGE 4 ===",
              "answer": "NOT GIVEN",
              "explanation": "In Britain, as the average spring temperature has increased by roughly 0.5°C over the past 20 years, species have advanced by between three days and a week on average, to keep in line with cooler temperatures. Is this a sign that butterflies are well equipped to cope with climate change, and readily adjust to new temperatures?",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "In Britain, as the average spring temperature has increased by roughly 0.5°C over the past 20 years, species have advanc"
              }
            },
            {
              "number": 5,
              "prompt": "There is a clear reason for the adaptations that butterflies are making to climate change.",
              "answer": "FALSE",
              "explanation": "Is this a sign that butterflies are well equipped to cope with climate change, and readily adjust to new temperatures? Or are these populations under stress, being dragged along unwillingly by unnaturally fast changes? The answer is still unknown, but a new study is seeking to answer these questions.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "Is this a sign that butterflies are well equipped to cope with climate change, and readily adjust to new temperatures? O"
              }
            },
            {
              "number": 6,
              "prompt": "The data used in the study was taken from the work of amateur butterfly watchers.",
              "answer": "TRUE",
              "explanation": "First, the researchers pulled together data from millions of records that had been submitted by butterfly enthusiasts-people who spend their free time observing the activities of different species.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "First, the researchers pulled together data from millions of records that had been submitted by butterfly enthusiasts-pe"
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–13",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "* completes more than one reproductive cycle per year"
            },
            {
              "kind": "subheader",
              "text": "The High Brown Fritillary"
            },
            {
              "kind": "subheader",
              "text": "*has one reproductive cycle"
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
              "kind": "subheader",
              "text": "The Silver-studded Blue"
            },
            {
              "kind": "question",
              "number": 11
            },
            {
              "kind": "subheader",
              "text": "The White Admiral"
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
              "prompt": "* lives in large _______",
              "answer": [
                "colonies"
              ],
              "wordLimit": 1,
              "explanation": "For these species, such as Britain’s tiniest butterfly, the dainty Small Blue, whose colonies are up to a hundred strong",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "For these species, such as Britain’s tiniest butterfly, the dainty Small Blue, whose colonies are up to a hundred strong"
              }
            },
            {
              "number": 8,
              "prompt": "* first appears at the start of _______",
              "answer": [
                "spring"
              ],
              "wordLimit": 1,
              "explanation": "For these species, such as Britain’s tiniest butterfly, the dainty Small Blue, whose colonies are up to a hundred strong, some develop into butterflies early in spring,",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "For these species, such as Britain’s tiniest butterfly, the dainty Small Blue, whose colonies are up to a hundred strong"
              }
            },
            {
              "number": 9,
              "prompt": "*is considered to be more _______ than other species",
              "answer": [
                "endangered"
              ],
              "wordLimit": 1,
              "explanation": "The beautiful High Brown Fritillary, often described as Britain’s most endangered butterfly, is in this group.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "The beautiful High Brown Fritillary, often described as Britain’s most endangered butterfly, is in this group."
              }
            },
            {
              "number": 10,
              "prompt": "*its caterpillars occupy a limited range of _______",
              "answer": [
                "habitats"
              ],
              "wordLimit": 1,
              "explanation": "It is found only in coppiced woodland and limestone pavement habitats.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "It is found only in coppiced woodland and limestone pavement habitats."
              }
            },
            {
              "number": 11,
              "prompt": "*is already able to reproduce twice a year in warm areas of _______",
              "answer": [
                "Europe"
              ],
              "wordLimit": 1,
              "explanation": "Many of Britain’s single-generation species show the capacity, in continental Europe, to add a second generation in years that are sufficiently warm.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "Many of Britain’s single-generation species show the capacity, in continental Europe, to add a second generation in year"
              }
            },
            {
              "number": 12,
              "prompt": "*is found in _______ areas of England",
              "answer": [
                "southern"
              ],
              "wordLimit": 1,
              "explanation": "The White Admiral of southern England",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "The White Admiral of southern England"
              }
            },
            {
              "number": 13,
              "prompt": "*both climate change and the _______ of the caterpillar are possible reasons for decline",
              "answer": [
                "diet"
              ],
              "wordLimit": 1,
              "explanation": "This may be because the caterpillar exists solely on a diet of a plant called honeysuckle. But it is also likely to be due to climate change.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "This may be because the caterpillar exists solely on a diet of a plant called honeysuckle. But it is also likely to be d"
              }
            }
          ],
          "formTitle": "The Small Blue",
          "id": "g7"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Deep-sea Mining",
      "passage": [
        {
          "ref": "A",
          "text": "When Professor Mat IJpton found that a microbe from a deep-sea sponge was killing pathogenic bugs in his laboratory, he realised it could be a breakthrough in the fight against antibiotic- resistant superbugs, which are responsible for thousands of deaths a year in the UK alone. Further tests confirmed that an antibiotic from the sponge bacteria, found living more than 700 metres under the sea at the Rockall trough in the north-east Atlantic, was previously unknown to science, boosting its potential as a life-saving medicine. But Upton, and other scientists who view the deep ocean and its wealth of unique and undocumented species as a prospecting ground for new medicines, fear such potential will be lost in the rush to exploit the deep sea’s equally rich metal and mineral resources."
        },
        {
          "ref": "B",
          "text": "‘We’re looking at the bioactive potential of marine resources, to see if there are any more medicines or drugs down there before we destroy it for ever,’ says Upton, a medical microbiologist at the University of Plymouth. Ile is among many scientists urging a halt to deep-sea mining, asking for time to weigh up the pros and cons. ‘In sustainability terms, this could be a better way of exploiting the economic potential of the deep sea,’ he argues. Oceanographers using remotely operated vehicles have spotted many new species. Among them have been sea cucumbers with tails allowing them to sail along the ocean floor, and a rare ‘Dumbo’octopus, found 3,000 metres under the Pacific Ocean, off the coast of California. Any one of these could offer lifesaving potential. Upton estimates it could take up to a decade for a newly discovered antibiotic to become a medicine but the race towards commercial mining in the ocean abyss has already begun."
        },
        {
          "ref": "C",
          "text": "The deep sea contains more nickel, cobalt and rare earth metals than all land reserves combined, according to the US Geological Survey. Mining corporations argue that deep-sea exploration could help diversify the supply of metals and point to the fact that demand for resources such as copper, aluminum, cobalt for electric car batteries and other metals to power technology and smartphones, is soaring. They say that deep-sea mining could yield far superior ore to land mining with little, if any, waste. Different methods of extraction exist, but most involve employing some form of converted machinery previously used in terrestrial mining to excavate materials from the sea floor, at depths of up to 6,000 meters, then drawing a seawater slurry, containing rock and other solid particles, from the sea floor to ships on the surface. The slurry is then ‘de-watered ’ and transferred to another vessel for shipping. Extracted seawater is pumped back down and discharged close to the sea floor."
        },
        {
          "ref": "D",
          "text": "But environmental and legal groups have urged caution, arguing there are potentially massive and unknown ramifications for the environment and for nearby communities, and that the global regulatory framework is not yet drafted. ‘Despite arising in the last half century, the “new global gold rush” of deep-sea mining shares many features with past resource scrambles -including a general disregard for environmental and social impacts, and the marginalisation of indigenous peoples and their rights,a paper, written by Julie Hunter and Julian Aguon, from Blue Ocean Law,and Pradeep Singh, from the Center for Marine Environmental Sciences, Bremen, argues, ‘flic authors say that knowledge of the deep seabed remains extremely limited.‘The surface of the Moon, Mars and even Venus have all been mapped and studied in much greater detail, leading marine scientists to commonly remark that, with respect to the deep sea, “We don’t yet know what we need to know”."
        },
        {
          "ref": "E",
          "text": "Scientific research-including a recent paper in Marine Policy journal has suggested the deep seabed, and hydrothermal vents, which are created when seawater meets volcanic magma, have crucial impacts upon biodiversity and the global climate. The mineral-rich vents and their surrounds are also home to many well-known animals including crustaceans, tubeworms, clams, slugs, anemones and fish. ‘It is becoming increasingly clear that deep- sea mining poses a grave threat to these vital seabed functions,’ the paper says. ‘Extraction methods would produce large sediment plumes and involve the discharge of waste back into the ocean, significantly disturbing seafloor environments,’ the paper continues.‘On deep sea vents, scientists are clear,’ says Dr Jon Copley of the National Oceanography Centre, Southampton: ‘We don’t want mining on them.’"
        },
        {
          "ref": "F",
          "text": "The oceans occupy around 70% of the planet and arc relatively unexplored, says Mike Johnston, chief executive of Nautilus, a Canadian underwater exploration company: ‘It makes sense to explore this untapped potential in an environmentally sustainable way, instead of continually looking at the fast depleting land resources of the planet to meet society’s rising needs.’Those leading the global rush to place giant mining machines thousands of metres below the sea surface say the environmental impacts will be far lower than on land. But critics say exotic and little-known ecosystems in the deep oceans could be destroyed and must be protected. ‘Mining will be the greatest assault on deep-sea ecosystems ever inflicted by humans,’ according to hydrothermal vent expert Vcrena TunniclifTe, at the University of Victoria in Canada. She argues that active vents must be off-limits for mining to protect the new knowledge and biotechnology spin-offs they can deliver, and that strict controls must be in place elsewhere."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–17",
          "instructions": "Reading Passage 2 has six paragraphs, A–F. Which paragraph contains the following information?",
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
              "prompt": "reference to the rapidly increasing need for one raw",
              "answer": "C",
              "explanation": "Mining corporations argue that deep-sea exploration could help diversify the supply of metals and point to the fact that demand for resources such as copper, aluminum, cobalt for electric car batteries and other metals to power technology and smartphones, is soaring.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Mining corporations argue that deep-sea exploration could help diversify the supply of metals and point to the fact that"
              }
            },
            {
              "number": 15,
              "prompt": "a rough estimate of the area of the Earth covered by the",
              "answer": "F",
              "explanation": "The oceans occupy around 70% of the planet and arc relatively unexplored, says Mike Johnston, chief executive of Nautilus, a Canadian underwater exploration company",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "The oceans occupy around 70% of the planet and arc relatively unexplored, says Mike Johnston, chief executive of Nautilu"
              }
            },
            {
              "number": 16,
              "prompt": "how a particular underwater habitat, where minerals and",
              "answer": "E",
              "explanation": "Scientific research-including a recent paper in Marine Policy journal has suggested the deep seabed, and hydrothermal vents, which are created when seawater meets volcanic magma, have crucial impacts upon biodiversity and the global climate. The mineral-rich vents and their surrounds are also home to many well-known animals including crustaceans, tubeworms, clams, slugs, anemones and fish.",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Scientific research-including a recent paper in Marine Policy journal has suggested the deep seabed, and hydrothermal ve"
              }
            },
            {
              "number": 17,
              "prompt": "reference to the fact that the countries of the world have",
              "answer": "D",
              "explanation": "But environmental and legal groups have urged caution, arguing there are potentially massive and unknown ramifications for the environment and for nearby communities, and that the global regulatory framework is not yet drafted.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "But environmental and legal groups have urged caution, arguing there are potentially massive and unknown ramifications f"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "matching",
          "label": "Questions 18–23",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person or people, A-E. You may use any letter more than once.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Professor Mat Upton"
            },
            {
              "key": "B",
              "text": "Julie Hunter, Julian Aguon and Pradeep Singh"
            },
            {
              "key": "C",
              "text": "Dr Jon Copley"
            },
            {
              "key": "D",
              "text": "Mike Johnston"
            },
            {
              "key": "E",
              "text": "Verena Tunnicliffe"
            }
          ],
          "questions": [
            {
              "number": 18,
              "prompt": "A move away from the exploration of heavily mined reserves on",
              "answer": "D",
              "explanation": "The oceans occupy around 70% of the planet and arc relatively unexplored, says Mike Johnston, chief executive of Nautilus, a Canadian underwater exploration company: ‘It makes sense to explore this untapped potential in an environmentally sustainable way, instead of continually looking at the fast depleting land resources of the planet to meet society’s rising needs.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "The oceans occupy around 70% of the planet and arc relatively unexplored, says Mike Johnston, chief executive of Nautilu"
              }
            },
            {
              "number": 19,
              "prompt": "The negative effects of undersea exploration on local areas and",
              "answer": "B",
              "explanation": "‘Despite arising in the last half century, the “new global gold rush” of deep- sea mining shares many features with past resource scrambles -including a general disregard for environmental and social impacts, and the marginalisation of indigenous peoples and their rights,a paper, written by Julie Hunter and Julian Aguon, from Blue Ocean Law,and Pradeep Singh, from the Center for Marine Environmental Sciences, Bremen, argues",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "‘Despite arising in the last half century, the “new global gold rush” of deep- sea mining shares many features with past"
              }
            },
            {
              "number": 20,
              "prompt": "There are more worthwhile things to extract from the sea than",
              "answer": "A",
              "explanation": "But Upton, and other scientists who view the deep ocean and its wealth of unique and undocumented species as a prospecting ground for new medicines, fear such potential will be lost in the rush to exploit the deep sea’s equally rich metal and mineral resources.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "But Upton, and other scientists who view the deep ocean and its wealth of unique and undocumented species as a prospecti"
              }
            },
            {
              "number": 21,
              "prompt": "No other form of human exploration will have such a",
              "answer": "E",
              "explanation": "‘Mining will be the greatest assault on deep-sea ecosystems ever inflicted by humans,’ according to hydrothermal vent expert Vcrena TunniclifTe, at the University of Victoria in Canada.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "‘Mining will be the greatest assault on deep-sea ecosystems ever inflicted by humans,’ according to hydrothermal vent ex"
              }
            },
            {
              "number": 22,
              "prompt": "More is known about outer space than about what lies beneath",
              "answer": "B",
              "explanation": "Julie Hunter and Julian Aguon, from Blue Ocean Law,and Pradeep Singh, from the Center for Marine Environmental Sciences, Bremen, argues, ‘flic authors say that knowledge of the deep seabed remains extremely limited.‘The surface of the Moon, Mars and even Venus have all been mapped and studied in much greater detail, leading marine scientists to commonly remark that, with respect to the deep sea, “We don’t yet know what we need to know”.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "Julie Hunter and Julian Aguon, from Blue Ocean Law,and Pradeep Singh, from the Center for Marine Environmental Sciences,"
              }
            },
            {
              "number": 23,
              "prompt": "There is one marine life habitat where experts agree mining",
              "answer": "C",
              "explanation": "‘On deep sea vents, scientists are clear,’ says Dr Jon Copley of the National Oceanography Centre, Southampton: ‘We don’t want mining on them.’",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "‘On deep sea vents, scientists are clear,’ says Dr Jon Copley of the National Oceanography Centre, Southampton: ‘We don’"
              }
            }
          ],
          "id": "g18"
        },
        {
          "type": "completion",
          "label": "Questions 24–26",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": ". The extraction is often done by adapting the",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": "that has already been used to work on land. The method of excavation involves removing the seawater from the slurry that is brought up to ships and returning it to the seabed. However, concerned groups strongly believe that",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": "is necessary due to the possible number of unidentified consequences.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 24,
              "prompt": "be removed without producing much _______",
              "answer": [
                "waste"
              ],
              "wordLimit": 1,
              "explanation": "They say that deep-sea mining could yield far superior ore to land mining with little, if any, waste.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "They say that deep-sea mining could yield far superior ore to land mining with little, if any, waste."
              }
            },
            {
              "number": 25,
              "prompt": "is often done by adapting the _______",
              "answer": [
                "machinery"
              ],
              "wordLimit": 1,
              "explanation": "Different methods of extraction exist, but most involve employing some form of converted machinery previously used in terrestrial mining to excavate materials from the sea floor",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Different methods of extraction exist, but most involve employing some form of converted machinery previously used in te"
              }
            },
            {
              "number": 26,
              "prompt": "groups strongly believe that _______",
              "answer": [
                "caution"
              ],
              "wordLimit": 1,
              "explanation": "But environmental and legal groups have urged caution, arguing there are potentially massive and unknown ramifications for the environment and for nearby communities, and that the global regulatory framework is not yet drafted.",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "But environmental and legal groups have urged caution, arguing there are potentially massive and unknown ramifications f"
              }
            }
          ],
          "formTitle": "Mining the sea floor",
          "id": "g24"
        }
      ]
    },
    {
      "id": "p3",
      "title": "The Unselfish Gene A psychologist gives his view on how humans became self-centred",
      "passage": [
        {
          "ref": "1",
          "text": "There has long been a general assumption that human beings are essentially selfish. We’re apparently ruthless, with strong impulses to compete against each other for resources and to accumulate power and possessions. If we are kind to one another, it’s usually because we have ulterior motives. If we are good, it’s only because we have managed to control and transcend our innate selfishness and brutality."
        },
        {
          "ref": "2",
          "text": "This bleak view of human nature is closely associated with the science writer Richard Dawkins, whose 1976 book The Selfish Gene became popular because it fitted so well with-and helped to justify-the competitive and individualistic ethos that was so prevalent in late 20th-century societies. Like many others, Dawkins justifies his views with reference to the field of evolutionary psychology. Evolutionary psychology theorises that present-day human traits developed in prehistoric times, during what is termed the ‘environment of evolutionary adaptedness’."
        },
        {
          "ref": "3",
          "text": "Prehistory is usually seen as a period of intense competition, when life was such a brutal battle that only those with traits such as selfishness, aggression and ruthlessness survived. And because survival depended on access to resources - such as rivers, forests and animals - there was bound to be conflict between rival groups, which led to the development of traits such as racism and warfare. This seems logical. But, in fact, the assumption on which this all rests - that prehistoric life was a desperate struggle for survival - is false."
        },
        {
          "ref": "4",
          "text": "It’s important to remember that in the prehistoric era, the world was very sparsely populated. According to some estimates, around 15,000 years ago, the population of Europe was only 29,000, and the population of the whole world was less than half a million. Humans at that time were hunter-gatherers: people who lived by hunting wild animals and collecting wild plants. With such small population densities, it seems unlikely that prehistoric hunter-gatherer groups had to compete against each other for resources or had any need to develop ruthlessness and competitiveness, or to go to war."
        },
        {
          "ref": "5",
          "text": "There is significant evidence to back this notion from contemporary hunter-gatherer groups, who live in the same way as prehistoric humans did. As the anthropologist Bruce Knauft has remarked,"
        },
        {
          "ref": "6",
          "text": "hunter-gatherers are characterized by ‘extreme political and sexual egalitarianism’. Knauft has observed that individuals in such groups don’t accumulate property or possessions and have an ethical obligation to share everything. They also have methods of preserving egalitarianism by ensuring that disparities of status don’t arise."
        },
        {
          "ref": "7",
          "text": "The !Kung people of southern Africa, for example, swap arrows before going hunting and when an animal is killed, the acclaim does not go to the person who fired the arrow, but to the person the arrow belongs to. And if a person becomes too domineering, the other members of the group ostracise them, exiling the offender from society. Typically in such groups, men do not dictate what women do. Women in hunter-gatherer groups worldwide often benefit from a high level of autonomy, being able to select their own marriage partners, decide what work they do and work whenever they choose to. And if a marriage breaks down, they have custody rights over their children."
        },
        {
          "ref": "8",
          "text": "Many anthropologists believe that societies such as the !Kung were normal until a few thousand years ago, when population growth led to the development of agriculture and a settled lifestyle. In view of the above, there seems little reason to assume that traits such as racism, warfare and male domination should have been selected by evolution-as they would have been of little benefit in the prehistoric era. Individuals who behaved selfishly and ruthlessly would be less likely to survive, since they would have been ostracised from their groups."
        },
        {
          "ref": "9",
          "text": "It makes more sense, then, to see traits such as cooperation, egalitarianism, altruism and peacefulness as innate characteristics of human beings. These were the traits that were prevalent in human life for tens of thousands of years. So presumably these traits are still strong in us now. But if prehistoric life wasn’t really as brutal as has often been assumed, why do modern humans behave so selfishly and ruthlessly? Perhaps these negative traits should be seen as a later development, the result of environmental and psychological factors. Research has shown repeatedly that when the natural habitats of primates such as apes and gorillas are disrupted, they tend to become more violent and hierarchical."
        },
        {
          "ref": "10",
          "text": "So, it could well be that the same thing has happened to us. I believe that the end of the hunter- gatherer lifestyle and the advent of farming was connected to a psychological change that occurred in some groups of people. There was a new sense of individuality and separateness, which led to a new selfishness, and ultimately to hierarchical societies, patriarchy and warfare. At any rate,"
        },
        {
          "ref": "11",
          "text": "these negative traits appear to have developed so recently that it doesn’t seem feasible to explain them in adaptive or evolutionary terms."
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
              "prompt": "What is the writer doing in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "setting out two opposing views about human nature"
                },
                {
                  "key": "B",
                  "text": "justifying his opinion about our tendency to be greedy"
                },
                {
                  "key": "C",
                  "text": "describing a commonly held belief about people’s behaviour"
                },
                {
                  "key": "D",
                  "text": "explaining why he thinks that humans act in a selfish manner"
                }
              ],
              "answer": "C",
              "explanation": "There has long been a general assumption that human beings are essentially selfish.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "There has long been a general assumption that human beings are essentially selfish."
              }
            },
            {
              "number": 28,
              "prompt": "What point is made about Richard Dawkins’ book The Selfish Gene?",
              "options": [
                {
                  "key": "A",
                  "text": "Its appeal lay in the radical nature of its ideas."
                },
                {
                  "key": "B",
                  "text": "Its success was due to the scientific support it offered."
                },
                {
                  "key": "C",
                  "text": "It presented a view that was in line with the attitudes of its time."
                },
                {
                  "key": "D",
                  "text": "It took an innovative approach to the analysis of human psychology."
                }
              ],
              "answer": "C",
              "explanation": "This bleak view of human nature is closely associated with the science writer Richard Dawkins, whose 1976 book The Selfish Gene became popular because it fitted so well with-and helped to justify-the competitive and individualistic ethos that was so prevalent in late 20th-century societies.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "This bleak view of human nature is closely associated with the science writer Richard Dawkins, whose 1976 book The Selfi"
              }
            },
            {
              "number": 29,
              "prompt": "What does the writer suggest about the prehistoric era in the fourth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Societies were more complex than many people believe."
                },
                {
                  "key": "B",
                  "text": "Supplies of natural resources were probably relatively plentiful."
                },
                {
                  "key": "C",
                  "text": "Most estimates about population sizes are likely to be inaccurate."
                },
                {
                  "key": "D",
                  "text": "Humans moved across continents more than was previously thought."
                }
              ],
              "answer": "B",
              "explanation": "Humans at that time were hunter-gatherers: people who lived by hunting wild animals and collecting wild plants. With such small population densities, it seems unlikely that prehistoric hunter-gatherer groups had to compete against each other for resources or had any need to develop ruthlessness and competitiveness, or to go to war.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Humans at that time were hunter-gatherers: people who lived by hunting wild animals and collecting wild plants. With suc"
              }
            },
            {
              "number": 30,
              "prompt": "The writer refers to Bruce Knauft’s work as support for the idea that",
              "options": [
                {
                  "key": "A",
                  "text": "selfishness is a relatively recent development in human societies."
                },
                {
                  "key": "B",
                  "text": "only people in isolated communities can live in an unselfish manner."
                },
                {
                  "key": "C",
                  "text": "very few lifestyles have survived unchanged since prehistoric times."
                },
                {
                  "key": "D",
                  "text": "hunter-gatherer cultures worldwide are declining in number."
                }
              ],
              "answer": "A",
              "explanation": "As the anthropologist Bruce Knauft has remarked, hunter-gatherers are characterized by ‘extreme political and sexual egalitarianism’. Knauft has observed that individuals in such groups don’t accumulate property or possessions and have an ethical obligation to share everything.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "As the anthropologist Bruce Knauft has remarked, hunter-gatherers are characterized by ‘extreme political and sexual ega"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 31–35",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "high level of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 31
            },
            {
              "kind": "static",
              "text": "in all areas of life. In these cultures, distributing resources fairly among all members is a moral obligation. These societies also employ strategies to prevent differences in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 32
            },
            {
              "kind": "static",
              "text": "occurring: for example, the !Kung follow a custom whereby the credit for one person’s success at",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 33
            },
            {
              "kind": "static",
              "text": "is given to another member of the group. Individuals who behave in a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "manner are punished by being excluded from the group, and women have a considerable amount of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "in choices regarding work and marriage.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "tend to exhibit a high level of _______",
              "answer": [
                "egalitarianism"
              ],
              "wordLimit": 1,
              "explanation": "As the anthropologist Bruce Knauft has remarked, hunter-gatherers are characterized by ‘extreme political and sexual egalitarianism’.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "As the anthropologist Bruce Knauft has remarked, hunter-gatherers are characterized by ‘extreme political and sexual ega"
              }
            },
            {
              "number": 32,
              "prompt": "to prevent differences in _______",
              "answer": [
                "status"
              ],
              "wordLimit": 1,
              "explanation": "They also have methods of preserving egalitarianism by ensuring that disparities of status don’t arise.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "They also have methods of preserving egalitarianism by ensuring that disparities of status don’t arise."
              }
            },
            {
              "number": 33,
              "prompt": "credit for one person’s success at _______",
              "answer": [
                "hunting"
              ],
              "wordLimit": 1,
              "explanation": "The !Kung people of southern Africa, for example, swap arrows before going hunting and when an animal is killed, the acclaim does not go to the person who fired the arrow, but to the person the arrow belongs to.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "The !Kung people of southern Africa, for example, swap arrows before going hunting and when an animal is killed, the acc"
              }
            },
            {
              "number": 34,
              "prompt": "Individuals who behave in a _______",
              "answer": [
                "domineering"
              ],
              "wordLimit": 1,
              "explanation": "And if a person becomes too domineering, the other members of the group ostracise them, exiling the offender from society.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "And if a person becomes too domineering, the other members of the group ostracise them, exiling the offender from societ"
              }
            },
            {
              "number": 35,
              "prompt": "have a considerable amount of _______",
              "answer": [
                "autonomy"
              ],
              "wordLimit": 1,
              "explanation": "Women in hunter-gatherer groups worldwide often benefit from a high level of autonomy, being able to select their own marriage partners, decide what work they do and work whenever they choose to.",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Women in hunter-gatherer groups worldwide often benefit from a high level of autonomy, being able to select their own ma"
              }
            }
          ],
          "formTitle": "Contemporary hunter-gatherer societies",
          "id": "g31"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 36–40",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 36,
              "prompt": "Some anthropologists are mistaken about the point when the number of societies such as the !Kung began to decline. === PAGE 17 ===",
              "answer": "NOT GIVEN",
              "explanation": "Many anthropologists believe that societies such as the !Kung were normal until a few thousand years ago, when population growth led to the development of agriculture and a settled lifestyle.",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "Many anthropologists believe that societies such as the !Kung were normal until a few thousand years ago, when populatio"
              }
            },
            {
              "number": 37,
              "prompt": "Humans who developed warlike traits in prehistory would have had an advantage over those who did not.",
              "answer": "NO",
              "explanation": "In view of the above, there seems little reason to assume that traits such as racism, warfare and male domination should have been selected by evolution-as they would have been of little benefit in the prehistoric era.",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "In view of the above, there seems little reason to assume that traits such as racism, warfare and male domination should"
              }
            },
            {
              "number": 38,
              "prompt": "Being peaceful and cooperative is a natural way for people to behave.",
              "answer": "YES",
              "explanation": "It makes more sense, then, to see traits such as cooperation, egalitarianism, altruism and peacefulness as innate characteristics of human beings.",
              "evidence": {
                "sectionId": "p3",
                "ref": "9",
                "quote": "It makes more sense, then, to see traits such as cooperation, egalitarianism, altruism and peacefulness as innate charac"
              }
            },
            {
              "number": 39,
              "prompt": "Negative traits are more apparent in some modern cultures than in others.",
              "answer": "NOT GIVEN",
              "explanation": "Perhaps these negative traits should be seen as a later development, the result of environmental and psychological factors.",
              "evidence": {
                "sectionId": "p3",
                "ref": "9",
                "quote": "Perhaps these negative traits should be seen as a later development, the result of environmental and psychological facto"
              }
            },
            {
              "number": 40,
              "prompt": "Animal research has failed to reveal a link between changes in the environment and the emergence of aggressive tendencies. === PAGE 18 ===",
              "answer": "NO",
              "explanation": "Perhaps these negative traits should be seen as a later development, the result of environmental and psychological factors. Research has shown repeatedly that when the natural habitats of primates such as apes and gorillas are disrupted, they tend to become more violent and hierarchical.",
              "evidence": {
                "sectionId": "p3",
                "ref": "9",
                "quote": "Perhaps these negative traits should be seen as a later development, the result of environmental and psychological facto"
              }
            }
          ],
          "id": "g36"
        }
      ]
    }
  ]
}
$c19t4r$,
  true
);
