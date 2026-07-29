-- ─────────────────────────────────────────────────────────────────────────────
-- Phase 6 Batch 2 — Task 1 prompts (47 new images, 55 SQL rows)
-- Run AFTER uploading all images from supabase/chart-images/ to the
-- Supabase Storage bucket "writing-charts".
-- Pages in parentheses refer to the "Task 1 charts.pdf" source file.
-- ─────────────────────────────────────────────────────────────────────────────

INSERT INTO public.writing_prompts
  (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
VALUES

-- ── LINE GRAPHS (pages 3–10) ──────────────────────────────────────────────────

  (
    'task1', 'line', 'task1-line-london-museums.png',
    'Visitors to London Museums: Jun–Sep 2013',
    'The line graph below shows the number of visitors to three London museums from June to September 2013. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 15, true
  ),
  (
    'task1', 'line', 'task1-line-tourist-arrivals.png',
    'International Tourist Arrivals in 5 Countries 1995–2010',
    'The graph below shows the number of international tourists who visited five countries between 1995 and 2010. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 16, true
  ),
  (
    'task1', 'line', 'task1-line-food-china.png',
    'Food Consumption in China 1985–2010',
    'The line graph below shows the consumption of meat, salt and fish in China between 1985 and 2010. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 17, true
  ),
  (
    'task1', 'line', 'task1-line-books-europe.png',
    'Money Spent on Books in Four European Countries 1995–2005',
    'The graph below shows the amount of money spent on books in Germany, France, Italy and Austria between 1995 and 2005. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 18, true
  ),
  (
    'task1', 'line', 'task1-line-tourist-office-uk.png',
    'UK Tourist Office Enquiries by Method: Jan–Jun',
    'The graph below shows the number of enquiries received by a tourist office in a UK town from January to June, broken down by method of contact. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 19, true
  ),
  (
    'task1', 'line', 'task1-line-air-pollutants-uk.png',
    'Air Pollutants by Source in the UK 1990–2005',
    'The graph below shows the proportion of air pollutants from different sources in the United Kingdom between 1990 and 2005. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 20, true
  ),
  (
    'task1', 'line', 'task1-line-cars-manufactured.png',
    'Cars Manufactured in Four Countries 2020–2035',
    'The line graph below shows the projected number of cars manufactured in China, the UK, Japan and the USA between 2020 and 2035. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 21, true
  ),
  (
    'task1', 'line', 'task1-line-goods-transport-uk.png',
    'Goods Transported in the UK 1974–2002',
    'The graph below shows the volume of goods transported by road, water, rail and pipeline in the United Kingdom between 1974 and 2002. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 22, true
  ),

-- ── PIE CHARTS (pages 13–20) ─────────────────────────────────────────────────

  (
    'task1', 'pie', 'task1-pie-government-expenditure.png',
    'Government Expenditure: 2010 and 2015',
    'The pie charts below compare government expenditure in two years, 2010 and 2015. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 23, true
  ),
  (
    'task1', 'pie', 'task1-pie-waste-disposal.png',
    'Methods of Disposing of Dangerous Waste',
    'The pie charts below show how dangerous waste is disposed of in Korea, Sweden and the UK. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 24, true
  ),
  (
    'task1', 'pie', 'task1-pie-water-usage.png',
    'Water Usage Across Six World Regions',
    'The pie charts below show the proportion of water used for industrial, agricultural and domestic purposes in six regions of the world. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 25, true
  ),
  (
    'task1', 'pie', 'task1-pie-population-ages.png',
    'Population Age Distribution: Yemen and Italy 2000 and 2050',
    'The pie charts below show the age structure of the populations of Yemen and Italy in 2000 and projected figures for 2050. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 26, true
  ),
  (
    'task1', 'pie', 'task1-pie-energy-france.png',
    'Energy Production in France: 1995 and 2005',
    'The pie charts below show the proportion of energy produced from different sources in France in 1995 and 2005. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 27, true
  ),
  (
    'task1', 'pie', 'task1-pie-online-shopping-nz.png',
    'Online Shopping Retail Sectors in New Zealand: 2003 and 2013',
    'The pie charts below show the percentage of online shopping sales in different retail sectors in New Zealand in 2003 and 2013. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 28, true
  ),
  (
    'task1', 'pie', 'task1-pie-nutrition-usa.png',
    'Sodium, Saturated Fat and Added Sugar in US Meals',
    'The pie charts below show the proportion of sodium, saturated fat and added sugar consumed at different meal times in the United States. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 29, true
  ),
  (
    'task1', 'pie', 'task1-pie-household-spending.png',
    'Household Spending in the UK and New Zealand: 1980 and 2008',
    'The pie charts below show changes in average household spending in the United Kingdom and New Zealand in 1980 and 2008. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 30, true
  ),

-- ── BAR CHARTS (pages 23–29) ─────────────────────────────────────────────────

  (
    'task1', 'bar', 'task1-bar-women-education.png',
    'Women in Higher Education and Teacher Gender Balance',
    'The bar charts below show the proportion of women in higher education in five countries in 1980 and 2015, and the percentage of male and female teachers working at different levels of education in the UK in 2019. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 31, true
  ),
  (
    'task1', 'bar', 'task1-bar-houses-derby.png',
    'Houses Built in Derby and Nottingham 2000–2009',
    'The bar chart below shows the number of houses built in two English cities, Derby and Nottingham, between 2000 and 2009. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 32, true
  ),
  (
    'task1', 'bar', 'task1-bar-air-pollution-countries.png',
    'Air Pollution Levels in Four Countries in 2021',
    'The bar chart below shows the levels of air pollution in China, America, Japan and Australia in 2021. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 33, true
  ),
  (
    'task1', 'bar', 'task1-bar-physical-activity-au.png',
    'Physical Activity of Australians by Age and Gender in 2010',
    'The bar chart below shows the participation in physical activity among Australian men and women across different age groups in 2010. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 34, true
  ),
  (
    'task1', 'bar', 'task1-bar-fruit-veg-uk.png',
    'Fruit and Vegetable Consumption in the UK 2001–2008',
    'The bar chart below shows the average number of portions of fruit and vegetables consumed per day by men, women and children in the UK between 2001 and 2008. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 35, true
  ),
  (
    'task1', 'bar', 'task1-bar-online-shopping-au.png',
    'Online Shopping Among Australian Internet Users by Age: 2014 and 2018',
    'The bar chart below shows the percentage of internet users in Australia who shopped online, broken down by age group, in 2014 and 2018. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 36, true
  ),
  (
    'task1', 'bar', 'task1-bar-leisure-clubs.png',
    'Club Membership at a Leisure Centre by Age Group',
    'The bar chart below represents data about the clubs joined by people of two different age groups at a leisure centre in a small city. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 37, true
  ),

-- ── TABLES (pages 32–36) ─────────────────────────────────────────────────────
-- Note: pages 32, 33, and 34 each contain two independent tables.
-- Both prompts on these pages share the same chart_path (one image file).

  -- Page 32, table 1
  (
    'task1', 'table', 'task1-table-migrant-workers.png',
    'Temporary Migrant Workers in Four Countries: 2003 and 2006',
    'The table below shows the number of temporary migrant workers in four countries in 2003 and 2006 and the number of these workers per 1,000 people in these countries in 2006. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 38, true
  ),
  -- Page 32, table 2 (same image)
  (
    'task1', 'table', 'task1-table-migrant-workers.png',
    'Statistics on Major Metro Systems Around the World',
    'The table provides statistics on several major metro systems around the world. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 39, true
  ),
  -- Page 33, table 1
  (
    'task1', 'table', 'task1-table-food-consumption.png',
    'Consumption of Rice, Wheat and Maize in Four Countries',
    'The table below shows the consumption of three basic foods, rice, wheat and maize, by people in four different countries. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 40, true
  ),
  -- Page 33, table 2 (same image)
  (
    'task1', 'table', 'task1-table-food-consumption.png',
    'Annual Milk Production in Four Countries: 1990, 2000 and 2010',
    'The table below shows the production of milk annually in four countries in 1990, 2000 and 2010. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 41, true
  ),
  -- Page 34, table 1
  (
    'task1', 'table', 'task1-table-city-surveys.png',
    'City Living Survey Results: 1980 and 2010',
    'The tables show the results of two surveys done in 1980 and 2010 on various aspects of city living in a particular city. Units are measured in percentage. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 42, true
  ),
  -- Page 34, table 2 (same image)
  (
    'task1', 'table', 'task1-table-city-surveys.png',
    'Department Stores vs Online Stores in Australia (2011)',
    'The table shows information about department stores and online stores in Australia in 2011. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 43, true
  ),
  -- Page 35
  (
    'task1', 'table', 'task1-table-education.png',
    'Government Education Expenditure and Youth Participation in Five Nations (2002)',
    'The table gives information on the expenditure rate of the government on education and training and the participation rate of 18-to-24-year-olds in five nations in 2002. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 44, true
  ),
  -- Page 36
  (
    'task1', 'table', 'task1-table-marriage-australia.png',
    'Marriage Status and Age in Australia: 1960–2000',
    'The table below provides information on marriage status and age from 1960 to 2000 in Australia. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 45, true
  ),

-- ── PROCESS DIAGRAMS (pages 38–44) ───────────────────────────────────────────
-- Note: page 40 contains two process diagrams (frog life cycle + ketchup).
-- Both prompts share the same chart_path.

  (
    'task1', 'process', 'task1-process-bricks.png',
    'Manufacturing Bricks for the Building Industry',
    'The diagram illustrates the process that is used to manufacture bricks for the building industry. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 46, true
  ),
  (
    'task1', 'process', 'task1-process-chocolate.png',
    'How Chocolate is Produced',
    'The illustrations show how chocolate is produced. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 47, true
  ),
  -- Page 40, diagram 1
  (
    'task1', 'process', 'task1-process-frog.png',
    'Life Cycle of a Pond Frog',
    'The diagram shows the life cycle of a pond frog from egg to adult. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 48, true
  ),
  -- Page 40, diagram 2 (same image)
  (
    'task1', 'process', 'task1-process-frog.png',
    'How Tomato Ketchup is Made',
    'The diagram below shows how tomato ketchup is made. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 49, true
  ),
  (
    'task1', 'process', 'task1-process-aluminum.png',
    'Recycling Process of Aluminium Cans',
    'The diagram illustrates the recycling process of aluminium cans during six weeks. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 50, true
  ),
  (
    'task1', 'process', 'task1-process-salmon.png',
    'Life Cycle of the Salmon',
    'The diagram shows the life cycle of a large fish called the salmon. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 51, true
  ),
  (
    'task1', 'process', 'task1-process-plastic.png',
    'How Plastic Bottles Are Recycled',
    'The diagram shows how plastic bottles are recycled. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 52, true
  ),
  (
    'task1', 'process', 'task1-process-sugar.png',
    'Making Sugar from Sugar Cane',
    'The diagram below shows the manufacturing process for making sugar from sugar cane. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 53, true
  ),

-- ── MAPS (pages 48–54) ───────────────────────────────────────────────────────
-- Note: page 52 contains two map prompts (science park + town plan).
-- Both prompts share the same chart_path.

  (
    'task1', 'map', 'task1-map-island-tourist.png',
    'An Island Before and After Tourist Development',
    'The two maps below show an island, before and after the construction of some tourist facilities. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 54, true
  ),
  (
    'task1', 'map', 'task1-map-city-hospital.png',
    'Road Access to a City Hospital: 2007 and 2010',
    'The two maps below show road access to a city hospital in 2007 and in 2010. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 55, true
  ),
  (
    'task1', 'map', 'task1-map-norbiton.png',
    'Norbiton Industrial Area: Now and Planned Development',
    'The maps below show an industrial area in the town of Norbiton and the planned future development of the site. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 56, true
  ),
  (
    'task1', 'map', 'task1-map-nature-museum.png',
    'Nature Museum Layout: 2010 and 2013',
    'The maps below show the layouts of a nature museum between 2010 and 2013. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 57, true
  ),
  -- Page 52, map 1
  (
    'task1', 'map', 'task1-map-science-park.png',
    'A Science Park in 2008 and Today',
    'The maps below show a science park in 2008 and the same park today. Summarise the information by selecting and reporting the main features, and make comparisons where relevant.',
    150, 58, true
  ),
  -- Page 52, map 2 (same image)
  (
    'task1', 'map', 'task1-map-science-park.png',
    'A Town Now and Its Proposed Future Layout',
    'The following maps detail a town now and a proposed future layout. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 59, true
  ),
  (
    'task1', 'map', 'task1-map-bookstore.png',
    'A Bookstore in 2000 and Now',
    'The maps below show the bookstore in 2000 and now. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 60, true
  ),
  (
    'task1', 'map', 'task1-map-ryemouth.png',
    'Development of the Village of Ryemouth: 1995 to Present',
    'The map below shows the development of the village of Ryemouth between 1995 and the present. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 61, true
  ),

-- ── MIXED (pages 57–63) ──────────────────────────────────────────────────────
-- Note: page 61 contains two mixed prompts (broadband + tourists).
-- Both prompts share the same chart_path.

  (
    'task1', 'mixed', 'task1-mixed-police-budget.png',
    'Police Budget in One Area of Britain: 2017 and 2018',
    'The table and charts below give information on the police budget for 2017 and 2018 in one area of Britain. The table shows where the money came from and the charts show how it was distributed. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 62, true
  ),
  (
    'task1', 'mixed', 'task1-mixed-internet-usage.png',
    'Internet Usage and Online Shopping Spending: Five European Countries',
    'The bar chart shows the percentage of the population using the internet in five European countries, while the pie chart shows the average spending on internet shopping per person. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 63, true
  ),
  (
    'task1', 'mixed', 'task1-mixed-evening-courses.png',
    'Evening Courses at an Adult Education Centre in 2009',
    'The bar chart below shows the numbers of men and women attending various evening courses at an adult education centre in the year 2009. The pie chart gives information about the ages of these course participants. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 64, true
  ),
  (
    'task1', 'mixed', 'task1-mixed-australia-birth.png',
    'Country of Birth and Residential Patterns of People in Australia',
    'The pie chart shows the percentage of people living in Australia who are from various countries, while the accompanying table shows where these people live: urban and rural areas. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 65, true
  ),
  -- Page 61, prompt 1
  (
    'task1', 'mixed', 'task1-mixed-broadband.png',
    'Broadband Internet Connections in Five Countries: 2001 and 2002',
    'The bar graph and table give information about broadband internet connections in various countries in 2001 and 2002. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 66, true
  ),
  -- Page 61, prompt 2 (same image)
  (
    'task1', 'mixed', 'task1-mixed-broadband.png',
    'Tourists to Australia and Types of Holiday: 2005–2015',
    'The bar chart below shows the number of tourists from three nations who travel to Australia in 2005 and 2015. The graph below shows the number of tourists who use two types of holiday. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 67, true
  ),
  (
    'task1', 'mixed', 'task1-mixed-children-born.png',
    'Average Children Born per Woman and Age of First Birth: UK and Kazakhstan 1920–2019',
    'The chart and table below show the average number of children born to one woman and the average age of women when they had their first child in two countries between 1920 and 2019. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 68, true
  ),
  (
    'task1', 'mixed', 'task1-mixed-japanese-tourists.png',
    'Japanese Tourists Abroad and Australia''s Share: 1984–1995',
    'The bar chart gives information about the number of overseas Japanese tourists between 1985 and 1995, and the line graph illustrates the percentage of those going to Australia between 1984 and 1994. Summarise the information by selecting and reporting the main features and make comparisons where relevant.',
    150, 69, true
  )

ON CONFLICT DO NOTHING;

-- ── Verify ────────────────────────────────────────────────────────────────────
SELECT
  chart_type,
  COUNT(*) AS count
FROM public.writing_prompts
WHERE task_type = 'task1'
GROUP BY chart_type
ORDER BY chart_type;
