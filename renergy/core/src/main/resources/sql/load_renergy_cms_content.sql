

---------------------------------------------------
-- HOME PAGE MIDDLE SNIPIT
---------------------------------------------------
-- Content Consumer Solution
INSERT INTO BLC_SC (SC_ID, CREATED_BY, DATE_CREATED, DATE_UPDATED, UPDATED_BY, CONTENT_NAME, OFFLINE_FLAG, PRIORITY, LOCALE_CODE, SC_TYPE_ID) VALUES (113, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'FOR CONSUMERS', FALSE, 5, 'en', 2);
-- Fields
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (116, CURRENT_TIMESTAMP, 'htmlContent', 1, 'Power cuts, rising bills and, in some cases, no electricity at all. From big cities to remote villages, every home today is facing at least one of these challenges.');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (117, CURRENT_TIMESTAMP, 'targetUrl', 1, '/content/consumer');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (118, CURRENT_TIMESTAMP, 'css', 1, 'block1 s3');
-- Field XREF
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (1119, 113, 116, 'htmlContent');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (1120, 113, 117, 'targetUrl');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (1121, 113, 118, 'css')


-- Content Buisness Solution
INSERT INTO BLC_SC (SC_ID, CREATED_BY, DATE_CREATED, DATE_UPDATED, UPDATED_BY, CONTENT_NAME, OFFLINE_FLAG, PRIORITY, LOCALE_CODE, SC_TYPE_ID) VALUES (114, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'FOR  COMMERCIAL', FALSE, 5, 'en', 2);
-- Fields
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (119, CURRENT_TIMESTAMP, 'htmlContent', 1, 'While reducing costs happens to be the prime directive for businesses, sustainability is gradually becoming a social as well as non-negotiable government mandate.');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (120, CURRENT_TIMESTAMP, 'targetUrl', 1, '/content/business');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (121, CURRENT_TIMESTAMP, 'css', 1, 'block1 s3');
-- Field XREF
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (1122, 114, 119, 'htmlContent');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (1123, 114, 120, 'targetUrl');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (1124, 114, 121, 'css')

-- Content Government subsidy and schemes
INSERT INTO BLC_SC (SC_ID, CREATED_BY, DATE_CREATED, DATE_UPDATED, UPDATED_BY, CONTENT_NAME, OFFLINE_FLAG, PRIORITY, LOCALE_CODE, SC_TYPE_ID) VALUES (115, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'Subsidies and financing', FALSE, 5, 'en', 2);
-- Fields
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (122, CURRENT_TIMESTAMP, 'htmlContent', 1, 'The Indian government announced monetary support for renewable energy expansion and adaptation to climate change in the financial budget announcement for fiscal year 2015-16.');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (123, CURRENT_TIMESTAMP, 'targetUrl', 1, '/content/governmentschemes');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (124, CURRENT_TIMESTAMP, 'css', 1, 'block1 s3');
-- Field XREF
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (1125, 115, 122, 'htmlContent');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (1126, 115, 123, 'targetUrl');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (1127, 115, 124, 'css')



---------------------------------------------------
-- Various Pages
---------------------------------------------------

-- SOLAR ENERGY PAGE START
INSERT INTO BLC_PAGE (PAGE_ID, DESCRIPTION, PAGE_TMPLT_ID, FULL_URL) VALUES (10000,'Solar Energy',5,'/content/solar');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, VALUE) VALUES(10001,'heading',10000,'Solar Energy');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(10002,'introduction',10000,'Solar power is energy from the sun and without its presence all life on earth would end. Solar energy has been looked upon as a serious source of energy for many years because of the vast amounts of energy that are made freely available, if harnessed by modern technology');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(10003,'body',10000,'<p>A simple example of the power of the sun can be seen by using a magnifying glass to focus the suns rays on a piece of paper. Before long the paper ignites into flames.</p><p>This is one way of using the suns energy, but flames are dangerous and difficult to control. A much safer and practical way of harnessing the suns energy is to use the suns power to heat up water.</p><p>A magnifying glass can be used to heat up a small amount of water. A short piece of copper tube is sealed at one end and filled with water. A magnifying glass is then used to warm up the pipe. Using more than one magnifying glass will increase the temperature more rapidly. After a relatively short time the temperature of the water increases. Continuing to heat the water will cause water vapour to appear at the top of the tube. In theory, with enough patience, several magnifying glasses and very strong sun light enough heat should be generated to boil the water, producing steam. This is one way of harnessing solar power.</p><p>The principle of heating water to boiling point was used by the French in 1888. They developed a solar powered printing press. It used the energy of the sun to boil water, producing steam. The steam was used to drive a steam engine which provided the power to drive the mechanical printing press. The machine was unreliable and very expensive to manufacture.</p><p>Modern solar panels are a combination of magnifying glasses and fluid filled pipes. The solar panel seen opposite has a glass front which is specially made to focus the power of the sun on pipes behind it. The pipes carry a special fluid that heats up rapidly. They are painted black to absorb the heat from the sun. The silver reflective surface behind the pipes reflects sun light back, further heating the pipes and the fluid they contain. The reflective surface also protects anything behind the solar panel (such as a roof).</p><p>The heat produced in the pipes is then used to heat a tank of water. This saves using electricity or gas to heat up the water tank.</p>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(10004,'benefits',10000,'<p><b>Cut your electricity bills.</b>The sun is a complete renewable and consistent source of energy. Sunlight is free, so once you’ve paid for the initial installation, your electricity costs will be significantly reduced.</p><p><b>Sell electricity back to the grid.</b> If your system is producing more electricity than you need, or when you can’t use it, you can sell the surplus back to the grid.</p><p><b>Cut your carbon footprint.</b>Solar electricity is a green and clean source of renewable energy and doesn’t release any harmful carbon dioxide (CO2) or other pollutants. A typical home solar system could save over 3 tonnes of CO2 per year. That’s more than 60 tonnes over its lifetime.<p><p><b>Increase the value of your property.</b>Installing solar panels on your property not only provides you with cheap, green electricity – it can also make a real difference to the value of your property. More and more people are realising that cheap renewable power like solar makes good economic sense.</p>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(10005,'costing',10000,'<p><b>Refer to the picture for your approximate energy need</b></p><img src="/images/cms/home_kv_assessment.jpg"/><p>A rooftop solar PV system costs approximately Rs. 1,00,000 per kWp (kilowatt peak) including installation charges but without batteries and without considering incentives (which are discussed further down). The cost breakup for a 1 kWp system is given below:</p><table border="1" cellspacing="0" cellpadding="0"><tbody><tr><td style="background-color: #a8ce1f; color: #fff;vertical-align:middle;" valign="middle" width="330"><b>Component</b></td><td style="background-color: #a8ce1f; color: #fff;vertical-align:middle;" valign="middle" width="130"><b>Rs.</b></td><td style="background-color:#a8ce1f; color: #fff;vertical-align:middle;" valign="bottom" width="130"><b>% of total cost</b></td></tr><tr><td valign="top" width="212">PV modules (Crystalline)</td><td valign="top" width="74">52,000</td><td valign="top" width="72">52%</td></tr><tr><td valign="top" width="212">Inverters</td><td valign="top" width="74">23,000</td><td valign="top"width="72">23%</td></tr><tr><td valign="top" width="212">Balance of System (cables, etc.)</td><td valign="top" width="74">17,000</td><td valign="top" width="72">17%</td></tr><tr><td valign="top" width="212">Installation</td><td valign="top" width="74">8,000</td><td valign="top" width="72">8%</td></tr><tr><td valign="top" width="212"><b>Total</b></td><td valign="top" width="74"><b>1,00,000</b></td><td valign="top" width="72"></td></tr></tbody></table><p style="text-align: justify;"><b>Note 1:</b> The above prices are for components from Tier 1 manufacturers with 5-year manufacturer''s warranty. In addition the PV modules have output warranty of 90% of rated capacity for the first 10 years and 80% of rated capacity for the next 15 years.</p><p style="text-align: justify;"><b>Note 2:</b> We have not considered battery backup as that can alter the economics significantly depending on the extent of battery backup (autonomy) required. Not only do batteries add to the initial cost, recurring maintenance, and replacement expenditure, the energy loss on charging and drawing from the battery also adds to the cost of power. A battery backup would add about Rs. 25,000 to the cost of the above system.</p><p style="text-align: justify;"><b>Note 3:</b> We have not considered Thin-Film modules as they require more installation area for the same capacity as Crystalline modules and are therefore not preferred for rooftop installations where space is usually a constraint.</p>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(10006,'renergyOffering',10000,'<p><strong class="color-3">We are here to help you find the best solar solutions for your home, company or farm. India''s solar power potential is virtually limitless. With solar equipment costs falling every year, solar power is becoming ever more affordable. We believe that solar is a great solution for individual consumers as well as for India as a country. You can initiate a personal and national energy transition.</strong></p><p>We provide expert services with energy need assessment, suppling or advising in sourcing installation components.</p><p>Our aim is to provide you with expert advice and guidance throughout the whole process with customer service levels second to none. Once the installation is complete, we will provide you with professional support over the lifetime of your solar power system. We will ensure that the needs of you and the environment are both fulfilled.</p>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(10007,'questions',10000,'<li>What do I need to setup a Solar Panel in my home?</li><li>How much does the setup cost?</li><li>How many panel do I need to meet my energy requirements?</li><li>What are the various componets of Solar Panel setup?</li>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, VALUE) VALUES(10008,'imageUrl',10000,'/images/cms/solar-panels-for-home-790384.jpg');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, VALUE) VALUES(10009,'date',10000,'2012.03.07 00:00:00');
-- SOLAR ENERGY PAGE END


-- SOLAR ENERGY PAGE START
INSERT INTO BLC_PAGE (PAGE_ID, DESCRIPTION, PAGE_TMPLT_ID, FULL_URL) VALUES (11000,'Solar Energy',5,'/content/biomass');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, VALUE) VALUES(11001,'heading',11000,'Biomass Energy');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(11002,'introduction',11000,'Solar power is energy from the sun and without its presence all life on earth would end. Solar energy has been looked upon as a serious source of energy for many years because of the vast amounts of energy that are made freely available, if harnessed by modern technology');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(11003,'body',11000,'<p>A simple example of the power of the sun can be seen by using a magnifying glass to focus the suns rays on a piece of paper. Before long the paper ignites into flames.</p><p>This is one way of using the suns energy, but flames are dangerous and difficult to control. A much safer and practical way of harnessing the suns energy is to use the suns power to heat up water.</p><p>A magnifying glass can be used to heat up a small amount of water. A short piece of copper tube is sealed at one end and filled with water. A magnifying glass is then used to warm up the pipe. Using more than one magnifying glass will increase the temperature more rapidly. After a relatively short time the temperature of the water increases. Continuing to heat the water will cause water vapour to appear at the top of the tube. In theory, with enough patience, several magnifying glasses and very strong sun light enough heat should be generated to boil the water, producing steam. This is one way of harnessing solar power.</p><p>The principle of heating water to boiling point was used by the French in 1888. They developed a solar powered printing press. It used the energy of the sun to boil water, producing steam. The steam was used to drive a steam engine which provided the power to drive the mechanical printing press. The machine was unreliable and very expensive to manufacture.</p><p>Modern solar panels are a combination of magnifying glasses and fluid filled pipes. The solar panel seen opposite has a glass front which is specially made to focus the power of the sun on pipes behind it. The pipes carry a special fluid that heats up rapidly. They are painted black to absorb the heat from the sun. The silver reflective surface behind the pipes reflects sun light back, further heating the pipes and the fluid they contain. The reflective surface also protects anything behind the solar panel (such as a roof).</p><p>The heat produced in the pipes is then used to heat a tank of water. This saves using electricity or gas to heat up the water tank.</p>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(11004,'benefits',11000,'<p><b>Cut your electricity bills.</b>The sun is a complete renewable and consistent source of energy. Sunlight is free, so once you’ve paid for the initial installation, your electricity costs will be significantly reduced.</p><p><b>Sell electricity back to the grid.</b> If your system is producing more electricity than you need, or when you can’t use it, you can sell the surplus back to the grid.</p><p><b>Cut your carbon footprint.</b>Solar electricity is a green and clean source of renewable energy and doesn’t release any harmful carbon dioxide (CO2) or other pollutants. A typical home solar system could save over 3 tonnes of CO2 per year. That’s more than 60 tonnes over its lifetime.<p><p><b>Increase the value of your property.</b>Installing solar panels on your property not only provides you with cheap, green electricity – it can also make a real difference to the value of your property. More and more people are realising that cheap renewable power like solar makes good economic sense.</p>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(11005,'costing',11000,'<p><b>Refer to the picture for your approximate energy need</b></p><img src="/images/cms/home_kv_assessment.jpg"/><p>A rooftop solar PV system costs approximately Rs. 1,00,000 per kWp (kilowatt peak) including installation charges but without batteries and without considering incentives (which are discussed further down). The cost breakup for a 1 kWp system is given below:</p><table border="1" cellspacing="0" cellpadding="0"><tbody><tr><td style="background-color: #a8ce1f; color: #fff;vertical-align:middle;" valign="middle" width="330"><b>Component</b></td><td style="background-color: #a8ce1f; color: #fff;vertical-align:middle;" valign="middle" width="130"><b>Rs.</b></td><td style="background-color:#a8ce1f; color: #fff;vertical-align:middle;" valign="bottom" width="130"><b>% of total cost</b></td></tr><tr><td valign="top" width="212">PV modules (Crystalline)</td><td valign="top" width="74">52,000</td><td valign="top" width="72">52%</td></tr><tr><td valign="top" width="212">Inverters</td><td valign="top" width="74">23,000</td><td valign="top"width="72">23%</td></tr><tr><td valign="top" width="212">Balance of System (cables, etc.)</td><td valign="top" width="74">17,000</td><td valign="top" width="72">17%</td></tr><tr><td valign="top" width="212">Installation</td><td valign="top" width="74">8,000</td><td valign="top" width="72">8%</td></tr><tr><td valign="top" width="212"><b>Total</b></td><td valign="top" width="74"><b>1,00,000</b></td><td valign="top" width="72"></td></tr></tbody></table><p style="text-align: justify;"><b>Note 1:</b> The above prices are for components from Tier 1 manufacturers with 5-year manufacturer''s warranty. In addition the PV modules have output warranty of 90% of rated capacity for the first 10 years and 80% of rated capacity for the next 15 years.</p><p style="text-align: justify;"><b>Note 2:</b> We have not considered battery backup as that can alter the economics significantly depending on the extent of battery backup (autonomy) required. Not only do batteries add to the initial cost, recurring maintenance, and replacement expenditure, the energy loss on charging and drawing from the battery also adds to the cost of power. A battery backup would add about Rs. 25,000 to the cost of the above system.</p><p style="text-align: justify;"><b>Note 3:</b> We have not considered Thin-Film modules as they require more installation area for the same capacity as Crystalline modules and are therefore not preferred for rooftop installations where space is usually a constraint.</p>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(11006,'renergyOffering',11000,'<p><strong class="color-3">We are here to help you find the best solar solutions for your home, company or farm. India''s solar power potential is virtually limitless. With solar equipment costs falling every year, solar power is becoming ever more affordable. We believe that solar is a great solution for individual consumers as well as for India as a country. You can initiate a personal and national energy transition.</strong></p><p>We provide expert services with energy need assessment, suppling or advising in sourcing installation components.</p><p>Our aim is to provide you with expert advice and guidance throughout the whole process with customer service levels second to none. Once the installation is complete, we will provide you with professional support over the lifetime of your solar power system. We will ensure that the needs of you and the environment are both fulfilled.</p>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, LOB_VALUE) VALUES(11007,'questions',11000,'<li>What do I need to setup a Solar Panel in my home?</li><li>How much does the setup cost?</li><li>How many panel do I need to meet my energy requirements?</li><li>What are the various componets of Solar Panel setup?</li>');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, VALUE) VALUES(11008,'imageUrl',11000,'/images/cms/solar-panels-for-home-790384.jpg');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, VALUE) VALUES(11009,'date',11000,'2012.03.07 00:00:00');
-- SOLAR ENERGY PAGE END



-- COMING SOON CONTENT START
INSERT INTO BLC_PAGE (PAGE_ID, DESCRIPTION, PAGE_TMPLT_ID, FULL_URL) VALUES (10007,'Comming Soon',5,'/content/comingsoon');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, VALUE) VALUES(20022,'imageUrl',10007,'/images/cms/coming_soon.jpg');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, VALUE) VALUES(20023,'date',10007,'2012.03.07 00:00:00');
INSERT INTO BLC_PAGE_FLD (PAGE_FLD_ID, FLD_KEY, PAGE_ID, VALUE) VALUES(20025,'heading',10007,'Content Coming Soon...');
-- COMING SOON CONTENT END


---------------------------------------------------
-- FAQ List for Solar, Wind and Bio Mass
---------------------------------------------------

-- FAQ for Solar
INSERT INTO BLC_SC (SC_ID, CREATED_BY, DATE_CREATED, DATE_UPDATED, UPDATED_BY, CONTENT_NAME, OFFLINE_FLAG, PRIORITY, LOCALE_CODE, SC_TYPE_ID) VALUES (1113, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'Solar Faq Question 1', FALSE, 5, 'en', 5);
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1000, CURRENT_TIMESTAMP, 'question', 1, 'What do I need to setup Solar Water heater at home?');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1001, CURRENT_TIMESTAMP, 'answer', 1, 'Sit ametonume onsecteum adipisicing elit, sedomo eiusmod tempori et dolore magna aliqua ut enaded minim veniam quism nostrud xercitation ullamco laboris nisut aliquip. Lorem ipsum dolor sit amet consectetuer adipiscing elit');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1002, CURRENT_TIMESTAMP, 'targetUrl', 1, '/content/howtoguide');

INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1000, 1113, 1000, 'question');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1001, 1113, 1001, 'answer');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1002, 1113, 1002, 'targetUrl');

INSERT INTO BLC_SC (SC_ID, CREATED_BY, DATE_CREATED, DATE_UPDATED, UPDATED_BY, CONTENT_NAME, OFFLINE_FLAG, PRIORITY, LOCALE_CODE, SC_TYPE_ID) VALUES (1114, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'Solar Faq Question 2', FALSE, 5, 'en', 5);
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1003, CURRENT_TIMESTAMP, 'question', 1, 'What do I need to setup a Solar Panel at my home?');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1004, CURRENT_TIMESTAMP, 'answer', 1, 'Sit ametonume onsecteum adipisicing elit, sedomo eiusmod tempori et dolore magna aliqua ut enaded minim veniam quism nostrud xercitation ullamco laboris nisut aliquip. Lorem ipsum dolor sit amet consectetuer adipiscing elit');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1005, CURRENT_TIMESTAMP, 'targetUrl', 1, '/content/howtoguide');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1003, 1114, 1003, 'question');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1004, 1114, 1004, 'answer');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1005, 1114, 1005, 'targetUrl');

INSERT INTO BLC_SC (SC_ID, CREATED_BY, DATE_CREATED, DATE_UPDATED, UPDATED_BY, CONTENT_NAME, OFFLINE_FLAG, PRIORITY, LOCALE_CODE, SC_TYPE_ID) VALUES (1115, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'Solar Faq Question 3', FALSE, 5, 'en', 5);
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1006, CURRENT_TIMESTAMP, 'question', 1, 'How much does the setup cost?');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1007, CURRENT_TIMESTAMP, 'answer', 1, 'Sit ametonume onsecteum adipisicing elit, sedomo eiusmod tempori et dolore magna aliqua ut enaded minim veniam quism nostrud xercitation ullamco laboris nisut aliquip. Lorem ipsum dolor sit amet consectetuer adipiscing elit');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1008, CURRENT_TIMESTAMP, 'targetUrl', 1, '/content/howtoguide');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1006, 1115, 1006, 'question');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1007, 1115, 1007, 'answer');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1008, 1115, 1008, 'targetUrl');

INSERT INTO BLC_SC (SC_ID, CREATED_BY, DATE_CREATED, DATE_UPDATED, UPDATED_BY, CONTENT_NAME, OFFLINE_FLAG, PRIORITY, LOCALE_CODE, SC_TYPE_ID) VALUES (1116, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'Solar Faq Question 4', FALSE, 5, 'en', 5);
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1009, CURRENT_TIMESTAMP, 'question', 1, 'How many panel do I need to meet my energy requirements?');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1010, CURRENT_TIMESTAMP, 'answer', 1, 'Sit ametonume onsecteum adipisicing elit, sedomo eiusmod tempori et dolore magna aliqua ut enaded minim veniam quism nostrud xercitation ullamco laboris nisut aliquip. Lorem ipsum dolor sit amet consectetuer adipiscing elit');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1011, CURRENT_TIMESTAMP, 'targetUrl', 1, '/content/howtoguide');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1009, 1116, 1009, 'question');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1010, 1116, 1010, 'answer');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1011, 1116, 1011, 'targetUrl');

INSERT INTO BLC_SC (SC_ID, CREATED_BY, DATE_CREATED, DATE_UPDATED, UPDATED_BY, CONTENT_NAME, OFFLINE_FLAG, PRIORITY, LOCALE_CODE, SC_TYPE_ID) VALUES (1117, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'Solar Faq Question 6', FALSE, 5, 'en', 5);
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1012, CURRENT_TIMESTAMP, 'question', 1, 'What are the various componets of Solar Panel setup?');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1013, CURRENT_TIMESTAMP, 'answer', 1, 'Sit ametonume onsecteum adipisicing elit, sedomo eiusmod tempori et dolore magna aliqua ut enaded minim veniam quism nostrud xercitation ullamco laboris nisut aliquip. Lorem ipsum dolor sit amet consectetuer adipiscing elit');
INSERT INTO BLC_SC_FLD (SC_FLD_ID, DATE_CREATED, FLD_KEY, CREATED_BY, VALUE) VALUES (1014, CURRENT_TIMESTAMP, 'targetUrl', 1, '/content/howtoguide');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1012, 1117, 1012, 'question');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1013, 1117, 1013, 'answer');
INSERT INTO BLC_SC_FLD_MAP (BLC_SC_SC_FIELD_ID, SC_ID, SC_FLD_ID, MAP_KEY) VALUES (-1014, 1117, 1014, 'targetUrl');
