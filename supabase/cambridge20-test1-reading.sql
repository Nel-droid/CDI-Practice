DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 20' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 20',
  'Test 1',
  'academic',
  3600,
  $c20t1r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The kéképé",
      "passage": [
        {
          "ref": "1",
          "text": "The kakapo is a nocturnal, flightless parrot that is critically endangered and one of New Zealand ‘s unique treasures."
        },
        {
          "ref": "2",
          "text": "The kakapo, also known as the owl parrot, is a large, forest-dwelling bird, with a pale owl-like face. Up to 64 cm in length, it has predominantly yellow-green feathers, forward-facing eyes, a large grey beak, large blue feet, and relatively short wings and tail. It is the world’s only flightless parrot, and is also possibly one of the world’s longest-living birds, with a reported lifespan of up to 100 years."
        },
        {
          "ref": "3",
          "text": "Kakapo are solitary birds and tend to occupy the same home range for many years. They forage on the ground and climb high into trees. They often leap from trees and flap their wings, but at best manage a controlled descent to the ground. They are entirely vegetarian, with their diet including the leaves, roots and bark of trees as well as bulbs, and fern fronds."
        },
        {
          "ref": "4",
          "text": "Kakapo breed in summer and autumn, but only in years when food is plentiful. Males play no part in incubation or chick-rearing - females alone incubate eggs and feed the chicks. The 1-4 eggs are laid in soil, which is repeatedly turned over before and during incubation. The female kakapo has to spend long periods away from the nest searching for food, which leaves the unattended eggs and chicks particularly vulnerable to predators."
        },
        {
          "ref": "5",
          "text": "Before humans arrived, kakapo were common throughout New Zealand’s forests. However, this all changed with the arrival of the first Polynesian settlers about 700 years ago. For the early settlers, the flightless kakapo was easy prey. They ate its meat and used its feathers to make soft cloaks. With them came the Polynesian dog and rat, which also preyed on kakapo. By the time European colonisers arrived in the early 1800s, kakapo had become confined to the central North Island and forested parts of the South Island. The fall in kakapo numbers was accelerated by European colonisation. A great deal of habitat was lost through forest clearance, and introduced species such as deer depleted the remaining forests of food. Other predators such as cats, stoats and two more species of rat were also introduced. The kakapo were in serious trouble."
        },
        {
          "ref": "6",
          "text": "In 1894, the New Zealand government launched its first attempt to save the kakapo. Conservationist Richard Henry led an effort to relocate several hundred of the birds to predator- free Resolution Island in Fiordland. Unfortunately, the island didn’t remain predator free - stoats arrived within six years, eventually destroying the kakapo population. By the mid-1900s, the kakapo was practically a lost species. Only a few clung to life in the most isolated parts of New Zealand. From 1949 to 1973, the newly formed New Zealand Wildlife Service made over 60 expeditions to find kakapo, focusing mainly on Fiordland. Six were caught, but there were no females amongst them and all but one died within a few months of captivity."
        },
        {
          "ref": "7",
          "text": "In 1974, a new initiative was launched, and by 1977, 18 more kakapo were found in Fiordland. However, there were still no females. In 1977, a large population of males was spotted in Rakiura - a large island free from stoats, ferrets and weasels. There were about 200 individuals, and in 1980 it was confirmed females were also present. These birds have been the foundation of all subsequent work in managing the species."
        },
        {
          "ref": "8",
          "text": "Unfortunately, predation by feral cats on Rakiura Island led to a rapid decline in kakapo numbers. As a result, during 1980-97, the surviving population was evacuated to three island sanctuaries: Codfish Island, Maud Island and Little Barrier Island. However, breeding success was hard to achieve. Rats were found to be a major predator of kakapo chicks, and an insufficient number of chicks survived to offset adult mortality. By 1995, although at least 12 chicks had been produced on the islands, only three had survived."
        },
        {
          "ref": "9",
          "text": "The kakapo population had dropped to 51 birds."
        },
        {
          "ref": "10",
          "text": "The critical situation prompted an urgent review of kakapo management in New Zealand. In 1996, a new Recovery Plan was launched, together with a specialist advisory group called the Kakapo Scientific and Technical Advisory Committee and a higher amount of funding. Renewed steps were taken to control predators on the three islands. Cats were eradicated from Little Barrier Island in 1980, and possums were eradicated from Codfish Island by 1986. However, the population did not start to increase until rats were removed from all three islands, and the birds were more intensively managed. This involved moving the birds between islands, supplementary feeding of adults, and rescuing and hand-raising any failing chicks."
        },
        {
          "ref": "11",
          "text": "After the first five years of the Recovery Plan, the population was on target. By 2000, five new females had been produced, and the total population had grown to 62 birds. For the first time,"
        },
        {
          "ref": "12",
          "text": "there was cautious optimism for the filture of kakapo, and by June 2020, a total of 210 birds was recorded."
        },
        {
          "ref": "13",
          "text": "Today, kakapo management continues to be guided by the kakapo Recovery Plan. Its key goals are: minimise the loss of genetic diversity in the kakapo population, restore or maintain sufficient habitat to accommodate the expected increase in the kakapo population, and ensure stakeholders continue to be fully engaged in the preservation of the species."
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
              "prompt": "There are other parrots that share the kakapos inability to fly.",
              "answer": "FALSE",
              "explanation": "It is the world’s only flightless parrot",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "It is the world’s only flightless parrot"
              }
            },
            {
              "number": 2,
              "prompt": "Adult kakapo produce chicks every year.",
              "answer": "FALSE",
              "explanation": "Kakapo breed in summer and autumn, but only in years when food is plentiful",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Kakapo breed in summer and autumn, but only in years when food is plentiful"
              }
            },
            {
              "number": 3,
              "prompt": "Adult male kakapo bring food back to nesting females.",
              "answer": "FALSE",
              "explanation": "Males play no part in incubation or chick-rearing - females alone incubate eggs and feed the chicks",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Males play no part in incubation or chick-rearing - females alone incubate eggs and feed the chicks"
              }
            },
            {
              "number": 4,
              "prompt": "The Polynesian rat was a greater threat to the kakapo than Polynesian settlers. === PAGE 5 ===",
              "answer": "NOT GIVEN",
              "explanation": "For the early settlers, the flightless kakapo was easy prey. They ate its meat and used its feathers to make soft cloaks. With them came the Polynesian dog and rat, which also preyed on kakapo",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "For the early settlers, the flightless kakapo was easy prey. They ate its meat and used its feathers to make soft cloaks"
              }
            },
            {
              "number": 5,
              "prompt": "Kakapo were transferred from Rakiura Island to other locations because they were at risk from feral cats.",
              "answer": "TRUE",
              "explanation": "Unfortunately, predation by feral cats on Rakiura Island led to a rapid decline in kakapo numbers. As a result, during 1980-97, the surviving population was evacuated to three island sanctuaries: Codfish Island, Maud Island and Little Barrier Island",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "Unfortunately, predation by feral cats on Rakiura Island led to a rapid decline in kakapo numbers. As a result, during 1"
              }
            },
            {
              "number": 6,
              "prompt": "One Recovery Plan initiative that helped increase the kakapo population size was caring for struggling young birds.",
              "answer": "TRUE",
              "explanation": "This involved moving the birds between islands, supplementary feeding of adults, and rescuing and hand-raising any failing chicks",
              "evidence": {
                "sectionId": "p1",
                "ref": "10",
                "quote": "This involved moving the birds between islands, supplementary feeding of adults, and rescuing and hand-raising any faili"
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 7–13",
          "instructions": "Complete the notes below. Choose ONE WORD from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "A Type of parrot:"
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
              "kind": "subheader",
              "text": "Arrival of Polynesian settlers"
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "subheader",
              "text": "Arrival of European colonisers"
            },
            {
              "kind": "question",
              "number": 10
            },
            {
              "kind": "subheader",
              "text": "Protecting kakapo"
            },
            {
              "kind": "static",
              "text": "Richard Henry, a conservationist, tried to protect the kakapo."
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
              "prompt": "Diet consists of fern fronds, various parts of a tree and _______",
              "answer": [
                "bulbs"
              ],
              "wordLimit": 1,
              "explanation": "they are entirely vegetarian, with their diet including the leaves, roots and bark of trees as well as bulbs, and fern fronds",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "they are entirely vegetarian, with their diet including the leaves, roots and bark of trees as well as bulbs, and fern f"
              }
            },
            {
              "number": 8,
              "prompt": "Nests are created in _______ . where eggs are laid.",
              "answer": [
                "soil"
              ],
              "wordLimit": 1,
              "explanation": "The 1-4 eggs are laid in soil, which is repeatedly turned over before and during incubation",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "The 1-4 eggs are laid in soil, which is repeatedly turned over before and during incubation"
              }
            },
            {
              "number": 9,
              "prompt": "The _______ of the kakapo were used to make clothes.",
              "answer": [
                "feathers"
              ],
              "wordLimit": 1,
              "explanation": "For the early settlers, the flightless kakapo was easy prey. They ate its meat and used its feathers to make soft cloaks",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "For the early settlers, the flightless kakapo was easy prey. They ate its meat and used its feathers to make soft cloaks"
              }
            },
            {
              "number": 10,
              "prompt": "_______ were an animal which they introduced that ate the kakapo's food sources.",
              "answer": [
                "deer"
              ],
              "wordLimit": 1,
              "explanation": "A great deal of habitat was lost through forest clearance, and introduced species such as deer depleted the remaining forests of food",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "A great deal of habitat was lost through forest clearance, and introduced species such as deer depleted the remaining fo"
              }
            },
            {
              "number": 11,
              "prompt": "A definite sighting of female kakapo on Rakiura Island was reported in the year _______",
              "answer": [
                "1980"
              ],
              "wordLimit": 1,
              "explanation": "In 1980 it was confirmed females were also present",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "In 1980 it was confirmed females were also present"
              }
            },
            {
              "number": 12,
              "prompt": "The Recovery Plan included an increase in _______",
              "answer": [
                "funding"
              ],
              "wordLimit": 1,
              "explanation": "In 1996, a new Recovery Plan was launched, together with a specialist advisory group called the Kakapo Scientific and Technical Advisory Committee and a higher amount of funding",
              "evidence": {
                "sectionId": "p1",
                "ref": "10",
                "quote": "In 1996, a new Recovery Plan was launched, together with a specialist advisory group called the Kakapo Scientific and Te"
              }
            },
            {
              "number": 13,
              "prompt": "A current goal of the Recovery Plan is to maintain the involvement of _______ in kakapo protection.",
              "answer": [
                "stakeholders"
              ],
              "wordLimit": 1,
              "explanation": "its key goals are: minimise the loss of genetic diversity in the kakapo population, restore or maintain sufficient habitat to accommodate the expected increase in the kakapo population, and ensure stakeholders continue to be fully engaged in the preservation of the species",
              "evidence": {
                "sectionId": "p1",
                "ref": "13",
                "quote": "its key goals are: minimise the loss of genetic diversity in the kakapo population, restore or maintain sufficient habit"
              }
            }
          ],
          "formTitle": "New Zealand’s kakapo",
          "id": "g7"
        }
      ]
    },
    {
      "id": "p2",
      "title": "To Britain Mark Rowe investigates attempts to reintroduce elms to Britain",
      "passage": [
        {
          "ref": "A",
          "text": "Around 25 million elms, accounting for 90% of all elm trees in the UK, died during the 1960s and ’70s of Dutch elm disease. In the aftermath, the elm, once so dominant in the British landscape, was largely forgotten. However, there’s now hope the elm may be reintroduced to the countryside of central and southern England. Any reintroduction will start from a very low base. ‘The impact of the disease is difficult to picture if you hadn’t seen what was there before,’ says Matt Elliot of the Woodland Trust. ‘You look at old photographs from the 1960s and it’s only then that you realise the impact [elms had]. They were significant, large trees then they were gone.’"
        },
        {
          "ref": "B",
          "text": "The disease is caused by a fungus that blocks the elms’ vascular (water, nutrient and food transport) system, causing branches to wilt and die. A first epidemic, which occurred in the 1920s, gradually died down, but in the '70s a second epidemic was triggered by shipments of elm from Canada. The wood came in the form of logs destined for boat building and its intact bark was perfect for the elm bark beetles that spread the deadly fungus. This time, the beetles carried a much more virulent strain that destroyed the vast majority of British elms."
        },
        {
          "ref": "C",
          "text": "Today, elms still exist in the southern English countryside but mostly only in low hedgerows between fields. ‘We have millions of small elms in hedgerows but they get targeted by the beetle as soon as they reach a certain size,’ says Karen Russell, co-author of the report Where we are with elm. Once the trunk of the elm reaches 10-15 centimetres or so in diameter, it becomes a perfect size for beetles to lay eggs and for the fungus to take hold. Yet mature specimens have been identified, in counties such as Cambridgeshire, that are hundreds of years old, and have mysteriously escaped the epidemic. The key, Russell says, is to identify and study those trees that have survived and work out why they stood tall when millions of others succumbed. Nevertheless, opportunities are limited as the number of these mature survivors is relatively small. 'What are the reasons for their survival?' asks Russell. 'Avoidance, tolerance, resistance? We don't know where the balance lies between the three. I don't see how it can be entirely down to luck.'"
        },
        {
          "ref": "D",
          "text": "For centuries, elm ran a close second to oak as the hardwood tree of choice in Britain and was in many instances the most prominent tree in the landscape. Not only was elm common in European forests, it became a key component of birch, ash and hazel woodlands. The use of elm is thought to go back to the Bronze Age, when it was widely used for tools. Elm was also the preferred material for shields and early swords. In the 18th century, it was planted more widely and its wood was used for items such as storage crates and flooring. It was also suitable for items that experienced high levels of impact and was used to build the keel of the l9th-century sailing ship Cutty Sark as well as mining equipment."
        },
        {
          "ref": "E",
          "text": "Given how ingrained elm is in British culture, it’s unsurprising the tree has many advocates. Amongst them is Peter Bourne of the National Elm Collection in Brighton. ‘I saw Dutch elm disease unfold as a small boy,’ he says. ‘The elm seemed to be part of rural England, but I remember watching trees just lose their leaves and that really stayed with me.’ Today, the city of Brighton’s elms total about 17,000. Local factors appear to have contributed to their survival. Strong winds from the sea make it difficult for the determined elm bark beetle to attack this coastal city’s elm population. However, the situation is precarious. ‘The beetles can just march in if we’re not careful, as the threat is right on our doorstep,’ says Bourne."
        },
        {
          "ref": "F",
          "text": "Any prospect of the elm returning relies heavily on trees being either resistant to, or tolerant of, the disease. This means a widespread reintroduction would involve existing or new hybrid strains derived from resistant, generally non-native elm species. A new generation of seedlings have been bred and tested to see if they can withstand the fungus by cutting a small slit on the bark and in ecting a tiny amount of the pathogen. 'The effects are very quick,' says Russell. 'You return in four to six weeks and trees that are resistant show no symptoms, whereas those that are susceptible show leaf loss and may even have died completely.'"
        },
        {
          "ref": "G",
          "text": "All of this raises questions of social acceptance, acknowledges Russell. ‘If we’re putting elm back into the landscape, a small element of it is not native - are we bothered about that?’ For her, the environmental case for reintroducing elm is strong. 'They will host wildlife, which is a good thing.' Others are more wary. ‘On the face of it, it seems like a good idea,’ says Elliot. The problem, he suggests, is that, ‘You’re replacing a native species with a horticultural analogue. You’re effectively cloning.’ There’s also the risk of introducing new diseases. Rather than plant new elms, the Woodland Trust emphasises providing space to those elms that have survived independently. ‘Sometimes the best thing you can do is just give nature time to recover over time, you might get resistance,’ says Elliot. *horticultural analogue: a cultivated plant species that is genetically similar to an existing species."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–18",
          "instructions": "Reading Passage 2 has seven sections, A–G. Which section contains the following information? You may use any letter more than once.",
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
              "prompt": "Reference to the research problems that arise from",
              "answer": "C",
              "explanation": "Nevertheless, opportunities are limited as the number of these mature survivors is relatively small",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Nevertheless, opportunities are limited as the number of these mature survivors is relatively small"
              }
            },
            {
              "number": 15,
              "prompt": "Details of a difference of opinion about the value of",
              "answer": "G",
              "explanation": "All of this raises questions of social acceptance, acknowledges Russell. ‘If we’re putting elm back into the landscape, a small element of it is not native - are we bothered about that?’ For her, the environmental case for reintroducing elm is strong. ‘They will host wildlife, which is a good thing.’ Others are more wary",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "All of this raises questions of social acceptance, acknowledges Russell. ‘If we’re putting elm back into the landscape, "
              }
            },
            {
              "number": 16,
              "prompt": "Reference to how Dutch elm disease was brought",
              "answer": "B",
              "explanation": "A first epidemic, which occurred in the 1920s, gradually died down, but in the ’70s a second epidemic was triggered by shipments of elm from Canada",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "A first epidemic, which occurred in the 1920s, gradually died down, but in the ’70s a second epidemic was triggered by s"
              }
            },
            {
              "number": 17,
              "prompt": "A description of the conditions that have enabled a",
              "answer": "E",
              "explanation": "Strong winds from the sea make it difficult for the determined elm bark beetle to attack this coastal city’s elm population",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Strong winds from the sea make it difficult for the determined elm bark beetle to attack this coastal city’s elm populat"
              }
            },
            {
              "number": 18,
              "prompt": "Reference to the stage at which young elms become",
              "answer": "C",
              "explanation": "‘We have millions of small elms in hedgerows but they get targeted by the beetle as soon as they reach a certain size,’ says Karen Russell",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "‘We have millions of small elms in hedgerows but they get targeted by the beetle as soon as they reach a certain size,’ "
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "matching",
          "label": "Questions 19–23",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, A, B, or C. You may use any letter more than once.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Matt Elliot"
            },
            {
              "key": "B",
              "text": "Karen Russell"
            },
            {
              "key": "C",
              "text": "Peter Bourne"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "If a tree gets infected with Dutch elm disease, the damage rapidly",
              "answer": "B",
              "explanation": "‘The effects are very quick,’ says Russell. ‘You return in four to six weeks and trees that are resistant show no symptoms, whereas those that are susceptible show leaf loss and may even have died completely.’"
            },
            {
              "number": 20,
              "prompt": "It may be better to wait and see if the mature elms that have survived",
              "answer": "A",
              "explanation": "Rather than plant new elms, the Woodland Trust emphasises providing space to those elms that have survived independently. ‘Sometimes the best thing you can do is just give nature time to recover over time, you might get resistance,’ says Elliot",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Rather than plant new elms, the Woodland Trust emphasises providing space to those elms that have survived independently"
              }
            },
            {
              "number": 21,
              "prompt": "There must be an explanation for the survival of some mature elms",
              "answer": "B",
              "explanation": "‘What are the reasons for their survival?’ asks Russell. ‘Avoidance, tolerance, resistance? We don’t know where the balance lies between the three. I don’t see how it can be entirely down to luck.’"
            },
            {
              "number": 22,
              "prompt": "We need to be aware that insects carrying Dutch elm disease are not very",
              "answer": "C",
              "explanation": "‘The beetles can just march in if we’re not careful, as the threat is right on our doorstep,’ says Bourne",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "‘The beetles can just march in if we’re not careful, as the threat is right on our doorstep,’ says Bourne"
              }
            },
            {
              "number": 23,
              "prompt": "You understand the effect Dutch elm disease has had when you see",
              "answer": "A",
              "explanation": "‘The impact of the disease is difficult to picture if you hadn’t seen what was there before,’ says Matt Elliot of the Woodland Trust. ‘You look at old photographs from the 1960s and it’s only then that you realise the impact [elms had]. They were significant, large trees then they were gone.’",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "‘The impact of the disease is difficult to picture if you hadn’t seen what was there before,’ says Matt Elliot of the Wo"
              }
            }
          ],
          "id": "g19"
        },
        {
          "type": "completion",
          "label": "Questions 24–26",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "For hundreds of years, the only tree that was more popular in Britain than elm was",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": ". Starting in the Bronze Age, many tools were made from elm, and people also used it to make weapons. In the 18th century, it was grown to provide wood for boxes and",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": ". Due to its strength, elm was often used for mining equipment, and the Cutty Sark’s",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": "was also constructed from elm.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 24,
              "prompt": "popular in Britain than elm was _______",
              "answer": [
                "oak"
              ],
              "wordLimit": 1,
              "explanation": "For centuries, elm ran a close second to oak as the hardwood tree of choice in Britain",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "For centuries, elm ran a close second to oak as the hardwood tree of choice in Britain"
              }
            },
            {
              "number": 25,
              "prompt": "to provide wood for boxes and _______",
              "answer": [
                "flooring"
              ],
              "wordLimit": 1,
              "explanation": "In the 18th century, it was planted more widely and its wood was used for items such as storage crates and flooring",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "In the 18th century, it was planted more widely and its wood was used for items such as storage crates and flooring"
              }
            },
            {
              "number": 26,
              "prompt": "equipment, and the Cutty Sark’s _______",
              "answer": [
                "keel"
              ],
              "wordLimit": 1,
              "explanation": "It was also suitable for items that experienced high levels of impact and was used to build the keel of the l9th-century sailing ship Cutty Sark as well as mining equipment",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "It was also suitable for items that experienced high levels of impact and was used to build the keel of the l9th-century"
              }
            }
          ],
          "formTitle": "Uses of a Popular Tree",
          "id": "g24"
        }
      ]
    },
    {
      "id": "p3",
      "title": "How Stress Affects Our Judgement",
      "passage": [
        {
          "ref": "1",
          "text": "Some of the most important decisions of our lives occur while we’re feeling stressed and anxious. From medical decisions to financial and professional ones, we are all sometimes required to weigh up information under stressful conditions. But do we become better or worse at processing and using information under such circumstances?"
        },
        {
          "ref": "2",
          "text": "My colleague and I, both neuroscientists, wanted to investigate how the mind operates under stress, so we visited some local fire stations. Firefighters’ workdays vary quite a bit. Some are pretty relaxed, they’ll spend their time washing the truck, cleaning equipment, cooking meals and reading. Other days can be hectic, with numerous life-threatening incidents to attend to, they’ll enter burning homes to rescue trapped residents, and assist with medical emergencies. These ups and downs presented the perfect setting for an experiment on how people’s ability to use information changes when they feel under pressure."
        },
        {
          "ref": "3",
          "text": "We found that perceived threat acted as a trigger for a stress reaction that made the task of processing information easier for the firefighters - but only as long as it conveyed bad news. This is how we arrived at these results. We asked the firefighters to estimate their likelihood of experiencing 40 different adverse events in their life, such as being involved in an accident or becoming a victim of card fraud. We then gave them either good news (that their likelihood of experiencing these events was lower than they’d thought) or bad news (that it was higher) and asked them to provide new estimates."
        },
        {
          "ref": "4",
          "text": "People are normally quite optimistic -they will ignore bad news and embrace the good. This is what happened when the firefighters were relaxed, but when they were under stress, a different pattern emerged. Under these conditions, they became hyper-vigilant to bad news, even when it had nothing to do with their job (such as learning that the likelihood of card fraud was higher than they’d thought), and altered their beliefs in response. In contrast, stress didn’t change how they responded to good news (such as learning that the likelihood of card fraud was lower than they’d thought)."
        },
        {
          "ref": "5",
          "text": "Back in our lab, we observed the same pattern in students who were told they had to give a surprise public speech, which would be judged by a panel, recorded and posted online. Sure"
        },
        {
          "ref": "6",
          "text": "enough, their cortisol levels spiked, their heart rates went up and they suddenly became better at processing unrelated, yet alarming, information about rates of disease and violence. When we experience stressful events, a physiological change is triggered that causes us to take in warnings and focus on what might go wrong. Brain imaging reveals that this ‘switch’ is related to a sudden boost in a neural signal important for learning, specifically in response to unexpected warning signs, such as faces expressing fear."
        },
        {
          "ref": "7",
          "text": "Such neural engineering could have helped prehistoric humans to survive. When our ancestors found themselves surrounded by hungry animals, they would have benefited from an increased ability to team about hazards. In a safe environment, however, it would have been wasteful to be on high alert constantly. So, a neural switch that automatically increases or decreases our ability to process warnings in response to changes in our environment could have been useful. In fact, people with clinical depression and anxiety seem unable to switch away from a state in which they absorb all the negative messages around them."
        },
        {
          "ref": "8",
          "text": "It is also important to realise that stress travels rapidly from one person to the next. If a co-worker is stressed, we are more likely to tense up and feel stressed ourselves. We don’t even need to be in the same room with someone for their emotions to influence our behaviour. Studies show that if we observe positive feeds on social media, such as images of a pink sunset, we are more likely to post uplifting messages ourselves. If we observe negative posts, such as complaints about a long queue at the coffee shop, we will in turn create more negative posts."
        },
        {
          "ref": "9",
          "text": "In some ways, many of us now live as if we are in danger, constantly ready to tackle demanding emails and text messages, and respond to news alerts and comments on social media. Repeatedly checking your phone, according to a survey conducted by the American Psychological Association, is related to stress. In other words, a pre-programmed physiological reaction, which evolution has equipped us with to help us avoid famished predators, is now being triggered by an online post. Social media posting, according to one study, raises your pulse, makes you sweat, and enlarges your pupils more than most daily activities."
        },
        {
          "ref": "10",
          "text": "The fact that stress increases the likelihood that we will focus more on alarming messages, together with the fact that it spreads extremely rapidly, can create collective fear that is not always justified. After a stressful public event, such as a natural disaster or major financial crash, there is often a wave of alarming information in traditional and social media, which individuals become very aware of. But that has the effect of exaggerating existing danger. And so, a reliable pattern emerges -"
        },
        {
          "ref": "11",
          "text": "stress is triggered, spreading from one person to the next, which temporarily enhances the likelihood that people will take in negative reports, which increases stress further. As a result, trips are cancelled, even if the disaster took place across the globe, stocks are sold, even when holding on is the best thing to do."
        },
        {
          "ref": "12",
          "text": "The good news, however, is that positive emotions, such as hope, are contagious too, and are powerful in inducing people to act to find solutions. Being aware of the close relationship between people’s emotional state and how they process information can help us frame our messages more effectively and become conscientious agents of change."
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
              "prompt": "In the first paragraph, the writer introduces the topic of the text by",
              "options": [
                {
                  "key": "A",
                  "text": "defining some commonly used terms."
                },
                {
                  "key": "B",
                  "text": "questioning a widely held assumption."
                },
                {
                  "key": "C",
                  "text": "mentioning a challenge faced by everyone."
                },
                {
                  "key": "D",
                  "text": "specifying a situation which makes us most anxious."
                }
              ],
              "answer": "C",
              "explanation": "From medical decisions to financial and professional ones, we are all sometimes required to weigh up information under stressful conditions.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "From medical decisions to financial and professional ones, we are all sometimes required to weigh up information under s"
              }
            },
            {
              "number": 28,
              "prompt": "What point does the writer make about firefighters in the second paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "The regular changes of stress levels in their working lives make them ideal study subjects."
                },
                {
                  "key": "B",
                  "text": "The strategies they use to handle stress are of particular interest to researchers."
                },
                {
                  "key": "C",
                  "text": "The stressful nature of their job is typical of many public service professions."
                },
                {
                  "key": "D",
                  "text": "Their personalities make them especially well-suited to working under stress."
                }
              ],
              "answer": "A",
              "explanation": "These ups and downs presented the perfect setting for an experiment on how people’s ability to use information changes when they feel under pressure",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "These ups and downs presented the perfect setting for an experiment on how people’s ability to use information changes w"
              }
            },
            {
              "number": 29,
              "prompt": "What is the writer doing in the fourth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Explaining their findings"
                },
                {
                  "key": "B",
                  "text": "Justifying their approach"
                },
                {
                  "key": "C",
                  "text": "Setting out their objectives"
                },
                {
                  "key": "D",
                  "text": "Describing their methodology"
                }
              ],
              "answer": "D",
              "explanation": "We asked the firefighters to estimate their likelihood of experiencing 40 different adverse events in their life, such as being involved in an accident or becoming a victim of card fraud. We then gave them either good news (that their likelihood of experiencing these events was lower than they’d thought) or bad news (that it was higher) and asked them to provide new estimates",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "We asked the firefighters to estimate their likelihood of experiencing 40 different adverse events in their life, such a"
              }
            },
            {
              "number": 30,
              "prompt": "In the seventh paragraph, the writer describes a mechanism in the brain which",
              "options": [
                {
                  "key": "A",
                  "text": "Enables people to respond more quickly to stressful situations."
                },
                {
                  "key": "B",
                  "text": "Results in increased ability to control our levels of anxiety."
                },
                {
                  "key": "C",
                  "text": "Produces heightened sensitivity to indications of external threats."
                },
                {
                  "key": "D",
                  "text": "Is activated when there is a need to communicate a sense of danger."
                }
              ],
              "answer": "C",
              "explanation": "When we experience stressful events, a physiological change is triggered that causes us to take in warnings and focus on what might go wrong",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "When we experience stressful events, a physiological change is triggered that causes us to take in warnings and focus on"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "matching",
          "label": "Questions 31–35",
          "instructions": "Complete each sentence with the correct ending, A–G below.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "made them feel optimistic."
            },
            {
              "key": "B",
              "text": "took relatively little notice of bad news."
            },
            {
              "key": "C",
              "text": "responded to negative and positive information in the same way."
            },
            {
              "key": "D",
              "text": "were feeling under stress."
            },
            {
              "key": "E",
              "text": "put them in a stressful situation."
            },
            {
              "key": "F",
              "text": "behaved in a similar manner, regardless of the circumstances."
            },
            {
              "key": "G",
              "text": "thought it more likely that they would experience something bad."
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "At times when they were relaxed, the firefighters usually",
              "answer": "B",
              "explanation": "People are normally quite optimistic -they will ignore bad news and embrace the good. This is what happened when the firefighters were relaxed",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "People are normally quite optimistic -they will ignore bad news and embrace the good. This is what happened when the fir"
              }
            },
            {
              "number": 32,
              "prompt": "The researchers noted that when the firefighters were stressed, they",
              "answer": "G",
              "explanation": "Under these conditions, they became hyper-vigilant to bad news, even when it had nothing to do with their job",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Under these conditions, they became hyper-vigilant to bad news, even when it had nothing to do with their job"
              }
            },
            {
              "number": 33,
              "prompt": "When the firefighters were told good news, they always",
              "answer": "F",
              "explanation": "In contrast, stress didn’t change how they responded to good news",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "In contrast, stress didn’t change how they responded to good news"
              }
            },
            {
              "number": 34,
              "prompt": "The students’ cortisol levels and heart rates were affected when the researchers",
              "answer": "E",
              "explanation": "students who were told they had to give a surprise public speech, which would be judged by a panel, recorded and posted online. Sure enough, their cortisol levels spiked, their heart rates went up",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "students who were told they had to give a surprise public speech, which would be judged by a panel, recorded and posted "
              }
            },
            {
              "number": 35,
              "prompt": "In both experiments, negative information was processed better when the subjects",
              "answer": "D",
              "explanation": "they suddenly became better at processing unrelated, yet alarming, information about rates of disease and violence.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "they suddenly became better at processing unrelated, yet alarming, information about rates of disease and violence."
              }
            }
          ],
          "id": "g31"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 36–40",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 36,
              "prompt": "The tone of the content we post on social media tends to reflect the nature of the posts in our feeds.",
              "answer": "YES",
              "explanation": "If we observe positive feeds on social media, such as images of a pink sunset, we are more likely to post uplifting messages ourselves. If we observe negative posts, such as complaints about a long queue at the coffee shop, we will in turn create more negative posts",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "If we observe positive feeds on social media, such as images of a pink sunset, we are more likely to post uplifting mess"
              }
            },
            {
              "number": 37,
              "prompt": "Phones have a greater impact on our stress levels than other electronic media devices.",
              "answer": "NOT GIVEN",
              "explanation": "Repeatedly checking your phone, according to a survey conducted by the American Psychological Association, is related to stress",
              "evidence": {
                "sectionId": "p3",
                "ref": "9",
                "quote": "Repeatedly checking your phone, according to a survey conducted by the American Psychological Association, is related to"
              }
            },
            {
              "number": 38,
              "prompt": "The more we read about a stressful public event on social media, the less able we are to take the information in.",
              "answer": "NO",
              "explanation": "And so, a reliable pattern emerges - stress is triggered, spreading from one person to the next, which temporarily enhances the likelihood that people will take in negative reports, which increases stress further",
              "evidence": {
                "sectionId": "p3",
                "ref": "10",
                "quote": "And so, a reliable pattern emerges - stress is triggered, spreading from one person to the next, which temporarily enhan"
              }
            },
            {
              "number": 39,
              "prompt": "Stress created by social media posts can lead us to take unnecessary precautions.",
              "answer": "YES",
              "explanation": "As a result, trips are cancelled, even if the disaster took place across the globe, stocks are sold, even when holding on is the best thing to do.",
              "evidence": {
                "sectionId": "p3",
                "ref": "11",
                "quote": "As a result, trips are cancelled, even if the disaster took place across the globe, stocks are sold, even when holding o"
              }
            },
            {
              "number": 40,
              "prompt": "Our tendency to be affected by other people’s moods can be used in a positive way. === PAGE 18 ===",
              "answer": "YES",
              "explanation": "The good news, however, is that positive emotions, such as hope, are contagious too, and are powerful in inducing people to act to find solutions",
              "evidence": {
                "sectionId": "p3",
                "ref": "12",
                "quote": "The good news, however, is that positive emotions, such as hope, are contagious too, and are powerful in inducing people"
              }
            }
          ],
          "id": "g36"
        }
      ]
    }
  ]
}
$c20t1r$,
  true
);
