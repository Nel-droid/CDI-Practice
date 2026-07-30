-- ─────────────────────────────────────────────────────────────────────────────
-- Phase 8 — Full Test seed (20 tests)
-- Run in Supabase SQL Editor AFTER:
--   1. phase8-full-test-schema.sql has been applied
--   2. All 20 chart images are uploaded to the writing-charts bucket:
--        writing-charts/full-tests/test-01-task1.png
--        writing-charts/full-tests/test-02-task1.png
--        … through …
--        writing-charts/full-tests/test-20-task1.png
-- Safe to re-run — the reset block below cleans up first.
-- ─────────────────────────────────────────────────────────────────────────────

-- ── 0. Reset (idempotent) ─────────────────────────────────────────────────────
DELETE FROM public.full_tests;
DELETE FROM public.writing_prompts WHERE chart_path LIKE 'full-tests/%';
DELETE FROM public.writing_prompts
  WHERE task_type = 'task2' AND display_order >= 200;

-- ── Test 1 ────────────────────────────────────────────────────────────────────
-- Task 1 : Bar chart — houses sold above $5M in 8 cities, 2009 vs 2014
-- Task 2 : Opinion — nuclear power safety
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'bar', 'full-tests/test-01-task1.png',
    'Houses Sold Above $5M: 8 Cities (2009 vs 2014)',
    'The bar chart below shows the number of houses sold for more than 5 million US dollars in eight major cities in 2009 and 2014. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 101, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'opinion',
    'Nuclear Power Safety and Reliability',
    'Nuclear power is the safest and most reliable way to meet a country''s growing energy needs. To what extent do you agree or disagree?',
    250, 201, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 1, 'Full Test 1', t1.id, t2.id, true FROM t1, t2;

-- ── Test 2 ────────────────────────────────────────────────────────────────────
-- Task 1 : Map — school floor plan, 1980 vs 2010
-- Task 2 : Discussion — prison sentences vs rehabilitation
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'map', 'full-tests/test-02-task1.png',
    'School Layout: 1980 and 2010',
    'The maps below show the changes made to a school between 1980 and 2010. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 102, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'discussion',
    'Prison Sentences vs Rehabilitation',
    'Some people believe that violent criminals should receive longer prison sentences, while others think rehabilitation programmes are more effective at reducing crime. Discuss both views and give your own opinion.',
    250, 202, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 2, 'Full Test 2', t1.id, t2.id, true FROM t1, t2;

-- ── Test 3 ────────────────────────────────────────────────────────────────────
-- Task 1 : Line graph — mobile phone contract costs, Jan–Sep 2002
-- Task 2 : Problem/Solution — homelessness in major cities
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'line', 'full-tests/test-03-task1.png',
    'Mobile Phone Contract Costs: Jan–Sep 2002',
    'The chart below shows the average cost of a monthly contract for four different mobile phones in a European country from January to September 2002, measured in euros. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 103, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'problem_solution',
    'Homelessness in Major Cities',
    'Homelessness is increasing in many major cities. What are the causes of this problem, and what measures can be taken to solve it?',
    250, 203, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 3, 'Full Test 3', t1.id, t2.id, true FROM t1, t2;

-- ── Test 4 ────────────────────────────────────────────────────────────────────
-- Task 1 : Process diagram — pineapple growing and production
-- Task 2 : Advantages/Disadvantages — co-living with shared childcare
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'process', 'full-tests/test-04-task1.png',
    'Pineapple Growing and Production Process',
    'The diagram below shows the process of growing and preparing pineapples and pineapple products. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 104, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'adv_disadv',
    'Co-living with Shared Childcare',
    'More parents are choosing co-living arrangements with shared childcare responsibilities. What are the advantages and disadvantages of this trend?',
    250, 204, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 4, 'Full Test 4', t1.id, t2.id, true FROM t1, t2;

-- ── Test 5 ────────────────────────────────────────────────────────────────────
-- Task 1 : Bar chart — employment of age 60–64 by gender, 4 countries, 1970 vs 2000
-- Task 2 : Outweigh — cashless society
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'bar', 'full-tests/test-05-task1.png',
    'Employment Rate (60–64) by Gender: 4 Countries (1970 vs 2000)',
    'The charts show information about the percentage of men and women aged 60–64 who were employed in four countries in 1970 and 2000. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 105, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'outweigh',
    'Moving to a Cashless Society',
    'Many countries are moving toward a completely cashless society. Do the advantages of this outweigh the disadvantages?',
    250, 205, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 5, 'Full Test 5', t1.id, t2.id, true FROM t1, t2;

-- ── Test 6 ────────────────────────────────────────────────────────────────────
-- Task 1 : Bar chart — leisure activity participation, Australian children 5–14
-- Task 2 : Two-Part — drone delivery
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'bar', 'full-tests/test-06-task1.png',
    'Leisure Activity Participation: Australian Children (5–14)',
    'The bar chart below shows the percentage of participation by 5 to 14-year-olds in selected leisure activities in Australia. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 106, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'two_part',
    'Drone Delivery: Popularity and Impact',
    'Many companies now use drones for product delivery. Why has this become popular? Is this a positive or negative development?',
    250, 206, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 6, 'Full Test 6', t1.id, t2.id, true FROM t1, t2;

-- ── Test 7 ────────────────────────────────────────────────────────────────────
-- Task 1 : Process diagram — leather products manufacturing
-- Task 2 : Causes/Effects — urban noise pollution
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'process', 'full-tests/test-07-task1.png',
    'Leather Products Manufacturing Process',
    'The diagram below details the process of making leather products. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 107, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'causes_effects',
    'Urban Noise Pollution: Causes and Effects',
    'Noise pollution in urban areas has increased significantly in recent years. What are the causes of this, and what effects does it have on residents'' health?',
    250, 207, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 7, 'Full Test 7', t1.id, t2.id, true FROM t1, t2;

-- ── Test 8 ────────────────────────────────────────────────────────────────────
-- Task 1 : Pie chart — book sales distribution in a bookstore
-- Task 2 : Hybrid — advertising aimed at children
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'pie', 'full-tests/test-08-task1.png',
    'Book Sales Distribution in a Bookstore',
    'The chart below shows the book sales distribution in a bookstore in a particular year. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 108, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'hybrid',
    'Advertising Aimed at Children',
    'Some people believe that advertising aimed at children should be banned entirely, while others think parents alone should control what children see. Discuss both views and give your own opinion.',
    250, 208, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 8, 'Full Test 8', t1.id, t2.id, true FROM t1, t2;

-- ── Test 9 ────────────────────────────────────────────────────────────────────
-- Task 1 : Pie charts — global production by sector, 2040 and 2060
-- Task 2 : Opinion — standardised testing
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'pie', 'full-tests/test-09-task1.png',
    'Global Production by Sector: 2040 and 2060',
    'The charts show the projections for global production by sector in 2040 and 2060. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 109, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'opinion',
    'Standardised Testing in Schools',
    'Standardised testing is the fairest way to measure a student''s academic ability. To what extent do you agree or disagree?',
    250, 209, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 9, 'Full Test 9', t1.id, t2.id, true FROM t1, t2;

-- ── Test 10 ───────────────────────────────────────────────────────────────────
-- Task 1 : Table — mobile phone feature usage, 2006–2010
-- Task 2 : Discussion — government subsidies for the arts
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'table', 'full-tests/test-10-task1.png',
    'Mobile Phone Feature Usage: 2006–2010',
    'The table below shows the percentage of mobile phone owners using various mobile phone features in 2006, 2008, and 2010. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 110, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'discussion',
    'Government Subsidies for the Arts',
    'Some people think governments should subsidise the arts, such as theatre and music, while others believe public money should be spent elsewhere. Discuss both views and give your own opinion.',
    250, 210, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 10, 'Full Test 10', t1.id, t2.id, true FROM t1, t2;

-- ── Test 11 ───────────────────────────────────────────────────────────────────
-- Task 1 : Line graph — radio and TV audiences in UK, Oct–Dec 1992
-- Task 2 : Problem/Solution — shortage of affordable childcare
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'line', 'full-tests/test-11-task1.png',
    'Radio and TV Audiences in the UK (Oct–Dec 1992)',
    'The chart below shows radio and television audiences throughout the day in the United Kingdom from October to December 1992. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 111, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'problem_solution',
    'Shortage of Affordable Childcare',
    'Many countries are facing a shortage of affordable childcare. What are the causes of this problem, and what can be done to address it?',
    250, 211, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 11, 'Full Test 11', t1.id, t2.id, true FROM t1, t2;

-- ── Test 12 ───────────────────────────────────────────────────────────────────
-- Task 1 : Map — Happy Valley Shopping Center, 1982 vs 2012
-- Task 2 : Advantages/Disadvantages — self-checkout machines
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'map', 'full-tests/test-12-task1.png',
    'Happy Valley Shopping Center: 1982 and 2012',
    'The maps below show the changes in the Happy Valley Shopping Center between 1982 and 2012. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 112, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'adv_disadv',
    'Self-Checkout Machines in Retail',
    'An increasing number of retailers are removing cashiers and replacing them with self-checkout machines. What are the advantages and disadvantages of this trend?',
    250, 212, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 12, 'Full Test 12', t1.id, t2.id, true FROM t1, t2;

-- ── Test 13 ───────────────────────────────────────────────────────────────────
-- Task 1 : Mixed (pie + bar) — UK arrests by gender and reason, 2015–2020
-- Task 2 : Outweigh — telemedicine
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'mixed', 'full-tests/test-13-task1.png',
    'Arrests in the UK by Gender and Reason (2015–2020)',
    'The pie charts show the percentage of males and females arrested in the UK from 2015 to 2020, and the bar chart shows the reasons for these people''s arrests. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 113, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'outweigh',
    'Telemedicine: Consulting Doctors Online',
    'Telemedicine, where patients consult doctors online rather than in person, is becoming increasingly common. Do the advantages of this outweigh the disadvantages?',
    250, 213, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 13, 'Full Test 13', t1.id, t2.id, true FROM t1, t2;

-- ── Test 14 ───────────────────────────────────────────────────────────────────
-- Task 1 : Pie chart — UK students' financial organisation
-- Task 2 : Two-Part — mandatory military or civil service
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'pie', 'full-tests/test-14-task1.png',
    'UK Students'' Financial Organisation',
    'The pie chart below shows UK students'' responses to how they would describe themselves in terms of managing their finances. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 114, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'two_part',
    'Mandatory Military or Civil Service',
    'Many countries require young people to complete a period of mandatory military or civil service. Why do governments introduce such policies? Do you think this is a good idea?',
    250, 214, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 14, 'Full Test 14', t1.id, t2.id, true FROM t1, t2;

-- ── Test 15 ───────────────────────────────────────────────────────────────────
-- Task 1 : Line graph — internet use changes and predictions, 2015–2030
-- Task 2 : Causes/Effects — young adults living with parents longer
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'line', 'full-tests/test-15-task1.png',
    'Internet Use: Changes and Predictions (2015–2030)',
    'The chart below shows changes and predictions in the use of the internet in the future. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 115, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'causes_effects',
    'Young Adults Living with Parents Longer',
    'Many young adults today are choosing to remain living with their parents for longer than previous generations. What are the causes of this, and what effects does it have on society?',
    250, 215, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 15, 'Full Test 15', t1.id, t2.id, true FROM t1, t2;

-- ── Test 16 ───────────────────────────────────────────────────────────────────
-- Task 1 : Table — UK spending on 4 common items by age group, 1998
-- Task 2 : Hybrid — reducing the gender pay gap
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'table', 'full-tests/test-16-task1.png',
    'UK Spending on 4 Common Items by Group (1998)',
    'The table below shows the proportion of income that adults and children spent on four common items in the UK in 1998. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 116, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'hybrid',
    'Reducing the Gender Pay Gap',
    'Some people think it is the government''s responsibility to reduce the gender pay gap through legislation, while others believe companies should address this issue on their own. Discuss both views and give your own opinion.',
    250, 216, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 16, 'Full Test 16', t1.id, t2.id, true FROM t1, t2;

-- ── Test 17 ───────────────────────────────────────────────────────────────────
-- Task 1 : Mixed (bar + pie) — jeans sales and market share in Turkey
-- Task 2 : Opinion — replacing tips with fixed wages
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'mixed', 'full-tests/test-17-task1.png',
    'Jeans Sales in Turkey: Estimated Sales and Market Share',
    'The bar chart below shows the estimated sales of jeans next year in Turkey, and the pie chart shows the projected market share at the end of the year. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 117, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'opinion',
    'Replacing Tips with Fixed Wages',
    'Tipping for services such as restaurants and taxis should be replaced by higher fixed wages instead. To what extent do you agree or disagree?',
    250, 217, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 17, 'Full Test 17', t1.id, t2.id, true FROM t1, t2;

-- ── Test 18 ───────────────────────────────────────────────────────────────────
-- Task 1 : Pie chart — transport use in Edmonton
-- Task 2 : Discussion — banning single-use plastic
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'pie', 'full-tests/test-18-task1.png',
    'Transport Use in Edmonton',
    'The diagram below gives information on transport and car use in Edmonton. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 118, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'discussion',
    'Banning Single-Use Plastic Packaging',
    'Some people believe banning single-use plastic packaging is the best way to protect the environment, while others think recycling programmes are more effective. Discuss both views and give your own opinion.',
    250, 218, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 18, 'Full Test 18', t1.id, t2.id, true FROM t1, t2;

-- ── Test 19 ───────────────────────────────────────────────────────────────────
-- Task 1 : Process diagram — glass bottle recycling
-- Task 2 : Problem/Solution — excessive homework
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'process', 'full-tests/test-19-task1.png',
    'Glass Bottle Recycling Process',
    'The diagram below shows the recycling process of wasted glass bottles. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 119, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'problem_solution',
    'Excessive Homework in Schools',
    'Many students report feeling overwhelmed by excessive homework. What are the causes of this problem, and what measures could schools take to address it?',
    250, 219, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 19, 'Full Test 19', t1.id, t2.id, true FROM t1, t2;

-- ── Test 20 ───────────────────────────────────────────────────────────────────
-- Task 1 : Line graph — activity participants by type, 2000–2020
-- Task 2 : Two-Part — urban green spaces
WITH t1 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
  VALUES (
    'task1', 'line', 'full-tests/test-20-task1.png',
    'Activity Participants by Type: 2000–2020',
    'The chart below shows the number of participants doing different activities between 2000 and 2020. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 120, true
  ) RETURNING id
),
t2 AS (
  INSERT INTO public.writing_prompts
    (task_type, chart_type, title, prompt, min_words, display_order, published)
  VALUES (
    'task2', 'two_part',
    'Urban Green Spaces: Parks and Community Gardens',
    'More cities are creating urban green spaces such as parks and community gardens. Why are they doing this? What benefits does this bring to residents?',
    250, 220, true
  ) RETURNING id
)
INSERT INTO public.full_tests (test_number, title, task1_prompt_id, task2_prompt_id, published)
SELECT 20, 'Full Test 20', t1.id, t2.id, true FROM t1, t2;

-- ── Verify ────────────────────────────────────────────────────────────────────
SELECT
  ft.test_number,
  ft.title,
  p1.chart_type  AS task1_chart,
  p1.chart_path  AS task1_image,
  p2.chart_type  AS task2_essay_type,
  ft.published
FROM public.full_tests ft
JOIN public.writing_prompts p1 ON p1.id = ft.task1_prompt_id
JOIN public.writing_prompts p2 ON p2.id = ft.task2_prompt_id
ORDER BY ft.test_number;
