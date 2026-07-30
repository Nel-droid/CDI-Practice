DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 16' AND test_label = 'Test 4';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 16',
  'Test 4',
  'academic',
  3600,
  $c16t4r$
{
  "sections": [
    {
      "id": "p1",
      "title": "Roman tunnels",
      "passage": [
        {
          "ref": "1",
          "text": "The Romans, who once controlled areas of Europe, North Africa and Asia Minor, adopted the construction techniques of other civilizations to build tunnels in their territories The Persians, who lived in present-day Iran, were one of the first civilizations to build tunnels that provided a reliable supply of water to human settlements in dry areas. In the early first millennium BCE, they introduced the qanat method of tunnel construction, which consisted of placing posts over a hill in a straight line, to ensure that the tunnel kept to its route, and then digging vertical shafts down into the ground at regular intervals. Underground, workers removed the earth from between the ends of the shafts, creating a tunnel. The excavated soil was taken up to the surface using the shafts, which also provided ventilation during the work. Once the tunnel was completed, it allowed water to flow from the top of a hillside down towards a canal, which supplied water for human use. Remarkably, some qanats built by the Persians 2,700 years ago are still in use today. They later passed on their knowledge to the Romans, who also used the qanat method to construct water-supply tunnels for agriculture. Roman qanat tunnels were constructed with vertical shafts dug at intervals of between 30 and 60 meters. The shafts were equipped with handholds and footholds to help those climbing in and out of them and were covered with a wooden or stone lid. To ensure that the shafts were vertical, Romans hung a plumb line from a rod placed across the top of each shaft and made sure that the weight at the end of it hung in the center of the shaft. Plumb lines were also used to measure the depth of the shaft and to determine the slope of the tunnel. The 5.6 kilometer Long Claudius tunnel, built in 41 CE to drain the Fucine Lake in central Italy, had shafts that were up to 122 meters deep, took 11 years to build and involved approximately 30,000 workers."
        },
        {
          "ref": "2",
          "text": "By the 6th century BCE, a second method of tunnel construction appeared called the counter- excavation method, in which the tunnel was constructed from both ends. It was used to cut through high mountains when the qanat method was not a practical alternative. This method required greater planning and advanced knowledge of surveying, mathematics and geometry as both ends of a tunnel had to meet correctly at the center of the mountain. Adjustments to the direction of the tunnel also had to be made whenever builders encountered geological problems or when it deviated from its set path. They constantly checked the tunnel’s advancing direction. For example, by looking back at the light that penetrated through the tunnel mouth, and made corrections whenever necessary. Large deviations could happen, and they could result in one end of the tunnel not being usable. An inscription written on the side of a 428-meter tunnel, built by the Romans as part of the Saldae aqueduct system in modern-day Algeria, describes how the two teams of builders missed each other in the mountain and how the later construction of a lateral link between both corridors corrected the initial error."
        },
        {
          "ref": "3",
          "text": "The Romans dug tunnels for their roads using the counter-excavation method, whenever they encountered obstacles such as hills or mountains that were too high for roads to pass over. An example is the 37-meter-long, 6-meter-high, Furlo Pass Tunnel built in Italy in 69-79 CE. Remarkably, a modern road still uses this tunnel today. Tunnels were also built for mineral extraction. Miners would locate a mineral vein and then pursue it with shafts and tunnels underground. Traces of such tunnels used to mine gold can still be found at the Dolaucothi mines in Wales. When the sole purpose of a tunnel was mineral extraction, construction required less planning, as the tunnel route was determined by the mineral vein."
        },
        {
          "ref": "4",
          "text": "Roman tunnel projects were carefully planned and carried out. The length of time it took to construct a tunnel depended on the method being used and the type of rock being excavated. The qanat construction method was usually faster than the counter-excavation method as it was more straightforward. This was because the mountain could be excavated not only from the tunnel mouths but also from shafts. The type of rock could also influence construction times. When the rock was hard, the Romans employed a technique called fire quenching which consisted of heating the rock with fire, and then suddenly cooling it with cold water so that it would crack. Progress through hard rock could be very slow, and it was not uncommon for tunnels to take years, if not decades, to be built. Construction marks left on a Roman tunnel in Bologna show that the rate of advance through solid rock was 30 centimeters per day. In contrast, the rate of advance of the Claudius tunnel can be calculated at 1.4 meters per day. Most tunnels had inscriptions showing the names of patrons who ordered construction and sometimes the name of the architect. For example, the 1.4-kilometer Cevlik tunnel in Turkey, built to divert the floodwater threatening the harbor of the ancient city of Seleuceia Pieria, had inscriptions on the entrance, still visible today, that also indicate that the tunnel was started in 69 CE and was completed in 81 CE."
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–6",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
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
              "kind": "question",
              "number": 6
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "Choose ONE WORD ONLY from the passage for each answer. _______",
              "answer": [
                "posts"
              ],
              "wordLimit": 1,
              "explanation": "they introduced the qanat method of tunnel construction, which consisted of placing posts over a hill in a straight line, to ensure that the tunnel kept to its route, and then digging vertical shafts down into the ground at regular intervals.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "they introduced the qanat method of tunnel construction, which consisted of placing posts over a hill in a straight line"
              }
            },
            {
              "number": 2,
              "prompt": "_______ [2]",
              "answer": [
                "canal"
              ],
              "wordLimit": 1,
              "explanation": "Once the tunnel was completed, it allowed water to flow from the top of a hillside down towards a canal, which supplied water for human use.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "Once the tunnel was completed, it allowed water to flow from the top of a hillside down towards a canal, which supplied "
              }
            },
            {
              "number": 3,
              "prompt": "_______ [3]",
              "answer": [
                "ventilation"
              ],
              "wordLimit": 1,
              "explanation": "The excavated soil was taken up to the surface using the shafts, which also provided ventilation during the work.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "The excavated soil was taken up to the surface using the shafts, which also provided ventilation during the work."
              }
            },
            {
              "number": 4,
              "prompt": "_______ [4]",
              "answer": [
                "lid"
              ],
              "wordLimit": 1,
              "explanation": "The shafts were equipped with handholds and footholds to help those climbing in and out of them and were covered with a wooden or stone lid.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "The shafts were equipped with handholds and footholds to help those climbing in and out of them and were covered with a "
              }
            },
            {
              "number": 5,
              "prompt": "_______ [5]",
              "answer": [
                "weight"
              ],
              "wordLimit": 1,
              "explanation": "To ensure that the shafts were vertical, Romans hung a plumb line from a rod placed across the top of each shaft and made sure that the weight at the end of it hung in the center of the shaft.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "To ensure that the shafts were vertical, Romans hung a plumb line from a rod placed across the top of each shaft and mad"
              }
            },
            {
              "number": 6,
              "prompt": "_______ [6]",
              "answer": [
                "climbing"
              ],
              "wordLimit": 1,
              "explanation": "The shafts were equipped with handholds and footholds to help those climbing in and out of them and were covered with a wooden or stone lid.",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "The shafts were equipped with handholds and footholds to help those climbing in and out of them and were covered with a "
              }
            }
          ],
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 7–10",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 7,
              "prompt": "The counter-excavation method completely replaced the qanat method in the 6th century BCE.",
              "answer": "FALSE",
              "explanation": "It was used to cut through high mountains when the qanat method was not a practical alternative.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "It was used to cut through high mountains when the qanat method was not a practical alternative."
              }
            },
            {
              "number": 8,
              "prompt": "Only experienced builders were employed to construct a tunnel using the counter-excavation method.",
              "answer": "NOT GIVEN",
              "explanation": "This method required greater planning and advanced knowledge of surveying, mathematics and geometry as both ends of a tunnel had to meet correctly at the center of the mountain.",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "This method required greater planning and advanced knowledge of surveying, mathematics and geometry as both ends of a tu"
              }
            },
            {
              "number": 9,
              "prompt": "The information about a problem that occurred during the construction of the Saldae aqueduct system was found in an ancient book. === PAGE 3 ===",
              "answer": "FALSE",
              "explanation": "An inscription written on the side of a 428-meter tunnel",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "An inscription written on the side of a 428-meter tunnel"
              }
            },
            {
              "number": 10,
              "prompt": "The mistake made by the builders of the Saldae aqueduct system was that the two parts of the tunnel failed to meet.",
              "answer": "TRUE",
              "explanation": "the two teams of builders missed each other in the mountain and how the later construction of a lateral link between both corridors corrected the initial error",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "the two teams of builders missed each other in the mountain and how the later construction of a lateral link between bot"
              }
            }
          ],
          "id": "g7"
        },
        {
          "type": "completion",
          "label": "Questions 11–13",
          "instructions": "Complete the notes below. Choose NO MORE THAN TWO WORDS from the passage for each answer.",
          "formContent": [
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
              "number": 11,
              "prompt": "_______ What type of mineral were the Dolaucothi mines in Wales built to extract?",
              "answer": [
                "gold"
              ],
              "wordLimit": 2,
              "explanation": "Traces of such tunnels used to mine gold can still be found at the Dolaucothi mines in Wales.",
              "evidence": {
                "sectionId": "p1",
                "ref": "3",
                "quote": "Traces of such tunnels used to mine gold can still be found at the Dolaucothi mines in Wales."
              }
            },
            {
              "number": 12,
              "prompt": "_______ In addition to the patron, whose name might be carved onto a tunnel?",
              "answer": [
                "architect"
              ],
              "wordLimit": 2,
              "explanation": "/ architect‘s / architect‘s name / architect name / the architect / the architect‘s / the architect‘s name / the architect name Most tunnels had inscriptions showing the names of patrons who ordered construction and sometimes the name of the architect."
            },
            {
              "number": 13,
              "prompt": "_______ What part of Seleuceia Pieria was the Çevlik tunnel built to protect?",
              "answer": [
                "harbour"
              ],
              "wordLimit": 2,
              "explanation": "/ harbor / the harbour / the harbor the 1.4-kilometer Cevlik tunnel in Turkey, built to divert the floodwater threatening the harbor of the ancient city of Seleuceia Pieria"
            }
          ],
          "id": "g11"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Changes in reading habits What are the implications of the way we read today?",
      "passage": [
        {
          "ref": "1",
          "text": "Look around on your next plane trip. The iPad is the new pacifier for babies and toddlers. Younger school-aged children read stories on smartphones; older kids don’t read at all, but hunch over video games. Parents and other passengers read on tablets or skim a flotilla of email and news feeds. Unbeknown to most of us, an invisible, game-changing transformation links everyone in this picture: the neuronal circuit that underlies the brain’s ability to read is subtly, rapidly changing and this has implications for everyone from the pre-reading toddler to the expert adult. As work in neurosciences indicates, the acquisition of literacy necessitated a new circuit in our species’ brain more than 6,000 years ago. That circuit evolved from a very simple mechanism for decoding basic information, like the number of goats in one’s herd, to the present, highly elaborated reading brain. My research depicts how the present reading brain enables the development of some of our most important intellectual and affective processes: internalized knowledge, analogical reasoning, and inference; perspective-taking and empathy; critical analysis and the generation of insight. Research surfacing in many parts of the world now cautions that each of these essential ‘deep reading’ processes may be under threat as we move into digital- based modes of reading."
        },
        {
          "ref": "2",
          "text": "This is not a simple, binary issue of print versus digital reading and technological innovation. As MIT scholar Sherry Turkle has written, we do not err as a society when we innovate but when we ignore what we disrupt or diminish while innovating. In this hinge moment between print and digital cultures, society needs to confront what is diminishing in the expert reading circuit, what our children and older students are not developing, and what we can do about it. We know from research that the reading circuit is not given to human beings through a genetic blueprint like vision or language; it needs an environment to develop. Further, it will adapt to that environment’s requirements - from different writing systems to the characteristics of whatever medium is used. If the dominant medium advantages processes that are fast, multi-task oriented and well-suited for large volumes of information, like the current digital medium, so will the reading circuit. As UCLA psychologist Patricia Greenfield writes, the result is that less attention and time will be allocated to slower, time-demanding deep reading processes."
        },
        {
          "ref": "3",
          "text": "Increasing reports from educators and from researchers in psychology and the humanities bear this out. English literature scholar and teacher Mark Edmundson describes how many college students actively avoid the classic literature of the 19th and 20th centuries in favour of something simpler as they no longer have the patience to read longer, denser, more difficult texts. We should be less concerned with students’ ‘cognitive impatience’, however, than by what may underlie it: the potential inability of large numbers of students to read with a level of critical analysis sufficient to comprehend the complexity of thought and argument found in more demanding texts. Multiple studies show that digital screen use may be causing a variety of troubling downstream effects on reading comprehension in older high school and college students. In Stavanger, Norway, psychologist Anne Mangen and her colleagues studied how high school students comprehend the same material in different mediums. Mangen’s group asked subjects questions about a short story whose plot had universal student appeal; half of the students read the story on a tablet, the other half in paperback. Results indicated that students who read on print were superior in their comprehension to screen-reading peers, particularly in their ability to sequence detail and reconstruct the plot in chronological order."
        },
        {
          "ref": "4",
          "text": "Ziming Liu from San Jose State University has conducted a series of studies which indicate that the ‘new norm’ in reading is skimming, involving word-spotting and browsing through the text. Many readers now use a pattern when reading in which they sample the first line and then word- spot through the rest of the text. When the reading brain skims like this, it reduces time allocated to deep reading processes. In other words, we don’t have time to grasp complexity, to understand another’s feelings, to perceive beauty, and to create thoughts of the reader’s own. The possibility that critical analysis, empathy and other deep reading processes could become the unintended ‘collateral damage’ of our digital culture is not a straightforward binary issue about print versus digital reading. It is about how we all have begun to read on various mediums and how that changes not only what we read, but also the purposes for which we read. Nor is it only about the young. The subtle atrophy of critical analysis and empathy affects us all equally. It affects our ability to navigate a constant bombardment of information. It incentivizes a retreat to the most familiar stores of unchecked information, which require and receive no analysis, leaving us susceptible to false information and irrational ideas."
        },
        {
          "ref": "5",
          "text": "There’s an old rule in neuroscience that does not alter with age: use it or lose it. It is a very hopeful principle when applied to critical thought in the reading brain because it implies choice. The story of the changing reading brain is hardly finished. We possess both the science and the technology to identify and redress the changes in how we read before they become entrenched. If we work to understand exactly what we will lose, alongside the extraordinary new capacities that the digital world has brought us, there is as much reason for excitement as caution."
        }
      ],
      "groups": [
        {
          "type": "multiple_choice",
          "label": "Questions 14–17",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 14,
              "prompt": "What is the writer’s main point in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Our use of technology is having a hidden effect on us."
                },
                {
                  "key": "B",
                  "text": "Technology can be used to help youngsters to read."
                },
                {
                  "key": "C",
                  "text": "Travellers should be encouraged to use technology on planes."
                },
                {
                  "key": "D",
                  "text": "Playing games is a more popular use of technology than reading."
                }
              ],
              "answer": "A",
              "explanation": "Unbeknown to most of us, an invisible, game-changing transformation links everyone in this picture: the neuronal circuit that underlies the brain’s ability to read is subtly, rapidly changing and this has implications for everyone from the pre-reading toddler to the expert adult.",
              "evidence": {
                "sectionId": "p2",
                "ref": "1",
                "quote": "Unbeknown to most of us, an invisible, game-changing transformation links everyone in this picture: the neuronal circuit"
              }
            },
            {
              "number": 15,
              "prompt": "What main point does Sherry Turkle make about innovation?",
              "options": [
                {
                  "key": "A",
                  "text": "Technological innovation has led to a reduction in print reading."
                },
                {
                  "key": "B",
                  "text": "We should pay attention to what might be lost when innovation occurs."
                },
                {
                  "key": "C",
                  "text": "We should encourage more young people to become involved in innovation."
                },
                {
                  "key": "D",
                  "text": "There is a difference between developing products and developing ideas."
                }
              ],
              "answer": "B",
              "explanation": "As MIT scholar Sherry Turkle has written, we do not err as a society when we innovate but when we ignore what we disrupt or diminish while innovating",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "As MIT scholar Sherry Turkle has written, we do not err as a society when we innovate but when we ignore what we disrupt"
              }
            },
            {
              "number": 16,
              "prompt": "What point is the writer making in the fourth paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Humans have an inborn ability to read and write."
                },
                {
                  "key": "B",
                  "text": "Reading can be done using many different mediums."
                },
                {
                  "key": "C",
                  "text": "Writing systems make unexpected demands on the brain."
                },
                {
                  "key": "D",
                  "text": "Some brain circuits adjust to whatever is required of them."
                }
              ],
              "answer": "D",
              "explanation": "it will adapt to that environment’s requirements - from different writing systems to the characteristics of whatever medium is used.",
              "evidence": {
                "sectionId": "p2",
                "ref": "2",
                "quote": "it will adapt to that environment’s requirements - from different writing systems to the characteristics of whatever med"
              }
            },
            {
              "number": 17,
              "prompt": "According to Mark Edmundson, the attitude of college students",
              "options": [
                {
                  "key": "A",
                  "text": "has changed the way he teaches."
                },
                {
                  "key": "B",
                  "text": "has influenced what they select to read."
                },
                {
                  "key": "C",
                  "text": "does not worry him as much as it does others."
                },
                {
                  "key": "D",
                  "text": "does not match the views of the general public."
                }
              ],
              "answer": "B",
              "explanation": "Mark Edmundson describes how many college students actively avoid the classic literature of the 19th and 20th centuries in favour of something simpler as they no longer have the patience to read longer, denser, more difficult texts",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Mark Edmundson describes how many college students actively avoid the classic literature of the 19th and 20th centuries "
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 18–22",
          "instructions": "Complete the summary using the list of words, A–H, below.",
          "summaryTitle": "",
          "summaryText": "Questions 18-{22} Practice this section only\nComplete the summary using the list of words, A-H, below.\nWrite the correct letter, A-H, in boxes on your answer sheet.\nStudies on digital screen use\nThere have been many studies on digital screen use, showing some {18} trends. Psychologist Anne Mangen gave high-school students a short story to read, half using\ndigital and half using print mediums. Her team then used a question-and-answer technique to\nfind out how {19} each group’s understanding of the plot was. The\nfindings showed a clear pattern in the responses, with those who read screens finding the order\nof information {20} to recall.\nStudies by Ziming Liu show that students are tending to read {21} words\nand phrases in a text to save time. This approach, she says, gives the reader a superficial\nunderstanding of the {22} content of material, leaving no time for\nthought.\nA. fast B. isolated C. emotionalD. worrying E. many F. hard\nG. combinedH. thorough",
          "wordBank": [
            {
              "key": "A",
              "text": "fast"
            },
            {
              "key": "B",
              "text": "isolated"
            },
            {
              "key": "C",
              "text": "emotional"
            },
            {
              "key": "D",
              "text": "worrying"
            },
            {
              "key": "E",
              "text": "many"
            },
            {
              "key": "F",
              "text": "hard"
            },
            {
              "key": "G",
              "text": "combined"
            },
            {
              "key": "H",
              "text": "thorough"
            }
          ],
          "questions": [
            {
              "number": 18,
              "prompt": "",
              "answer": "D",
              "explanation": "Multiple studies show that digital screen use may be causing a variety of troubling downstream effects on reading comprehension in older high school and college students.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Multiple studies show that digital screen use may be causing a variety of troubling downstream effects on reading compre"
              }
            },
            {
              "number": 19,
              "prompt": "",
              "answer": "H",
              "explanation": "Results indicated that students who read on print were superior in their comprehension to screen-reading peers",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "Results indicated that students who read on print were superior in their comprehension to screen-reading peers"
              }
            },
            {
              "number": 20,
              "prompt": "",
              "answer": "F",
              "explanation": "particularly in their ability to sequence detail and reconstruct the plot in chronological order.",
              "evidence": {
                "sectionId": "p2",
                "ref": "3",
                "quote": "particularly in their ability to sequence detail and reconstruct the plot in chronological order."
              }
            },
            {
              "number": 21,
              "prompt": "",
              "answer": "B",
              "explanation": "the ‘new norm’ in reading is skimming, involving word-spotting and browsing through the text",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "the ‘new norm’ in reading is skimming, involving word-spotting and browsing through the text"
              }
            },
            {
              "number": 22,
              "prompt": "",
              "answer": "C",
              "explanation": "In other words, we don’t have time to grasp complexity, to understand another’s feelings, to perceive beauty, and to create thoughts of the reader’s own.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "In other words, we don’t have time to grasp complexity, to understand another’s feelings, to perceive beauty, and to cre"
              }
            }
          ],
          "id": "g18"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 23–26",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 2? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 23,
              "prompt": "The medium we use to read can affect our choice of reading content.",
              "answer": "YES",
              "explanation": "It is about how we all have begun to read on various mediums and how that changes not only what we read, but also the purposes for which we read.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "It is about how we all have begun to read on various mediums and how that changes not only what we read, but also the pu"
              }
            },
            {
              "number": 24,
              "prompt": "Some age groups are more likely to lose their complex reading skills than others.",
              "answer": "NO",
              "explanation": "The subtle atrophy of critical analysis and empathy affects us all equally.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "The subtle atrophy of critical analysis and empathy affects us all equally."
              }
            },
            {
              "number": 25,
              "prompt": "False information has become more widespread in today’s digital era.",
              "answer": "NOT GIVEN",
              "explanation": "It incentivizes a retreat to the most familiar stores of unchecked information, which require and receive no analysis, leaving us susceptible to false information and irrational ideas.",
              "evidence": {
                "sectionId": "p2",
                "ref": "4",
                "quote": "It incentivizes a retreat to the most familiar stores of unchecked information, which require and receive no analysis, l"
              }
            },
            {
              "number": 26,
              "prompt": "We still have opportunities to rectify the problems that technology is presenting.",
              "answer": "YES",
              "explanation": "We possess both the science and the technology to identify and redress the changes in how we read before they become entrenched.",
              "evidence": {
                "sectionId": "p2",
                "ref": "5",
                "quote": "We possess both the science and the technology to identify and redress the changes in how we read before they become ent"
              }
            }
          ],
          "id": "g23"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Attitudes towards Artificial Intelligence",
      "passage": [
        {
          "ref": "A",
          "text": "Artificial intelligence (AI) can already predict the future. Police forces are using it to map when and where crime is likely to occur. Doctors can use it to predict when a patient is most likely to have a heart attack or stroke. Researchers are even trying to give AI imagination so it can plan for unexpected consequences. Many decisions in our lives require a good forecast, and AI is almost always better at forecasting than we are. Yet for all these technological advances, we still seem to deeply lack confidence in Al predictions. Recent cases show that people don’t like relying on AI and prefer to trust human experts, even if these experts are wrong. If we want AI to really benefit people, we need to find a way to get people to trust it. To do that, we need to understand why people are so reluctant to trust AI in the first place."
        },
        {
          "ref": "B",
          "text": "Take the case of Watson for Oncology, one of technology giant IBM’s supercomputer programs. Their attempt to promote this program to cancer doctors was a PR disaster. The AI promised to deliver top-quality recommendations on the treatment of 12 cancers that accounted for 80% of the world’s eases. But when doctors first interacted with Watson, they found themselves in a rather difficult situation. On the one hand, if Watson provided guidance about a treatment that coincided with their own opinions, physicians did not see much point in Watson’s recommendations. The supercomputer was simply telling them what they already knew, and these recommendations did not change the actual treatment. On the other hand, if Watson generated a recommendation that contradicted the experts’ opinion, doctors would typically conclude that Watson wasn’t competent. And the machine wouldn’t be able to explain why its treatment was plausible because its machine-learning algorithms were simply too complex to be fully understood by humans. Consequently, this has caused even more suspicion and disbelief, leading many doctors to ignore the seemingly outlandish AI recommendations and stick to their own expertise."
        },
        {
          "ref": "C",
          "text": "This is just one example of people's lack of confidence in AI and their reluctance to accept what AI has to offer. Trust in other people is often based on our understanding of how others think and having experience of their reliability. This helps create a psychological feeling of safety. AI, on the other hand, is still fairly new and unfamiliar to most people. Even if it can be technically explained (and that’s not always the case), AI’s decision-making process is usually too difficult for most people to comprehend. And interacting with something we don’t understand can cause anxiety and give us a sense that we’re losing control. Many people are also simply not familiar with many instances of AI actually working, because it often happens in the background. Instead they are acutely aware of instances where AI goes wrong. Embarrassing AI failures receive a disproportionate amount of media attention, emphasising the message that we cannot rely on technology. Machine learning is not foolproof, in part because the humans who design it aren’t."
        },
        {
          "ref": "D",
          "text": "Feelings about AI run deep. In a recent experiment, people from a range of backgrounds were given various sci-fi films about AI to watch and then asked questions about automation in everyday life. It was found that, regardless of whether the film they watched depicted AI in a positive or negative light, simply watching a cinematic vision of our technological future polarised the participants’ attitudes. Optimists became more extreme in their enthusiasm for AI and sceptics became even more guarded. This suggests people use relevant evidence about AI in a biased manner to support their existing attitudes, a deep-rooted human tendency known as “confirmation bias”. As AI is represented more and more in media and entertainment, it could lead to a society split between those who benefit from AI and those who reject it. More pertinently, refusing to accept the advantages offered by AI could place a large group of people at a serious disadvantage."
        },
        {
          "ref": "E",
          "text": "Fortunately, we already have some ideas about how to improve trust in AI. Simply having previous experience with AI can significantly improve people’s opinions about the technology, as was found in the study mentioned above. Evidence also suggests the more you use other technologies such as the internet, the more you trust them. Another solution may be to reveal more about the algorithms which AI uses and the purposes they serve. Several high-profile social media companies and online marketplaces already release transparency reports about government requests and surveillance disclosures. A similar practice for AI could help people have a better understanding of the way algorithmic decisions are made."
        },
        {
          "ref": "F",
          "text": "Research suggests that allowing people some control over AI decision-making could also improve trust and enable AI to learn from human experience. For example, one study showed that when people were allowed the freedom to slightly modify an algorithm, they felt more satisfied with its decisions, more likely to believe it was superior and more likely to use it in the future. We don’t need to understand the intricate inner workings of AI systems, but if people are given a degree of responsibility for how they are implemented, they will be more willing to accept AI into their lives."
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 27–32",
          "instructions": "Reading Passage 3 has six paragraphs, A–F. Choose the correct heading for each paragraph from the list of headings below.",
          "optionsLabel": "List of Headings",
          "options": [
            {
              "key": "i",
              "text": "An increasing divergence of attitudes towards AI"
            },
            {
              "key": "ii",
              "text": "Reasons why we have more faith in human judgement than in AI"
            },
            {
              "key": "iii",
              "text": "The superiority of AI projections over those made by humans"
            },
            {
              "key": "iv",
              "text": "The process by which AI can help us make good decisions"
            },
            {
              "key": "v",
              "text": "The advantages of involving users in AI processes"
            },
            {
              "key": "vi",
              "text": "Widespread distrust of an AI innovation"
            },
            {
              "key": "vii",
              "text": "Encouraging openness about how AI functions"
            },
            {
              "key": "viii",
              "text": "A surprisingly successful AI application"
            }
          ],
          "questions": [
            {
              "number": 27,
              "prompt": "Paragraph A",
              "answer": "iii",
              "explanation": "Many decisions in our lives require a good forecast, and AI is almost always better at forecasting than we are.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "Many decisions in our lives require a good forecast, and AI is almost always better at forecasting than we are."
              }
            },
            {
              "number": 28,
              "prompt": "Paragraph B",
              "answer": "vi",
              "explanation": "Consequently, this has caused even more suspicion and disbelief, leading many doctors to ignore the seemingly outlandish AI recommendations and stick to their own expertise.",
              "evidence": {
                "sectionId": "p3",
                "ref": "B",
                "quote": "Consequently, this has caused even more suspicion and disbelief, leading many doctors to ignore the seemingly outlandish"
              }
            },
            {
              "number": 29,
              "prompt": "Paragraph C",
              "answer": "ii",
              "explanation": "Trust in other people is often based on our understanding of how others think and having experience of their reliability. This helps create a psychological feeling of safety.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "Trust in other people is often based on our understanding of how others think and having experience of their reliability"
              }
            },
            {
              "number": 30,
              "prompt": "Paragraph D",
              "answer": "i",
              "explanation": "As AI is represented more and more in media and entertainment, it could lead to a society split between those who benefit from AI and those who reject it.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "As AI is represented more and more in media and entertainment, it could lead to a society split between those who benefi"
              }
            },
            {
              "number": 31,
              "prompt": "Paragraph E",
              "answer": "vii",
              "explanation": "Another solution may be to reveal more about the algorithms which AI uses and the purposes they serve.",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "Another solution may be to reveal more about the algorithms which AI uses and the purposes they serve."
              }
            },
            {
              "number": 32,
              "prompt": "Paragraph F",
              "answer": "v",
              "explanation": "Research suggests that allowing people some control over AI decision- making could also improve trust and enable AI to learn from human experience.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "Research suggests that allowing people some control over AI decision- making could also improve trust and enable AI to l"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "multiple_choice",
          "label": "Questions 33–35",
          "instructions": "Choose the correct letter, A, B, C or D.",
          "questions": [
            {
              "number": 33,
              "prompt": "What is the writer doing in Section A?",
              "options": [
                {
                  "key": "A",
                  "text": "providing a solution to a concern"
                },
                {
                  "key": "B",
                  "text": "justifying an opinion about an issue"
                },
                {
                  "key": "C",
                  "text": "highlighting the existence of a problem"
                },
                {
                  "key": "D",
                  "text": "explaining the reasons for a phenomenon"
                }
              ],
              "answer": "C",
              "explanation": "Yet for all these technological advances, we still seem to deeply lack confidence in Al predictions.",
              "evidence": {
                "sectionId": "p3",
                "ref": "A",
                "quote": "Yet for all these technological advances, we still seem to deeply lack confidence in Al predictions."
              }
            },
            {
              "number": 34,
              "prompt": "According to Section C, why might some people be reluctant to accept AI?",
              "options": [
                {
                  "key": "A",
                  "text": "They are afraid it will replace humans in decision-making jobs."
                },
                {
                  "key": "B",
                  "text": "Its complexity makes them feel that they are at a disadvantage."
                },
                {
                  "key": "C",
                  "text": "They would rather wait for the technology to be tested over a period of time."
                },
                {
                  "key": "D",
                  "text": "Misunderstandings about how it works make it seem more challenging than it is."
                }
              ],
              "answer": "B",
              "explanation": "AI’s decision-making process is usually too difficult for most people to comprehend. And interacting with something we don’t understand can cause anxiety and give us a sense that we’re losing control.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "AI’s decision-making process is usually too difficult for most people to comprehend. And interacting with something we d"
              }
            },
            {
              "number": 35,
              "prompt": "What does the writer say about the media in Section C of the text?",
              "options": [
                {
                  "key": "A",
                  "text": "It leads the public to be mistrustful of AI."
                },
                {
                  "key": "B",
                  "text": "It devotes an excessive amount of attention to AI."
                },
                {
                  "key": "C",
                  "text": "Its reports of incidents involving AI are often inaccurate."
                },
                {
                  "key": "D",
                  "text": "It gives the impression that AI failures are due to designer error."
                }
              ],
              "answer": "A",
              "explanation": "Embarrassing AI failures receive a disproportionate amount of media attention, emphasising the message that we cannot rely on technology.",
              "evidence": {
                "sectionId": "p3",
                "ref": "C",
                "quote": "Embarrassing AI failures receive a disproportionate amount of media attention, emphasising the message that we cannot re"
              }
            }
          ],
          "id": "g33"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 36–40",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 36,
              "prompt": "Subjective depictions of AI in sci-fi films make people change their opinions about automation.",
              "answer": "NO",
              "explanation": "Optimists became more extreme in their enthusiasm for AI and sceptics became even more guarded.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "Optimists became more extreme in their enthusiasm for AI and sceptics became even more guarded."
              }
            },
            {
              "number": 37,
              "prompt": "Portrayals of AI in media and entertainment are likely to become more positive. === PAGE 9 ===",
              "answer": "NOT GIVEN",
              "explanation": "As AI is represented more and more in media and entertainment, it could lead to a society split between those who benefit from AI and those who reject it.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "As AI is represented more and more in media and entertainment, it could lead to a society split between those who benefi"
              }
            },
            {
              "number": 38,
              "prompt": "Rejection of the possibilities of AI may have a negative effect on many people’s lives.",
              "answer": "YES",
              "explanation": "More pertinently, refusing to accept the advantages offered by AI could place a large group of people at a serious disadvantage.",
              "evidence": {
                "sectionId": "p3",
                "ref": "D",
                "quote": "More pertinently, refusing to accept the advantages offered by AI could place a large group of people at a serious disad"
              }
            },
            {
              "number": 39,
              "prompt": "Familiarity with AI has very little impact on people’s attitudes to the technology.",
              "answer": "NO",
              "explanation": "Simply having previous experience with AI can significantly improve people’s opinions about the technology",
              "evidence": {
                "sectionId": "p3",
                "ref": "E",
                "quote": "Simply having previous experience with AI can significantly improve people’s opinions about the technology"
              }
            },
            {
              "number": 40,
              "prompt": "AI applications which users are able to modify are more likely to gain consumer approval.",
              "answer": "YES",
              "explanation": "For example, one study showed that when people were allowed the freedom to slightly modify an algorithm, they felt more satisfied with its decisions, more likely to believe it was superior and more likely to use it in the future.",
              "evidence": {
                "sectionId": "p3",
                "ref": "F",
                "quote": "For example, one study showed that when people were allowed the freedom to slightly modify an algorithm, they felt more "
              }
            }
          ],
          "id": "g36"
        }
      ]
    }
  ]
}
$c16t4r$,
  true
);
