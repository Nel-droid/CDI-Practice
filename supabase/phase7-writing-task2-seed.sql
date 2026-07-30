-- ============================================================
-- Task 2 Essay Prompts — 8 types × 15 prompts = 120 total
-- Essay type stored in chart_type column.
-- Run in Supabase SQL Editor after phase6-writing-schema.sql
-- ============================================================

-- Widen chart_type check constraint to include Task 2 essay type keys
ALTER TABLE writing_prompts
  DROP CONSTRAINT IF EXISTS writing_prompts_chart_type_check;

ALTER TABLE writing_prompts
  ADD CONSTRAINT writing_prompts_chart_type_check
  CHECK (chart_type IN (
    -- Task 1 chart types
    'bar', 'line', 'pie', 'table', 'map', 'process', 'mixed',
    -- Task 2 essay types
    'opinion', 'discussion', 'problem_solution', 'adv_disadv',
    'outweigh', 'two_part', 'causes_effects', 'hybrid'
  ));

INSERT INTO writing_prompts
  (task_type, chart_type, title, prompt, min_words, display_order, published)
VALUES

-- ── Type 1: Opinion (Agree / Disagree) ──────────────────────────────────────

('task2','opinion','AI and Job Replacement',
 'Some people believe that artificial intelligence will eventually replace most human jobs. To what extent do you agree or disagree?',
 250,1,true),

('task2','opinion','Renewable Energy Funding',
 'Governments should invest more money in renewable energy research than in fossil fuel industries. To what extent do you agree or disagree?',
 250,2,true),

('task2','opinion','Free University Education',
 'University education should be free for all students regardless of their family''s income. To what extent do you agree or disagree?',
 250,3,true),

('task2','opinion','Four-Day Working Week',
 'Many people believe that a four-day working week would improve employees'' quality of life without harming productivity. To what extent do you agree or disagree?',
 250,4,true),

('task2','opinion','Social Media Mental Health Liability',
 'Social media companies should be held legally responsible for the mental health effects of their platforms on teenagers. To what extent do you agree or disagree?',
 250,5,true),

('task2','opinion','Smartphones and Children',
 'Some people think that children should not be allowed to use smartphones until they reach secondary school. To what extent do you agree or disagree?',
 250,6,true),

('task2','opinion','Remote Work and Employee Loyalty',
 'It is often said that remote working has made employees less loyal to their companies. To what extent do you agree or disagree?',
 250,7,true),

('task2','opinion','Self-Driving Cars and Road Safety',
 'Some believe that self-driving cars will make roads safer than human drivers ever could. To what extent do you agree or disagree?',
 250,8,true),

('task2','opinion','Banning Fast Fashion',
 'Many people argue that fast fashion should be banned to protect the environment. To what extent do you agree or disagree?',
 250,9,true),

('task2','opinion','Universal Basic Income',
 'Some people think that governments should introduce a universal basic income to address job losses caused by automation. To what extent do you agree or disagree?',
 250,10,true),

('task2','opinion','Online Learning vs Traditional Universities',
 'It is believed that online learning platforms will eventually make traditional universities unnecessary. To what extent do you agree or disagree?',
 250,11,true),

('task2','opinion','Banning AI Tools in Schools',
 'Some people think that using generative AI tools such as chatbots to complete schoolwork should be banned in schools. To what extent do you agree or disagree?',
 250,12,true),

('task2','opinion','Early Retirement for Youth Employment',
 'Many people believe that older employees should be required to retire earlier to create job opportunities for younger workers. To what extent do you agree or disagree?',
 250,13,true),

('task2','opinion','Space Exploration Spending',
 'Some argue that space exploration is a waste of money that could be better spent solving problems on Earth. To what extent do you agree or disagree?',
 250,14,true),

('task2','opinion','Impact of Food Delivery Apps',
 'It is often said that the growing popularity of food delivery apps has had a negative impact on society. To what extent do you agree or disagree?',
 250,15,true),

-- ── Type 2: Discussion (Discuss Both Views) ──────────────────────────────────

('task2','discussion','Regulating Artificial Intelligence',
 'Some people think artificial intelligence should be strictly regulated by governments, while others believe regulation will only slow down beneficial innovation. Discuss both views and give your own opinion.',
 250,1,true),

('task2','discussion','Public Access to Historical Sites',
 'Some people think that historical sites should be completely closed to the public to preserve them, while others believe the public should always have access. Discuss both views and give your own opinion.',
 250,2,true),

('task2','discussion','Remote Work vs Returning to Office',
 'Some people believe employees should be allowed to work from home permanently, while others think returning to the office fully is better for productivity. Discuss both views and give your own opinion.',
 250,3,true),

('task2','discussion','Practical Skills vs Academic Subjects',
 'Some people think schools should focus on teaching practical skills, while others believe traditional academic subjects are more important. Discuss both views and give your own opinion.',
 250,4,true),

('task2','discussion','Public Transport vs Road Building',
 'Some people think that governments should prioritize public transport funding over building new roads, while others disagree. Discuss both views and give your own opinion.',
 250,5,true),

('task2','discussion','Social Media: Connecting or Isolating?',
 'Some people believe social media has brought people closer together, while others think it has made people more isolated. Discuss both views and give your own opinion.',
 250,6,true),

('task2','discussion','Zoos and Conservation',
 'Some people think that zoos and aquariums should be banned, while others believe they play an important role in conservation. Discuss both views and give your own opinion.',
 250,7,true),

('task2','discussion','Economic Growth vs National Wellbeing',
 'Some people think that a country''s success should be measured by its economic growth, while others believe wellbeing and happiness are more important. Discuss both views and give your own opinion.',
 250,8,true),

('task2','discussion','Online vs Physical Shopping',
 'Some people believe that online shopping will eventually replace physical stores completely, while others think physical stores will always be necessary. Discuss both views and give your own opinion.',
 250,9,true),

('task2','discussion','Influencers and Young People',
 'Some people think that celebrities and influencers have too much influence over young people''s opinions, while others see this as harmless entertainment. Discuss both views and give your own opinion.',
 250,10,true),

('task2','discussion','Genetically Modified Food',
 'Some people think that genetically modified food is essential to feeding a growing global population, while others believe it poses serious health risks. Discuss both views and give your own opinion.',
 250,11,true),

('task2','discussion','Strict vs Open Immigration Policies',
 'Some people think that strict immigration policies protect a country''s economy and culture, while others believe open immigration benefits society more. Discuss both views and give your own opinion.',
 250,12,true),

('task2','discussion','Coding vs Creative Subjects',
 'Some people believe that children should be taught coding and digital skills from a young age, while others think creative subjects such as art and music matter more. Discuss both views and give your own opinion.',
 250,13,true),

('task2','discussion','Electric Vehicles vs Public Transport',
 'Some people think that electric vehicles are the best solution to reduce air pollution, while others believe public transport investment is more effective. Discuss both views and give your own opinion.',
 250,14,true),

('task2','discussion','Individual vs Industrial Climate Action',
 'Some people believe that reducing meat consumption is the most effective way individuals can fight climate change, while others think large-scale industrial change is more important. Discuss both views and give your own opinion.',
 250,15,true),

-- ── Type 3: Problem / Solution ───────────────────────────────────────────────

('task2','problem_solution','Unaffordable Housing for Young People',
 'In many cities, housing has become unaffordable for young people. What are the causes of this problem, and what measures could be taken to solve it?',
 250,1,true),

('task2','problem_solution','Declining Voter Turnout',
 'Many countries are experiencing a decline in voter turnout in elections. What are the reasons for this problem and what solutions can you suggest?',
 250,2,true),

('task2','problem_solution','Teenage Mental Health Crisis',
 'Mental health problems among teenagers have increased significantly in recent years. What are the causes of this, and what can be done to address it?',
 250,3,true),

('task2','problem_solution','Urban Traffic Congestion',
 'Traffic congestion has become a serious issue in many major cities around the world. What are the causes of this problem, and what measures can be taken to solve it?',
 250,4,true),

('task2','problem_solution','Ocean Plastic Pollution',
 'Plastic waste is polluting oceans and harming marine life at an alarming rate. What are the causes of this problem, and what can be done to solve it?',
 250,5,true),

('task2','problem_solution','Rising Cost of Living',
 'Many people struggle to balance the rising cost of living with their income. What are the causes of this problem, and what steps could governments take to solve it?',
 250,6,true),

('task2','problem_solution','Workplace Burnout',
 'An increasing number of people are experiencing burnout due to excessive workloads. What are the causes of this problem, and what can employers do to solve it?',
 250,7,true),

('task2','problem_solution','Cybercrime and Online Fraud',
 'Cybercrime and online fraud have become more common in recent years. What are the causes of this problem, and what measures can be taken to address it?',
 250,8,true),

('task2','problem_solution','Wildlife Extinction',
 'Many species of wildlife are facing extinction due to habitat destruction. What are the causes of this problem, and what solutions can you propose?',
 250,9,true),

('task2','problem_solution','Rising Obesity Rates',
 'Obesity rates continue to rise in many developed countries. What are the causes of this trend, and what measures could be taken to reduce it?',
 250,10,true),

('task2','problem_solution','Lack of Financial Literacy',
 'Many young people today lack basic financial literacy skills. What are the causes of this problem, and what can be done to solve it?',
 250,11,true),

('task2','problem_solution','Urban Air Pollution',
 'Air pollution in large cities has reached dangerous levels in recent years. What are the causes of this problem, and what solutions can governments implement?',
 250,12,true),

('task2','problem_solution','Exam Stress Among Students',
 'An increasing number of students are experiencing exam-related stress and anxiety. What are the reasons for this, and what can be done to help them?',
 250,13,true),

('task2','problem_solution','Small Businesses vs Online Retailers',
 'Many small businesses are struggling to survive due to competition from large online retailers. What are the causes of this problem, and what can be done to support them?',
 250,14,true),

('task2','problem_solution','Global Water Shortages',
 'Water shortages are becoming a serious concern in many parts of the world. What are the causes of this problem, and what measures can be taken to address it?',
 250,15,true),

-- ── Type 4: Advantages / Disadvantages (Neutral) ────────────────────────────

('task2','adv_disadv','Remote Working Trend',
 'More companies are allowing employees to work remotely instead of commuting to an office. What are the advantages and disadvantages of this trend?',
 250,1,true),

('task2','adv_disadv','Solar Energy at Home',
 'Solar energy is becoming an increasingly popular source of household power. What are the advantages and disadvantages of this development?',
 250,2,true),

('task2','adv_disadv','Dating Apps',
 'An increasing number of people are using dating apps to find romantic partners. What are the advantages and disadvantages of this trend?',
 250,3,true),

('task2','adv_disadv','Online University Study',
 'More students are choosing to study online rather than attending traditional universities. What are the advantages and disadvantages of this?',
 250,4,true),

('task2','adv_disadv','AI Screening Job Applicants',
 'Many companies are now using artificial intelligence to screen job applicants. What are the advantages and disadvantages of this approach?',
 250,5,true),

('task2','adv_disadv','Shared Accommodation',
 'More people are choosing to live in shared accommodation rather than alone. What are the advantages and disadvantages of this trend?',
 250,6,true),

('task2','adv_disadv','Tablets Replacing Textbooks',
 'An increasing number of schools are replacing textbooks with tablets and digital devices. What are the advantages and disadvantages of this change?',
 250,7,true),

('task2','adv_disadv','Relying on Food Delivery Apps',
 'More consumers are relying on food delivery apps instead of cooking at home. What are the advantages and disadvantages of this trend?',
 250,8,true),

('task2','adv_disadv','Electric Vehicle Policies',
 'Many governments are encouraging citizens to use electric vehicles instead of petrol cars. What are the advantages and disadvantages of this policy?',
 250,9,true),

('task2','adv_disadv','Wearable Health Devices',
 'An increasing number of people are using wearable devices to monitor their health. What are the advantages and disadvantages of this trend?',
 250,10,true),

('task2','adv_disadv','Four-Day Working Week',
 'More companies are adopting a four-day working week. What are the advantages and disadvantages of this change?',
 250,11,true),

('task2','adv_disadv','Growth of International Tourism',
 'Many countries are experiencing rapid growth in international tourism. What are the advantages and disadvantages of this development for local communities?',
 250,12,true),

('task2','adv_disadv','Exclusive Online Shopping',
 'An increasing number of people are choosing to shop exclusively online rather than in physical stores. What are the advantages and disadvantages of this trend?',
 250,13,true),

('task2','adv_disadv','AI in Classroom Teaching',
 'More schools are introducing artificial intelligence tools into classroom teaching. What are the advantages and disadvantages of this development?',
 250,14,true),

('task2','adv_disadv','The Gig Economy',
 'Many people are choosing to freelance or work in the gig economy rather than have permanent jobs. What are the advantages and disadvantages of this trend?',
 250,15,true),

-- ── Type 5: Advantages / Disadvantages (Outweigh) ───────────────────────────

('task2','outweigh','Increased Life Expectancy',
 'Recent advances in medical science have significantly increased average life expectancy. Do the advantages of this outweigh the disadvantages?',
 250,1,true),

('task2','outweigh','City Life vs Small Town Living',
 'Some people prefer to live in a big city, while others prefer a small town. Do the advantages of city life outweigh the disadvantages?',
 250,2,true),

('task2','outweigh','AI in Healthcare Decisions',
 'Artificial intelligence is increasingly being used to make decisions in healthcare, such as diagnosing illnesses. Do the advantages of this outweigh the disadvantages?',
 250,3,true),

('task2','outweigh','Homeschooling Children',
 'More parents are choosing to homeschool their children rather than send them to traditional schools. Do the advantages outweigh the disadvantages?',
 250,4,true),

('task2','outweigh','Dependence on Renewable Energy',
 'Many countries are becoming increasingly dependent on renewable energy sources such as wind and solar power. Do the advantages outweigh the disadvantages?',
 250,5,true),

('task2','outweigh','Digital Nomad Lifestyle',
 'An increasing number of people are choosing to travel and work remotely from different countries as digital nomads. Do the advantages outweigh the disadvantages?',
 250,6,true),

('task2','outweigh','Social Media Age Restrictions',
 'Some governments are introducing stricter regulations on social media use for young people. Do the advantages of this outweigh the disadvantages?',
 250,7,true),

('task2','outweigh','Workplace Automation',
 'Many businesses are automating tasks previously performed by human employees. Do the advantages of automation outweigh the disadvantages?',
 250,8,true),

('task2','outweigh','Online University Degrees',
 'An increasing number of universities are offering degrees entirely online. Do the advantages of this outweigh the disadvantages?',
 250,9,true),

('task2','outweigh','Shorter Working Week',
 'Some countries have introduced a shorter working week to improve employee wellbeing. Do the advantages of this outweigh the disadvantages?',
 250,10,true),

('task2','outweigh','Banning Cars from City Centres',
 'Many cities are banning private cars from their centres to reduce congestion and pollution. Do the advantages of this policy outweigh the disadvantages?',
 250,11,true),

('task2','outweigh','Genetic Testing Availability',
 'Genetic testing is now widely available to help people learn about potential future health risks. Do the advantages of this outweigh the disadvantages?',
 250,12,true),

('task2','outweigh','Social Media as News Source',
 'More people are relying on social media as their main source of news. Do the advantages of this outweigh the disadvantages?',
 250,13,true),

('task2','outweigh','Later Retirement Age',
 'Some countries are encouraging people to retire later in life to address pension shortages. Do the advantages of this policy outweigh the disadvantages?',
 250,14,true),

('task2','outweigh','Raising Pets Instead of Children',
 'An increasing number of people are choosing to raise pets instead of having children. Do the advantages of this trend outweigh the disadvantages?',
 250,15,true),

-- ── Type 6: Two-Part / Direct Question ──────────────────────────────────────

('task2','two_part','Working Abroad: Causes and Impact',
 'Many young people are choosing to work abroad rather than in their home countries. Why is this happening? Is this a positive or negative development?',
 250,1,true),

('task2','two_part','Declining Interest in Voting',
 'In many countries, people are becoming less interested in voting in elections. Why do you think this is happening? What can be done to encourage more people to vote?',
 250,2,true),

('task2','two_part','AI Tools in Student Study',
 'Many students today prefer to use artificial intelligence tools to help them with their studies. Why is this happening? Do you think this is a positive or negative development?',
 250,3,true),

('task2','two_part','Choosing Not to Have Children',
 'An increasing number of people are choosing not to have children. What are the reasons for this? Is this a positive or negative trend for society?',
 250,4,true),

('task2','two_part','Digital Communication Over Face-to-Face',
 'Many people today prefer to communicate through text messages and social media rather than face-to-face. Why is this? What effect does this have on relationships?',
 250,5,true),

('task2','two_part','Rural to Urban Migration',
 'More people are moving from rural areas to big cities in search of work. Why does this happen? What problems does this cause for cities?',
 250,6,true),

('task2','two_part','Outsourcing Jobs Overseas',
 'Many companies are choosing to outsource jobs to other countries. Why do they do this? What impact does this have on the economy of their home country?',
 250,7,true),

('task2','two_part','Youth Career Anxiety',
 'An increasing number of young people are experiencing anxiety about their future careers. Why do you think this is happening? What can be done to help them?',
 250,8,true),

('task2','two_part','Working Past Retirement Age',
 'Many older people today are choosing to continue working past the typical retirement age. Why is this happening? Is this a positive or negative trend?',
 250,9,true),

('task2','two_part','Declining Marriage Rates',
 'In many countries, fewer young people are choosing to get married. What are the reasons for this? What effects does this have on society?',
 250,10,true),

('task2','two_part','AI Assistants for Daily Tasks',
 'More people today are relying on artificial intelligence assistants to manage daily tasks. Why is this happening? What impact does this have on people''s independence?',
 250,11,true),

('task2','two_part','Buying Second-Hand Goods',
 'An increasing number of consumers are choosing to buy second-hand goods instead of new ones. Why is this happening? Is this a positive trend?',
 250,12,true),

('task2','two_part','Government Space Exploration Spending',
 'Many governments are investing heavily in space exploration programs. Why do they do this? Do you think this is a good use of public money?',
 250,13,true),

('task2','two_part','Living Alone',
 'More people today choose to live alone rather than with family or roommates. Why is this happening? What effects does this have on society?',
 250,14,true),

('task2','two_part','Trusting Social Media Influencers',
 'An increasing number of people are turning to social media influencers rather than traditional experts for advice. Why is this happening? Is this a positive or negative development?',
 250,15,true),

-- ── Type 7: Causes and Effects ───────────────────────────────────────────────

('task2','causes_effects','The Widening Wealth Gap',
 'In many countries, the gap between the rich and the poor continues to widen. What are the causes of this, and what effects does it have on society?',
 250,1,true),

('task2','causes_effects','Excessive Smartphone Use',
 'Many people today spend increasing amounts of time on their smartphones rather than interacting with others in person. What are the causes of this, and what effects does it have?',
 250,2,true),

('task2','causes_effects','Rising Childhood Obesity',
 'In many countries, obesity rates among children are rising rapidly. What are the causes of this trend, and what effects does it have on society?',
 250,3,true),

('task2','causes_effects','Delayed Parenthood',
 'Increasing numbers of people are choosing to delay having children until later in life. What are the causes of this, and what effects does it have on society?',
 250,4,true),

('task2','causes_effects','Youth and Community Disconnection',
 'Many young people today feel less connected to their local communities than previous generations. What are the causes of this, and what effects might it have?',
 250,5,true),

('task2','causes_effects','Single-Use Plastics',
 'The use of single-use plastics has increased dramatically in recent decades. What are the causes of this, and what effects does it have on the environment?',
 250,6,true),

('task2','causes_effects','Workplace Burnout Epidemic',
 'Many workplaces are experiencing higher rates of employee burnout than in the past. What are the causes of this, and what effects does it have on businesses?',
 250,7,true),

('task2','causes_effects','Ageing Populations and Falling Birth Rates',
 'In many developed countries, birth rates are falling while the elderly population is growing. What are the causes of this, and what effects will it have on society?',
 250,8,true),

('task2','causes_effects','AI Chatbots for Emotional Support',
 'Increasing numbers of people are relying on artificial intelligence chatbots for emotional support and companionship. What are the causes of this, and what effects might it have?',
 250,9,true),

('task2','causes_effects','Extreme Weather Events',
 'Many countries are experiencing a rise in extreme weather events in recent years. What are the causes of this, and what effects does it have on communities?',
 250,10,true),

('task2','causes_effects','Screen Time in Young Children',
 'Screen time among young children has increased significantly over the past decade. What are the causes of this, and what effects does it have on their development?',
 250,11,true),

('task2','causes_effects','Distrust of News Media',
 'Many people today distrust mainstream news media more than in the past. What are the causes of this, and what effects does it have on society?',
 250,12,true),

('task2','causes_effects','Decline of Skilled Trades',
 'In many countries, fewer young people are entering skilled trades such as plumbing and carpentry. What are the causes of this, and what effects will it have?',
 250,13,true),

('task2','causes_effects','Rising Housing Costs in Cities',
 'The cost of housing in major cities has risen sharply in recent years. What are the causes of this, and what effects does it have on young people?',
 250,14,true),

('task2','causes_effects','High Staff Turnover Rates',
 'Many companies are experiencing high staff turnover rates in recent years. What are the causes of this trend, and what effects does it have on productivity?',
 250,15,true),

-- ── Type 8: Opinion with Discussion (Hybrid) ────────────────────────────────

('task2','hybrid','Teaching Children Moral Values',
 'Some people think that parents are mainly responsible for teaching children moral values, while others believe schools should take on this role. Discuss both views and give your own opinion.',
 250,1,true),

('task2','hybrid','Government AI Research Funding',
 'Some people believe that governments should fund artificial intelligence research more heavily than other scientific fields, while others disagree. Discuss both views and give your own opinion.',
 250,2,true),

('task2','hybrid','Individual vs Corporate Environmental Responsibility',
 'Some people think that individuals are primarily responsible for protecting the environment, while others believe governments and corporations bear the greater responsibility. Discuss both views and give your own opinion.',
 250,3,true),

('task2','hybrid','Managing Children''s Screen Time',
 'Some people believe that reducing screen time is the responsibility of parents, while others think schools and governments should play a bigger role. Discuss both views and give your own opinion.',
 250,4,true),

('task2','hybrid','Employer Responsibility for Mental Health',
 'Some people think that employers should be responsible for their employees'' mental health and wellbeing, while others believe this is a personal responsibility. Discuss both views and give your own opinion.',
 250,5,true),

('task2','hybrid','University vs Vocational Training',
 'Some people believe that traditional universities remain the best route to a successful career, while others think vocational training and apprenticeships are equally valuable. Discuss both views and give your own opinion.',
 250,6,true),

('task2','hybrid','Who Should Fight Climate Change?',
 'Some people think that combating climate change should be left mainly to governments and international organisations, while others believe individual lifestyle changes matter more. Discuss both views and give your own opinion.',
 250,7,true),

('task2','hybrid','Moderating Social Media Content',
 'Some people believe that social media platforms should be responsible for moderating harmful content, while others think users themselves should take more responsibility. Discuss both views and give your own opinion.',
 250,8,true),

('task2','hybrid','Technical Skills vs Critical Thinking',
 'Some people think that the best way to prepare children for the future is to teach them technical skills such as coding, while others believe critical thinking and creativity are more valuable. Discuss both views and give your own opinion.',
 250,9,true),

('task2','hybrid','Regulating AI Development',
 'Some people believe that governments should regulate the development of artificial intelligence closely, while others think the technology industry should be allowed to self-regulate. Discuss both views and give your own opinion.',
 250,10,true),

('task2','hybrid','Reducing Obesity: Campaigns or Regulation?',
 'Some people think that public health campaigns are the most effective way to reduce obesity, while others believe stricter regulation of the food industry is needed. Discuss both views and give your own opinion.',
 250,11,true),

('task2','hybrid','Who Should Lead on Climate Change?',
 'Some people believe that older generations are responsible for solving climate change since they created the problem, while others think younger generations must lead the solution. Discuss both views and give your own opinion.',
 250,12,true),

('task2','hybrid','Heritage Preservation vs Public Access',
 'Some people think museums and historical sites should prioritise preservation over public access, while others believe public education is more important than preservation. Discuss both views and give your own opinion.',
 250,13,true),

('task2','hybrid','Disclosing AI-Generated Content',
 'Some people believe that companies should be required to disclose when content is created using artificial intelligence, while others think this is unnecessary regulation. Discuss both views and give your own opinion.',
 250,14,true),

('task2','hybrid','Solving Traffic Congestion',
 'Some people think that reducing traffic congestion should be the responsibility of city governments through infrastructure investment, while others believe individuals should simply drive less. Discuss both views and give your own opinion.',
 250,15,true);
