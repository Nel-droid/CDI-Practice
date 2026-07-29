DELETE FROM public.tests
WHERE skill = 'reading' AND book = 'Cambridge IELTS 21' AND test_label = 'Test 1';

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 21',
  'Test 1',
  'academic',
  3600,
  $c21t1r$
{
  "sections": [
    {
      "id": "p1",
      "title": "The Davies Sisters",
      "passage": [
        {
          "ref": "1",
          "text": "Between 1908 and 1924, Gwendoline and Margaret Davies amassed one of the largest collections of late-nineteenth and early-twentieth-century French paintings in Britain Gwendoline (1882-1951) and Margaret (1884-1963) Davies were the granddaughters of David Davies, a Welshman who amassed a fortune in the shipping and mining industries. In 1907, when Gwendoline came into her inheritance (Margaret would follow in 1909), the sisters were said to be the wealthiest unmarried women in Britain. Their religious upbringing in rural Wales gave them a deep sense of social responsibility and they chose to use their inheritance for cultural and philanthropic* purposes."
        },
        {
          "ref": "2",
          "text": "While there was no real family history of art collecting, the sisters' education was rigorously geared toward such pursuits. Their London school focused on cultural rather than academic study, and they travelled extensively with their governess, Jane Blaker, visiting art galleries and making extensive notes on the collections there."
        },
        {
          "ref": "3",
          "text": "The sisters began to make regular art purchases from 1908, which roughly coincided with the dates of their inheritance. They took advice from various people, including the art dealer Hugh Blaker (the brother of Jane Blaker) and David Croal Thompson, who was also an art dealer. While it was long assumed that these men were largely responsible for the nature of the sisters' collection, it has recently been accepted that Gwendoline and Margaret retained a far more active role in the process."
        },
        {
          "ref": "4",
          "text": "The sisters' journals reveal their preference for Old Master** paintings. Yet they initially made very few attempts to secure any such works. While the sisters were wealthy in relative terms, their income was nothing compared to the fortunes of American art collectors of this period, such as J. Pierpont Morgan. Quite simply, high quality Old Master works were, if not beyond their means, then beyond what they were willing to pay for them. Instead, their early purchases were of the"
        },
        {
          "ref": "5",
          "text": "fashionable, safe variety, and included, for example, paintings by the French artist Jean-Baptiste- Camille Corot."
        },
        {
          "ref": "6",
          "text": "However, it was only a few years before their collecting took a new direction and they turned to the work of the French Impressionists***. We know that Hugh Blaker, as a champion of contemporary French art had a hand in the decision, and we know also that they would have seen examples on their various trips to Paris. Whatever the precise reason for this change, their first purchases of Impressionist art, made in October 1912, were scenes of Venice by the French artist Claude Monet. Over the next 12 years, the sisters amassed the bulk of their Impressionist collection, including six further works by Monet, two more by Manet, and three by Renoir, including his well-known painting La Parisienne."
        },
        {
          "ref": "7",
          "text": "The First World War (1914-1918) played a part in the development of the sisters' collection. Their initial response to the war effort was to finance the safe passage of artists from occupied Belgium to Wales, as a humanitarian act, but also with the hope of establishing a vibrant artists' community in the area. Later in the conflict, both sisters decided to volunteer at a canteen for troops at Troyes, in northern France; Gwendoline in 1916, followed by Margaret in 1917."
        },
        {
          "ref": "8",
          "text": "It was tedious and distressing work, which would have a permanent effect on Gwendoline's health. Yet on one of numerous trips to nearby Paris, she visited the Bernheim-Jeune Gallery. Here she acquired two works by Cézanne - Provençal Landscape and The François Zola Dam. The paintings were shipped directly to Bath, England, where they became the first works by Cézanne to go on display in a public gallery in Britain."
        },
        {
          "ref": "9",
          "text": "Commentators have often described the sisters as unlikely pioneer collectors. Much is made of their isolation in rural Wales and the fact that they didn't make friends with artists or gallery owners. Yet they didn't feel obliged to follow fashionable tastes and were free to pursue their own preferences. Although they relied on a trusted circle of advisers, they made frequent trips to London and Paris, and also regularly had paintings sent to their home for consideration. By the early 1920s, Gwendoline felt increasingly uncomfortable buying art works when faced with the poverty and social upheaval created by the First World War. Her philanthropic pursuits then became focused almost exclusively on social causes and the development of the sisters' home at Gregynog Hall into a conference center and venue for the Gregynog Festival of Music and Poetry. Gwendoline made her final art purchase in March 1926. Margaret also stopped collecting around"
        },
        {
          "ref": "10",
          "text": "this time, but started again in the 1930s acquiring, on a relatively small scale, work by contemporary British artists."
        },
        {
          "ref": "11",
          "text": "The sisters collected French Impressionist paintings at a time when such art was routinely ignored by individuals and institutions alike. The Gwendoline and Margaret Davies collection, donated in 1951 and 1963 respectively to the National Museum Wales, contains major examples of work by leading French Impressionists. In collecting paintings that they loved, the sisters created a lasting and meaningful cultural legacy for the people of Wales and beyond."
        },
        {
          "ref": "12",
          "text": "* philanthropic: seeking to promote the welfare of others, often by charitable funding ** Old Master: a highly respected artist of great skill who worked in Europe before about 1800 *** Impressionist: an artist with a style of painting that developed in France in the late 1800s by Renoir, including his well-known painting La Parisienne"
        }
      ],
      "groups": [
        {
          "type": "completion",
          "label": "Questions 1–7",
          "instructions": "Complete the notes below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "Family and early life their grandfather's wealth came from"
            },
            {
              "kind": "question",
              "number": 1
            },
            {
              "kind": "static",
              "text": "and transportation businesses their upbringing gave them a sense of social responsibility their",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 2
            },
            {
              "kind": "static",
              "text": "was designed to give them an interest in activities such as collecting art their governess took them on trips to art galleries they took lengthy",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 3
            },
            {
              "kind": "static",
              "text": "about the things they saw in art galleries",
              "noBullet": true
            },
            {
              "kind": "static",
              "text": "The sisters as art collectors their"
            },
            {
              "kind": "question",
              "number": 4
            },
            {
              "kind": "static",
              "text": "showed they liked Old Master paintings, but they were expensive to buy their early purchases were safe, popular paintings the first Impressionist paintings they bought showed places in",
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
              "kind": "question",
              "number": 7
            }
          ],
          "questions": [
            {
              "number": 1,
              "prompt": "_______",
              "answer": [
                "mining"
              ],
              "wordLimit": 1,
              "explanation": "Gwendoline (1882-1951) and Margaret (1884-1963) Davies were the granddaughters of David Davies, a Welshman who amassed a fortune in the shipping and mining industries",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "Gwendoline (1882-1951) and Margaret (1884-1963) Davies were the granddaughters of David Davies, a Welshman who amassed a"
              }
            },
            {
              "number": 2,
              "prompt": "_______",
              "answer": [
                "education"
              ],
              "wordLimit": 1,
              "explanation": "While there was no real family history of art collecting, the sisters’ education was rigorously geared toward such pursuits",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "While there was no real family history of art collecting, the sisters’ education was rigorously geared toward such pursu"
              }
            },
            {
              "number": 3,
              "prompt": "_______",
              "answer": [
                "notes"
              ],
              "wordLimit": 1,
              "explanation": "Their London school focused on cultural rather than academic study, and they travelled extensively with their governess, Jane Blaker, visiting art galleries and making extensive notes on the collections there",
              "evidence": {
                "sectionId": "p1",
                "ref": "2",
                "quote": "Their London school focused on cultural rather than academic study, and they travelled extensively with their governess,"
              }
            },
            {
              "number": 4,
              "prompt": "_______",
              "answer": [
                "journals"
              ],
              "wordLimit": 1,
              "explanation": "The sisters’ journals reveal their preference for Old Master** paintings Quite simply, high quality Old Master works were, if not beyond their means, then beyond what they were willing to pay for them"
            },
            {
              "number": 5,
              "prompt": "_______",
              "answer": [
                "Venice"
              ],
              "wordLimit": 1,
              "explanation": "Whatever the precise reason for this change, their first purchases of Impressionist art, made in October 1912, were scenes of Venice by the French artist Claude Monet",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "Whatever the precise reason for this change, their first purchases of Impressionist art, made in October 1912, were scen"
              }
            },
            {
              "number": 6,
              "prompt": "Impact of First World War they helped bring artists from Belgium to Wales they worked in a _______ for soldiers in France",
              "answer": [
                "canteen"
              ],
              "wordLimit": 1,
              "explanation": "Later in the conflict, both sisters decided to volunteer at a canteen for troops at Troyes, in northern France; Gwendoline in 1916, followed by Margaret in 1917",
              "evidence": {
                "sectionId": "p1",
                "ref": "7",
                "quote": "Later in the conflict, both sisters decided to volunteer at a canteen for troops at Troyes, in northern France; Gwendoli"
              }
            },
            {
              "number": 7,
              "prompt": "Opinions about the sisters as art collectors were not considered typical collectors - they lived in isolation in the countryside and did not have any _______ who were artists",
              "answer": [
                "friends"
              ],
              "wordLimit": 1,
              "explanation": "Much is made of their isolation in rural Wales and the fact that they didn’t make friends with artists or gallery owners",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "Much is made of their isolation in rural Wales and the fact that they didn’t make friends with artists or gallery owners"
              }
            }
          ],
          "formTitle": "Gwendoline and Margaret Davies",
          "id": "g1"
        },
        {
          "type": "true_false_notgiven",
          "label": "Questions 8–13",
          "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE or NOT GIVEN.",
          "questions": [
            {
              "number": 8,
              "prompt": "The Davies sisters' childhood influenced the way they decided to use their wealth.",
              "answer": "TRUE",
              "explanation": "Their religious upbringing in rural Wales gave them a deep sense of social responsibility and they chose to use their inheritance for cultural and philanthropic* purposes",
              "evidence": {
                "sectionId": "p1",
                "ref": "1",
                "quote": "Their religious upbringing in rural Wales gave them a deep sense of social responsibility and they chose to use their in"
              }
            },
            {
              "number": 9,
              "prompt": "The Jean-Baptiste-Camille Corot paintings in the Davies sisters' collection were purchased from a gallery in France.",
              "answer": "NOT GIVEN",
              "explanation": "Instead, their early purchases were of the fashionable, safe variety, and included, for example, paintings by the French artist Jean-Baptiste-Camille Corot",
              "evidence": {
                "sectionId": "p1",
                "ref": "4",
                "quote": "Instead, their early purchases were of the fashionable, safe variety, and included, for example, paintings by the French"
              }
            },
            {
              "number": 10,
              "prompt": "Hugh Blaker opposed the Davies sisters' decision to buy art by French Impressionists.",
              "answer": "FALSE",
              "explanation": "We know that Hugh Blaker, as a champion of contemporary French art had a hand in the decision, and we know also that they would have seen examples on their various trips to Paris",
              "evidence": {
                "sectionId": "p1",
                "ref": "6",
                "quote": "We know that Hugh Blaker, as a champion of contemporary French art had a hand in the decision, and we know also that the"
              }
            },
            {
              "number": 11,
              "prompt": "The exhibition of Cézanne paintings at the Bath gallery was very popular with the public. === PAGE 6 ===",
              "answer": "NOT GIVEN",
              "explanation": "The paintings were shipped directly to Bath, England, where they became the first works by Cézanne to go on display in a public gallery in Britain",
              "evidence": {
                "sectionId": "p1",
                "ref": "8",
                "quote": "The paintings were shipped directly to Bath, England, where they became the first works by Cézanne to go on display in a"
              }
            },
            {
              "number": 12,
              "prompt": "The impact of the First World War encouraged Gwendoline to reconsider her interest in collecting art.",
              "answer": "TRUE",
              "explanation": "By the early 1920s, Gwendoline felt increasingly uncomfortable buying art works when faced with the poverty and social upheaval created by the First World War",
              "evidence": {
                "sectionId": "p1",
                "ref": "9",
                "quote": "By the early 1920s, Gwendoline felt increasingly uncomfortable buying art works when faced with the poverty and social u"
              }
            },
            {
              "number": 13,
              "prompt": "The Davies sisters bought French Impressionist art during a period when very few people were doing so. === PAGE 7 ===",
              "answer": "TRUE",
              "explanation": "The sisters collected French Impressionist paintings at a time when such art was routinely ignored by individuals and institutions alike",
              "evidence": {
                "sectionId": "p1",
                "ref": "11",
                "quote": "The sisters collected French Impressionist paintings at a time when such art was routinely ignored by individuals and in"
              }
            }
          ],
          "id": "g8"
        }
      ]
    },
    {
      "id": "p2",
      "title": "Why we need silence",
      "passage": [
        {
          "ref": "A",
          "text": "Humans are finely attuned to noise, and for good reason. From an evolutionary perspective, sounds give us vital information, helping us navigate the world and avoid danger. To help ensure loud or unexpected noises get the attention they deserve, our internal chemistry alters in response to them. Our blood pressure goes up, muscles tense and glands release hormones that prepare us for fight or flight. In the short term, this is a good thing. When we are exposed to too much noise over the long term, however, those responses can lead to a multitude of health issues, from sleep disturbance to even cardiovascular disease."
        },
        {
          "ref": "B",
          "text": "The World Health Organization has recently designated excessive noise as an 'underestimated threat' to public health, and has said that people living in cities such as Mumbai, Tokyo and Buenos Aires are being exposed to far more than the recommended 40 decibels of noise at night. A report from the European Environment Agency concluded that noise was an ongoing and widespread issue in Europe, with at least 1 in 5 people consistently exposed to levels considered harmful to health. 'There are no \"earlids\" that can protect your brain from noise,' says Nick Antonio, an acoustic consultant who has contributed to the British and international standards for noise."
        },
        {
          "ref": "C",
          "text": "The good news is that several cities have been working to turn the volume down. One of the first to do so was London. 'By providing recommendations for quieter buses, reducing noise from roads and also controlling noise from aircraft, they were able to make the city quieter,' says Antonio. Other cities have introduced noise-reducing road coatings, for instance, alongside greenery that muffles sound. Some solutions are more specific: Washington DC's ban on petrol-powered leaf blowers came into effect recently, while in New York City, legislation has been approved to fine people who modify their vehicles to make them noisier. 'People are seeing the benefits of these more quiet environments in their cities,' Antonio says. 'I expect we will see much more of this in the future.'"
        },
        {
          "ref": "D",
          "text": "Researchers are also seeking to understand what aspects of silent experiences are most beneficial to our health. One of the best-researched is the flotation tank: a lightproof, soundproof tank of salt water in which a person floats as a form of deep relaxation. While some people experience altered perception in the tanks, involving subtle humming sounds and visual effects, these effects are benign and do not detract from the benefits of the experience, says Justin Feinstein, a clinical neuropsychologist. 'When you don't have external sensory stimuli coming in, the brain tries to fill the void to make sense of this dark and silent world,' he explains. 'In these tanks, some people can even hear the sound of their eyes blinking,' says Feinstein. 'But it is the ability to focus on the breath that helps people reach a relaxed or meditative state.'"
        },
        {
          "ref": "E",
          "text": "To further explore flotation tanks as a therapeutic tool, Feinstein and his colleagues recruited 50 people with a variety of conditions related to stress and had them answer a questionnaire prior to and following a flotation session. Participants reported decreases in muscle tension, pain and symptoms of their conditions after a single, 1-hour float, alongside an increase in feelings of relaxation and overall wellbeing. Less is known about what effects sensory deprivation can have on the brain. To investigate, Feinstein's team had 48 people participate in either three 90-minute float sessions or three 90- minute periods of relaxing on a chair which reclined. Participants had their brains scanned using functional magnetic resonance imaging at the beginning and end of the trial. Float sessions uniquely decreased activity in the default mode network (DMN), a collection of brain regions commonly linked with depression. Feinstein says it is an exciting finding, because flotation tanks seem to offer a way of 'resetting' our nervous system to prevent it from getting out of balance."
        },
        {
          "ref": "F",
          "text": "Neurobiologist Tal Dotan Ben-Soussan is also an advocate of silence as a therapy. 'When we find ways to be quiet, we are not only quiet in our environment, but quiet in our inner selves,' she explains. 'This allows us to be more aware of what is happening around us and what the situation may require from us so we can provide [a more] adequate response.' Not everyone will benefit from silence to the same extent, but Ben-Soussan says one characteristic is key: the person must need to want to engage in the experience. 'We see from animal models and human studies that volition and intentionality is important,' she says. 'When people do not want silence, it can be very distressing.'"
        },
        {
          "ref": "G",
          "text": "Eric Pfeifer, a psychotherapy researcher, also concedes that some people may not benefit from silence, particularly those who are in a heightened state of stress. 'People in these states may not be able to relax or calm down in a silent condition,' he says. Professional guidance can be useful, he adds, allowing people to approach silence slowly so that they can gradually enjoy the benefits. And Pfeifer is convinced that silence is more attainable in everyday life than people think. First, complete silence isn't necessary. In a recent study, he found that participants reported more relaxation and less boredom when they sat quietly in an outdoor garden compared with a completely silent room. Second, Pfeifer believes we don't need a lot of silence to gain benefits. 'You don't need to spend hours in silence,' he says. 'It is likely better to have more frequency of silence for a few minutes at a time than a longer period of silence only once a week. Just finding those places in your daily life where you can find some silence ... can make a big difference.'"
        }
      ],
      "groups": [
        {
          "type": "matching",
          "label": "Questions 14–17",
          "instructions": "Reading Passage 2 has seven sections, A–G. Which section contains the following information?",
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
              "prompt": "examples of strategies to decrease the noise that the",
              "answer": "C",
              "explanation": "‘By providing recommendations for quieter buses, reducing noise from roads and also controlling noise from aircraft, they were able to make the city quieter,’ says Antonio. Other cities have introduced noise-reducing road coatings, for instance, alongside greenery that muffles sound. Some solutions are more specific: Washington DC’s ban on petrol-powered leaf blowers came into effect recently, while in New York City, legislation has been approved to fine people who modify their vehicles to make them noisier",
              "evidence": {
                "sectionId": "p2",
                "ref": "C",
                "quote": "‘By providing recommendations for quieter buses, reducing noise from roads and also controlling noise from aircraft, the"
              }
            },
            {
              "number": 15,
              "prompt": "data indicating the extent of the problem of",
              "answer": "B",
              "explanation": "A report from the European Environment Agency concluded that noise was an ongoing and widespread issue in Europe, with at least 1 in 5 people consistently exposed to levels considered harmful to health",
              "evidence": {
                "sectionId": "p2",
                "ref": "B",
                "quote": "A report from the European Environment Agency concluded that noise was an ongoing and widespread issue in Europe, with a"
              }
            },
            {
              "number": 16,
              "prompt": "a description of physiological changes in our bodies",
              "answer": "A",
              "explanation": "To help ensure loud or unexpected noises get the attention they deserve, our internal chemistry alters in response to them. Our blood pressure goes up, muscles tense and glands release hormones that prepare us for fight or flight",
              "evidence": {
                "sectionId": "p2",
                "ref": "A",
                "quote": "To help ensure loud or unexpected noises get the attention they deserve, our internal chemistry alters in response to th"
              }
            },
            {
              "number": 17,
              "prompt": "evidence that a relatively quiet environment can be",
              "answer": "G",
              "explanation": "In a recent study, he found that participants reported more relaxation and less boredom when they sat quietly in an outdoor garden compared with a completely silent room",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "In a recent study, he found that participants reported more relaxation and less boredom when they sat quietly in an outd"
              }
            }
          ],
          "id": "g14"
        },
        {
          "type": "completion",
          "label": "Questions 18–21",
          "instructions": "Complete the summary below. Choose ONE WORD ONLY from the passage for each answer.",
          "formContent": [
            {
              "kind": "static",
              "text": "According to Justin Feinstein, flotation tanks allow people to concentrate on their own",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 18
            },
            {
              "kind": "static",
              "text": ", which helps them relax and enables them to meditate. Feinstein and his colleagues conducted an experiment in which 50 people, who were all suffering from stress and related issues, were given a",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 19
            },
            {
              "kind": "static",
              "text": "to complete before and after using a flotation tank. Participants reported a reduction in their symptoms after an hour in the tank, together with signs of relaxation and improved general",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 20
            },
            {
              "kind": "static",
              "text": ". In another experiment, the researchers had 48 people spend periods of 90 minutes either lying back in a chair or floating in a tank. Brain scans then revealed that those people who had been in a tank had decreased activity in parts of the brain associated with",
              "noBullet": true
            },
            {
              "kind": "question",
              "number": 21
            },
            {
              "kind": "static",
              "text": ".",
              "noBullet": true
            }
          ],
          "questions": [
            {
              "number": 18,
              "prompt": "people to concentrate on their own _______",
              "answer": [
                "breath"
              ],
              "wordLimit": 1,
              "explanation": "‘But it is the ability to focus on the breath that helps people reach a relaxed or meditative state.’"
            },
            {
              "number": 19,
              "prompt": "and related issues, were given a _______",
              "answer": [
                "questionnaire"
              ],
              "wordLimit": 1,
              "explanation": "To further explore flotation tanks as a therapeutic tool, Feinstein and his colleagues recruited 50 people with a variety of conditions related to stress and had them answer a questionnaire prior to and following a flotation session",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "To further explore flotation tanks as a therapeutic tool, Feinstein and his colleagues recruited 50 people with a variet"
              }
            },
            {
              "number": 20,
              "prompt": "of relaxation and improved general _______",
              "answer": [
                "wellbeing"
              ],
              "wordLimit": 1,
              "explanation": "Participants reported decreases in muscle tension, pain and symptoms of their conditions after a single, 1-hour float, alongside an increase in feelings of relaxation and overall wellbeing",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Participants reported decreases in muscle tension, pain and symptoms of their conditions after a single, 1-hour float, a"
              }
            },
            {
              "number": 21,
              "prompt": "parts of the brain associated with _______",
              "answer": [
                "depression"
              ],
              "wordLimit": 1,
              "explanation": "Float sessions uniquely decreased activity in the default mode network (DMN), a collection of brain regions commonly linked with depression",
              "evidence": {
                "sectionId": "p2",
                "ref": "E",
                "quote": "Float sessions uniquely decreased activity in the default mode network (DMN), a collection of brain regions commonly lin"
              }
            }
          ],
          "formTitle": "Flotation Tanks",
          "id": "g18"
        },
        {
          "type": "matching",
          "label": "Questions 22–26",
          "instructions": "Look at the following statements and the list of people below. Match each statement with the correct person, A, B, C or D. You may use any letter more than once.",
          "optionsLabel": "Options",
          "options": [
            {
              "key": "A",
              "text": "Nick Antonio"
            },
            {
              "key": "B",
              "text": "Justin Feinstein"
            },
            {
              "key": "C",
              "text": "Tal Dotan Ben-Soussan"
            },
            {
              "key": "D",
              "text": "Eric Pfeifer"
            }
          ],
          "questions": [
            {
              "number": 22,
              "prompt": "It is unpleasant and upsetting for people to be placed in a silent",
              "answer": "C",
              "explanation": "‘When people do not want silence, it can be very distressing.’"
            },
            {
              "number": 23,
              "prompt": "The trend towards creating quieter urban locations is likely to",
              "answer": "A",
              "explanation": "‘People are seeing the benefits of these more quiet environments in their cities,’ Antonio says. ‘I expect we will see much more of this in the future.’"
            },
            {
              "number": 24,
              "prompt": "When our body's senses are completely deprived of input, our minds",
              "answer": "B",
              "explanation": "While some people experience altered perception in the tanks, involving subtle humming sounds and visual effects, these effects are benign and do not detract from the benefits of the experience, says Justin Feinstein, a clinical neuropsychologist. ‘When you don’t have external sensory stimuli coming in, the brain tries to fill the void to make sense of this dark and silent world,’ he explains",
              "evidence": {
                "sectionId": "p2",
                "ref": "D",
                "quote": "While some people experience altered perception in the tanks, involving subtle humming sounds and visual effects, these "
              }
            },
            {
              "number": 25,
              "prompt": "Even a short amount of silent time can have a positive impact.",
              "answer": "D",
              "explanation": "Second, Pfeifer believes we don’t need a lot of silence to gain benefits. ‘You don’t need to spend hours in silence,’ he says. ‘It is likely better to have more frequency of silence for a few minutes at a time than a longer period of silence only once a week",
              "evidence": {
                "sectionId": "p2",
                "ref": "G",
                "quote": "Second, Pfeifer believes we don’t need a lot of silence to gain benefits. ‘You don’t need to spend hours in silence,’ he"
              }
            },
            {
              "number": 26,
              "prompt": "External and internal quietness makes us more conscious of events",
              "answer": "C",
              "explanation": "‘When we find ways to be quiet, we are not only quiet in our environment, but quiet in our inner selves,’ she explains. ‘This allows us to be more aware of what is happening around us and what the situation may require from us so we can provide [a more] adequate response.’"
            }
          ],
          "id": "g22"
        }
      ]
    },
    {
      "id": "p3",
      "title": "Book review: The World of Sugar by Ulbe Bosma",
      "passage": [
        {
          "ref": "1",
          "text": "Ulbe Bosma's The World of Sugar is a genuinely global history. Bosma discusses all the sugar- growing places of the world, beginning with Cuba and Java, the largest exporters of the early 20th century. But this is a history not just of cane sugar but also of beet sugar, an equally important form of traded sugar over the last hundred years. Beet sugar is grown mainly in Europe and the United States. It has also been massively subsidised and sold at artificially low prices on world markets, threatening the livelihood of producers of cane sugar."
        },
        {
          "ref": "2",
          "text": "Bosma's discussion of the sugar market in Britain gives a sense of the book's range. The sweet- toothed British first bought cane sugar from their own slavery-dependent colonial plantations. Following the abolition of slavery in the British Empire, cane sugar was imported to Britain from places which retained the practice, such as Cuba and Brazil. Towards the end of the 19th century, the British started to import beet sugar from continental Europe. Only in the 20th century was there a move to develop a national beet sugar industry."
        },
        {
          "ref": "3",
          "text": "The book provides a global labour history, investigating the wide range of labour regimes associated with growing sugar. Contrary to popular belief, cane sugar production was never just restricted to large, dedicated plantations owned by rich men. For example, in Java, a huge exporter of sugar in the early 20th century, sugar cane was grown together with rice in an extraordinarily labour-intensive way by small farmers."
        },
        {
          "ref": "4",
          "text": "The World of Sugar is also a story of similarity and continuity in sugar cultivation. For example, imported labour has been used for much large-scale production. German beet fields employed Polish workers; Mexicans and many others, including Sicilians, were vital to US sugar production. Cane cutting, Bosma shows, remains a poorly paid and brutal business to this day in many places in the world. But as well as this, the book is about the continuity of the use of traditional methods on small farms. In the mid 20th-century, this type of sugar production dominated in South Asia and Latin America."
        },
        {
          "ref": "5",
          "text": "This is also a history of capitalists and sugar dynasties, as well as corporations that in some cases have remained influential over very long periods. Great firms and great interests have had profound influence on the policies of states. In many places - not just the British Caribbean but Cuba and the Philippines too - a powerful sugar bourgeoisie played a major role in politics and their interests were consequently protected by trade barriers and subsidies. In the battle for control of the industry, it was inevitably the poor countries which came off worse. All this is explored by Bosma with wonderful subtlety and control."
        },
        {
          "ref": "6",
          "text": "But sugar production was never just a matter of agriculture. It also involved the extraction, close to the place of harvest, of sucrose from the sugar plant, a process which required machinery powered by humans, animals, wind or steam. Further processes involved boiling (from the 19th century, this often involved vacuum systems) and the separation of sugar from other materials in a process known as refinement. From very early on, sugar production was an energy-intensive industrial process, mostly taking place in the countryside and in refineries in centres of consumption, both small and large. The growth of the industry entailed a very rapid diffusion of ideas and techniques from one country to another. Cuba, for example, developed an extraordinarily dense system of railways to transport workers and cane, as well as steam-powered sugar factories. Particular varieties of cane sugar and beet sugar spread very rapidly across the world, in accordance with local needs and demands."
        },
        {
          "ref": "7",
          "text": "Where once only tiny quantities of sugar could be produced, now new techniques, varieties, fertilisers, irrigation systems and much more have turned gleaming white sugar into a ubiquitous chemical. Over the same time, there has been a massive increase in consumption. Once regarded as a luxury, sugar came to be promoted as a valuable source of energy. But as the consumption of sugar has increased, so has the harm it does, whether to people's teeth or weight. In the face of appalling obstruction from the sugar industry to attempts to reduce consumption, some countries have been forced to tax sugar in order to bring that about. The sugar industry has a history of attacking its critics and, when it comes to obesity, of trying to blame fats, and lack of exercise and self-control. And the recent past has seen worrying new developments in mass sweetening. High- fructose corn syrup made from maize using an enzymatic process invented in Japan in the 1960s has a similar number of calories to table sugar but is far cheaper to produce. It is now widely consumed, having been adopted in the making of soft drinks and a large number of processed foods, and is regarded as a leading cause of obesity."
        },
        {
          "ref": "8",
          "text": "This is a wonderfully rich book, a model of global history, the history of production and the history of capitalism. Bosma avoids outbursts of emotion, celebratory or critical, even if they might have made his analysis of the multiple tragedies involving sugar all the more powerful. He shows that we could always have done without sugar and that today we have many alternative sources of sweetness. Yet many of the poorest people in the world still depend on it to make a living."
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
              "prompt": "What does the reviewer suggest about the cultivation and trading of sugar in the first paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "Sugar has played a major role in international relations."
                },
                {
                  "key": "B",
                  "text": "Beet sugar has been made more internationally competitive."
                },
                {
                  "key": "C",
                  "text": "Cane sugar is thought to be of superior quality to beet sugar."
                },
                {
                  "key": "D",
                  "text": "New locations for cultivating sugar have increased production."
                }
              ],
              "answer": "B",
              "explanation": "It has also been massively subsidised and sold at artificially low prices on world markets, threatening the livelihood of producers of cane sugar",
              "evidence": {
                "sectionId": "p3",
                "ref": "1",
                "quote": "It has also been massively subsidised and sold at artificially low prices on world markets, threatening the livelihood o"
              }
            },
            {
              "number": 28,
              "prompt": "In the second paragraph, when discussing the sugar market in Britain, the reviewer stresses",
              "options": [
                {
                  "key": "A",
                  "text": "how the sources used changed over time."
                },
                {
                  "key": "B",
                  "text": "how developments in agriculture affected trade."
                },
                {
                  "key": "C",
                  "text": "the increased demand for sugar over the years."
                },
                {
                  "key": "D",
                  "text": "the growing support for ethical methods of cultivation."
                }
              ],
              "answer": "A",
              "explanation": "The sweet-toothed British first bought cane sugar from their own slavery- dependent colonial plantations. Following the abolition of slavery in the British Empire, cane sugar was imported to Britain from places which retained the practice, such as Cuba and Brazil. Towards the end of the 19th century, the British started to import beet sugar from continental Europe. Only in the 20th century was there a move to develop a national beet sugar industry"
            },
            {
              "number": 29,
              "prompt": "What is the reviewer doing in the third paragraph?",
              "options": [
                {
                  "key": "A",
                  "text": "describing an efficient approach to sugar cultivation"
                },
                {
                  "key": "B",
                  "text": "explaining why the use of sugar plantations declined"
                },
                {
                  "key": "C",
                  "text": "addressing a misconception about the growing of sugar cane"
                },
                {
                  "key": "D",
                  "text": "evaluating different approaches to the cultivation of sugar cane"
                }
              ],
              "answer": "C",
              "explanation": "Contrary to popular belief, cane sugar production was never just restricted to large, dedicated plantations owned by rich men",
              "evidence": {
                "sectionId": "p3",
                "ref": "3",
                "quote": "Contrary to popular belief, cane sugar production was never just restricted to large, dedicated plantations owned by ric"
              }
            },
            {
              "number": 30,
              "prompt": "In the final paragraph, what does the reviewer suggest is the overall message of Bosma's book?",
              "options": [
                {
                  "key": "A",
                  "text": "Sugar is a harmful and unnecessary product."
                },
                {
                  "key": "B",
                  "text": "Economic pressure is needed to control sugar production."
                },
                {
                  "key": "C",
                  "text": "Conditions for workers in sugar production should be improved."
                },
                {
                  "key": "D",
                  "text": "Intensive marketing of sugar has had disastrous consequences."
                }
              ],
              "answer": "A",
              "explanation": "Bosma avoids outbursts of emotion, celebratory or critical, even if they might have made his analysis of the multiple tragedies involving sugar all the more powerful. He shows that we could always have done without sugar and that today we have many alternative sources of sweetness",
              "evidence": {
                "sectionId": "p3",
                "ref": "8",
                "quote": "Bosma avoids outbursts of emotion, celebratory or critical, even if they might have made his analysis of the multiple tr"
              }
            }
          ],
          "id": "g27"
        },
        {
          "type": "completion",
          "label": "Questions 31–36",
          "instructions": "Complete the summary using the list of words, A–I, below.",
          "summaryTitle": "",
          "summaryText": "The book The World of Sugar points out the similarities in the way that sugar was cultivated\naround the world. In the big industries in both Germany and the US, sugar farming depended\non {31} . However, in other parts of the world such as South Asia and\nLatin America, {32} continued.\nSugar production has also involved {33} who were eager to protect their\nmarkets. In countries such as Cuba the sugar industry therefore had a major influence on\n{34} .\nTo support the interests of sugar producers, {35} were established. As a\nresult of this, {36} were penalised.\nA. national governmentsB. agricultural developments\nC. less wealthy nationsD. untrained workers E. small-scale cultivation\nF. outdated methodsG. financial controls H. migrant workers\nI. powerful individuals and businesses",
          "wordBank": [
            {
              "key": "A",
              "text": "national governments"
            },
            {
              "key": "B",
              "text": "agricultural developments"
            },
            {
              "key": "C",
              "text": "less wealthy nations"
            },
            {
              "key": "D",
              "text": "untrained workers"
            },
            {
              "key": "E",
              "text": "small-scale cultivation"
            },
            {
              "key": "F",
              "text": "outdated methods"
            },
            {
              "key": "G",
              "text": "financial controls"
            },
            {
              "key": "H",
              "text": "migrant workers"
            },
            {
              "key": "I",
              "text": "powerful individuals and businesses"
            }
          ],
          "questions": [
            {
              "number": 31,
              "prompt": "",
              "answer": "H",
              "explanation": "German beet fields employed Polish workers; Mexicans and many others, including Sicilians, were vital to US sugar production",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "German beet fields employed Polish workers; Mexicans and many others, including Sicilians, were vital to US sugar produc"
              }
            },
            {
              "number": 32,
              "prompt": "",
              "answer": "E",
              "explanation": "But as well as this, the book is about the continuity of the use of traditional methods on small farms. In the mid 20th-century, this type of sugar production dominated in South Asia and Latin America",
              "evidence": {
                "sectionId": "p3",
                "ref": "4",
                "quote": "But as well as this, the book is about the continuity of the use of traditional methods on small farms. In the mid 20th-"
              }
            },
            {
              "number": 33,
              "prompt": "",
              "answer": "I",
              "explanation": "This is also a history of capitalists and sugar dynasties, as well as corporations that in some cases have remained influential over very long periods. Great firms and great interests have had profound influence on the policies of states",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "This is also a history of capitalists and sugar dynasties, as well as corporations that in some cases have remained infl"
              }
            },
            {
              "number": 34,
              "prompt": "",
              "answer": "A",
              "explanation": "In many places - not just the British Caribbean but Cuba and the Philippines too - a powerful sugar bourgeoisie played a major role in politics and their interests were consequently protected by trade barriers and subsidies",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "In many places - not just the British Caribbean but Cuba and the Philippines too - a powerful sugar bourgeoisie played a"
              }
            },
            {
              "number": 35,
              "prompt": "",
              "answer": "G",
              "explanation": "In many places - not just the British Caribbean but Cuba and the Philippines too - a powerful sugar bourgeoisie played a major role in politics and their interests were consequently protected by trade barriers and subsidies",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "In many places - not just the British Caribbean but Cuba and the Philippines too - a powerful sugar bourgeoisie played a"
              }
            },
            {
              "number": 36,
              "prompt": "",
              "answer": "C",
              "explanation": "In the battle for control of the industry, it was inevitably the poor countries which came off worse",
              "evidence": {
                "sectionId": "p3",
                "ref": "5",
                "quote": "In the battle for control of the industry, it was inevitably the poor countries which came off worse"
              }
            }
          ],
          "id": "g31"
        },
        {
          "type": "yes_no_notgiven",
          "label": "Questions 37–40",
          "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO or NOT GIVEN.",
          "questions": [
            {
              "number": 37,
              "prompt": "Sugar has now become available in large quantities due to a range of agricultural developments.",
              "answer": "YES",
              "explanation": "Where once only tiny quantities of sugar could be produced, now new techniques, varieties, fertilisers, irrigation systems and much more have turned gleaming white sugar into a ubiquitous chemical",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Where once only tiny quantities of sugar could be produced, now new techniques, varieties, fertilisers, irrigation syste"
              }
            },
            {
              "number": 38,
              "prompt": "Advertisers initially marketed sugar as a luxury product.",
              "answer": "NOT GIVEN",
              "explanation": "Once regarded as a luxury, sugar came to be promoted as a valuable source of energy",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "Once regarded as a luxury, sugar came to be promoted as a valuable source of energy"
              }
            },
            {
              "number": 39,
              "prompt": "The invention of high-fructose corn syrup was a positive development.",
              "answer": "NO",
              "explanation": "And the recent past has seen worrying new developments in mass sweetening. High-fructose corn syrup made from maize using an enzymatic process invented in Japan in the 1960s has a similar number of calories to table sugar but is far cheaper to produce. It is now widely consumed, having been adopted in the making of soft drinks and a large number of processed foods, and is regarded as a leading cause of obesity",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "And the recent past has seen worrying new developments in mass sweetening. High-fructose corn syrup made from maize usin"
              }
            },
            {
              "number": 40,
              "prompt": "High-fructose corn syrup is an ingredient in many processed foods. === PAGE 18 ===",
              "answer": "YES",
              "explanation": "It is now widely consumed, having been adopted in the making of soft drinks and a large number of processed foods, and is regarded as a leading cause of obesity",
              "evidence": {
                "sectionId": "p3",
                "ref": "7",
                "quote": "It is now widely consumed, having been adopted in the making of soft drinks and a large number of processed foods, and i"
              }
            }
          ],
          "id": "g37"
        }
      ]
    }
  ]
}
$c21t1r$,
  true
);
