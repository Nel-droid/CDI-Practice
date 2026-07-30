-- ============================================================
-- Phase 9 seed: Cambridge IELTS 10 Academic Reading Test 1
-- Run once in the Supabase SQL Editor.
-- Prerequisite: phase4-seed.sql must have been run (tests + attempts tables + RLS).
-- ============================================================

INSERT INTO public.tests (skill, book, test_label, variant, duration_seconds, content, published)
VALUES (
  'reading',
  'Cambridge IELTS 10',
  'Test 1',
  'academic',
  3600,
  $json${
    "skill": "reading",
    "book": "Cambridge IELTS 10",
    "testLabel": "Test 1",
    "variant": "academic",
    "durationSeconds": 3600,
    "sections": [
      {
        "id": "p1",
        "title": "Passage 1",
        "passage": [
          {
            "ref": "A",
            "text": "A millennium ago, stepwells were fundamental to life in the driest parts of India. Although many have been neglected, recent restoration has returned them to their former glory. Richard Cox travelled to north-western India to document these spectacular monuments from a bygone era."
          },
          {
            "ref": "B",
            "text": "During the sixth and seventh centuries, the inhabitants of the modern-day states of Gujarat and Rajasthan in north-western India developed a method of gaining access to clean, fresh groundwater during the dry season for drinking, bathing, watering animals and irrigation. However, the significance of this invention — the stepwell — goes beyond its utilitarian application."
          },
          {
            "ref": "C",
            "text": "Unique to the region, stepwells are often architecturally complex and vary widely in size and shape. During their heyday, they were places of gathering, of leisure, of relaxation and of worship for villagers of all but the lowest castes. Most stepwells are found dotted around the desert areas of Gujarat (where they are called vav) and Rajasthan (where they are known as baori), while a few also survive in Delhi. Some were located in or near villages as public spaces for the community; others were positioned beside roads as resting places for travellers."
          },
          {
            "ref": "D",
            "text": "As their name suggests, stepwells comprise a series of stone steps descending from ground level to the water source (normally an underground aquifer) as it recedes following the rains. When the water level was high, the user needed only to descend a few steps to reach it; when it was low, several levels would have to be negotiated."
          },
          {
            "ref": "E",
            "text": "Some wells are vast, open craters with hundreds of steps paving each sloping side, often in tiers. Others are more elaborate, with long stepped passages leading to the water via several storeys. Built from stone and supported by pillars, they also included pavilions that sheltered visitors from the relentless heat. But perhaps the most impressive features are the intricate decorative sculptures that embellish many stepwells, showing activities from fighting and dancing to everyday acts such as women combing their hair and churning butter."
          },
          {
            "ref": "F",
            "text": "Down the centuries, thousands of wells were constructed throughout north-western India, but the majority have now fallen into disuse; many are derelict and dry, as groundwater has been diverted for industrial use and the wells no longer reach the water table. Their condition hasn't been helped by recent dry spells: southern Rajasthan suffered an eight-year drought between 1996 and 2004."
          },
          {
            "ref": "G",
            "text": "However, some important sites in Gujarat have recently undergone major restoration, and the state government announced in June last year that it plans to restore the stepwells throughout the state."
          },
          {
            "ref": "H",
            "text": "In Patan, the state's ancient capital, the stepwell of Rani Ki Vav (Queen's Stepwell) is perhaps the finest current example. It was built by Queen Udayamati during the late 11th century, but became silted up following a flood during the 13th century. But the Archaeological Survey of India began restoring it in the 1960s, and today it's in pristine condition. At 65 metres long, 20 metres wide and 27 metres deep, Rani Ki Vav features 500 distinct sculptures carved into niches throughout the monument, depicting gods such as Vishnu and Parvati in various incarnations. Incredibly, in January 2001, this ancient structure survived a devastating earthquake that measured 7.6 on the Richter scale."
          },
          {
            "ref": "I",
            "text": "Another example is the Surya Kund in Modhera, northern Gujarat, next to the Sun Temple, built by King Bhima I in 1026 to honour the sun god Surya. It actually resembles a tank (kund means reservoir or pond) rather than a well, but displays the hallmarks of stepwell architecture, including four sides of steps that descend to the bottom in a stunning geometrical formation. The terraces house 108 small, intricately carved shrines between the sets of steps."
          },
          {
            "ref": "J",
            "text": "Rajasthan also has a wealth of wells. The ancient city of Bundi, 200 kilometres south of Jaipur, is renowned for its architecture, including its stepwells. One of the larger examples is Raniji Ki Baori, which was built by the queen of the region, Nathavatji, in 1699. At 46 metres deep, 20 metres wide and 40 metres long, the intricately carved monument is one of 21 baoris commissioned in the Bundi area by Nathavatji."
          },
          {
            "ref": "K",
            "text": "In the old ruined town of Abhaneri, about 95 kilometres east of Jaipur, is Chand Baori, one of India's oldest and deepest wells; aesthetically, it's perhaps one of the most dramatic. Built in around 850 AD next to the temple of Harshat Mata, the baori comprises hundreds of zigzagging steps that run along three of its sides, steeply descending 11 storeys, resulting in a striking geometric pattern when seen from afar. On the fourth side, verandas which are supported by ornate pillars overlook the steps."
          },
          {
            "ref": "L",
            "text": "Still in public use is Neemrana Ki Baori, located just off the Jaipur–Delhi highway. Constructed in around 1700, it's nine storeys deep, with the last two being underwater. At ground level, there are 86 colonnaded openings from where the visitor descends 170 steps to the deepest water source."
          },
          {
            "ref": "M",
            "text": "Today, following years of neglect, many of these monuments to medieval engineering have been saved by the Archaeological Survey of India, which has recognised the importance of preserving them as part of the country's rich history. Tourists flock to wells in far-flung corners of north-western India to gaze in wonder at these architectural marvels from 1,000 years ago, which serve as a reminder of both the ingenuity and artistry of ancient civilisations and of the value of water to human existence."
          }
        ],
        "groups": [
          {
            "type": "true_false_notgiven",
            "instructions": "Do the following statements agree with the information given in Reading Passage 1? Write TRUE, FALSE, or NOT GIVEN.",
            "questions": [
              {
                "number": 1,
                "prompt": "Examples of ancient stepwells can be found all over the world.",
                "answer": "FALSE",
                "explanation": "The passage states stepwells are 'Unique to the region' (north-western India), directly contradicting the claim that they are found all over the world.",
                "evidence": { "sectionId": "p1", "ref": "C", "quote": "Unique to the region, stepwells are often architecturally complex and vary widely in size and shape" }
              },
              {
                "number": 2,
                "prompt": "Stepwells had a range of functions, in addition to those related to water collection.",
                "answer": "TRUE",
                "explanation": "The passage states stepwells were places of gathering, leisure, relaxation and worship — functions well beyond water collection.",
                "evidence": { "sectionId": "p1", "ref": "C", "quote": "they were places of gathering, of leisure, of relaxation and of worship for villagers of all but the lowest castes" }
              },
              {
                "number": 3,
                "prompt": "The few existing stepwells in Delhi are more attractive than those found elsewhere.",
                "answer": "NOT GIVEN",
                "explanation": "The passage mentions a few stepwells survive in Delhi but makes no comparison of their attractiveness to those elsewhere.",
                "evidence": { "sectionId": "p1", "ref": "C", "quote": "a few also survive in Delhi" }
              },
              {
                "number": 4,
                "prompt": "It took workers many years to build the stone steps characteristic of stepwells.",
                "answer": "NOT GIVEN",
                "explanation": "The passage gives no information about how long it took to construct stepwells.",
                "evidence": { "sectionId": "p1", "ref": "D", "quote": "stepwells comprise a series of stone steps descending from ground level to the water source" }
              },
              {
                "number": 5,
                "prompt": "The number of steps above the water level in a stepwell altered during the course of a year.",
                "answer": "TRUE",
                "explanation": "When the water level was high, fewer steps needed to be descended; when low, several levels had to be negotiated — so the number of exposed steps changed with the water level throughout the year.",
                "evidence": { "sectionId": "p1", "ref": "D", "quote": "When the water level was high, the user needed only to descend a few steps to reach it; when it was low, several levels would have to be negotiated" }
              }
            ]
          },
          {
            "type": "short_answer",
            "instructions": "Answer the questions below. Choose ONE WORD ONLY from the passage for each answer.",
            "questions": [
              {
                "number": 6,
                "prompt": "Which part of some stepwells provided shade for people?",
                "answer": ["pavilions"],
                "wordLimit": 1,
                "explanation": "The passage states stepwells 'included pavilions that sheltered visitors from the relentless heat'.",
                "evidence": { "sectionId": "p1", "ref": "E", "quote": "they also included pavilions that sheltered visitors from the relentless heat" }
              },
              {
                "number": 7,
                "prompt": "What type of serious climatic event, which took place in southern Rajasthan, is mentioned in the article?",
                "answer": ["drought"],
                "wordLimit": 1,
                "explanation": "Southern Rajasthan 'suffered an eight-year drought between 1996 and 2004'.",
                "evidence": { "sectionId": "p1", "ref": "F", "quote": "southern Rajasthan suffered an eight-year drought between 1996 and 2004" }
              },
              {
                "number": 8,
                "prompt": "Who are frequent visitors to stepwells nowadays?",
                "answer": ["tourists"],
                "wordLimit": 1,
                "explanation": "'Tourists flock to wells in far-flung corners of north-western India to gaze in wonder at these architectural marvels.'",
                "evidence": { "sectionId": "p1", "ref": "M", "quote": "Tourists flock to wells in far-flung corners of north-western India to gaze in wonder at these architectural marvels" }
              }
            ]
          },
          {
            "type": "completion",
            "instructions": "Complete the table below. Choose ONE WORD AND/OR A NUMBER from the passage for each answer.",
            "formTitle": "Notable Stepwells",
            "questions": [
              {
                "number": 9,
                "prompt": "Rani Ki Vav (late 11th century) — Excellent condition, despite the _______ of 2001.",
                "answer": ["earthquake"],
                "wordLimit": 1,
                "explanation": "Rani Ki Vav 'survived a devastating earthquake that measured 7.6 on the Richter scale' in January 2001.",
                "evidence": { "sectionId": "p1", "ref": "H", "quote": "this ancient structure survived a devastating earthquake that measured 7.6 on the Richter scale" }
              },
              {
                "number": 10,
                "prompt": "Surya Kund (1026) — Steps on the _______ produce a geometric pattern.",
                "answer": ["four sides", "4 sides"],
                "wordLimit": 2,
                "explanation": "The Surya Kund displays stepwell architecture 'including four sides of steps that descend to the bottom in a stunning geometrical formation'.",
                "evidence": { "sectionId": "p1", "ref": "I", "quote": "including four sides of steps that descend to the bottom in a stunning geometrical formation" }
              },
              {
                "number": 11,
                "prompt": "Surya Kund (1026) — Looks more like a _______ than a well.",
                "answer": ["tank"],
                "wordLimit": 1,
                "explanation": "The Surya Kund 'actually resembles a tank (kund means reservoir or pond) rather than a well'.",
                "evidence": { "sectionId": "p1", "ref": "I", "quote": "It actually resembles a tank (kund means reservoir or pond) rather than a well" }
              },
              {
                "number": 12,
                "prompt": "Chand Baori (850 AD) — Has _______ which provide a view to the steps.",
                "answer": ["verandas", "verandahs"],
                "wordLimit": 1,
                "acceptSpellingVariants": true,
                "explanation": "'On the fourth side, verandas which are supported by ornate pillars overlook the steps.'",
                "evidence": { "sectionId": "p1", "ref": "K", "quote": "On the fourth side, verandas which are supported by ornate pillars overlook the steps" }
              },
              {
                "number": 13,
                "prompt": "Neemrana Ki Baori (1700) — Has two _______ levels.",
                "answer": ["underwater"],
                "wordLimit": 1,
                "explanation": "Neemrana Ki Baori 'is nine storeys deep, with the last two being underwater'.",
                "evidence": { "sectionId": "p1", "ref": "L", "quote": "with the last two being underwater" }
              }
            ]
          }
        ]
      },
      {
        "id": "p2",
        "title": "Passage 2",
        "passage": [
          {
            "ref": "A",
            "text": "It is difficult to conceive of vigorous economic growth without an efficient transport system. Although modern information technologies can reduce the demand for physical transport by facilitating teleworking and teleservices, the requirement for transport continues to increase. There are two key factors behind this trend. For passenger transport, the determining factor is the spectacular growth in car use. The number of cars on European Union (EU) roads saw an increase of three million cars each year from 1990 to 2010, and in the next decade the EU will see a further substantial increase in its fleet."
          },
          {
            "ref": "B",
            "text": "As far as goods transport is concerned, growth is due to a large extent to changes in the European economy and its system of production. In the last 20 years, as internal frontiers have been abolished, the EU has moved from a 'stock' economy to a 'flow' economy. This phenomenon has been emphasised by the relocation of some industries, particularly those which are labour intensive, to reduce production costs, even though the production site is hundreds or even thousands of kilometres away from the final assembly plant or away from users."
          },
          {
            "ref": "C",
            "text": "The strong economic growth expected in countries which are candidates for entry to the EU will also increase transport flows, in particular road haulage traffic. In 1998, some of these countries already exported more than twice their 1990 volumes and imported more than five times their 1990 volumes. And although many candidate countries inherited a transport system which encourages rail, the distribution between modes has tipped sharply in favour of road transport since the 1990s. Between 1990 and 1998, road haulage increased by 19.4%, while during the same period rail haulage decreased by 43.5%, although — and this could benefit the enlarged EU — it is still on average at a much higher level than in existing member states."
          },
          {
            "ref": "D",
            "text": "However, a new imperative — sustainable development — offers an opportunity for adapting the EU's common transport policy. This objective, agreed by the Gothenburg European Council, has to be achieved by integrating environmental considerations into Community policies, and shifting the balance between modes of transport lies at the heart of its strategy. The ambitious objective can only be fully achieved by 2020, but proposed measures are nonetheless a first essential step towards a sustainable transport system which will ideally be in place in 30 years' time, that is by 2040."
          },
          {
            "ref": "E",
            "text": "In 1998, energy consumption in the transport sector was to blame for 28% of emissions of CO2, the leading greenhouse gas. According to the latest estimates, if nothing is done to reverse the traffic growth trend, CO2 emissions from transport can be expected to increase by around 50% to 1,113 billion tonnes by 2020, compared with the 739 billion tonnes recorded in 1990. Once again, road transport is the main culprit since it alone accounts for 84% of the CO2 emissions attributable to transport. Using alternative fuels and improving energy efficiency is thus both an ecological necessity and a technological challenge."
          },
          {
            "ref": "F",
            "text": "At the same time greater efforts must be made to achieve a modal shift. Such a change cannot be achieved overnight, all the less so after over half a century of constant deterioration in favour of road. This has reached such a pitch that today rail freight services are facing marginalisation, with just 8% of market share, and with international goods trains struggling along at an average speed of 18km/h. Three possible options have emerged."
          },
          {
            "ref": "G",
            "text": "The first approach would consist of focusing on road transport solely through pricing. This option would not be accompanied by complementary measures in the other modes of transport. In the short term it might curb the growth in road transport through the better loading ratio of goods vehicles and occupancy rates of passenger vehicles expected as a result of the increase in the price of transport. However, the lack of measures available to revitalise other modes of transport would make it impossible for more sustainable modes of transport to take up the baton."
          },
          {
            "ref": "H",
            "text": "The second approach also concentrates on road transport pricing but is accompanied by measures to increase the efficiency of the other modes (better quality of services, logistics, technology). However, this approach does not include investment in new infrastructure, nor does it guarantee better regional cohesion. It could help to achieve greater uncoupling than the first approach, but road transport would keep the lion's share of the market and continue to concentrate on saturated arteries, despite being the most polluting of the modes. It is therefore not enough to guarantee the necessary shift of the balance."
          },
          {
            "ref": "I",
            "text": "The third approach, which is not new, comprises a series of measures ranging from pricing to revitalising alternative modes of transport and targeting investment in the trans-European network. This integrated approach would allow the market shares of the other modes to return to their 1998 levels and thus make a shift of balance. It is far more ambitious than it looks, bearing in mind the historical imbalance in favour of roads for the last fifty years, but would achieve a marked break in the link between road transport growth and economic growth, without placing restrictions on the mobility of people and goods."
          }
        ],
        "groups": [
          {
            "type": "matching",
            "instructions": "Reading Passage 2 has nine paragraphs, A–I. Choose the correct heading for each paragraph from the list of headings below. Write the correct number, i–xi. (Example: Paragraph F = vii.)",
            "optionsLabel": "List of Headings",
            "options": [
              { "key": "i",   "text": "A fresh and important long-term goal" },
              { "key": "ii",  "text": "Charging for roads and improving other transport methods" },
              { "key": "iii", "text": "Changes affecting the distances goods may be transported" },
              { "key": "iv",  "text": "Taking all the steps necessary to change transport patterns" },
              { "key": "v",   "text": "The environmental costs of road transport" },
              { "key": "vi",  "text": "The escalating cost of rail transport" },
              { "key": "vii", "text": "The need to achieve transport rebalance" },
              { "key": "viii","text": "The rapid growth of private transport" },
              { "key": "ix",  "text": "Plans to develop major road networks" },
              { "key": "x",   "text": "Restricting road use through charging policies alone" },
              { "key": "xi",  "text": "Transport trends in countries awaiting EU admission" }
            ],
            "questions": [
              {
                "number": 14,
                "prompt": "Paragraph A",
                "answer": "viii",
                "explanation": "Paragraph A focuses on the spectacular growth in car use on EU roads — the rapid growth of private transport.",
                "evidence": { "sectionId": "p2", "ref": "A", "quote": "For passenger transport, the determining factor is the spectacular growth in car use" }
              },
              {
                "number": 15,
                "prompt": "Paragraph B",
                "answer": "iii",
                "explanation": "Paragraph B explains how industrial relocation has meant goods must travel hundreds or thousands of kilometres — changes affecting the distances goods are transported.",
                "evidence": { "sectionId": "p2", "ref": "B", "quote": "the production site is hundreds or even thousands of kilometres away from the final assembly plant or away from users" }
              },
              {
                "number": 16,
                "prompt": "Paragraph C",
                "answer": "xi",
                "explanation": "Paragraph C focuses on transport trends in EU candidate countries — countries awaiting EU admission.",
                "evidence": { "sectionId": "p2", "ref": "C", "quote": "countries which are candidates for entry to the EU will also increase transport flows" }
              },
              {
                "number": 17,
                "prompt": "Paragraph D",
                "answer": "i",
                "explanation": "Paragraph D presents sustainable development as a fresh, important long-term transport policy goal with an ambitious 2040 target.",
                "evidence": { "sectionId": "p2", "ref": "D", "quote": "a new imperative — sustainable development — offers an opportunity for adapting the EU's common transport policy" }
              },
              {
                "number": 18,
                "prompt": "Paragraph E",
                "answer": "v",
                "explanation": "Paragraph E focuses on CO2 emissions and the environmental costs attributable to road transport.",
                "evidence": { "sectionId": "p2", "ref": "E", "quote": "energy consumption in the transport sector was to blame for 28% of emissions of CO2, the leading greenhouse gas" }
              },
              {
                "number": 19,
                "prompt": "Paragraph G",
                "answer": "x",
                "explanation": "Paragraph G describes the first approach: road pricing alone, with no complementary measures for other modes — restricting road use through charging policies alone.",
                "evidence": { "sectionId": "p2", "ref": "G", "quote": "The first approach would consist of focusing on road transport solely through pricing. This option would not be accompanied by complementary measures" }
              },
              {
                "number": 20,
                "prompt": "Paragraph H",
                "answer": "ii",
                "explanation": "Paragraph H describes the second approach: road pricing combined with measures to improve the efficiency of other transport modes.",
                "evidence": { "sectionId": "p2", "ref": "H", "quote": "The second approach also concentrates on road transport pricing but is accompanied by measures to increase the efficiency of the other modes" }
              },
              {
                "number": 21,
                "prompt": "Paragraph I",
                "answer": "iv",
                "explanation": "Paragraph I describes the third, comprehensive approach: a full range of measures from pricing to infrastructure investment covering all modes of transport.",
                "evidence": { "sectionId": "p2", "ref": "I", "quote": "comprises a series of measures ranging from pricing to revitalising alternative modes of transport and targeting investment in the trans-European network" }
              }
            ]
          },
          {
            "type": "true_false_notgiven",
            "instructions": "Do the following statements agree with the information given in Reading Passage 2? Write TRUE, FALSE, or NOT GIVEN.",
            "questions": [
              {
                "number": 22,
                "prompt": "The need for transport is growing, despite technological developments.",
                "answer": "TRUE",
                "explanation": "Although modern information technologies can reduce demand for physical transport, 'the requirement for transport continues to increase'.",
                "evidence": { "sectionId": "p2", "ref": "A", "quote": "Although modern information technologies can reduce the demand for physical transport by facilitating teleworking and teleservices, the requirement for transport continues to increase" }
              },
              {
                "number": 23,
                "prompt": "To reduce production costs, some industries have been moved closer to their relevant consumers.",
                "answer": "FALSE",
                "explanation": "The passage states industries were relocated to cut costs even though production sites are 'hundreds or even thousands of kilometres away' — the opposite of closer to consumers.",
                "evidence": { "sectionId": "p2", "ref": "B", "quote": "the relocation of some industries, particularly those which are labour intensive, to reduce production costs, even though the production site is hundreds or even thousands of kilometres away from the final assembly plant or away from users" }
              },
              {
                "number": 24,
                "prompt": "Cars are prohibitively expensive in some EU candidate countries.",
                "answer": "NOT GIVEN",
                "explanation": "The passage discusses transport volumes and road haulage in candidate countries but gives no information about car prices.",
                "evidence": { "sectionId": "p2", "ref": "C", "quote": "The strong economic growth expected in countries which are candidates for entry to the EU will also increase transport flows" }
              },
              {
                "number": 25,
                "prompt": "The Gothenburg European Council was set up 30 years ago.",
                "answer": "NOT GIVEN",
                "explanation": "The passage mentions the Gothenburg European Council agreed an objective but gives no information about when it was established.",
                "evidence": { "sectionId": "p2", "ref": "D", "quote": "This objective, agreed by the Gothenburg European Council, has to be achieved by integrating environmental considerations into Community policies" }
              },
              {
                "number": 26,
                "prompt": "By the end of this decade, CO2 emissions from transport are predicted to reach 739 billion tonnes.",
                "answer": "FALSE",
                "explanation": "The passage predicts emissions will reach 1,113 billion tonnes by 2020. The 739 billion tonnes figure is what was recorded in 1990, not the future prediction.",
                "evidence": { "sectionId": "p2", "ref": "E", "quote": "CO2 emissions from transport can be expected to increase by around 50% to 1,113 billion tonnes by 2020, compared with the 739 billion tonnes recorded in 1990" }
              }
            ]
          }
        ]
      },
      {
        "id": "p3",
        "title": "Passage 3",
        "passage": [
          {
            "ref": "A",
            "text": "Innovation is key to business survival, and companies put substantial resources into inspiring employees to develop new ideas. There are, nevertheless, people working in luxurious, state-of-the-art centres designed to stimulate innovation who find that their environment doesn't make them feel at all creative. And there are those who don't have a budget, or much space, but who innovate successfully."
          },
          {
            "ref": "B",
            "text": "For Robert B. Cialdini, Professor of Psychology at Arizona State University, one reason that companies don't succeed as often as they should is that innovation starts with recruitment. Research shows that the fit between an employee's values and a company's values makes a difference to what contribution they make and whether, two years after they join, they're still at the company. Studies at Harvard Business School show that, although some individuals may be more creative than others, almost every individual can be creative in the right circumstances."
          },
          {
            "ref": "C",
            "text": "One of the most famous photographs in the story of rock'n'roll emphasises Cialdini's views. The 1956 picture of singers Elvis Presley, Carl Perkins, Johnny Cash and Jerry Lee Lewis jamming at a piano in Sun Studios in Memphis tells a hidden story. Sun's 'million-dollar quartet' could have been a quintet. Missing from the picture is Roy Orbison, a greater natural singer than Lewis, Perkins or Cash. Sam Phillips, who owned Sun, wanted to revolutionise popular music with songs that fused black and white music, and country and blues. Presley, Cash, Perkins and Lewis instinctively understood Phillips's ambition and believed in it. Orbison wasn't inspired by the goal, and only ever achieved one hit with the Sun label."
          },
          {
            "ref": "D",
            "text": "The value fit matters, says Cialdini, because innovation is, in part, a process of change, and under that pressure we, as a species, behave differently. 'When things change, we are hard-wired to play it safe.' Managers should therefore adopt an approach that appears counterintuitive — they should explain what stands to be lost if the company fails to seize a particular opportunity. Studies show that we invariably take more gambles when threatened with a loss than when offered a reward."
          },
          {
            "ref": "E",
            "text": "Managing innovation is a delicate art. It's easy for a company to be pulled in conflicting directions as the marketing, product development, and finance departments each get different feedback from different sets of people. And without a system which ensures collaborative exchanges within the company, it's also easy for small 'pockets of innovation' to disappear. Innovation is a contact sport. You can't brief people just by saying, 'We're going in this direction and I'm going to take you with me.'"
          },
          {
            "ref": "F",
            "text": "Cialdini believes that this 'follow-the-leader syndrome' is dangerous, not least because it encourages bosses to go it alone. 'It's been scientifically proven that three people will be better than one at solving problems, even if that one person is the smartest person in the field.' To prove his point, Cialdini cites an interview with molecular biologist James Watson. Watson, together with Francis Crick, discovered the structure of DNA, the genetic information carrier of all living organisms. 'When asked how they had cracked the code ahead of an array of highly accomplished rival investigators, he said something that stunned me. He said he and Crick had succeeded because they were aware that they weren't the most intelligent of the scientists pursuing the answer. The smartest scientist was called Rosalind Franklin who, Watson said, \"was so intelligent she rarely sought advice\".'"
          },
          {
            "ref": "G",
            "text": "Teamwork taps into one of the basic drivers of human behaviour. 'The principle of social proof is so pervasive that we don't even recognise it,' says Cialdini. 'If your project is being resisted, for example, by a group of veteran employees, ask another old-timer to speak up for it.' Cialdini is not alone in advocating this strategy. Research shows that peer power, used horizontally not vertically, is much more powerful than any boss's speech."
          },
          {
            "ref": "H",
            "text": "Writing, visualising and prototyping can stimulate the flow of new ideas. Cialdini cites scores of research papers and historical events that prove that even something as simple as writing deepens every individual's engagement in the project. It is, he says, the reason why all those competitions on breakfast cereal packets encouraged us to write in saying, in no more than 10 words: 'I like Kellogg's Corn Flakes because... .' The very act of writing makes us more likely to believe it."
          },
          {
            "ref": "I",
            "text": "Authority doesn't have to inhibit innovation but it often does. The wrong kind of leadership will lead to what Cialdini calls 'captainitis, the regrettable tendency of team members to opt out of team responsibilities that are properly theirs'. He calls it captainitis because, he says, 'crew members of multipilot aircraft exhibit a sometimes deadly passivity when the flight captain makes a clearly wrong-headed decision'. This behaviour is not, he says, unique to air travel, but can happen in any workplace where the leader is overbearing."
          },
          {
            "ref": "J",
            "text": "At the other end of the scale is the 1980s Memphis design collective, a group of young designers for whom 'the only rule was that there were no rules'. This environment encouraged a free interchange of ideas, which led to more creativity with form, function, colour and materials that revolutionised attitudes to furniture design."
          },
          {
            "ref": "K",
            "text": "Many theorists believe the ideal boss should lead from behind, taking pride in collective accomplishment and giving credit where it is due. Cialdini says: 'Leaders should encourage everyone to contribute and simultaneously assure all concerned that every recommendation is important to making the right decision and will be given full attention.' The frustrating thing about innovation is that there are many approaches, but no magic formula. However, a manager who wants to create a truly innovative culture can make their job a lot easier by recognising these psychological realities."
          }
        ],
        "groups": [
          {
            "type": "multiple_choice",
            "instructions": "Choose the correct letter, A, B, C or D.",
            "questions": [
              {
                "number": 27,
                "prompt": "The example of the 'million-dollar quartet' underlines the writer's point about",
                "options": [
                  { "key": "A", "text": "recognising talent." },
                  { "key": "B", "text": "working as a team." },
                  { "key": "C", "text": "having a shared objective." },
                  { "key": "D", "text": "being an effective leader." }
                ],
                "answer": "C",
                "explanation": "The story shows that Orbison — despite greater natural talent — failed to connect with Sun Records because he didn't share Phillips's creative vision. The others succeeded because they all shared the same goal.",
                "evidence": { "sectionId": "p3", "ref": "C", "quote": "Presley, Cash, Perkins and Lewis instinctively understood Phillips's ambition and believed in it. Orbison wasn't inspired by the goal, and only ever achieved one hit with the Sun label" }
              },
              {
                "number": 28,
                "prompt": "James Watson suggests that he and Francis Crick won the race to discover the DNA code because they",
                "options": [
                  { "key": "A", "text": "were conscious of their own limitations." },
                  { "key": "B", "text": "brought complementary skills to their partnership." },
                  { "key": "C", "text": "were determined to outperform their brighter rivals." },
                  { "key": "D", "text": "encouraged each other to realise their joint ambition." }
                ],
                "answer": "A",
                "explanation": "Watson said they succeeded 'because they were aware that they weren't the most intelligent of the scientists pursuing the answer' — they were conscious of their own limitations.",
                "evidence": { "sectionId": "p3", "ref": "F", "quote": "He said he and Crick had succeeded because they were aware that they weren't the most intelligent of the scientists pursuing the answer" }
              },
              {
                "number": 29,
                "prompt": "The writer mentions competitions on breakfast cereal packets as an example of how to",
                "options": [
                  { "key": "A", "text": "inspire creative thinking." },
                  { "key": "B", "text": "generate concise writing." },
                  { "key": "C", "text": "promote loyalty to a group." },
                  { "key": "D", "text": "strengthen commitment to an idea." }
                ],
                "answer": "D",
                "explanation": "The cereal packet competitions illustrate that 'the very act of writing makes us more likely to believe it' — writing strengthens commitment to an idea.",
                "evidence": { "sectionId": "p3", "ref": "H", "quote": "The very act of writing makes us more likely to believe it" }
              },
              {
                "number": 30,
                "prompt": "In the last paragraph, the writer suggests that it is important for employees to",
                "options": [
                  { "key": "A", "text": "be aware of their company's goals." },
                  { "key": "B", "text": "feel that their contributions are valued." },
                  { "key": "C", "text": "have respect for their co-workers' achievements." },
                  { "key": "D", "text": "understand why certain management decisions are made." }
                ],
                "answer": "B",
                "explanation": "Cialdini emphasises that leaders should 'assure all concerned that every recommendation is important' — employees need to feel their contributions are valued.",
                "evidence": { "sectionId": "p3", "ref": "K", "quote": "assure all concerned that every recommendation is important to making the right decision and will be given full attention" }
              }
            ]
          },
          {
            "type": "matching",
            "instructions": "Complete each sentence with the correct ending, A–G, below. Write the correct letter, A–G.",
            "optionsLabel": "Sentence Endings",
            "options": [
              { "key": "A", "text": "take chances." },
              { "key": "B", "text": "share their ideas." },
              { "key": "C", "text": "become competitive." },
              { "key": "D", "text": "get promotion." },
              { "key": "E", "text": "avoid risk." },
              { "key": "F", "text": "ignore their duties." },
              { "key": "G", "text": "remain in their jobs." }
            ],
            "questions": [
              {
                "number": 31,
                "prompt": "Employees whose values match those of their employers are more likely to",
                "answer": "G",
                "explanation": "Research shows that value fit affects 'whether, two years after they join, they're still at the company' — employees whose values align tend to remain in their jobs.",
                "evidence": { "sectionId": "p3", "ref": "B", "quote": "the fit between an employee's values and a company's values makes a difference to what contribution they make and whether, two years after they join, they're still at the company" }
              },
              {
                "number": 32,
                "prompt": "At times of change, people tend to",
                "answer": "E",
                "explanation": "'When things change, we are hard-wired to play it safe' — people tend to avoid risk under pressure of change.",
                "evidence": { "sectionId": "p3", "ref": "D", "quote": "When things change, we are hard-wired to play it safe" }
              },
              {
                "number": 33,
                "prompt": "If people are aware of what they might lose, they will often",
                "answer": "A",
                "explanation": "'Studies show that we invariably take more gambles when threatened with a loss' — people take chances when facing potential loss.",
                "evidence": { "sectionId": "p3", "ref": "D", "quote": "we invariably take more gambles when threatened with a loss than when offered a reward" }
              },
              {
                "number": 34,
                "prompt": "People working under a dominant boss are liable to",
                "answer": "F",
                "explanation": "Captainitis is 'the regrettable tendency of team members to opt out of team responsibilities that are properly theirs' — they ignore their duties when a boss is overbearing.",
                "evidence": { "sectionId": "p3", "ref": "I", "quote": "the regrettable tendency of team members to opt out of team responsibilities that are properly theirs" }
              },
              {
                "number": 35,
                "prompt": "Employees working in organisations with few rules are more likely to",
                "answer": "B",
                "explanation": "The Memphis collective 'encouraged a free interchange of ideas' — low-rule environments promote sharing of ideas.",
                "evidence": { "sectionId": "p3", "ref": "J", "quote": "This environment encouraged a free interchange of ideas" }
              }
            ]
          },
          {
            "type": "yes_no_notgiven",
            "instructions": "Do the following statements agree with the claims of the writer in Reading Passage 3? Write YES, NO, or NOT GIVEN.",
            "questions": [
              {
                "number": 36,
                "prompt": "The physical surroundings in which a person works play a key role in determining their creativity.",
                "answer": "NO",
                "explanation": "The passage contradicts this: people in 'luxurious, state-of-the-art centres' still don't feel creative, while those without budget or space innovate successfully. Physical surroundings are not the key factor.",
                "evidence": { "sectionId": "p3", "ref": "A", "quote": "people working in luxurious, state-of-the-art centres designed to stimulate innovation who find that their environment doesn't make them feel at all creative" }
              },
              {
                "number": 37,
                "prompt": "Most people have the potential to be creative.",
                "answer": "YES",
                "explanation": "Studies at Harvard Business School show 'almost every individual can be creative in the right circumstances'.",
                "evidence": { "sectionId": "p3", "ref": "B", "quote": "almost every individual can be creative in the right circumstances" }
              },
              {
                "number": 38,
                "prompt": "Teams work best when their members are of equally matched intelligence.",
                "answer": "NOT GIVEN",
                "explanation": "The passage discusses the value of teamwork and awareness of one's limitations, but says nothing about whether team members should have equally matched intelligence.",
                "evidence": { "sectionId": "p3", "ref": "F", "quote": "three people will be better than one at solving problems, even if that one person is the smartest person in the field" }
              },
              {
                "number": 39,
                "prompt": "It is easier for smaller companies to be innovative.",
                "answer": "NOT GIVEN",
                "explanation": "The passage discusses the challenges of managing innovation but does not compare innovation difficulty between companies of different sizes.",
                "evidence": { "sectionId": "p3", "ref": "E", "quote": "Managing innovation is a delicate art. It's easy for a company to be pulled in conflicting directions" }
              },
              {
                "number": 40,
                "prompt": "A manager's approval of an idea is more persuasive than that of a colleague.",
                "answer": "NO",
                "explanation": "'Peer power, used horizontally not vertically, is much more powerful than any boss's speech' — colleagues are more persuasive than managers.",
                "evidence": { "sectionId": "p3", "ref": "G", "quote": "peer power, used horizontally not vertically, is much more powerful than any boss's speech" }
              }
            ]
          }
        ]
      }
    ]
  }$json$::jsonb,
  true
);
