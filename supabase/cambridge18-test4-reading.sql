DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 18' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 18',
  'Test 4',
  'academic',
  3600,
  $c18t4r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Green roofs",
      "passage": [
        {
          "ref": "A",
          "text": "Rooftops covered with grass, vegetable gardens and lush foliage are now a common sight in many cities around the world. More and more private companies and city authorities are investing in green roofs, drawn to their wide-ranging benefits. Among the benefits are saving on energy costs, mitigating the risk of floods, making habitats for urban wildlife, tackling air pollution and even growing food. These increasingly radical urban designs can help cities adapt to the monumental problems they face, such as access to resources and a lack of green space due to development. But the involvement of city authorities, businesses and other institutions is crucial to ensuring their success - as is research investigating different options to suit the variety of rooftop spaces found in cities. The UK is relatively new to developing green roofs, and local governments and institutions are playing a major role in spreading the practice. London is home to much of the UK’s green roof market, mainly due to forward-thinking policies such as the London Plan, which has paved the way to more than doubling the area of green roofs in the capital."
        },
        {
          "ref": "B",
          "text": "Ongoing research is showcasing how green roofs in cities can integrate with ‘living walls’: environmentally friendly walls which are partially or completely covered with greenery, including a growing medium, such as soil or water. Research also indicates that green roofs can be integrated with drainage systems on the ground, such as street trees, so that the water is managed better and the built environment is made more sustainable. There is also evidence to demonstrate the social value of green roofs. Doctors are increasingly prescribing time spent gardening outdoors for patients dealing with anxiety and depression. And research has found that access to even the most basic green spaces can provide a better quality of life for dementia sufferers and help people avoid obesity."
        },
        {
          "ref": "C",
          "text": "In North America, green roofs have become mainstream, with a wide array of expansive, accessible and food-producing roofs installed in buildings. Again, city leaders and authorities have helped push the movement forward - only recently, San Francisco, USA, created a policy requiring new buildings to have green roofs. Toronto, Canada, has policies dating from the 1990s, encouraging the development of urban farms on rooftops. These countries also benefit from having newer buildings than in many parts of the world, which makes it easier to install green roofs. Being able to keep enough water at roof height and distribute it right across the rooftop is crucial to maintaining the plants on any green roof - especially on ‘edible roofs’ where fruit and vegetables are farmed. And it’s much easier to do this in newer buildings, which can typically hold greater weight, than to retro-fit old ones. Having a stronger roof also makes it easier to grow a greater variety of plants, since the soil can be deeper."
        },
        {
          "ref": "D",
          "text": "For green roofs to become the norm for new developments, there needs to be support from public authorities and private investors. Those responsible for maintaining buildings may have to acquire new skills, such as landscaping, and in some cases, volunteers may be needed to help out. Other considerations include installing drainage paths, meeting health and safety requirements and perhaps allowing access for the public, as well as planning restrictions and disruption from regular activities in and around the buildings during installation. To convince investors and developers that installing green roofs is worthwhile, economic arguments are still the most important. The term ‘natural capital’ has been developed to explain the economic value of nature; for example, measuring the money saved by installing natural solutions to protect against flood damage, adapt to climate change or help people lead healthier and happier lives."
        },
        {
          "ref": "E",
          "text": "As the expertise about green roofs grows, official standards have been developed to ensure that they are designed, constructed and maintained properly, and function well. Improvements in the science and technology underpinning green roof development have also led to new variations in the concept. For example, ‘blue roofs’ enable buildings to hold water over longer periods of time, rather than draining it away quickly - crucial in times of heavier rainfall. There are also combinations of green roofs with solar panels, and ‘brown roofs’ which are wilder in nature and maximise biodiversity. If the trend continues, it could create new jobs and a more vibrant and sustainable local food economy - alongside many other benefits. There are still barriers to overcome, but the evidence so far indicates that green roofs have the potential to transform cities and help them function sustainably long into the future. The success stories need to be studied and replicated elsewhere, to make green, blue, brown and food-producing roofs the norm in cities around the world."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 1–5",
          "instructions": "Reading Passage 1 has five paragraphs, A–E. Which paragraph contains the following information? You may use any letter more than once.",
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
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "mention of several challenges to be overcome before a green",
              "answer": "D",
              "explanation": "Those responsible for maintaining buildings may have to acquire new skills, such as landscaping, and in some cases, volunteers may be needed to help out. Other considerations include installing drainage paths, meeting health and safety requirements and perhaps allowing access for the public, as well as planning restrictions and disruption from regular activities in and around the buildings during installation.",
              "evidence": {
                "sectionId": "p1",
                "ref": "D",
                "quote": "Those responsible for maintaining buildings may have to acquire new skills, such as landscaping, and in some cases, volu"
              }
            },
            {
              "number": 2,
              "prompt": "reference to a city where green roofs have been promoted for",
              "answer": "C",
              "explanation": "Toronto, Canada, has policies dating from the 1990s, encouraging the development of urban farms on rooftops.",
              "evidence": {
                "sectionId": "p1",
                "ref": "C",
                "quote": "Toronto, Canada, has policies dating from the 1990s, encouraging the development of urban farms on rooftops."
              }
            },
            {
              "number": 3,
              "prompt": "a belief that existing green roofs should be used as a model for",
              "answer": "E",
              "explanation": "There are still barriers to overcome, but the evidence so far indicates that green roofs have the potential to transform cities and help them function sustainably long into the future.",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "There are still barriers to overcome, but the evidence so far indicates that green roofs have the potential to transform"
              }
            },
            {
              "number": 4,
              "prompt": "examples of how green roofs can work in combination with",
              "answer": "B",
              "explanation": "Ongoing research is showcasing how green roofs in cities can integrate with ‘living walls’: environmentally friendly walls which are partially or completely covered with greenery, including a growing medium, such as soil or water. Research also indicates that green roofs can be integrated with drainage systems on the ground,",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "Ongoing research is showcasing how green roofs in cities can integrate with ‘living walls’: environmentally friendly wal"
              }
            },
            {
              "number": 5,
              "prompt": "the need to make a persuasive argument for the financial",
              "answer": "D",
              "explanation": "To convince investors and developers that installing green roofs is worthwhile, economic arguments are still the most important.",
              "evidence": {
                "sectionId": "p1",
                "ref": "D",
                "quote": "To convince investors and developers that installing green roofs is worthwhile, economic arguments are still the most im"
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "completion",
          "label": "Questions 6–9",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "likelihood that floods will occur, reducing how much money is spent on",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 6
            },
            {
              "kind": "static",
              "text": "and creating environments that are suitable for wildlife. In many cases, they can also be used for producing",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 7
            },
            {
              "kind": "static",
              "text": ". There are also social benefits of green roofs. For example, the medical profession recommends",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 8
            },
            {
              "kind": "static",
              "text": "as an activity to help people cope with mental health issues. Studies have also shown that the availability of green spaces can prevent physical problems such as",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 9
            },
            {
              "kind": "static",
              "text": ".",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 6,
              "prompt": "how much money is spent on _______",
              "answer": [
                "energy"
              ],
              "wordLimit": 1,
              "explanation": "Among the benefits are saving on energy costs,",
              "evidence": {
                "sectionId": "p1",
                "ref": "A",
                "quote": "Among the benefits are saving on energy costs,"
              }
            },
            {
              "number": 7,
              "prompt": "can also be used for producing _______",
              "answer": [
                "food"
              ],
              "wordLimit": 1,
              "explanation": "mitigating the risk of floods, making habitats for urban wildlife, tackling air pollution and even growing food.",
              "evidence": {
                "sectionId": "p1",
                "ref": "A",
                "quote": "mitigating the risk of floods, making habitats for urban wildlife, tackling air pollution and even growing food."
              }
            },
            {
              "number": 8,
              "prompt": "the medical profession recommends _______",
              "answer": [
                "gardening"
              ],
              "wordLimit": 1,
              "explanation": "Doctors are increasingly prescribing time spent gardening outdoors for patients dealing with anxiety and depression.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "Doctors are increasingly prescribing time spent gardening outdoors for patients dealing with anxiety and depression."
              }
            },
            {
              "number": 9,
              "prompt": "prevent physical problems such as _______",
              "answer": [
                "obesity"
              ],
              "wordLimit": 1,
              "explanation": "And research has found that access to even the most basic green spaces can provide a better quality of life for dementia sufferers and help people avoid obesity.",
              "evidence": {
                "sectionId": "p1",
                "ref": "B",
                "quote": "And research has found that access to even the most basic green spaces can provide a better quality of life for dementia"
              }
            }
          ],
          "formTitle": "Advantages of green roofs",
          "id": "g6"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 10–11",
          "instructions": "Choose TWO letters, A–E. Which TWO advantages of using newer buildings for green roofs are mentioned in Paragraph C of the passage?",
          "options": [
            {
              "key": "A",
              "text": "a longer growing season for edible produce"
            },
            {
              "key": "B",
              "text": "more economical use of water"
            },
            {
              "key": "C",
              "text": "greater water-storage capacity"
            },
            {
              "key": "D",
              "text": "ability to cultivate more plant types"
            },
            {
              "key": "E",
              "text": "a large surface area for growing plants"
            }
          ],
          "questions": [
            {
              "number": 10,
              "prompt": "Which TWO advantages of using newer buildings for green roofs are mentioned in Paragraph C of the passage?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "which can typically hold greater weight, than to retro-fit old ones. Having a stronger roof also makes it easier to grow a greater variety of plants,",
              "evidence": {
                "sectionId": "p1",
                "ref": "C",
                "quote": "which can typically hold greater weight, than to retro-fit old ones. Having a st"
              }
            },
            {
              "number": 11,
              "prompt": "Which TWO advantages of using newer buildings for green roofs are mentioned in Paragraph C of the passage?",
              "answer": [
                "C",
                "D"
              ],
              "explanation": "which can typically hold greater weight, than to retro-fit old ones. Having a stronger roof also makes it easier to grow a greater variety of plants,",
              "evidence": {
                "sectionId": "p1",
                "ref": "C",
                "quote": "which can typically hold greater weight, than to retro-fit old ones. Having a st"
              }
            }
          ],
          "id": "g10"
        },
        {
          "type": "choose_two",
          "paired": true,
          "label": "Questions 12–13",
          "instructions": "Choose TWO letters, A–E. Which TWO aims of new variations on the concept of green roofs are mentioned in Paragraph E of the passage?",
          "options": [
            {
              "key": "A",
              "text": "to provide habitats for a wide range of species"
            },
            {
              "key": "B",
              "text": "to grow plants successfully even in the wettest climates"
            },
            {
              "key": "C",
              "text": "to regulate the temperature of the immediate environment"
            },
            {
              "key": "D",
              "text": "to generate power from a sustainable source"
            },
            {
              "key": "E",
              "text": "to collect water to supply other buildings"
            }
          ],
          "questions": [
            {
              "number": 12,
              "prompt": "Which TWO aims of new variations on the concept of green roofs are mentioned in Paragraph E of the passage?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "‘brown roofs’ which are wilder in nature and maximise biodiversity. There are also combinations of green roofs with solar panels,",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "‘brown roofs’ which are wilder in nature and maximise biodiversity. There are al"
              }
            },
            {
              "number": 13,
              "prompt": "Which TWO aims of new variations on the concept of green roofs are mentioned in Paragraph E of the passage?",
              "answer": [
                "A",
                "D"
              ],
              "explanation": "‘brown roofs’ which are wilder in nature and maximise biodiversity. There are also combinations of green roofs with solar panels,",
              "evidence": {
                "sectionId": "p1",
                "ref": "E",
                "quote": "‘brown roofs’ which are wilder in nature and maximise biodiversity. There are al"
              }
            }
          ],
          "id": "g12"
        }
      ]
    },
    {
      "id": "p2",
      "title": "The growth mindset",
      "passage": [
        {
          "ref": "1",
          "text": "Over the past century, a powerful idea has taken root in the educational landscape. The concept of intelligence as something innate has been supplanted by the idea that intelligence is not fixed, and that, with the right training, we can be the authors of our own cognitive capabilities. Psychologist Alfred Binet, the developer of the first intelligence tests, was one of many 19th-century scientists who held that earlier view and sought to quantify cognitive ability. Then, in the early 20th century, progressive thinkers revolted against the notion that inherent ability is destiny. Instead, educators such as John Dewey argued that every child’s intelligence could be developed, given the right environment."
        },
        {
          "ref": "2",
          "text": "‘Growth mindset theory’ is a relatively new - and extremely popular - version of this idea. In many schools today you will see hallways covered in motivational posters and hear speeches on the mindset of great sporting heroes who simply believed their way to the top. A major focus of the growth mindset in schools is coaxing students away from seeing failure as an indication of their ability, and towards seeing it as a chance to improve that ability. As educationalist Jeff Howard noted several decades ago: ‘Smart is not something that you just are, smart is something that you can get.’ The idea of the growth mindset is based on the work of psychologist Carol Dweck in California in the 1990s. In one key experiment, Dweck divided a group of 10- to 12-year-olds into two groups. All were told that they had achieved a high score on a test but the first group were praised for their intelligence in achieving this, while the others were praised for their effort. The second group - those who had been instilled with a ‘growth mindset’ - were subsequently far more likely to put effort into future tasks. Meanwhile, the former took on only those tasks that would not risk their sense of worth. This group had inferred that success or failure is due to innate ability, and this ‘fixed mindset’ had led them to fear of failure and lack of effort. Praising ability actually made the students perform worse, while praising effort emphasised that change was possible. One of the greatest impediments to successfully implementing a growth mindset, however, is the education system itself: in many parts of the world, the school climate is obsessed with performance in the form of constant testing, analysing and ranking of students - a key characteristic of the fixed mindset. Nor is it unusual for schools to create a certain cognitive dissonance, when they applaud the benefits of a growth mindset but then hand out fixed target grades in lessons based on performance."
        },
        {
          "ref": "3",
          "text": "Aside from the implementation problem, the original growth mindset research has also received harsh criticism. The statistician Andrew Gelman claims that ‘their research designs have enough degrees of freedom that they could take their data to support just about any theory at all’. Professor of Psychology Timothy Bates, who has been trying to replicate Dweck’s work, is finding that the results are repeatedly null. He notes that: ‘People with a growth mindset don’t cope any better with failure … Kids with the growth mindset aren’t getting better grades, either before or after our intervention study.’ Much of this criticism is not lost on Dweck, and she deserves great credit for responding to it and adapting her work accordingly. In fact, she argues that her work has been misunderstood and misapplied in a range of ways. She has also expressed concerns that her theories are being misappropriated in schools by being conflated with the self-esteem movement: ‘For me the growth mindset is a tool for learning and improvement. It’s not just a vehicle for making children feel good.’ But there is another factor at work here. The failure to translate the growth mindset into the classroom might reflect a misunderstanding of the nature of teaching and learning itself. Growth mindset supporters David Yeager and Gregory Walton claim that interventions should be delivered in a subtle way to maximise their effectiveness. They say that if adolescents perceive a teacher’s intervention as conveying that they are in need of help, this could undo its intended effects. A lot of what drives students is their innate beliefs and how they perceive themselves. There is a strong correlation between self-perception and achievement, but there is evidence to suggest that the actual effect of achievement on self-perception is stronger than the other way round. To stand up in a classroom and successfully deliver a good speech is a genuine achievement, and that is likely to be more powerfully motivating than vague notions of ‘motivation’ itself. Recent evidence would suggest that growth mindset interventions are not the elixir of student learning that its proponents claim it to be. The growth mindset appears to be a viable construct in the lab, which, when administered in the classroom via targeted interventions, doesn’t seem to work. It is hard to dispute that having faith in the capacity to change is a good attribute for students. Paradoxically, however, that aspiration is not well served by direct interventions that try to instil it."
        },
        {
          "ref": "4",
          "text": "Motivational posters and talks are often a waste of time, and might well give students a deluded notion of what success actually means. Teaching concrete skills such as how to write an effective introduction to an essay then praising students’ effort in getting there is probably a far better way of improving confidence than telling them how unique they are, or indeed how capable they are of changing their own brains. Perhaps growth mindset works best as a philosophy and not an intervention."
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
              "prompt": "What can we learn from the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "where the notion of innate intelligence first began"
                },
                {
                  "key": "B",
                  "text": "when ideas about the nature of intelligence began to shift"
                },
                {
                  "key": "C",
                  "text": "how scientists have responded to changing views of intelligence"
                },
                {
                  "key": "D",
                  "text": "why thinkers turned away from the idea of intelligence being fixed"
                }
              ],
              "answer": "B",
              "explanation": "Instead, educators such as John Dewey argued that every child’s intelligence could be developed, given the right environment.",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "Instead, educators such as John Dewey argued that every child’s intelligence could be developed, given the right environ"
              }
            },
            {
              "number": 15,
              "prompt": "The second paragraph describes how schools encourage students to",
              "options": [
                {
                  "key": "A",
                  "text": "identify their personal ambitions."
                },
                {
                  "key": "B",
                  "text": "help each other to realise their goals."
                },
                {
                  "key": "C",
                  "text": "have confidence in their potential to succeed."
                },
                {
                  "key": "D",
                  "text": "concentrate on where their particular strengths lie."
                }
              ],
              "answer": "C",
              "explanation": "A major focus of the growth mindset in schools is coaxing students away from seeing failure as an indication of their ability, and towards seeing it as a chance to improve that ability.",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "A major focus of the growth mindset in schools is coaxing students away from seeing failure as an indication of their ab"
              }
            },
            {
              "number": 16,
              "prompt": "In the third paragraph, the writer suggests that students with a fixed mindset",
              "options": [
                {
                  "key": "A",
                  "text": "tend to be less competitive."
                },
                {
                  "key": "B",
                  "text": "generally have a low sense of self-esteem."
                },
                {
                  "key": "C",
                  "text": "will only work hard if they are given constant encouragement."
                },
                {
                  "key": "D",
                  "text": "are afraid to push themselves beyond what they see as their limitations."
                }
              ],
              "answer": "D",
              "explanation": "Meanwhile, the former took on only those tasks that would not risk their sense of worth.",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "Meanwhile, the former took on only those tasks that would not risk their sense of worth."
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "matching",
          "label": "Questions 17–22",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person or people, A-E. You may use any letter more than once.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Alfred Binet"
            },
            {
              "key": "B",
              "text": "Carol Dweck"
            },
            {
              "key": "C",
              "text": "Andrew Gelman"
            },
            {
              "key": "D",
              "text": "Timothy Bates"
            },
            {
              "key": "E",
              "text": "David Yeager and Gregory Walton"
            }
          ],
          "questions": [
            {
              "number": 17,
              "prompt": "The methodology behind the growth mindset studies was not",
              "answer": "C",
              "explanation": "The statistician Andrew Gelman claims that ‘their research designs have enough degrees of freedom that they could take their data to support just about any theory at all’.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "The statistician Andrew Gelman claims that ‘their research designs have enough degrees of freedom that they could take t"
              }
            },
            {
              "number": 18,
              "prompt": "The idea of the growth mindset has been incorrectly",
              "answer": "B",
              "explanation": "she argues that her work has been misunderstood and misapplied in a range of ways.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "she argues that her work has been misunderstood and misapplied in a range of ways."
              }
            },
            {
              "number": 19,
              "prompt": "Intellectual ability is an unchangeable feature of each individual.",
              "answer": "A",
              "explanation": "in the early 20th century, progressive thinkers revolted against the notion that inherent ability is destiny.",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "in the early 20th century, progressive thinkers revolted against the notion that inherent ability is destiny."
              }
            },
            {
              "number": 20,
              "prompt": "The growth mindset should be promoted without students",
              "answer": "E",
              "explanation": "Growth mindset supporters David Yeager and Gregory Walton claim that interventions should be delivered in a subtle way to maximise their effectiveness.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Growth mindset supporters David Yeager and Gregory Walton claim that interventions should be delivered in a subtle way t"
              }
            },
            {
              "number": 21,
              "prompt": "The growth mindset is not simply about boosting students’",
              "answer": "B",
              "explanation": "her theories are being misappropriated in schools by being conflated with the self-esteem movement",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "her theories are being misappropriated in schools by being conflated with the self-esteem movement"
              }
            },
            {
              "number": 22,
              "prompt": "Research shows that the growth mindset has no effect on",
              "answer": "D",
              "explanation": "He notes that: ‘People with a growth mindset don’t cope any better with failure … Kids with the growth mindset aren’t getting better grades, either before or after our intervention study.’",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "He notes that: ‘People with a growth mindset don’t cope any better with failure … Kids with the growth mindset aren’t ge"
              }
            }
          ],
          "id": "g17"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 23–26",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 2? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 23,
              "prompt": "Dweck has handled criticisms of her work in an admirable way.",
              "answer": "YES",
              "explanation": "Much of this criticism is not lost on Dweck, and she deserves great credit for responding to it and adapting her work accordingly.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Much of this criticism is not lost on Dweck, and she deserves great credit for responding to it and adapting her work ac"
              }
            },
            {
              "number": 24,
              "prompt": "Students’ self-perception is a more effective driver of self-confidence than actual achievement is.",
              "answer": "NO",
              "explanation": "there is evidence to suggest that the actual effect of achievement on self- perception is stronger than the other way round.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "there is evidence to suggest that the actual effect of achievement on self- perception is stronger than the other way ro"
              }
            },
            {
              "number": 25,
              "prompt": "Recent evidence about growth mindset interventions has attracted unfair coverage in the media.",
              "answer": "NOT GIVEN",
              "explanation": "Recent evidence would suggest that growth mindset interventions are not the elixir of student learning that its proponents claim it to be.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Recent evidence would suggest that growth mindset interventions are not the elixir of student learning that its proponen"
              }
            },
            {
              "number": 26,
              "prompt": "Deliberate attempts to encourage students to strive for high achievement may have a negative effect. === PAGE 7 ===",
              "answer": "YES",
              "explanation": "Motivational posters and talks are often a waste of time, and might well give students a deluded notion of what success actually means.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "Motivational posters and talks are often a waste of time, and might well give students a deluded notion of what success "
              }
            }
          ],
          "id": "g23"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Alfred Wegener: science, exploration and the theory of continental drift by Mott T Greene Introduction",
      "passage": [
        {
          "ref": "1",
          "text": "This is a book about the life and scientific work of Alfred Wegener, whose reputation today rests with his theory of continental displacements, better known as ‘continental drift’. Wegener proposed this theory in 1912 and developed it extensively for nearly 20 years. His book on the subject, The Origin of Continents and Oceans, went through four editions and was the focus of an international controversy in his lifetime and for some years after his death."
        },
        {
          "ref": "2",
          "text": "Wegener’s basic idea was that many mysteries about the Earth’s history could be solved if one supposed that the continents moved laterally, rather than supposing that they remained fixed in place. Wegener showed in great detail how such continental movements were plausible and how they worked, using evidence from a large number of sciences including geology, geophysics, paleontology, and climatology. Wegener’s idea - that the continents move - is at the heart of the theory that guides Earth sciences today: namely plate tectonics. Plate tectonics is in many respects quite different from Wegener’s proposal, in the same way that modern evolutionary theory is very different from the ideas Charles Darwin proposed in the 1850s about biological evolution. Yet plate tectonics is a descendant of Alfred Wegener’s theory of continental drift, in quite the same way that modern evolutionary theory is a descendant of Darwin’s theory of natural selection. When I started writing about Wegener’s life and work, one of the most intriguing things about him for me was that, although he came up with a theory on continental drift, he was not a geologist. He trained as an astronomer and pursued a career in atmospheric physics. When he proposed the theory of continental displacements in 1912, he was a lecturer in physics and astronomy at the University of Marburg, in southern Germany. However, he was not an ‘unknown’. In 1906 he had set a world record (with his brother Kurt) for time aloft in a hot-air balloon: 52 hours. Between 1906 and 1908 he had taken part in a highly publicized and extremely dangerous expedition to the coast of northeast Greenland. He had also made a name for himself amongst a small circle of meteorologists and atmospheric physicists in Germany as the author of a textbook, Thermodynamics of the Atmosphere (1911), and of a number of interesting scientific papers. As important as Wegener’s work on continental drift has turned out to be, it was largely a sideline to his interest in atmospheric physics, geophysics, and paleoclimatology*, and thus I have been at great pains to put Wegener’s work on continental drift in the larger context of his other scientific work, and in the even larger context of atmospheric sciences in his lifetime. This is a ‘continental drift book’ only to the extent that Wegener was interested in that topic and later became famous for it. My treatment of his other scientific work is no less detailed, though I certainly have devoted more attention to the reception of his ideas on continental displacement, as they were much more controversial than his other work."
        },
        {
          "ref": "3",
          "text": "Readers interested in the specific detail of Wegener’s career will see that he often stopped pursuing a given line of investigation (sometimes for years on end), only to pick it up later. I have tried to provide guideposts to his rapidly shifting interests by characterizing different phases of his life as careers in different sciences, which is reflected in the titles of the chapters. Thus, the index should be a sufficient guide for those interested in a particular aspect of Wegener’s life but perhaps not all of it. My own feeling, however, is that the parts do not make as much sense on their own as do all of his activities taken together. In this respect I urge readers to try to experience Wegener’s life as he lived it, with all the interruptions, changes of mind, and renewed efforts this entailed. Wegener left behind a few published works but, as was standard practice, these reported the results of his work - not the journey he took to reach that point. Only a few hundred of the many thousands of letters he wrote and received in his lifetime have survived and he didn’t keep notebooks or diaries that recorded his life and activities. He was not active (with a few exceptions) in scientific societies, and did not seek to find influence or advance his ideas through professional contacts and politics, spending most of his time at home in his study reading and writing, or in the field collecting observations."
        },
        {
          "ref": "4",
          "text": "Some famous scientists, such as Newton, Darwin, and Einstein, left mountains of written material behind, hundreds of notebooks and letters numbering in the tens of thousands. Others, like Michael Faraday, left extensive journals of their thoughts and speculations, parallel to their scientific notebooks. The more such material a scientist leaves behind, the better chance a biographer has of forming an accurate picture of how a scientist’s ideas took shape and evolved. I am firmly of the opinion that most of us, Wegener included, are not in any real sense the authors of our own lives. We plan, think, and act, often with apparent freedom, but most of the time our lives ‘happen to us’, and we only retrospectively turn this happenstance into a coherent narrative of fulfilled intentions. This book, therefore, is a story both of the life and scientific work that Alfred"
        },
        {
          "ref": "5",
          "text": "Wegener planned and intended and of the life and scientific work that actually ‘happened to him’. These are, as I think you will soon see, not always the same thing."
        },
        {
          "ref": "6",
          "text": "----- * Paleoclimatology - The study of past climates"
        }
      ],
      "groups": [
        {
          "type": "yes_no_notgiven",
          "label": "Questions 27–30",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 27,
              "prompt": "Wegener’s ideas about continental drift were widely disputed while he was alive.",
              "answer": "YES",
              "explanation": "the focus of an international controversy in his lifetime",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "the focus of an international controversy in his lifetime"
              }
            },
            {
              "number": 28,
              "prompt": "The idea that the continents remained fixed in place was defended in a number of respected scientific publications.",
              "answer": "NOT GIVEN",
              "explanation": "they remained fixed in place.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "they remained fixed in place."
              }
            },
            {
              "number": 29,
              "prompt": "Wegener relied on a limited range of scientific fields to support his theory of continental drift",
              "answer": "NO",
              "explanation": "using evidence from a large number of sciences including geology, geophysics, paleontology, and climatology.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "using evidence from a large number of sciences including geology, geophysics, paleontology, and climatology."
              }
            },
            {
              "number": 30,
              "prompt": "The similarities between Wegener’s theory of continental drift and modern-day plate tectonics are enormous. === PAGE 9 ===",
              "answer": "NO",
              "explanation": "in the same way that modern evolutionary theory is very different from the ideas Charles Darwin proposed in the 1850s about biological evolution. Yet plate tectonics is a descendant of Alfred Wegener’s theory of continental drift, in quite the same way that modern evolutionary theory is a descendant of Darwin’s theory of natural selection.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "in the same way that modern evolutionary theory is very different from the ideas Charles Darwin proposed in the 1850s ab"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 31–36",
          "instructions": "Complete the summary using the list of words, A–J, below.",
          "summaryTitle": "",
          "summaryText": "Write the correct letter, A-J, in boxes on your answer sheet.\nWegener’s life and work\nOne of the remarkable things about Wegener from a {31} is that although\nhe proposed a theory of continental drift, he was not a geologist. His {32} were limited to atmospheric physics. However, at the time he proposed his theory of continental\ndrift in 1912, he was already a person of {33} . Six years previously, there\nhad been his {34} of 52 hours in a hot-air balloon, followed by his well-\npublicised but {35} of Greenland’s coast. With the publication of his\ntextbook on thermodynamics, he had also come to the attention of a {36} of German scientists.\nA. modest fameB. vast rangeC. record-breaking achievement\nD. research methodsE. select group F. professional interests\nG. scientific debate H. hazardous explorationI. biographer’s perspective\nJ. narrow investigation",
          "wordBank": [
            {
              "key": "A",
              "text": "modest fame"
            },
            {
              "key": "B",
              "text": "vast range"
            },
            {
              "key": "C",
              "text": "record-breaking achievement"
            },
            {
              "key": "D",
              "text": "research methods"
            },
            {
              "key": "E",
              "text": "select group"
            },
            {
              "key": "F",
              "text": "professional interests"
            },
            {
              "key": "G",
              "text": "scientific debate"
            },
            {
              "key": "H",
              "text": "hazardous exploration"
            },
            {
              "key": "I",
              "text": "biographer’s perspective"
            },
            {
              "key": "J",
              "text": "narrow investigation"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "",
              "answer": "I",
              "explanation": "When I started writing about Wegener’s life and work,",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "When I started writing about Wegener’s life and work,"
              }
            },
            {
              "number": 32,
              "prompt": "",
              "answer": "F",
              "explanation": "He trained as an astronomer and pursued a career in atmospheric physics.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "He trained as an astronomer and pursued a career in atmospheric physics."
              }
            },
            {
              "number": 33,
              "prompt": "",
              "answer": "A",
              "explanation": "However, he was not an ‘unknown’.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "However, he was not an ‘unknown’."
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": "C",
              "explanation": "In 1906 he had set a world record (with his brother Kurt) for time aloft in a hot-air balloon: 52 hours.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "In 1906 he had set a world record (with his brother Kurt) for time aloft in a hot-air balloon: 52 hours."
              }
            },
            {
              "number": 35,
              "prompt": "",
              "answer": "H",
              "explanation": "Between 1906 and 1908 he had taken part in a highly publicized and extremely dangerous expedition to the coast of northeast Greenland.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "Between 1906 and 1908 he had taken part in a highly publicized and extremely dangerous expedition to the coast of northe"
              }
            },
            {
              "number": 36,
              "prompt": "",
              "answer": "E",
              "explanation": "He had also made a name for himself amongst a small circle of meteorologists and atmospheric physicists in Germany as the author of a textbook, Thermodynamics of the Atmosphere (1911), and of a number of interesting scientific papers.",
              "evidence": {
                "sectionId": "p3",
                "ref": "2",
                "quote": "He had also made a name for himself amongst a small circle of meteorologists and atmospheric physicists in Germany as th"
              }
            }
          ],
          "id": "g31"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 37–40",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 37,
              "prompt": "What is Mott T Greene doing in the fifth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "describing what motivated him to write the book"
                },
                {
                  "key": "B",
                  "text": "explaining why it is desirable to read the whole book"
                },
                {
                  "key": "C",
                  "text": "suggesting why Wegener pursued so many different careers"
                },
                {
                  "key": "D",
                  "text": "indicating what aspects of Wegener’s life interested him most"
                }
              ],
              "answer": "B",
              "explanation": "My own feeling, however, is that the parts do not make as much sense on their own as do all of his activities taken together. In this respect I urge readers to try to experience Wegener’s life as he lived it, with all the interruptions, changes of mind, and renewed efforts this entailed.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "My own feeling, however, is that the parts do not make as much sense on their own as do all of his activities taken toge"
              }
            },
            {
              "number": 38,
              "prompt": "What is said about Wegener in the sixth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "He was not a particularly ambitious person."
                },
                {
                  "key": "B",
                  "text": "He kept a record of all his scientific observations."
                },
                {
                  "key": "C",
                  "text": "He did not adopt many of the scientific practices of the time."
                },
                {
                  "key": "D",
                  "text": "He enjoyed discussing new discoveries with other scientists."
                }
              ],
              "answer": "A",
              "explanation": "He was not active (with a few exceptions) in scientific societies, and did not seek to find influence or advance his ideas through professional contacts and politics, spending most of his time at home in his study reading and writing, or in the field collecting observations.",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "He was not active (with a few exceptions) in scientific societies, and did not seek to find influence or advance his ide"
              }
            },
            {
              "number": 39,
              "prompt": "What does Greene say about some other famous scientists?",
              "options": [
                {
                  "key": "A",
                  "text": "Their published works had a greater impact than Wegener’s did."
                },
                {
                  "key": "B",
                  "text": "They had fewer doubts about their scientific ideas than Wegener did."
                },
                {
                  "key": "C",
                  "text": "Their scientific ideas were more controversial than Wegener’s."
                },
                {
                  "key": "D",
                  "text": "They are easier subjects to write about than Wegener."
                }
              ],
              "answer": "D",
              "explanation": "The more such material a scientist leaves behind, the better chance a biographer has of forming an accurate picture of how a scientist’s ideas took shape and evolved.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "The more such material a scientist leaves behind, the better chance a biographer has of forming an accurate picture of h"
              }
            },
            {
              "number": 40,
              "prompt": "What is Greene’s main point in the final paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "It is not enough in life to have good intentions."
                },
                {
                  "key": "B",
                  "text": "People need to plan carefully if they want to succeed."
                },
                {
                  "key": "C",
                  "text": "People have little control over many aspects of their lives."
                },
                {
                  "key": "D",
                  "text": "It is important that people ensure they have the freedom to act."
                }
              ],
              "answer": "C",
              "explanation": "We plan, think, and act, often with apparent freedom, but most of the time our lives ‘happen to us’, and we only retrospectively turn this happenstance into a coherent narrative of fulfilled intentions.",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "We plan, think, and act, often with apparent freedom, but most of the time our lives ‘happen to us’, and we only retrosp"
              }
            }
          ],
          "id": "g37"
        }
      ]
    }
  ]
}
$c18t4r$,
  true
);
