DELETE FROM public.tests WHERE book='Cambridge IELTS 12' AND test_label='Test 4' AND skill='reading';
INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 12',
  'Test 4',
  'academic',
  3600,
  $c12t4r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The History of Glass",
      "passage": [
        {
          "ref": "1",
          "text": "From our earliest origins, man has been making use of glass. Historians have discovered that a type of natural glass – obsidian – formed in places such as the mouth of a volcano as a result of the intense heat of an eruption melting sand – was first used as tips for spears. Archaeologists have even found evidence of man-made glass which dates back to 4000 BC; this took the form of glazes used for coating stone beads. It was not until 1500 BC, however, that the first hollow glass container was made by covering a sand core with a layer of molten glass."
        },
        {
          "ref": "2",
          "text": "Glass blowing became the most common way to make glass containers from the first century BC. The glass made during this time was highly coloured due to the impurities of the raw material. In the first century AD, methods of creating colourless glass were developed, which was then tinted by the addition of colouring materials. The secret of glass making was taken across Europe by the Romans during this century. However, they guarded the skills and technology required to make glass very closely, and it was not until their empire collapsed in 476 AD that glass-making knowledge became widespread throughout Europe and the Middle East. From the 10th century onwards, the Venetians gained a reputation for technical skill and artistic ability in the making of glass bottles, and many of the city’s craftsmen left Italy to set up glassworks throughout Europe. A major milestone in the history of glass occurred with the invention of lead crystal glass by the English glass manufacturer George Ravenscroft (1632-1683). He attempted to counter the effect of clouding that sometimes occurred in blown glass by introducing lead to the raw materials used in the process. The new glass he created was softer and easier to decorate, and had a higher refractive index, adding to its brilliance and beauty, and it proved invaluable to the optical industry. It is thanks to Ravenscroft’s invention that optical lenses, astronomical telescopes, microscopes and the like became possible."
        },
        {
          "ref": "3",
          "text": "In Britain, the modern glass industry only really started to develop after the repeal of the Excise Act in 1845. Before that time, heavy taxes had been placed on the amount of glass melted in a glasshouse, and were levied continuously from 1745 to 1845. Joseph Paxton’s Crystal Palace at London’s Great Exhibition of 1851 marked the beginning of glass as a material used in the building industry. This revolutionary new building encouraged the use of glass in public, domestic and horticultural architecture. Glass manufacturing techniques also improved with the advancement of science and the development of better technology."
        },
        {
          "ref": "4",
          "text": "From 1887 onwards, glass making developed from traditional mouth-blowing to a semi-automatic process, after factory-owner HM Ashley introduced a machine capable of producing 200 bottles per hour in Castleford, Yorkshire, England – more than three times quicker than any previous production method. Then in 1907, the first fully automated machine was developed in the USA by Michael Owens – founder of the Owens Bottle Machine Company (later the major manufacturers Owens-Illinois) – and installed in its factory. Owens’ invention could produce an impressive 2,500 bottles per hour. Other developments followed rapidly, but it was not until the First World War, when Britain became cut off from essential glass suppliers, that glass became part of the scientific sector. Previous to this, glass had been as a craft rather than a precise science."
        },
        {
          "ref": "5",
          "text": "Today, glass making is big business. It has become a modern, hi-tech industry operating in a fiercely competitive global market where quality, design and service levels are critical to maintaining market share. Modern glass plants are capable of making millions of glass containers a day in many different colours, with green, brown and clear remaining the most popular. Few of us can imagine modern life without glass. It features in almost every aspect of our lives – in our homes, our cars and whenever we sit down to eat or drink. Glass packaging is used for many products, many beverages are sold in glass, as are numerous foodstuffs, as well as medicines and cosmetics."
        },
        {
          "ref": "6",
          "text": "Glass is an ideal material for recycling, and with growing consumer concern for green issues, glass bottles and jars are becoming ever more popular. Glass recycling is good news for the environment. It saves used glass containers being sent to landfill. As less energy is needed to melt recycled glass than to melt down raw materials, this also saves fuel and production costs. Recycling also reduces the need for raw materials to be quarried, thus saving precious resources."
        }
      ],
      "groups": [
        {
          "id": "g1",
          "type": "completion",
          "label": "Questions 1–8",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formTitle": "The History of Glass",
          "formContent": [
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "question",
              "number": 2
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
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "From 10th century: Venetians became famous for making bottles out of glass.",
              "noBullet": true
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
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Early humans used a material called _______ to make the sharp points of their",
              "answer": [
                "obsidian"
              ],
              "wordLimit": 1,
              "explanation": "A type of natural glass called obsidian was first used as tips for spears.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "a type of natural glass – obsidian – formed in places such as the mouth of a volcano"
              }
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "spears"
              ],
              "wordLimit": 1,
              "explanation": "Obsidian was first used as tips for spears.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "was first used as tips for spears"
              }
            },
            {
              "number": 3,
              "prompt": "4000 BC: _______ made of stone were covered in a coating of man-made glass.",
              "answer": [
                "beads"
              ],
              "wordLimit": 1,
              "explanation": "Man-made glass was used as glazes for coating stone beads.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "this took the form of glazes used for coating stone beads"
              }
            },
            {
              "number": 4,
              "prompt": "First century BC: glass was coloured because of the _______ in the material.",
              "answer": [
                "impurities"
              ],
              "wordLimit": 1,
              "explanation": "Glass was highly coloured due to the impurities of the raw material.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The glass made during this time was highly coloured due to the impurities of the raw material"
              }
            },
            {
              "number": 5,
              "prompt": "Until 476 AD: Only the _______ knew how to make glass.",
              "answer": [
                "Romans"
              ],
              "wordLimit": 1,
              "explanation": "The Romans guarded the skills and technology required to make glass.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "The secret of glass making was taken across Europe by the Romans during this century. However, they guarded the skills and technology required to make glass very closely"
              }
            },
            {
              "number": 6,
              "prompt": "17th century: George Ravenscroft developed a process using _______ to avoid the occurrence of",
              "answer": [
                "lead"
              ],
              "wordLimit": 1,
              "explanation": "Ravenscroft countered clouding by introducing lead to the raw materials.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "He attempted to counter the effect of clouding that sometimes occurred in blown glass by introducing lead to the raw materials"
              }
            },
            {
              "number": 7,
              "prompt": "_______ in blown glass.",
              "answer": [
                "clouding"
              ],
              "wordLimit": 1,
              "explanation": "Lead was introduced to counter the effect of clouding.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "He attempted to counter the effect of clouding that sometimes occurred in blown glass"
              }
            },
            {
              "number": 8,
              "prompt": "Mid-19th century: British glass production developed after changes to laws concerning _______",
              "answer": [
                "taxes"
              ],
              "wordLimit": 1,
              "explanation": "The glass industry developed after the repeal of the Excise Act; heavy taxes had been placed on glass production.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "heavy taxes had been placed on the amount of glass melted in a glasshouse, and were levied continuously from 1745 to 1845"
              }
            }
          ]
        },
        {
          "id": "g2",
          "type": "true_false_notgiven",
          "label": "Questions 9–13",
          "instructions": "Do the following statements agree with the information given in the passage? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 9,
              "prompt": "In 1887, HM Ashley had the fastest bottle-producing machine that existed at the time.",
              "answer": "TRUE",
              "explanation": "Ashley’s machine could produce 200 bottles per hour, more than three times quicker than any previous method.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "factory-owner HM Ashley introduced a machine capable of producing 200 bottles per hour … more than three times quicker than any previous production method"
              }
            },
            {
              "number": 10,
              "prompt": "Michael Owens was hired by a large US company to design a fully-automated bottle manufacturing machine for them.",
              "answer": "FALSE",
              "explanation": "Owens was the founder of the Owens Bottle Machine Company – he was not hired by an existing company.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "the first fully automated machine was developed in the USA by Michael Owens – founder of the Owens Bottle Machine Company"
              }
            },
            {
              "number": 11,
              "prompt": "Nowadays, most glass is produced by large international manufacturers.",
              "answer": "NOT GIVEN",
              "explanation": "The passage says glass making is big business but does not specify that most is produced by large international manufacturers.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "Today, glass making is big business. It has become a modern, hi-tech industry operating in a fiercely competitive global market"
              }
            },
            {
              "number": 12,
              "prompt": "Concern for the environment is leading to an increased demand for glass containers.",
              "answer": "TRUE",
              "explanation": "With growing consumer concern for green issues, glass bottles and jars are becoming ever more popular.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "with growing consumer concern for green issues, glass bottles and jars are becoming ever more popular"
              }
            },
            {
              "number": 13,
              "prompt": "It is more expensive to produce recycled glass than to manufacture new glass.",
              "answer": "FALSE",
              "explanation": "Less energy is needed to melt recycled glass than to melt down raw materials, so recycling saves fuel and costs.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "As less energy is needed to melt recycled glass than to melt down raw materials, this also saves fuel and production costs"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p2",
      "title": "Bring back the big cats",
      "passage": [
        {
          "ref": "1",
          "text": "It’s time to start returning vanished native animals to Britain, says John Vesty There is a poem, written around 598 AD, which describes hunting a mystery animal called a llewyn. But what was it? Nothing seemed to fit, until 2006, when an animal bone, dating from around the same period, was found in the Kinsey Cave in northern England. Until this discovery, the lynx – a large spotted cat with tasselled ears – was presumed to have died out in Britain at least 6,000 years ago, before the inhabitants of these islands took up farming. But the 2006 find, together with three others in Yorkshire and Scotland, is compelling evidence that the lynx and the mysterious llewyn were in fact one and the same animal. If this is so, it would bring forward the tassel-eared cat’s estimated extinction date by roughly 5,000 years."
        },
        {
          "ref": "2",
          "text": "However, this is not quite the last glimpse of the animal in British culture. A 9th-century stone cross from the Isle of Eigg shows, alongside the deer, boar and aurochs pursued by a mounted hunter, a speckled cat with tasselled ears. Were it not for the animal’s backside having worn away with time, we could have been certain, as the lynx’s stubby tail is unmistakable. But even without this key feature, it’s hard to see what else the creature could have been. The lynx is now becoming the totemic animal of a movement that is transforming British environmentalism: rewilding."
        },
        {
          "ref": "3",
          "text": "Rewilding means the mass restoration of damaged ecosystems. It involves letting trees return to places that have been denuded, allowing parts of the seabed to recover from trawling and dredging, permitting rivers to flow freely again. Above all, it means bringing back missing species. One of the most striking findings of modern ecology is that ecosystems without large predators behave in completely different ways from those that retain them. Some of them drive dynamic processes that resonate through the whole food chain, creating niches for hundreds of species that might otherwise struggle to survive. The killers turn out to be bringers of life."
        },
        {
          "ref": "4",
          "text": "Such findings present a big challenge to British conservation, which has often selected arbitrary assemblages of plants and animals and sought, at great effort and expense, to prevent them from changing. It has tried to preserve the living world as if it were a jar of pickles, letting nothing in and nothing out, keeping nature in a state of arrested development. But ecosystems are not merely collections of species; they are also the dynamic and ever-shifting relationships between them. And this dynamism often depends on large predators."
        },
        {
          "ref": "5",
          "text": "At sea the potential is even greater: by protecting large areas from commercial fishing, we could once more see what 18th-century literature describes: vast shoals of fish being chased by fin and sperm whales, within sight of the English shore. This policy would also greatly boost catches in the surrounding seas; the fishing industry’s insistence on scouring every inch of seabed, leaving no breeding reserves, could not be more damaging to its own interests."
        },
        {
          "ref": "6",
          "text": "Rewilding is a rare example of an environmental movement in which campaigners articulate what they are for rather than only what they are against. One of the reasons why the enthusiasm for rewilding is spreading so quickly in Britain is that it helps to create a more inspiring vision than the green movement’s usual promise of ‘Follow us and the world will be slightly less awful than it would otherwise have been.’"
        },
        {
          "ref": "7",
          "text": "The lynx presents no threat to human beings: there is no known instance of one preying on people. It is a specialist predator of roe deer, a species that has exploded in Britain in recent decades, holding back, by intensive browsing, attempts to re-establish forests. It will also winkle out sika deer: an exotic species that is almost impossible for human beings to control, as it hides in impenetrable plantations of young trees. The attempt to reintroduce this predator marries well with the aim of bringing forests back to parts of our bare and barren uplands. The lynx requires deep cover, and as such presents little risk to sheep and other livestock, which are supposed, as a condition of farm subsidies, to be kept out of the woods."
        },
        {
          "ref": "8",
          "text": "On a recent trip to the Cairngorm Mountains, I heard several conservationists suggest that the lynx could be reintroduced there within 20 years. If trees return to the bare hills elsewhere in Britain, the big cats could soon follow. There is nothing extraordinary about these proposals, seen from the perspective of anywhere else in Europe. The lynx has now been reintroduced to the Jura Mountains, the Alps, the Vosges in eastern France and the Harz mountains in Germany, and has re-established itself in many more places. The European population has tripled since 1970 to roughly 10,000. As with wolves, bears, beavers, boar, bison, moose and many other species, the lynx has been able to spread as farming has left the hills and people discover that it is more lucrative to protect charismatic wildlife than to hunt it, as tourists will pay for the chance to see it. Large-scale rewilding is happening almost everywhere – except Britain."
        },
        {
          "ref": "9",
          "text": "Here, attitudes are just beginning to change. Conservationists are starting to accept that the old preservation-jar model is failing, even on its own terms. Already, projects such as Trees for Life in the Highlands provide a hint of what might be coming. An organisation is being set up that will seek to catalyse the rewilding of land and sea across Britain, its aim being to reintroduce that rarest of species to British ecosystems: hope."
        }
      ],
      "groups": [
        {
          "id": "g3",
          "type": "multiple_choice",
          "label": "Questions 14–18",
          "instructions": "Write the correct letter, A, B, C or D, in boxes on your answer sheet.",
          "questions": [
            {
              "number": 14,
              "prompt": "What did the 2006 discovery of the animal bone reveal about the lynx?",
              "options": [
                {
                  "key": "A",
                  "text": "Its physical appearance was very distinctive."
                },
                {
                  "key": "B",
                  "text": "Its extinction was linked to the spread of farming."
                },
                {
                  "key": "C",
                  "text": "It vanished from Britain several thousand years ago."
                },
                {
                  "key": "D",
                  "text": "It survived in Britain longer than was previously thought."
                }
              ],
              "answer": "D",
              "explanation": "The 2006 find brings forward the lynx’s estimated extinction date by roughly 5,000 years, meaning it survived longer than thought.",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "it would bring forward the tassel-eared cat’s estimated extinction date by roughly 5,000 years"
              }
            },
            {
              "number": 15,
              "prompt": "What point does the writer make about large predators in the third paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Their presence can increase biodiversity."
                },
                {
                  "key": "B",
                  "text": "They may cause damage to local ecosystems."
                },
                {
                  "key": "C",
                  "text": "Their behaviour can alter according to the environment."
                },
                {
                  "key": "D",
                  "text": "They should be reintroduced only to areas where they were native."
                }
              ],
              "answer": "A",
              "explanation": "Large predators drive dynamic processes that create niches for hundreds of species.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Some of them drive dynamic processes that resonate through the whole food chain, creating niches for hundreds of species that might otherwise struggle to survive"
              }
            },
            {
              "number": 16,
              "prompt": "What does the writer suggest about British conservation in the fourth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "It has failed to achieve its aims."
                },
                {
                  "key": "B",
                  "text": "It is beginning to change direction."
                },
                {
                  "key": "C",
                  "text": "It has taken a misguided approach."
                },
                {
                  "key": "D",
                  "text": "It has focused on the most widespread species."
                }
              ],
              "answer": "C",
              "explanation": "British conservation has tried to preserve the living world as if it were a jar of pickles, keeping nature in a state of arrested development – a misguided approach.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "It has tried to preserve the living world as if it were a jar of pickles, letting nothing in and nothing out, keeping nature in a state of arrested development"
              }
            },
            {
              "number": 17,
              "prompt": "Protecting large areas of the sea from commercial fishing would result in",
              "options": [
                {
                  "key": "A",
                  "text": "practical benefits for the fishing industry."
                },
                {
                  "key": "B",
                  "text": "some short-term losses to the fishing industry."
                },
                {
                  "key": "C",
                  "text": "widespread opposition from the fishing industry."
                },
                {
                  "key": "D",
                  "text": "certain changes to techniques within the fishing industry."
                }
              ],
              "answer": "A",
              "explanation": "The policy would greatly boost catches in the surrounding seas – a practical benefit for the fishing industry.",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "This policy would also greatly boost catches in the surrounding seas"
              }
            },
            {
              "number": 18,
              "prompt": "According to the author, what distinguishes rewilding from other environmental campaigns?",
              "options": [
                {
                  "key": "A",
                  "text": "Its objective is more achievable."
                },
                {
                  "key": "B",
                  "text": "Its supporters are more articulate."
                },
                {
                  "key": "C",
                  "text": "Its positive message is more appealing."
                },
                {
                  "key": "D",
                  "text": "It is based on sounder scientific principles."
                }
              ],
              "answer": "C",
              "explanation": "Rewilding helps create a more inspiring vision than the green movement’s usual promise of a slightly less awful world.",
              "evidence": {
                "sectionId": "p2",
                "ref": "6",
                "quote": "it helps to create a more inspiring vision than the green movement’s usual promise of ‘Follow us and the world will be slightly less awful than it would otherwise have been’"
              }
            }
          ]
        },
        {
          "id": "g4",
          "type": "short_answer",
          "label": "Questions 19–22",
          "instructions": "Complete the summary using the list of words and phrases, A–F, below.",
          "summaryTitle": "Reintroducing the lynx to Britain",
          "summaryText": "There would be many advantages to reintroducing the lynx to Britain. While there is no evidence that the lynx has ever put {19} in danger, it would reduce the numbers of certain {20} whose populations have increased enormously in recent decades. It would present only a minimal threat to {21}, provided these were kept away from lynx habitats. Furthermore, the reintroduction programme would also link efficiently with initiatives to return native {22} to certain areas of the country.",
          "wordBank": [
            {
              "key": "A",
              "text": "trees"
            },
            {
              "key": "B",
              "text": "endangered species"
            },
            {
              "key": "C",
              "text": "hillsides"
            },
            {
              "key": "D",
              "text": "wild animals"
            },
            {
              "key": "E",
              "text": "humans"
            },
            {
              "key": "F",
              "text": "farm animals"
            }
          ],
          "questions": [
            {
              "number": 19,
              "prompt": "",
              "answer": [
                "humans"
              ],
              "wordLimit": 2,
              "explanation": "The lynx presents no threat to human beings; there is no known instance of one preying on people.",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "The lynx presents no threat to human beings: there is no known instance of one preying on people"
              }
            },
            {
              "number": 20,
              "prompt": "",
              "answer": [
                "wild animals"
              ],
              "wordLimit": 2,
              "explanation": "The lynx is a specialist predator of roe deer, a species that has exploded in Britain.",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "It is a specialist predator of roe deer, a species that has exploded in Britain in recent decades"
              }
            },
            {
              "number": 21,
              "prompt": "",
              "answer": [
                "farm animals"
              ],
              "wordLimit": 2,
              "explanation": "The lynx presents little risk to sheep and other livestock, which should be kept out of the woods.",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "the lynx requires deep cover, and as such presents little risk to sheep and other livestock"
              }
            },
            {
              "number": 22,
              "prompt": "",
              "answer": [
                "trees"
              ],
              "wordLimit": 2,
              "explanation": "The aim of bringing forests back to bare uplands marries with reintroducing the lynx.",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "The attempt to reintroduce this predator marries well with the aim of bringing forests back to parts of our bare and barren uplands"
              }
            }
          ]
        },
        {
          "id": "g5",
          "type": "yes_no_notgiven",
          "label": "Questions 23–26",
          "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 23,
              "prompt": "Britain could become the first European country to reintroduce the lynx.",
              "answer": "NO",
              "explanation": "The lynx has already been reintroduced to the Jura Mountains, the Alps and other European locations.",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "The lynx has now been reintroduced to the Jura Mountains, the Alps, the Vosges in eastern France and the Harz mountains in Germany"
              }
            },
            {
              "number": 24,
              "prompt": "The large growth in the European lynx population since 1970 has exceeded conservationists’ expectations.",
              "answer": "NOT GIVEN",
              "explanation": "The passage states the population has tripled but does not compare this to any expectations.",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "The European population has tripled since 1970 to roughly 10,000"
              }
            },
            {
              "number": 25,
              "prompt": "Changes in agricultural practices have extended the habitat of the lynx in Europe.",
              "answer": "YES",
              "explanation": "The lynx has been able to spread as farming has left the hills.",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "the lynx has been able to spread as farming has left the hills and people discover that it is more lucrative to protect charismatic wildlife than to hunt it"
              }
            },
            {
              "number": 26,
              "prompt": "It has become apparent that species reintroduction has commercial advantages.",
              "answer": "YES",
              "explanation": "Tourists will pay for the chance to see charismatic wildlife, making protection more lucrative than hunting.",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "people discover that it is more lucrative to protect charismatic wildlife than to hunt it, as tourists will pay for the chance to see it"
              }
            }
          ]
        }
      ]
    },
    {
      "id": "p3",
      "title": "UK companies need more effective boards of directors",
      "passage": [
        {
          "ref": "A",
          "text": "After a number of serious failures of governance (that is, how they are managed at the highest level), companies in Britain, as well as elsewhere, should consider radical changes to their directors’ roles. It is clear that the role of a board director today is not an easy one. Following the 2008 financial meltdown, which resulted in a deeper and more prolonged period of economic downturn than anyone expected, the search for explanations in the many post-mortems of the crisis has meant blame has been spread far and wide. Governments, regulators, central banks and auditors have all been in the frame. The role of bank directors and management and their widely publicised failures have been extensively picked over and examined in reports, inquiries and commentaries."
        },
        {
          "ref": "B",
          "text": "The knock-on effect of this scrutiny has been to make the governance of companies in general an issue of intense public debate and has significantly increased the pressures on, and the responsibilities of, directors. At the simplest and most practical level, the time involved in fulfilling the demands of a board directorship has increased significantly, calling into question the effectiveness of the classic model of corporate governance by part-time, independent non- executive directors. Where once a board schedule may have consisted of between eight and ten meetings a year, in many companies the number of events requiring board input and decisions has dramatically risen. Furthermore, the amount of reading and preparation required for each meeting is increasing. Agendas can become overloaded and this can mean the time for constructive debate must necessarily be restricted in favour of getting through the business."
        },
        {
          "ref": "C",
          "text": "Often, board business is devolved to committees in order to cope with the workload, which may be more efficient but can mean that the board as a whole is less involved in fully addressing some of the most important issues. It is not uncommon for the audit committee meeting to last longer than the main board meeting itself. Process may take the place of discussion and be at the expense of real collaboration, so that boxes are ticked rather than issues tackled."
        },
        {
          "ref": "D",
          "text": "A radical solution, which may work for some very large companies whose businesses are extensive and complex, is the professional board, whose members would work up to three or four days a week, supported by their own dedicated staff and advisers. There are obvious risks to this and it would be important to establish clear guidelines for such a board to ensure that it did not step on the toes of management by becoming too engaged in the day-to-day running of the company. Problems of recruitment, remuneration and independence could also arise and this structure would not be appropriate for all companies. However, more professional and better-informed boards would have been particularly appropriate for banks where the executives had access to information that part-time non-executive directors lacked, leaving the latter unable to comprehend or anticipate the 2008 crash."
        },
        {
          "ref": "E",
          "text": "One of the main criticisms of boards and their directors is that they do not focus sufficiently on longer-term matters of strategy, sustainability and governance, but instead concentrate too much on short-term financial metrics. Regulatory requirements and the structure of the market encourage this behaviour. The tyranny of quarterly reporting can distort board decision-making, as directors have to ‘make the numbers’ every four months to meet the insatiable appetite of the market for more date. This serves to encourage the trading methodology of a certain kind of investor who moves in and out of a stock without engaging in constructive dialogue with the company about strategy or performance, and is simply seeking a short-term financial gain. This effect has been made worse by the changing profile of investors due to the globalisation of capital === PAGE 7 === and the increasing use of automated trading systems. Corporate culture adapts and management teams are largely incentivised to meet financial goals."
        },
        {
          "ref": "F",
          "text": "Compensation for chief executives has become a combat zone where pitched battles between investors, management and board members are fought, often behind closed doors but increasingly frequently in the full glare of press attention. Many would argue that this is in the interest of transparency and good governance as shareholders use their muscle in the area of pay to pressure boards to remove underperforming chief executives. Their powers to vote down executive remuneration policies increased when binding votes came into force. The chair of the remuneration committee can be an exposed and lonely role, as Alison Carnwath, chair of Barclays Bank’s remuneration committee, found when she had to resign, having been roundly criticised for trying to defend the enormous bonus to be paid to the chief executive; the irony being that she was widely understood to have spoken out against it in the privacy of the committee."
        },
        {
          "ref": "G",
          "text": "The financial crisis stimulated a debate about the role and purpose of the company and a heightened awareness of corporate ethics. Trust in the corporation has been eroded and academics such as Michael Sandel, in his thoughtful and bestselling book What Money Can’t Buy, are questioning the morality of capitalism and the market economy. Boards of companies in all sectors will need to widen their perspective to encompass these issues and this may involve a realignment of corporate goals. We live in challenging times."
        }
      ],
      "groups": [
        {
          "id": "g6",
          "type": "matching",
          "label": "Questions 27–33",
          "instructions": "The Reading Passage has seven paragraphs, A–G. Choose the correct heading for each paragraph from the list of headings below.",
          "options": [
            {
              "key": "i",
              "text": "Disputes over financial arrangements regarding senior managers"
            },
            {
              "key": "ii",
              "text": "The impact on companies of being subjected to close examination"
            },
            {
              "key": "iii",
              "text": "The possible need for fundamental change in every area of business"
            },
            {
              "key": "iv",
              "text": "Many external bodies being held responsible for problems"
            },
            {
              "key": "v",
              "text": "The falling number of board members with broad enough experience"
            },
            {
              "key": "vi",
              "text": "A risk that not all directors take part in solving major problems"
            },
            {
              "key": "vii",
              "text": "Boards not looking far enough ahead"
            },
            {
              "key": "viii",
              "text": "A proposal to change the way the board operates"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Paragraph A",
              "answer": "iv",
              "explanation": "Paragraph A describes blame being spread to governments, regulators, central banks and auditors after the 2008 crisis.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "Governments, regulators, central banks and auditors have all been in the frame"
              }
            },
            {
              "number": 28,
              "prompt": "Paragraph B",
              "answer": "ii",
              "explanation": "Paragraph B describes how scrutiny of bank directors has increased pressures and responsibilities on all company directors.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "The knock-on effect of this scrutiny has been to make the governance of companies in general an issue of intense public debate"
              }
            },
            {
              "number": 29,
              "prompt": "Paragraph C",
              "answer": "vi",
              "explanation": "Paragraph C describes the risk that non-executive directors are unable to engage fully due to time pressures.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "there is a real danger that some of the most important issues … are addressed by only a small sub-group"
              }
            },
            {
              "number": 30,
              "prompt": "Paragraph D",
              "answer": "viii",
              "explanation": "Paragraph D proposes the professional board as a new way to operate.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "A radical solution … is the professional board, whose members would work up to three or four days a week"
              }
            },
            {
              "number": 31,
              "prompt": "Paragraph E",
              "answer": "vii",
              "explanation": "Paragraph E criticises boards for focusing too much on short-term metrics and not enough on long-term strategy.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "they do not focus sufficiently on longer-term matters of strategy, sustainability and governance, but instead concentrate too much on short-term financial metrics"
              }
            },
            {
              "number": 32,
              "prompt": "Paragraph F",
              "answer": "i",
              "explanation": "Paragraph F is about executive compensation becoming a combat zone between investors, management and board members.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "Compensation for chief executives has become a combat zone where pitched battles between investors, management and board members are fought"
              }
            },
            {
              "number": 33,
              "prompt": "Paragraph G",
              "answer": "iii",
              "explanation": "Paragraph G argues that boards will need to widen their perspective across all areas of business, possibly requiring a realignment of corporate goals.",
              "evidence": {
                "sectionId": "p3",
                "ref": "G",
                "quote": "Boards of companies in all sectors will need to widen their perspective to encompass these issues and this may involve a realignment of corporate goals"
              }
            }
          ]
        },
        {
          "id": "g7",
          "type": "yes_no_notgiven",
          "label": "Questions 34–37",
          "instructions": "Do the following statements agree with the claims of the writer in the Reading Passage? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 34,
              "prompt": "Close scrutiny of the behaviour of boards has increased since the economic downturn.",
              "answer": "YES",
              "explanation": "The knock-on effect of scrutiny of bank directors has significantly increased pressures on company directors in general.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "The knock-on effect of this scrutiny has been to make the governance of companies in general an issue of intense public debate and has significantly increased the pressures on, and the responsibilities of, directors"
              }
            },
            {
              "number": 35,
              "prompt": "Banks have been mismanaged to a greater extent than other businesses.",
              "answer": "NOT GIVEN",
              "explanation": "The passage discusses bank director failures but does not compare them with mismanagement in other sectors.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "The role of bank directors and management and their widely publicised failures have been extensively picked over"
              }
            },
            {
              "number": 36,
              "prompt": "Board meetings normally continue for as long as necessary to debate matters in full.",
              "answer": "NO",
              "explanation": "The passage states that the number of events requiring board input has increased dramatically, which by implication limits the time per topic.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "the number of events requiring board input and decisions has"
              }
            },
            {
              "number": 37,
              "prompt": "Using a committee structure would ensure that board members are fully informed about significant issues.",
              "answer": "NO",
              "explanation": "The passage warns that important issues may be addressed by only a small sub-group, leaving other board members uninformed.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "there is a real danger that some of the most important issues … are addressed by only a small sub-group"
              }
            }
          ]
        },
        {
          "id": "g8",
          "type": "completion",
          "label": "Questions 38–40",
          "instructions": "Complete the sentences below. Choose ONE WORD ONLY from the passage for each answer.",
          "questions": [
            {
              "number": 38,
              "prompt": "Before 2008, non-executive directors were at a disadvantage because of their lack of _______",
              "answer": [
                "information"
              ],
              "wordLimit": 1,
              "explanation": "Executives had access to information that part-time non-executive directors lacked.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "the executives had access to information that part-time non-executive directors lacked, leaving the latter unable to comprehend or anticipate the 2008 crash"
              }
            },
            {
              "number": 39,
              "prompt": "Boards tend to place too much emphasis on _______ considerations that are only of short-term relevance.",
              "answer": [
                "financial"
              ],
              "wordLimit": 1,
              "explanation": "Boards concentrate too much on short-term financial metrics.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "concentrate too much on short-term financial metrics"
              }
            },
            {
              "number": 40,
              "prompt": "On certain matters, such as pay, the board may have to accept the views of _______",
              "answer": [
                "shareholders",
                "investors"
              ],
              "wordLimit": 1,
              "explanation": "Shareholders use their muscle in the area of pay to pressure boards.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "shareholders use their muscle in the area of pay to pressure boards to remove underperforming chief executives"
              }
            }
          ]
        }
      ]
    }
  ]
}
$c12t4r$,
  true
);
