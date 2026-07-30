DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 2';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 18',
  'Test 2',
  'academic',
  3600,
  $c18t2r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Stonehenge",
      "passage": [
        {
          "ref": "1",
          "text": "For centuries, historians and archaeologists have puzzled over the many mysteries of Stonehenge, a prehistoric monument that took an estimated 1,500 years to erect. Located on Salisbury Plain in southern England, it is comprised of roughly 100 massive upright stones placed in a circular layout. Archaeologists believe England’s most iconic prehistoric ruin was built in several stages with the earliest constructed 5,000 or more years ago. First, Neolithic* Britons used primitive tools, which may have been fashioned out of deer antlers, to dig a massive circular ditch and bank, or henge. Deep pits dating back to that era and located within the circle may have once held a ring of timber posts, according to some scholars."
        },
        {
          "ref": "2",
          "text": "Several hundred years later, it is thought, Stonehenge’s builders hoisted an estimated 80 bluestones, 43 of which remain today, into standing positions and placed them in either a horseshoe or circular formation. These stones have been traced all the way to the Preseli Hills in Wales, some 300 kilometres from Stonehenge. How, then, did prehistoric builders without sophisticated tools or engineering haul these boulders, which weigh up to four tons, over such a great distance?"
        },
        {
          "ref": "3",
          "text": "According to one long-standing theory among archaeologists, Stonehenge’s builders fashioned sledges and rollers out of tree trunks to lug the bluestones from the Preseli Hills. They then transferred the boulders onto rafts and floated them first along the Welsh coast and then up the River Avon toward Salisbury Plain; alternatively, they may have towed each stone with a fleet of vessels. More recent archaeological hypotheses have them transporting the bluestones with supersized wicker baskets on a combination of ball bearings and long grooved planks, hauled by oxen."
        },
        {
          "ref": "4",
          "text": "As early as the 1970s, geologists have been adding their voices to the debate over how Stonehenge came into being. Challenging the classic image of industrious builders pushing, carting, rolling or hauling giant stones from faraway Wales, some scientists have suggested that it was glaciers, not humans, that carried the bluestones to Salisbury Plain. Most archaeologists have remained sceptical about this theory, however, wondering how the forces of nature could possibly have delivered the exact number of stones needed to complete the circle. The third phase of construction took place around 2000 BCE. At this point, sandstone slabs - known as ‘sarsens’ - were arranged into an outer crescent or ring; some were assembled into the iconic three-pieced structures called trilithons that stand tall in the centre of Stonehenge. Some 50 of these stones are now visible on the site, which may once have contained many more. Radiocarbon dating has revealed that work continued at Stonehenge until roughly 1600 BCE, with the bluestones in particular being repositioned multiple times."
        },
        {
          "ref": "5",
          "text": "But who were the builders of Stonehenge? In the 17th century, archaeologist John Aubrey made the claim that Stonehenge was the work of druids, who had important religious, judicial and political roles in Celtic** society. This theory was widely popularized by the antiquarian William Stukeley, who had unearthed primitive graves at the site. Even today, people who identify as modern druids continue to gather at Stonehenge for the summer solstice. However, in the mid- 20th century, radiocarbon dating demonstrated that Stonehenge stood more than 1,000 years before the Celts inhabited the region."
        },
        {
          "ref": "6",
          "text": "Many modern historians and archaeologists now agree that several distinct tribes of people contributed to Stonehenge, each undertaking a different phase of its construction. Bones, tools and other artefacts found on the site seem to support this hypothesis. The first stage was achieved by Neolithic agrarians who were likely to have been indigenous to the British Isles. Later, it is believed, groups with advanced tools and a more communal way of life left their mark on the site. Some believe that they were immigrants from the European continent, while others maintain that they were probably native Britons, descended from the original builders."
        },
        {
          "ref": "7",
          "text": "If the facts surrounding the architects and construction of Stonehenge remain shadowy at best, the purpose of the striking monument is even more of a mystery. While there is consensus among the majority of modern scholars that Stonehenge once served the function of burial ground, they have yet to determine what other purposes it had."
        },
        {
          "ref": "8",
          "text": "In the 1960s, the astronomer Gerald Hawkins suggested that the cluster of megalithic stones operated as a form of calendar, with different points corresponding to astrological phenomena such as solstices, equinoxes and eclipses occurring at different times of the year. While his theory has received a considerable amount of attention over the decades, critics maintain that"
        },
        {
          "ref": "9",
          "text": "Stonehenge’s builders probably lacked the knowledge necessary to predict such events or that England’s dense cloud cover would have obscured their view of the skies. More recently, signs of illness and injury in the human remains unearthed at Stonehenge led a group of British archaeologists to speculate that it was considered a place of healing, perhaps because bluestones were thought to have curative powers."
        },
        {
          "ref": "10",
          "text": "--- * Neolithic - The era, also known as the New Stone Age, which began around 12,000 years ago and ended around 3500 BCE ** Celtic - The Celts were people who lived in Britain and northwest Europe during the Iron Age from 600 BCE to 43 CE"
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–8",
          "instructions": "Complete the notes below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "formContent": [
            {
              "kind": "subheader",
              "text": "Construction"
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
              "kind": "question",
              "number": 3
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "pulled them on giant baskets geological: they were brought from Wales by",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 5
            },
            {
              "kind": "static",
              "text": "Stage 3: sandstone slabs were arranged into an outer crescent or ring"
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "Purpose many experts agree it has been used as a"
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": "site in the 1960s, it was suggested that it worked as a kind of",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Stage _______: the ditch and henge were dug, possibly using tools made from 1",
              "answer": [
                "antlers"
              ],
              "wordLimit": 2,
              "explanation": "/ deer antlers which may have been fashioned out of deer antlers"
            },
            {
              "number": 2,
              "prompt": "_______ may have been arranged in deep pits inside the circle",
              "answer": [
                "posts"
              ],
              "wordLimit": 2,
              "explanation": "/ timber posts Deep pits dating back to that era and located within the circle may have once held a ring of timber posts, according to some scholars."
            },
            {
              "number": 3,
              "prompt": "Stage 2: bluestones from the Preseli Hills were placed in standing position theories about the transportation of the bluestones: archaeological: builders used _______ to make sledges and rollers",
              "answer": [
                "tree"
              ],
              "wordLimit": 2,
              "explanation": "trunks According to one long-standing theory among archaeologists, Stonehenge’s builders fashioned sledges and rollers out of tree trunks to lug the bluestones from the Preseli Hills."
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "oxen"
              ],
              "wordLimit": 2,
              "explanation": "More recent archaeological hypotheses have them transporting the bluestones with supersized wicker baskets on a combination of ball bearings and long grooved planks, hauled by oxen.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "More recent archaeological hypotheses have them transporting the bluestones with supersized wicker baskets on a combinat"
              }
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "glaciers"
              ],
              "wordLimit": 2,
              "explanation": "Challenging the classic image of industrious builders pushing, carting, rolling or hauling giant stones from faraway Wales, some scientists have suggested that it was glaciers, not humans, that carried the bluestones to Salisbury Plain.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Challenging the classic image of industrious builders pushing, carting, rolling or hauling giant stones from faraway Wal"
              }
            },
            {
              "number": 6,
              "prompt": "Builders a theory arose in the 17th century that its builders were Celtic _______",
              "answer": [
                "druids"
              ],
              "wordLimit": 2,
              "explanation": "In the 17th century, archaeologist John Aubrey made the claim that Stonehenge was the work of druids,",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "In the 17th century, archaeologist John Aubrey made the claim that Stonehenge was the work of druids,"
              }
            },
            {
              "number": 7,
              "prompt": "_______",
              "answer": [
                "burial"
              ],
              "wordLimit": 2,
              "explanation": "While there is consensus among the majority of modern scholars that Stonehenge once served the function of burial ground, they have yet to determine what other purposes it had.",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "While there is consensus among the majority of modern scholars that Stonehenge once served the function of burial ground"
              }
            },
            {
              "number": 8,
              "prompt": "_______",
              "answer": [
                "calendar"
              ],
              "wordLimit": 2,
              "explanation": "the astronomer Gerald Hawkins suggested that the cluster of megalithic stones operated as a form of calendar",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "the astronomer Gerald Hawkins suggested that the cluster of megalithic stones operated as a form of calendar"
              }
            }
          ],
          "formTitle": "Stonehenge",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 9–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 9,
              "prompt": "During the third phase of construction, sandstone slabs were placed in both the outer areas and the middle of the Stonehenge site.",
              "answer": "TRUE",
              "explanation": "The third phase of construction took place around 2000 BCE. At this point, sandstone slabs - known as ‘sarsens’ - were arranged into an outer crescent or ring; some were assembled into the iconic three-pieced structures called trilithons that stand tall in the centre of Stonehenge.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "The third phase of construction took place around 2000 BCE. At this point, sandstone slabs - known as ‘sarsens’ - were a"
              }
            },
            {
              "number": 10,
              "prompt": "There is scientific proof that the bluestones stood in the same spot until approximately 1600 BCE.",
              "answer": "FALSE",
              "explanation": "Radiocarbon dating has revealed that work continued at Stonehenge until roughly 1600 BCE, with the bluestones in particular being repositioned multiple times.",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Radiocarbon dating has revealed that work continued at Stonehenge until roughly 1600 BCE, with the bluestones in particu"
              }
            },
            {
              "number": 11,
              "prompt": "John Aubrey’s claim about Stonehenge was supported by 20th-century findings.",
              "answer": "FALSE",
              "explanation": "However, in the mid-20th century, radiocarbon dating demonstrated that Stonehenge stood more than 1,000 years before the Celts inhabited the region.",
              "evidence": {
                "sectionId": "p1",
                "ref": "5",
                "quote": "However, in the mid-20th century, radiocarbon dating demonstrated that Stonehenge stood more than 1,000 years before the"
              }
            },
            {
              "number": 12,
              "prompt": "Objects discovered at Stonehenge seem to indicate that it was constructed by a number of different groups of people.",
              "answer": "TRUE",
              "explanation": "Many modern historians and archaeologists now agree that several distinct tribes of people contributed to Stonehenge, each undertaking a different phase of its construction. Bones, tools and other artefacts found on the site seem to support this hypothesis.",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "Many modern historians and archaeologists now agree that several distinct tribes of people contributed to Stonehenge, ea"
              }
            },
            {
              "number": 13,
              "prompt": "Criticism of Gerald Hawkins’ theory about Stonehenge has come mainly from other astronomers. === PAGE 4 ===",
              "answer": "NOT GIVEN",
              "explanation": "While his theory has received a considerable amount of attention over the decades, critics maintain that Stonehenge’s builders probably lacked the knowledge necessary to predict such events or that England’s dense cloud cover would have obscured their view of the skies.",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "While his theory has received a considerable amount of attention over the decades, critics maintain that Stonehenge’s bu"
              }
            }
          ],
          "id": "g9"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Living with artificial intelligence",
      "passage": [
        {
          "ref": "1",
          "text": "Powerful artificial intelligence (AI) needs to be reliably aligned with human values, but does this mean AI will eventually have to police those values?"
        },
        {
          "ref": "2",
          "text": "This has been the decade of AI, with one astonishing feat after another. A chess-playing AI that can defeat not only all human chess players, but also all previous human-programmed chess machines, after learning the game in just four hours? That’s yesterday’s news, what’s next? True, these prodigious accomplishments are all in so-called narrow AI, where machines perform highly specialised tasks. But many experts believe this restriction is very temporary. By mid-century, we may have artificial general intelligence (AGI) - machines that can achieve human-level performance on the full range of tasks that we ourselves can tackle."
        },
        {
          "ref": "3",
          "text": "If so, there’s little reason to think it will stop there. Machines will be free of many of the physical constraints on human intelligence. Our brains run at slow biochemical processing speeds on the power of a light bulb, and their size is restricted by the dimensions of the human birth canal. It is remarkable what they accomplish, given these handicaps. But they may be as far from the physical limits of thought as our eyes are from the incredibly powerful Webb Space Telescope. Once machines are better than us at designing even smarter machines, progress towards these limits could accelerate. What would this mean for us? Could we ensure a safe and worthwhile coexistence with such machines? On the plus side, AI is already useful and profitable for many things, and super AI might be expected to be super useful and super profitable. But the more powerful AI becomes, the more important it will be to specify its goals with great care. Folklore is full of tales of people who ask for the wrong thing, with disastrous consequences- King Midas, for example, might have wished that everything he touched turned to gold, but didn’t really intend this to apply to his breakfast."
        },
        {
          "ref": "4",
          "text": "So we need to create powerful AI machines that are ‘human-friendly’- that have goals reliably aligned with our own values. One thing that makes this task difficult is that we are far from reliably human-friendly ourselves. We do many terrible things to each other and to many other creatures with whom we share the planet. If superintendent machines don’t do a lot better than us, we’ll be in deep trouble. We’ll have powerful new intelligence amplifying the dark sides of our own fallible natures."
        },
        {
          "ref": "5",
          "text": "For safety’s sake, then, we want the machines to be ethically as well as cognitively superhuman. We want them to aim for the moral high ground, not for the troughs in which many of us spend some of our time. Luckily they’ll be smart enough for the job. If there are routes to the moral high ground, they’ll be better than us at finding them, and steering us in the right direction. However, there are two big problems with this utopian vision. One is how we get the machines started on the journey, the other is what it would mean to reach this destination. The ‘getting started’ problem is that we need to tell the machines what they’re looking for with sufficient clarity that we can be confident they will find it - whatever ‘it’ actually turns out to be. This won’t be easy, given that we are tribal creatures and conflicted about the ideals ourselves. We often ignore the suffering of strangers, and even contribute to it, at least indirectly. How then, do we point machines in the direction of something better?"
        },
        {
          "ref": "6",
          "text": "As for the ‘destination’ problem, we might, by putting ourselves in the hands of these moral guides and gatekeepers, be sacrificing our own autonomy - an important part of what makes us human. Machines who are better than us at sticking to the moral high ground may be expected to discourage some of the lapses we presently take for granted. We might lose our freedom to discriminate in favour of our own communities, for example."
        },
        {
          "ref": "7",
          "text": "Loss of freedom to behave badly isn’t always a bad thing, of course: denying ourselves the freedom to put children to work in factories, or to smoke in restaurants are signs of progress. But are we ready for ethical silicon police limiting our options? They might be so good at doing it that we won’t notice them; but few of us are likely to welcome such a future."
        },
        {
          "ref": "8",
          "text": "These issues might seem far-fetched, but they are to some extent already here. AI already has some input into how resources are used in our National Health Service (NHS) here in the UK, for example. If it was given a greater role, it might do so much more efficiently than humans can manage, and act in the interests of taxpayers and those who use the health system. However, we’d be depriving some humans (e.g. senior doctors) of the control they presently enjoy. Since we’d want to ensure that people are treated equally and that policies are fair, the goals of AI would need to be specified correctly."
        },
        {
          "ref": "9",
          "text": "We have a new powerful technology to deal with- itself, literally, a new way of thinking. For our own safety, we need to point these new thinkers in the right direction, and get them to act well for"
        },
        {
          "ref": "10",
          "text": "us. It is not yet clear whether this is possible, but if it is, it will require a cooperative spirit, and a willingness to set aside self-interest."
        },
        {
          "ref": "11",
          "text": "Both general intelligence and moral reasoning are often thought to be uniquely human capacities. But safety seems to require that we think of them as a package: if we are to give general intelligence to machines, we’ll need to give them moral authority, too. And where exactly would that leave human beings? All the more reason to think about the destination now, and to be careful about what we wish for."
        }
      ],
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 14–19",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 14,
              "prompt": "What point does the writer make about AI in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "It is difficult to predict how quickly AI will progress."
                },
                {
                  "key": "B",
                  "text": "Much can be learned about the use of AI in chess machines."
                },
                {
                  "key": "C",
                  "text": "The future is unlikely to see limitations on the capabilities of AI."
                },
                {
                  "key": "D",
                  "text": "Experts disagree on which specialised tasks AI will be able to perform."
                }
              ],
              "answer": "C",
              "explanation": "That’s yesterday’s news, what’s next? True, these prodigious accomplishments are all in so-called narrow AI, where machines perform highly specialised tasks. But many experts believe this restriction is very temporary. By mid-century, we may have artificial general intelligence (AGI) - machines that can achieve human-level performance on the full range of tasks that we ourselves can tackle.",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "That’s yesterday’s news, what’s next? True, these prodigious accomplishments are all in so-called narrow AI, where machi"
              }
            },
            {
              "number": 15,
              "prompt": "What is the writer doing in the second paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "explaining why machines will be able to outperform humans"
                },
                {
                  "key": "B",
                  "text": "describing the characteristics that humans and machines share"
                },
                {
                  "key": "C",
                  "text": "giving information about the development of machine intelligence"
                },
                {
                  "key": "D",
                  "text": "indicating which aspects of humans are the most advanced"
                }
              ],
              "answer": "A",
              "explanation": "If so, there’s little reason to think it will stop there. Machines will be free of many of the physical constraints on human intelligence.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "If so, there’s little reason to think it will stop there. Machines will be free of many of the physical constraints on h"
              }
            },
            {
              "number": 16,
              "prompt": "Why does the writer mention the story of King Midas?",
              "options": [
                {
                  "key": "A",
                  "text": "to compare different visions of progress"
                },
                {
                  "key": "B",
                  "text": "to illustrate that poorly defined objectives can go wrong"
                },
                {
                  "key": "C",
                  "text": "to emphasise the need for cooperation"
                },
                {
                  "key": "D",
                  "text": "to point out the financial advantages of a course of action"
                }
              ],
              "answer": "B",
              "explanation": "Folklore is full of tales of people who ask for the wrong thing, with disastrous consequences- King Midas, for example, might have wished that everything he touched turned to gold, but didn’t really intend this to apply to his breakfast.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Folklore is full of tales of people who ask for the wrong thing, with disastrous consequences- King Midas, for example, "
              }
            },
            {
              "number": 17,
              "prompt": "What challenge does the writer refer to in the fourth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "encouraging humans to behave in a more principled way"
                },
                {
                  "key": "B",
                  "text": "deciding which values we want AI to share with us"
                },
                {
                  "key": "C",
                  "text": "creating a better world for all creatures on the planet"
                },
                {
                  "key": "D",
                  "text": "ensuring AI is more human-friendly than we are ourselves"
                }
              ],
              "answer": "D",
              "explanation": "So we need to create powerful AI machines that are ‘human-friendly’- that have goals reliably aligned with our own values. One thing that makes this task difficult is that we are far from reliably human-friendly ourselves. We do many terrible things to each other and to many other creatures with whom we share the planet.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "So we need to create powerful AI machines that are ‘human-friendly’- that have goals reliably aligned with our own value"
              }
            },
            {
              "number": 18,
              "prompt": "What does the writer suggest about the future of AI in the fifth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "The safety of machines will become a key issue."
                },
                {
                  "key": "B",
                  "text": "It is hard to know what impact machines will have on the world."
                },
                {
                  "key": "C",
                  "text": "Machines will be superior to humans in certain respects."
                },
                {
                  "key": "D",
                  "text": "Many humans will oppose machines having a wider role."
                }
              ],
              "answer": "C",
              "explanation": "we want the machines to be ethically as well as cognitively superhuman. We want them to aim for the moral high ground, not for the troughs in which many of us spend some of our time. Luckily they’ll be smart enough for the job. If there are routes to the moral high ground, they’ll be better than us at finding them, and steering us in the right direction.",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "we want the machines to be ethically as well as cognitively superhuman. We want them to aim for the moral high ground, n"
              }
            },
            {
              "number": 19,
              "prompt": "Which of the following best summarises the writer’s argument in the sixth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "More intelligent machines will result in greater abuses of power."
                },
                {
                  "key": "B",
                  "text": "Machine learning will share very few features with human learning."
                },
                {
                  "key": "C",
                  "text": "There are a limited number of people with the knowledge to program machines."
                },
                {
                  "key": "D",
                  "text": "Human shortcomings will make creating the machines we need more difficult."
                }
              ],
              "answer": "D",
              "explanation": "The ‘getting started’ problem is that we need to tell the machines what they’re looking for with sufficient clarity that we can be confident they will find it - whatever ‘it’ actually turns out to be. This won’t be easy, given that we are tribal creatures and conflicted about the ideals ourselves. We often ignore the suffering of strangers, and even contribute to it, at least indirectly. How then, do we point machines in the direction of something better?",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "The ‘getting started’ problem is that we need to tell the machines what they’re looking for with sufficient clarity that"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 20–23",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 2? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 20,
              "prompt": "Machines with the ability to make moral decisions may prevent us from promoting the interests of our communities.",
              "answer": "YES",
              "explanation": "Machines who are better than us at sticking to the moral high ground may be expected to discourage some of the lapses we presently take for granted. We might lose our freedom to discriminate in favour of our own communities, for example.",
              "evidence": {
                "sectionId": "p2",
                "ref": "6",
                "quote": "Machines who are better than us at sticking to the moral high ground may be expected to discourage some of the lapses we"
              }
            },
            {
              "number": 21,
              "prompt": "Silicon police would need to exist in large numbers in order to be effective.",
              "answer": "NOT GIVEN",
              "explanation": "But are we ready for ethical silicon police limiting our options?",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "But are we ready for ethical silicon police limiting our options?"
              }
            },
            {
              "number": 22,
              "prompt": "Many people are comfortable with the prospect of their independence being restricted by machines.",
              "answer": "NO",
              "explanation": "They might be so good at doing it that we won’t notice them; but few of us are likely to welcome such a future.",
              "evidence": {
                "sectionId": "p2",
                "ref": "7",
                "quote": "They might be so good at doing it that we won’t notice them; but few of us are likely to welcome such a future."
              }
            },
            {
              "number": 23,
              "prompt": "If we want to ensure that machines act in our best interests, we all need to work together.",
              "answer": "YES",
              "explanation": "It is not yet clear whether this is possible, but if it is, it will require a cooperative spirit, and a willingness to set aside self-interest.",
              "evidence": {
                "sectionId": "p2",
                "ref": "10",
                "quote": "It is not yet clear whether this is possible, but if it is, it will require a cooperative spirit, and a willingness to s"
              }
            }
          ],
          "id": "g20"
        },
        {
          "type": "completion",
          "label": "Questions 24–26",
          "instructions": "Complete the summary using the list of words, A–F, below.",
          "summaryTitle": "",
          "summaryText": "Write the correct letter, A-F, in boxes on your answer sheet.\nUsing AI in the UK health system\nAI currently has a limited role in the way {24} are allocated in the health\nservice. The positive aspect of AI having a bigger role is that it would be more efficient and lead\nto patient benefits. However, such a change would result, for example, in certain\n{25} not having their current level of {26} . It is\ntherefore important that AI goals are appropriate so that discriminatory practices could be\navoided.\n\nA. medical practitioners B. specialised tasksC. available resources\nD. reduced illnessE. professional authorityF. technology experts",
          "wordBank": [
            {
              "key": "A",
              "text": "medical practitioners"
            },
            {
              "key": "B",
              "text": "specialised tasks"
            },
            {
              "key": "C",
              "text": "available resources"
            },
            {
              "key": "D",
              "text": "reduced illness"
            },
            {
              "key": "E",
              "text": "professional authority"
            },
            {
              "key": "F",
              "text": "technology experts"
            }
          ],
          "questions": [
            {
              "number": 24,
              "prompt": "",
              "answer": "C",
              "explanation": "AI already has some input into how resources are used in our National Health Service (NHS) here in the UK, for example.",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "AI already has some input into how resources are used in our National Health Service (NHS) here in the UK, for example."
              }
            },
            {
              "number": 25,
              "prompt": "",
              "answer": "A",
              "explanation": "However, we’d be depriving some humans (e.g. senior doctors) of the control they presently enjoy.",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "However, we’d be depriving some humans (e.g. senior doctors) of the control they presently enjoy."
              }
            },
            {
              "number": 26,
              "prompt": "",
              "answer": "E",
              "explanation": "However, we’d be depriving some humans (e.g. senior doctors) of the control they presently enjoy.",
              "evidence": {
                "sectionId": "p2",
                "ref": "8",
                "quote": "However, we’d be depriving some humans (e.g. senior doctors) of the control they presently enjoy."
              }
            }
          ],
          "id": "g24"
        }
      ]
    },
    {
      "id": "p3",
      "title": "An ideal city Leonardo da Vinci’s ideal city was centuries ahead of its time",
      "passage": [
        {
          "ref": "1",
          "text": "The word ‘genius’ is universally associated with the name of Leonardo da Vinci. A true Renaissance man, he embodied scientific spirit, artistic talent and humanist sensibilities. Five hundred years have passed since Leonardo died in his home at Chateau du Clos Luce, outside Tours, France. Yet far from fading into insignificance, his thinking has carried down the centuries and still surprises today. The Renaissance marked the transition from the 15th century to modernity and took place after the spread of the plague in the 14th century, which caused a global crisis resulting in some 200 million deaths across Europe and Asia. Today, the world is on the cusp of a climate crisis, which is predicted to cause widespread displacement, extinctions and death, if left unaddressed. Then, as now, radical solutions were called for to revolutionise the way people lived and safeguard humanity against catastrophe."
        },
        {
          "ref": "2",
          "text": "Around 1486 - after a pestilence that killed half the population in Milan, Italy - Leonardo turned his thoughts to urban planning problems. Following a typical Renaissance trend, he began to work on an ‘ideal city’ project, which - due to its excessive costs - would remain unfulfilled. Yet given that unsustainable urban models are a key cause of global climate change today, it’s only natural to wonder how Leonardo might have changed the shape of modem cities."
        },
        {
          "ref": "3",
          "text": "Although the Renaissance is renowned as an era of incredible progress in art and architecture, it is rarely noted that the 15th century also marked the birth of urbanism as a true academic discipline. The rigour and method behind the conscious conception of a city had been largely missing in Western thought until the moment when prominent Renaissance men pushed forward large-scale urban projects in Italy, such as the reconfiguration of the town of Pienza and the expansion of the city of Ferrara. These works surely inspired Leonardo’s decision to rethink the design of medieval cities, with their winding and overcrowded streets and with houses piled against one another. It is not easy to identify a coordinated vision of Leonardo’s ideal city because of his disordered way of working with notes and sketches. But from the largest collection of Leonardo’s papers ever assembled, a series of innovative thoughts can be reconstructed regarding the foundation of a new city along the Ticino River, which runs from Switzerland into Italy and is 248 kilometres long. He"
        },
        {
          "ref": "4",
          "text": "designed the city for the easy transport of goods and clean urban spaces, and he wanted a comfortable and spacious city, with well-ordered streets and architecture. He recommended ‘high, strong walls’, with ‘towers and battlements of all necessary and pleasant beauty’. His plans for a modem and ‘rational’ city were consistent with Renaissance ideals. But, in keeping with his personality, Leonardo included several innovations in his urban design. Leonardo wanted the city to be built on several levels, linked with vertical outdoor staircases. This design can be seen in some of today’s high-rise buildings but was unconventional at the time. Indeed, this idea of taking full advantage of the interior spaces wasn’t implemented until the 1920s and 1930s, with the birth of the Modernist movement."
        },
        {
          "ref": "5",
          "text": "While in the upper layers of the city, people could walk undisturbed between elegant palaces and streets, the lower layer was the place for services, trade, transport and industry. But the true originality of Leonardo’s vision was its fusion of architecture and engineering. Leonardo designed extensive hydraulic plants to create artificial canals throughout the city. The canals, regulated by clocks and basins, were supposed to make it easier for boats to navigate inland. Leonardo also thought that the width of the streets ought to match the average height of the adjacent houses: a rule still followed in many contemporary cities across Italy, to allow access to sun and reduce the risk of damage from earthquakes."
        },
        {
          "ref": "6",
          "text": "Although some of these features existed in Roman cities, before Leonardo’s drawings there had never been a multi-level, compact modem city which was thoroughly technically conceived. Indeed, it wasn’t until the 19th century that some of his ideas were applied. For example, the subdivision of the city by function- with services and infrastructures located in the lower levels and wide and well- ventilated boulevards and walkways above for residents - is an idea that can be found in Georges- Eugene Haussmann’s renovation of Paris under Emperor Napoleon III between 1853 and 1870. Today, Leonardo’s ideas are not simply valid, they actually suggest a way forward for urban planning. Many scholars think that the compact city, built upwards instead of outwards, integrated with nature (especially water systems), with efficient transport infrastructure, could help modem cities become more efficient and sustainable. This is yet another reason why Leonardo was aligned so closely with modem urban planning and centuries ahead of his time."
        }
      ],
      "groups": [
        {
          "type": "true_false_notgiven",
          "label": "Questions 27–33",
          "instructions": "Do the following statements agree with the information given in Reading Passage 3? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 27,
              "prompt": "People first referred to Leonardo da Vinci as a genius 500 years ago.",
              "answer": "NOT GIVEN",
              "explanation": "The word ‘genius’ is universally associated with the name of Leonardo da Vinci. A true Renaissance man, he embodied scientific spirit, artistic talent and humanist sensibilities. Five hundred years have passed since Leonardo died in his home at Chateau du Clos Luce, outside Tours, France.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "The word ‘genius’ is universally associated with the name of Leonardo da Vinci. A true Renaissance man, he embodied scie"
              }
            },
            {
              "number": 28,
              "prompt": "The current climate crisis is predicted to cause more deaths than the plague.",
              "answer": "NOT GIVEN",
              "explanation": "the spread of the plague in the 14th century, which caused a global crisis resulting in some 200 million deaths across Europe and Asia. Today, the world is on the cusp of a climate crisis, which is predicted to cause widespread displacement, extinctions and death, if left unaddressed.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "the spread of the plague in the 14th century, which caused a global crisis resulting in some 200 million deaths across E"
              }
            },
            {
              "number": 29,
              "prompt": "Some of the challenges we face today can be compared to those of earlier times.",
              "answer": "TRUE",
              "explanation": "Then, as now, radical solutions were called for to revolutionise the way people lived and safeguard humanity against catastrophe.",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "Then, as now, radical solutions were called for to revolutionise the way people lived and safeguard humanity against cat"
              }
            },
            {
              "number": 30,
              "prompt": "Leonardo da Vinci’s ‘ideal city’ was constructed in the 15th century. === PAGE 9 ===",
              "answer": "FALSE",
              "explanation": "Around 1486 - after a pestilence that killed half the population in Milan, Italy - Leonardo turned his thoughts to urban planning problems. Following a typical Renaissance trend, he began to work on an ‘ideal city’ project, which - due to its excessive costs - would remain unfulfilled.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Around 1486 - after a pestilence that killed half the population in Milan, Italy - Leonardo turned his thoughts to urban"
              }
            },
            {
              "number": 31,
              "prompt": "Poor town planning is a major contributor to climate change.",
              "answer": "TRUE",
              "explanation": "Yet given that unsustainable urban models are a key cause of global climate change today,",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Yet given that unsustainable urban models are a key cause of global climate change today,"
              }
            },
            {
              "number": 32,
              "prompt": "In Renaissance times, local people fought against the changes to Pienza and Ferrara.",
              "answer": "NOT GIVEN",
              "explanation": "prominent Renaissance men pushed forward large-scale urban projects in Italy, such as the reconfiguration of the town of Pienza and the expansion of the city of Ferrara.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "prominent Renaissance men pushed forward large-scale urban projects in Italy, such as the reconfiguration of the town of"
              }
            },
            {
              "number": 33,
              "prompt": "Leonardo da Vinci kept a neat, organised record of his designs.",
              "answer": "FALSE",
              "explanation": "It is not easy to identify a coordinated vision of Leonardo’s ideal city because of his disordered way of working with notes and sketches.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "It is not easy to identify a coordinated vision of Leonardo’s ideal city because of his disordered way of working with n"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 34–40",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "River. This was to provide better",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 34
            },
            {
              "kind": "static",
              "text": "for trade and a less polluted environment. Although Leonardo da Vinci’s city shared many of the ideals of his time, some of his innovations were considered unconventional in their design. They included features that can be seen in some tower blocks today, such as",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 35
            },
            {
              "kind": "static",
              "text": "on the exterior of a building. Leonardo da Vinci wasn’t only an architect. His expertise in",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 36
            },
            {
              "kind": "static",
              "text": "was evident in his plans for artificial canals within his ideal city. He also believed that the height of houses should relate to the width of streets in case earthquakes occurred. The design of many cities in Italy today follows this",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 37
            },
            {
              "kind": "static",
              "text": ". While some cities from",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 38
            },
            {
              "kind": "static",
              "text": "times have aspects that can also be found in Leonardo’s designs, his ideas weren’t put into practice until long after his death.",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 39
            },
            {
              "kind": "static",
              "text": "is one example of a city that was redesigned in the 19th century in the way that Leonardo had envisaged. His ideas are also relevant to today’s world, where building",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 40
            },
            {
              "kind": "static",
              "text": "no longer seems to be the best approach.",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 34,
              "prompt": "This was to provide better _______",
              "answer": [
                "transport"
              ],
              "wordLimit": 1,
              "explanation": "He designed the city for the easy transport of goods and clean urban spaces"
            },
            {
              "number": 35,
              "prompt": "some tower blocks today, such as _______",
              "answer": [
                "staircases"
              ],
              "wordLimit": 1,
              "explanation": "Leonardo wanted the city to be built on several levels, linked with vertical outdoor staircases.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "Leonardo wanted the city to be built on several levels, linked with vertical outdoor staircases."
              }
            },
            {
              "number": 36,
              "prompt": "His expertise in _______",
              "answer": [
                "engineering"
              ],
              "wordLimit": 1,
              "explanation": "But the true originality of Leonardo’s vision was its fusion of architecture and engineering.",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "But the true originality of Leonardo’s vision was its fusion of architecture and engineering."
              }
            },
            {
              "number": 37,
              "prompt": "cities in Italy today follows this _______",
              "answer": [
                "rule"
              ],
              "wordLimit": 1,
              "explanation": "a rule still followed in many contemporary cities across Italy",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "a rule still followed in many contemporary cities across Italy"
              }
            },
            {
              "number": 38,
              "prompt": "While some cities from _______",
              "answer": [
                "Roman"
              ],
              "wordLimit": 1,
              "explanation": "Although some of these features existed in Roman cities, before Leonardo’s drawings there had never been a multi-level",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Although some of these features existed in Roman cities, before Leonardo’s drawings there had never been a multi-level"
              }
            },
            {
              "number": 39,
              "prompt": "until long after his death. _______",
              "answer": [
                "Paris"
              ],
              "wordLimit": 1,
              "explanation": "is an idea that can be found in Georges-Eugene Haussmann’s renovation of Paris under Emperor Napoleon III between 1853 and 1870.",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "is an idea that can be found in Georges-Eugene Haussmann’s renovation of Paris under Emperor Napoleon III between 1853 a"
              }
            },
            {
              "number": 40,
              "prompt": "to today’s world, where building _______",
              "answer": [
                "outwards"
              ],
              "wordLimit": 1,
              "explanation": "Many scholars think that the compact city, built upwards instead of outwards,",
              "evidence": {
                "sectionId": "p3",
                "ref": "6",
                "quote": "Many scholars think that the compact city, built upwards instead of outwards,"
              }
            }
          ],
          "formTitle": "Leonardo da Vinci’s ideal city",
          "id": "g34"
        }
      ]
    }
  ]
}
$c18t2r$,
  true
);
