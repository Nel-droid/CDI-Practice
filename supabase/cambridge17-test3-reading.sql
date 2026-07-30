DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 17' AND test_label = 'Test 3';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 17',
  'Test 3',
  'academic',
  3600,
  $c17t3r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The thylacine",
      "passage": [
        {
          "ref": "1",
          "text": "The extinct thylacine, also known as the Tasmanian tiger, was a marsupial* that bore a superficial resemblance to a dog. Its most distinguishing feature was the 13-19 dark brown stripes over its back, beginning at the rear of the body and extending onto the tail. The thylacine’s average nose- to-tail length for adult males was 162.6 cm, compared to 153.7 cm for females. The thylacine appeared to occupy most types of terrain except dense rainforest, with open eucalyptus forest thought to be its prime habitat. In terms of feeding, it was exclusively carnivorous, and its stomach was muscular with an ability to distend so that it could eat large amounts of food at one time, probably an adaptation to compensate for long periods when hunting was unsuccessful and food scarce. The thylacine was not a fast runner and probably caught its prey by exhausting it during a long pursuit. During long-distance chases, thylacines were likely to have relied more on scent than any other sense. They emerged to hunt during the evening, night and early morning and tended to retreat to the hills and forest for shelter during the day. Despite the common name ‘tiger’, the thylacine had a shy, nervous temperament. Although mainly nocturnal, it was sighted moving during the day and some individuals were even recorded basking in the sun. The thylacine had an extended breeding season from winter to spring, with indications that some breeding took place throughout the year. The thylacine, like all marsupials, was tiny and hairless when born. Newborns crawled into the pouch on the belly of their mother, and attached themselves to one of the four teats, remaining there for up to three months. When old enough to leave the pouch, the young stayed in a lair such as a deep rocky cave, well-hidden nest or hollow log, whilst the mother hunted."
        },
        {
          "ref": "2",
          "text": "Approximately 4,000 years ago, the thylacine was widespread throughout New Guinea and most of mainland Australia, as well as the island of Tasmania. The most recent, well-dated occurrence of a thylacine on the mainland is a carbon-dated fossil from Murray Cave in Western Australia, which is around 3,100 years old. Its extinction coincided closely with the arrival of wild dogs called dingoes in Australia and a similar predator in New Guinea. Dingoes never reached Tasmania, and most scientists see this as the main reason for the thylacine’s survival there. The dramatic decline of the thylacine in Tasmania, which began in the 1830s and continued for a century, is generally attributed to the relentless efforts of sheep farmers and bounty hunters** with shotguns. While this determined campaign undoubtedly played a large part, it is likely that various other factors also contributed to the decline and eventual extinction of the species. These include competition with wild dogs introduced by European settlers, loss of habitat along with the disappearance of prey species, and a distemper-like disease which may also have affected the thylacine."
        },
        {
          "ref": "3",
          "text": "There was only one successful attempt to breed a thylacine in captivity, at Melbourne Zoo in 1899. This was despite the large numbers that went through some zoos, particularly London Zoo and Tasmania’s Hobart Zoo. The famous naturalist John Gould foresaw the thylacine’s demise when he published his Mammals of Australia between 1848 and 1863, writing, ‘The numbers of this singular animal will speedily diminish, extermination will have its full sway, and it will then, like the wolf of England and Scotland, be recorded as an animal of the past.’ However, there seems to have been little public pressure to preserve the thylacine, nor was much concern expressed by scientists at the decline of this species in the decades that followed. A notable exception was T.T. Flynn, Professor of Biology at the University of Tasmania. In 1914, he was sufficiently concerned about the scarcity of the thylacine to suggest that some should be captured and placed on a small island. But it was not until 1929, with the species on the very edge of extinction, that Tasmania’s Animals and Birds Protection Board passed a motion protecting thylacines only for the month of December, which was thought to be their prime breeding season. The last known wild thylacine to be killed was shot by a farmer in the north-east of Tasmania in 1930, leaving just captive specimens. Official protection of the species by the Tasmanian government was introduced in July 1936, 59 days before the last known individual died in Hobart Zoo on 7th September, 1936."
        },
        {
          "ref": "4",
          "text": "There have been numerous expeditions and searches for the thylacine over the years, none of which has produced definitive evidence that thylacines still exist. The species was declared extinct by the Tasmanian government in 1986."
        },
        {
          "ref": "5",
          "text": "*marsupial: a mammal, such as a kangaroo, whose young are born incompletely developed and are typically carried and suckled in a pouch on the mother's belly **bounty hunters: people who are paid a reward for killing a wild animal"
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–5",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Appearance and behaviour looked rather like a dog had a series of stripes along its body and tail ate an entirely"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "diet probably depended mainly on",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "when hunting young spent first months of life inside its mother’s",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "Decline and extinction last evidence in mainland Australia is a 3,100-year-old"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "probably went extinct in mainland Australia due to animals known as dingoes reduction in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "and available sources of food were partly responsible for decline in Tasmania",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______",
              "answer": [
                "carnivorous"
              ],
              "wordLimit": 1,
              "explanation": "In terms of feeding, it was exclusively carnivorous, and its stomach was muscular with an ability to distend so that it could eat large amounts of food at one time",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "In terms of feeding, it was exclusively carnivorous, and its stomach was muscular with an ability to distend so that it "
              }
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "scent"
              ],
              "wordLimit": 1,
              "explanation": "During long-distance chases, thylacines were likely to have relied more on scent than any other sense",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "During long-distance chases, thylacines were likely to have relied more on scent than any other sense"
              }
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "pouch"
              ],
              "wordLimit": 1,
              "explanation": "Newborns crawled into the pouch on the belly of their mother, and attached themselves to one of the four teats, remaining there for up to three months",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "Newborns crawled into the pouch on the belly of their mother, and attached themselves to one of the four teats, remainin"
              }
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "fossil"
              ],
              "wordLimit": 1,
              "explanation": "The most recent, well-dated occurrence of a thylacine on the mainland is a carbon-dated fossil from Murray Cave in Western Australia, which is around 3,100 years old",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The most recent, well-dated occurrence of a thylacine on the mainland is a carbon-dated fossil from Murray Cave in Weste"
              }
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "habitat"
              ],
              "wordLimit": 1,
              "explanation": "These include competition with wild dogs introduced by European settlers, loss of habitat along with the disappearance of prey species, and a distemper-like disease which may also have affected the thylacine",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "These include competition with wild dogs introduced by European settlers, loss of habitat along with the disappearance o"
              }
            }
          ],
          "formTitle": "The thylacine",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 6–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 6,
              "prompt": "Significant numbers of thylacines were killed by humans from the 1830s onwards.",
              "answer": "TRUE",
              "explanation": "The dramatic decline of the thylacine in Tasmania, which began in the 1830s and continued for a century, is generally attributed to the relentless efforts of sheep farmers and bounty hunters",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The dramatic decline of the thylacine in Tasmania, which began in the 1830s and continued for a century, is generally at"
              }
            },
            {
              "number": 7,
              "prompt": "Several thylacines were born in zoos during the late 1800s.",
              "answer": "FALSE",
              "explanation": "There was only one successful attempt to breed a thylacine in captivity, at Melbourne Zoo in 1899",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "There was only one successful attempt to breed a thylacine in captivity, at Melbourne Zoo in 1899"
              }
            },
            {
              "number": 8,
              "prompt": "John Gould’s prediction about the thylacine surprised some biologists.",
              "answer": "NOT GIVEN",
              "explanation": "The famous naturalist John Gould foresaw the thylacine’s demise when he published his Mammals of Australia between 1848 and 1863, writing, ‘The numbers of this singular animal will speedily diminish, extermination will have its full sway, and it will then, like the wolf of England and Scotland, be recorded as an animal of the past.’",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "The famous naturalist John Gould foresaw the thylacine’s demise when he published his Mammals of Australia between 1848 "
              }
            },
            {
              "number": 9,
              "prompt": "In the early 1900s, many scientists became worried about the possible extinction of the thylacine.",
              "answer": "FALSE",
              "explanation": "there seems to have been little public pressure to preserve the thylacine, nor was much concern expressed by scientists at the decline of this species in the decades that followed",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "there seems to have been little public pressure to preserve the thylacine, nor was much concern expressed by scientists "
              }
            },
            {
              "number": 10,
              "prompt": "T.T. Flynn’s proposal to rehome captive thylacines on an island proved to be impractical.",
              "answer": "NOT GIVEN",
              "explanation": "In 1914, he was sufficiently concerned about the scarcity of the thylacine to suggest that some should be captured and placed on a small island",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "In 1914, he was sufficiently concerned about the scarcity of the thylacine to suggest that some should be captured and p"
              }
            },
            {
              "number": 11,
              "prompt": "There were still reasonable numbers of thylacines in existence when a piece of legislation protecting the species during their breeding season was passed. === PAGE 3 ===",
              "answer": "FALSE",
              "explanation": "But it was not until 1929, with the species on the very edge of extinction, that Tasmania’s Animals and Birds Protection Board passed a motion protecting thylacines only for the month of December, which was thought to be their prime breeding season",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "But it was not until 1929, with the species on the very edge of extinction, that Tasmania’s Animals and Birds Protection"
              }
            },
            {
              "number": 12,
              "prompt": "From 1930 to 1936, the only known living thylacines were all in captivity.",
              "answer": "TRUE",
              "explanation": "The last known wild thylacine to be killed was shot by a farmer in the north- east of Tasmania in 1930, leaving just captive specimens. Official protection of the species by the Tasmanian government was introduced in July 1936, 59 days before the last known individual died in Hobart Zoo on 7th September, 1936.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "The last known wild thylacine to be killed was shot by a farmer in the north- east of Tasmania in 1930, leaving just cap"
              }
            },
            {
              "number": 13,
              "prompt": "Attempts to find living thylacines are now rarely made.",
              "answer": "NOT GIVEN",
              "explanation": "There have been numerous expeditions and searches for the thylacine over the years, none of which has produced definitive evidence that thylacines still exist. The species was declared extinct by the Tasmanian government in 1986.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "There have been numerous expeditions and searches for the thylacine over the years, none of which has produced definitiv"
              }
            }
          ],
          "id": "g6"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Palm oil",
      "passage": [
        {
          "ref": "A",
          "text": "Palm oil is an edible oil derived from the fruit of the African oil palm tree, and is currently the most consumed vegetable oil in the world. It’s almost certainly in the soap we wash with in the morning, the sandwich we have for lunch, and the biscuits we snack on during the day. Why is palm oil so attractive for manufacturers? Primarily because its unique properties - such as remaining solid at room temperature - make it an ideal ingredient for long-term preservation, allowing many packaged foods on supermarket shelves to have ‘best before’ dates of months, even years, into the future."
        },
        {
          "ref": "B",
          "text": "Many farmers have seized the opportunity to maximise the planting of oil palm trees. Between 1990 and 2012, the global land area devoted to growing oil palm trees grew from 6 to 17 million hectares, now accounting for around ten percent of total cropland in the entire world. From a mere two million tonnes of palm oil being produced annually globally 50 years ago, there are now around 60 million tonnes produced every single year, a figure looking likely to double or even triple by the middle of the century."
        },
        {
          "ref": "C",
          "text": "However, there are multiple reasons why conservationists cite the rapid spread of oil palm plantations as a major concern. There are countless news stories of deforestation, habitat destruction and dwindling species populations, all as a direct result of land clearing to establish oil palm tree monoculture on an industrial scale, particularly in Malaysia and Indonesia. Endangered species - most famously the Sumatran orangutan, but also rhinos, elephants, tigers, and numerous other fauna - have suffered from the unstoppable spread of oil palm plantations."
        },
        {
          "ref": "D",
          "text": "‘Palm oil is surely one of the greatest threats to global biodiversity,’ declares Dr Farnon Ellwood of the University of the West of England, Bristol. ‘Palm oil is replacing rainforest, and rainforest is where all the species are. That’s a problem.’ This has led to some radical questions among environmentalists, such as whether consumers should try to boycott palm oil entirely. Meanwhile Bhavani Shankar, Professor at London’s School of Oriental and African Studies, argues, ‘It’s easy to say that palm oil is the enemy and we should be against it. It makes for a more dramatic story, and it’s very intuitive. But given the complexity of the argument, I think a much more nuanced story is closer to the truth.’"
        },
        {
          "ref": "E",
          "text": "One response to the boycott movement has been the argument for the vital role palm oil plays in lifting many millions of people in the developing world out of poverty. Is it desirable to have palm oil boycotted, replaced, eliminated from the global supply chain, given how many low-income people in developing countries depend on it for their livelihoods? How best to strike a utilitarian balance between these competing factors has become a serious bone of contention."
        },
        {
          "ref": "F",
          "text": "Even the deforestation argument isn’t as straightforward as it seems. Oil palm plantations produce at least four and potentially up to ten times more oil per hectare than soybean, rapeseed, sunflower or other competing oils. That immensely high yield - which is predominantly what makes it so profitable - is potentially also an ecological benefit. If ten times more palm oil can be produced from a patch of land than any competing oil, then ten times more land would need to be cleared in order to produce the same volume of oil from that competitor. As for the question of carbon emissions, the issue really depends on what oil palm trees are replacing. Crops vary in the degree to which they sequester carbon - in other words, the amount of carbon they capture from the atmosphere and store within the plant. The more carbon a plant sequesters, the more it reduces the effect of climate change. As Shankar explains: ‘[Palm oil production] actually sequesters more carbon in some ways than other alternatives. [...] Of course, if you’re cutting down virgin forest it’s terrible - that’s what’s happening in Indonesia and Malaysia, it’s been allowed to get out of hand. But if it’s replacing rice, for example, it might actually sequester more carbon.’"
        },
        {
          "ref": "G",
          "text": "The industry is now regulated by a group called the Roundtable on Sustainable Palm Oil (RSPO), consisting of palm growers, retailers, product manufacturers, and other interested parties. Over the past decade or so, an agreement has gradually been reached regarding standards that producers of palm oil have to meet in order for their product to be regarded as officially ‘sustainable’. The RSPO insists upon no virgin forest clearing, transparency and regular assessment of carbon stocks, among other criteria. Only once these requirements are fully satisfied is the oil allowed to be sold as certified sustainable palm oil (CSPO). Recent figures show that the RSPO now certifies around 12 million tonnes of palm oil annually, equivalent to roughly 21 percent of the world’s total palm oil production."
        },
        {
          "ref": "H",
          "text": "There is even hope that oil palm plantations might not need to be such sterile monocultures, or ‘green deserts’, as Ellwood describes them. New research at Ellwood’s lab hints at one plant which might make all the difference. The bird’s nest fern (Asplenium nidus) grows on trees in an epiphytic fashion (meaning it’s dependent on the tree only for support, not for nutrients), and is native to many tropical regions, where as a keystone species it performs a vital ecological role. Ellwood believes that reintroducing the bird’s nest fern into oil palm plantations could potentially allow these areas to recover their biodiversity, providing a home for all manner of species, from fungi and bacteria, to invertebrates such as insects, amphibians, reptiles and even mammals."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–20",
          "instructions": "Reading Passage 2 has eight sections, A–H. Which section contains the following information?",
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
              "number": 14,
              "prompt": "examples of a range of potential environmental",
              "answer": "F",
              "explanation": "Oil palm plantations produce at least four and potentially up to ten times more oil per hectare than soybean, rapeseed, sunflower or other competing oils. That immensely high yield - which is predominantly what makes it so profitable - is potentially also an ecological benefit.",
              "evidence": {
                "sectionId": "p2",
                "ref": "F",
                "quote": "Oil palm plantations produce at least four and potentially up to ten times more oil per hectare than soybean, rapeseed, "
              }
            },
            {
              "number": 15,
              "prompt": "description of an organisation which controls",
              "answer": "G",
              "explanation": "The RSPO insists upon no virgin forest clearing, transparency and regular assessment of carbon stocks, among other criteria. Only once these requirements are fully satisfied is the oil allowed to be sold as certified sustainable palm oil (CSPO).",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "The RSPO insists upon no virgin forest clearing, transparency and regular assessment of carbon stocks, among other crite"
              }
            },
            {
              "number": 16,
              "prompt": "examples of the widespread global use of palm",
              "answer": "A",
              "explanation": "Palm oil is an edible oil derived from the fruit of the African oil palm tree, and is currently the most consumed vegetable oil in the world.",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "Palm oil is an edible oil derived from the fruit of the African oil palm tree, and is currently the most consumed vegeta"
              }
            },
            {
              "number": 17,
              "prompt": "reference to a particular species which could",
              "answer": "H",
              "explanation": "Ellwood believes that reintroducing the bird’s nest fern into oil palm plantations could potentially allow these areas to recover their biodiversity, providing a home for all manner of species, from fungi and bacteria, to invertebrates such as insects, amphibians, reptiles and even mammals.",
              "evidence": {
                "sectionId": "p2",
                "ref": "H",
                "quote": "Ellwood believes that reintroducing the bird’s nest fern into oil palm plantations could potentially allow these areas t"
              }
            },
            {
              "number": 18,
              "prompt": "figures illustrating the rapid expansion of the",
              "answer": "B",
              "explanation": "Between 1990 and 2012, the global land area devoted to growing oil palm trees grew from 6 to 17 million hectares, now accounting for around ten percent of total cropland in the entire world",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "Between 1990 and 2012, the global land area devoted to growing oil palm trees grew from 6 to 17 million hectares, now ac"
              }
            },
            {
              "number": 19,
              "prompt": "an economic justification for not opposing the",
              "answer": "E",
              "explanation": "One response to the boycott movement has been the argument for the vital role palm oil plays in lifting many millions of people in the developing world out of poverty",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "One response to the boycott movement has been the argument for the vital role palm oil plays in lifting many millions of"
              }
            },
            {
              "number": 20,
              "prompt": "examples of creatures badly affected by the",
              "answer": "C",
              "explanation": "Endangered species - most famously the Sumatran orangutan, but also rhinos, elephants, tigers, and numerous other fauna - have suffered from the unstoppable spread of oil palm plantations.",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "Endangered species - most famously the Sumatran orangutan, but also rhinos, elephants, tigers, and numerous other fauna "
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 21–22",
          "instructions": "Choose TWO letters, A–E. Which TWO statements are made about the Roundtable on Sustainable Palm Oil (RSPO)?",
          "options": [
            {
              "key": "A",
              "text": "Its membership has grown steadily over the course of the last decade."
            },
            {
              "key": "B",
              "text": "It demands that certified producers be open and honest about their practices."
            },
            {
              "key": "C",
              "text": "It took several years to establish its set of criteria for sustainable palm oil certification."
            },
            {
              "key": "D",
              "text": "Its regulations regarding sustainability are stricter than those governing other industries."
            },
            {
              "key": "E",
              "text": "It was formed at the request of environmentalists concerned about the loss of virgin forests."
            }
          ],
          "questions": [
            {
              "number": 21,
              "prompt": "Which TWO statements are made about the Roundtable on Sustainable Palm Oil (RSPO)?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Over the past decade or so The RSPO insists upon no virgin forest clearing, transparency",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Over the past decade or so The RSPO insists upon no virgin forest clearing, tran"
              }
            },
            {
              "number": 22,
              "prompt": "Which TWO statements are made about the Roundtable on Sustainable Palm Oil (RSPO)?",
              "answer": [
                "B",
                "C"
              ],
              "explanation": "Over the past decade or so The RSPO insists upon no virgin forest clearing, transparency",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Over the past decade or so The RSPO insists upon no virgin forest clearing, tran"
              }
            }
          ],
          "id": "g21"
        },
        {
          "type": "completion",
          "label": "Questions 23–26",
          "instructions": "Complete the sentences below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "One advantage of palm oil for manufacturers is that it stays",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 23
            },
            {
              "kind": "static",
              "text": "even when not refrigerated. The",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 24
            },
            {
              "kind": "static",
              "text": "is the best known of the animals suffering habitat loss as a result of the spread of oil palm plantations. As one of its criteria for the certification of sustainable palm oil, the RSPO insists that growers check",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 25
            },
            {
              "kind": "static",
              "text": "on a routine basis. Ellwood and his researchers are looking into whether the bird’s nest fern could restore",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 26
            },
            {
              "kind": "static",
              "text": "in areas where oil palm trees are grown.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 23,
              "prompt": "for manufacturers is that it stays _______",
              "answer": [
                "solid"
              ],
              "wordLimit": 2,
              "explanation": "Why is palm oil so attractive for manufacturers? Primarily because its unique properties - such as remaining solid at room temperature - make it an ideal ingredient for long-term preservation",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "Why is palm oil so attractive for manufacturers? Primarily because its unique properties - such as remaining solid at ro"
              }
            },
            {
              "number": 24,
              "prompt": "_______ [24]",
              "answer": [
                "orangutan"
              ],
              "wordLimit": 2,
              "explanation": "/ Sumatran orangutan / orang-utan / Sumatran orang- utan Endangered species - most famously the Sumatran orangutan, but also rhinos, elephants, tigers, and numerous other fauna - have suffered from the unstoppable spread of oil palm plantations."
            },
            {
              "number": 25,
              "prompt": "RSPO insists that growers check _______",
              "answer": [
                "carbon"
              ],
              "wordLimit": 2,
              "explanation": "stocks The RSPO insists upon no virgin forest clearing, transparency and regular assessment of carbon stocks, among other criteria."
            },
            {
              "number": 26,
              "prompt": "the bird’s nest fern could restore _______",
              "answer": [
                "biodiversity"
              ],
              "wordLimit": 2,
              "explanation": "Ellwood believes that reintroducing the bird’s nest fern into oil palm plantations could potentially allow these areas to recover their biodiversity",
              "evidence": {
                "sectionId": "p2",
                "ref": "H",
                "quote": "Ellwood believes that reintroducing the bird’s nest fern into oil palm plantations could potentially allow these areas t"
              }
            }
          ],
          "id": "g23"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Building the Skyline: The Birth and Growth of Manhattan’s Skyscrapers",
      "passage": [
        {
          "ref": "1",
          "text": "Katharine L. Shester reviews a book by Jason Barr about the development of New York City In Building the Skyline, Jason Barr takes the reader through a detailed history of New York City. The book combines geology, history, economics, and a lot of data to explain why business clusters developed where they did and how the early decisions of workers and firms shaped the skyline we see today. Building the Skyline is organized into two distinct parts. The first is primarily historical and addresses New York’s settlement and growth from 1609 to 1900; the second deals primarily with the 20th century and is a compilation of chapters commenting on different aspects of New York’s urban development. The tone and organization of the book changes somewhat between the first and second parts, as the latter chapters incorporate aspects of Barr’s related research papers. Barr begins chapter one by taking the reader on a ‘helicopter time-machine’ ride - giving a fascinating account of how the New York landscape in 1609 might have looked from the sky. He then moves on to a subterranean walking tour of the city, indicating the location of rock and water below the subsoil, before taking the reader back to the surface. His love of the city comes through as he describes various fun facts about the location of the New York residence of early 19th-century vice-president Aaron Burr as well as a number of legends about the city. Chapters two and three take the reader up to the Civil War (1861-1865), with chapter two focusing on the early development of land and the implementation of a grid system in 1811. Chapter three focuses on land use before the Civil War. Both chapters are informative and well researched and set the stage for the economic analysis that comes later in the book. I would have liked Barr to expand upon his claim that existing tenements* prevented skyscrapers in certain neighborhoods because ‘likely no skyscraper developer was interested in performing the necessary “slum clearance’”. Later in the book, Barr makes the claim that the depth of bedrock** was not a limiting factor for developers, as foundation costs were a small fraction of the cost of development. At first glance, it is not obvious why slum clearance would be limiting, while more expensive foundations would not. Chapter four focuses on immigration and the location of neighborhoods and tenements in the late 19th century. Barr identifies four primary immigrant enclaves and analyzes their locations in terms of the amenities available in the area. Most of these enclaves were located on the least valuable land, between the industries located on the waterfront and the wealthy neighborhoods bordering Central Park."
        },
        {
          "ref": "2",
          "text": "Part two of the book begins with a discussion of the economics of skyscraper height. In chapter five, Barr distinguishes between engineering height, economic height, and developer height - where engineering height is the tallest building that can be safely made at a given time, economic height is the height that is most efficient from society’s point of view, and developer height is the actual height chosen by the developer, who is attempting to maximize return on investment. Chapter five also has an interesting discussion of the technological advances that led to the construction of skyscrapers. For example, the introduction of iron and steel skeletal frames made thick, load-bearing walls unnecessary, expanding the usable square footage of buildings and increasing the use of windows and availability of natural light. Chapter six then presents data on building height throughout the 20th century and uses regression analysis to ‘predict’ building construction. While less technical than the research paper on which the chapter is based, it is probably more technical than would be preferred by a general audience."
        },
        {
          "ref": "3",
          "text": "Chapter seven tackles the ‘bedrock myth’, the assumption that the absence of bedrock close to the surface between Downtown and Midtown New York is the reason for skyscrapers not being built between the two urban centers. Rather, Barr argues that while deeper bedrock does increase foundation costs, these costs were neither prohibitively high nor were they large compared to the overall cost of building a skyscraper. What I enjoyed the most about this chapter was Barr’s discussion of how foundations are actually built. He describes the use of caissons, which enable workers to dig down for considerable distances, often below the water table, until they reach bedrock. Barr’s thorough technological history discusses not only how caissons work, but also the dangers involved. While this chapter references empirical research papers, it is a relatively easy read."
        },
        {
          "ref": "4",
          "text": "Chapters eight and nine focus on the birth of Midtown and the building boom of the 1920s. Chapter eight contains lengthy discussions of urban economic theory that may serve as a distraction to readers primarily interested in New York. However, they would be well-suited for undergraduates learning about the economics of cities. In the next chapter, Barr considers two of the primary explanations for the building boom of the 1920s - the first being exuberance, and the second being financing. He uses data to assess the viability of these two explanations and finds that supply and demand factors explain much of the development of the 1920s; though it enabled the boom, cheap credit was not, he argues, the primary cause."
        },
        {
          "ref": "5",
          "text": "In the final chapter (chapter 10), Barr discusses another of his empirical papers that estimates Manhattan land values from the mid-19th century to the present day. The data work that went into these estimations is particularly impressive. Toward the end of the chapter, Barr assesses ‘whether skyscrapers are a cause or an effect of high land values’. He finds that changes in land values predict future building height, but the reverse is not true. The book ends with an epilogue, in which Barr discusses the impact of climate change on the city and makes policy suggestions for New York going forward."
        },
        {
          "ref": "6",
          "text": "*a tenement: a multi-occupancy building of any sort, but particularly a run-down apartment building or slum building **bedrock: the solid, hard rock in the ground that lies under a loose layer of soil"
        }
      ],
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 27–31",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 27,
              "prompt": "What point does Shester make about Barr’s book in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "It gives a highly original explanation for urban development."
                },
                {
                  "key": "B",
                  "text": "Elements of Barr’s research papers are incorporated throughout the book."
                },
                {
                  "key": "C",
                  "text": "Other books that are available on the subject have taken a different approach."
                },
                {
                  "key": "D",
                  "text": "It covers a range of factors that affected the development of New York."
                }
              ],
              "answer": "D",
              "explanation": "The first is primarily historical and addresses New York’s settlement and growth from 1609 to 1900; the second deals primarily with the 20th century and is a compilation of chapters commenting on different aspects of New York’s urban development.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "The first is primarily historical and addresses New York’s settlement and growth from 1609 to 1900; the second deals pri"
              }
            },
            {
              "number": 28,
              "prompt": "How does Shester respond to the information in the book about tenements?",
              "options": [
                {
                  "key": "A",
                  "text": "She describes the reasons for Barr’s interest."
                },
                {
                  "key": "B",
                  "text": "She indicates a potential problem with Barr’s analysis."
                },
                {
                  "key": "C",
                  "text": "She compares Barr’s conclusion with that of other writers."
                },
                {
                  "key": "D",
                  "text": "She provides details about the sources Barr used for his research."
                }
              ],
              "answer": "B",
              "explanation": "At first glance, it is not obvious why slum clearance would be limiting, while more expensive foundations would not.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "At first glance, it is not obvious why slum clearance would be limiting, while more expensive foundations would not."
              }
            },
            {
              "number": 29,
              "prompt": "What does Shester say about chapter six of the book?",
              "options": [
                {
                  "key": "A",
                  "text": "It contains conflicting data."
                },
                {
                  "key": "B",
                  "text": "It focuses too much on possible trends."
                },
                {
                  "key": "C",
                  "text": "It is too specialised for most readers."
                },
                {
                  "key": "D",
                  "text": "It draws on research that is out of date."
                }
              ],
              "answer": "C",
              "explanation": "While less technical than the research paper on which the chapter is based, it is probably more technical than would be preferred by a general audience.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "While less technical than the research paper on which the chapter is based, it is probably more technical than would be "
              }
            },
            {
              "number": 30,
              "prompt": "What does Shester suggest about the chapters focusing on the 1920s building boom?",
              "options": [
                {
                  "key": "A",
                  "text": "The information should have been organised differently."
                },
                {
                  "key": "B",
                  "text": "More facts are needed about the way construction was financed."
                },
                {
                  "key": "C",
                  "text": "The explanation that is given for the building boom is unlikely."
                },
                {
                  "key": "D",
                  "text": "Some parts will have limited appeal to certain people."
                }
              ],
              "answer": "D",
              "explanation": "Chapter eight contains lengthy discussions of urban economic theory that may serve as a distraction to readers primarily interested in New York.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Chapter eight contains lengthy discussions of urban economic theory that may serve as a distraction to readers primarily"
              }
            },
            {
              "number": 31,
              "prompt": "What impresses Shester the most about the chapter on land values?",
              "options": [
                {
                  "key": "A",
                  "text": "the broad time period that is covered"
                },
                {
                  "key": "B",
                  "text": "the interesting questions that Barr asks"
                },
                {
                  "key": "C",
                  "text": "the nature of the research into the topic"
                },
                {
                  "key": "D",
                  "text": "the recommendations Barr makes for the future"
                }
              ],
              "answer": "C",
              "explanation": "In the final chapter (chapter 10), Barr discusses another of his empirical papers that estimates Manhattan land values from the mid-19th century to the present day. The data work that went into these estimations is particularly impressive.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "In the final chapter (chapter 10), Barr discusses another of his empirical papers that estimates Manhattan land values f"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 32–35",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 32,
              "prompt": "The description in the first chapter of how New York probably looked from the air in the early 1600s lacks interest.",
              "answer": "NO",
              "explanation": "Barr begins chapter one by taking the reader on a ‘helicopter time-machine’ ride - giving a fascinating account of how the New York landscape in 1609 might have looked from the sky.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Barr begins chapter one by taking the reader on a ‘helicopter time-machine’ ride - giving a fascinating account of how t"
              }
            },
            {
              "number": 33,
              "prompt": "Chapters two and three prepare the reader well for material yet to come.",
              "answer": "YES",
              "explanation": "Both chapters are informative and well researched and set the stage for the economic analysis that comes later in the book.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Both chapters are informative and well researched and set the stage for the economic analysis that comes later in the bo"
              }
            },
            {
              "number": 34,
              "prompt": "The biggest problem for many nineteenth-century New York immigrant neighbourhoods was a lack of amenities.",
              "answer": "NOT GIVEN",
              "explanation": "Chapter four focuses on immigration and the location of neighborhoods and tenements in the late 19th century. Barr identifies four primary immigrant enclaves and analyzes their locations in terms of the amenities available in the area.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Chapter four focuses on immigration and the location of neighborhoods and tenements in the late 19th century. Barr ident"
              }
            },
            {
              "number": 35,
              "prompt": "In the nineteenth century, New York’s immigrant neighbourhoods tended to concentrate around the harbour.",
              "answer": "NO",
              "explanation": "Most of these enclaves were located on the least valuable land, between the industries located on the waterfront and the wealthy neighborhoods bordering Central Park.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Most of these enclaves were located on the least valuable land, between the industries located on the waterfront and the"
              }
            }
          ],
          "id": "g32"
        },
        {
          "type": "completion",
          "label": "Questions 36–40",
          "instructions": "Complete the summary using the list of words, A–J, below.",
          "summaryTitle": "",
          "summaryText": "The bedrock myth\nIn chapter seven, Barr indicates how the lack of bedrock close to the surface does not explain\nwhy skyscrapers are absent from {36} . He points out that although the\ncost of foundations increases when bedrock is deep below the surface, this cannot be regarded\nas {37} , especially when compared to {38} .\nA particularly enjoyable part of the chapter was Barr’s account of how foundations are built. He\ndescribes not only how {39} are made possible by the use of caissons, but\nhe also discusses their {40} . The chapter is well researched but relatively\neasy to understand.\nA. development plansB. deep excavations C. great distance\n\nD. excessive expenseE. impossible tasksF. associated risks\nG. water level H. specific areas I. total expenditure\nJ. construction guidelines",
          "wordBank": [
            {
              "key": "A",
              "text": "development plans"
            },
            {
              "key": "B",
              "text": "deep excavations"
            },
            {
              "key": "C",
              "text": "great distance"
            },
            {
              "key": "D",
              "text": "excessive expense"
            },
            {
              "key": "E",
              "text": "impossible tasks"
            },
            {
              "key": "F",
              "text": "associated risks"
            },
            {
              "key": "G",
              "text": "water level"
            },
            {
              "key": "H",
              "text": "specific areas"
            },
            {
              "key": "I",
              "text": "total expenditure"
            },
            {
              "key": "J",
              "text": "construction guidelines"
            }
          ],
          "questions": [
            {
              "number": 36,
              "prompt": "",
              "answer": "H",
              "explanation": "the assumption that the absence of bedrock close to the surface between Downtown and Midtown New York is the reason for skyscrapers not being built between the two urban centers.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "the assumption that the absence of bedrock close to the surface between Downtown and Midtown New York is the reason for "
              }
            },
            {
              "number": 37,
              "prompt": "",
              "answer": "D",
              "explanation": "Barr argues that while deeper bedrock does increase foundation costs, these costs were neither prohibitively high nor were they large",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "Barr argues that while deeper bedrock does increase foundation costs, these costs were neither prohibitively high nor we"
              }
            },
            {
              "number": 38,
              "prompt": "",
              "answer": "I",
              "explanation": "compared to the overall cost of building a skyscraper",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "compared to the overall cost of building a skyscraper"
              }
            },
            {
              "number": 39,
              "prompt": "",
              "answer": "B",
              "explanation": "He describes the use of caissons, which enable workers to dig down for considerable distances, often below the water table, until they reach bedrock.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "He describes the use of caissons, which enable workers to dig down for considerable distances, often below the water tab"
              }
            },
            {
              "number": 40,
              "prompt": "",
              "answer": "F",
              "explanation": "Barr’s thorough technological history discusses not only how caissons work, but also the dangers involved.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "Barr’s thorough technological history discusses not only how caissons work, but also the dangers involved."
              }
            }
          ],
          "id": "g36"
        }
      ]
    }
  ]
}
$c17t3r$,
  true
);
