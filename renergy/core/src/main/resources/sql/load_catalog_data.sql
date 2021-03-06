--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for loading the the catalog data used in the Archetype.   Implementers can change this file
-- to load their initial catalog.
--

-- Custom store navigation (default template uses these for the header navigation)
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (1,'Root','Root',NULL,NULL,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2, 'Primary Nav','Primary Nav',NULL,1,CURRENT_TIMESTAMP);

INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2000,'Home','home','/',CURRENT_TIMESTAMP, 'main/index');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2001,'Store','Store','/store',CURRENT_TIMESTAMP, 'layout/home');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (2002,'Home Consumers Store','Home Consumers Store','/store/mens',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (2003,'Commercial Customers Store','Commercial Customer Store','/store/mens',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (2004,'Clearance','Clearance','/clearance',CURRENT_TIMESTAMP);

INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (2007,'Mens','Mens','/mens',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (2008,'Womens','Womens','/womens',CURRENT_TIMESTAMP);


INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2009,'About Us','About us','/aboutus',CURRENT_TIMESTAMP, 'main/aboutus');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2010,'Technologies','Technologies','/technologies',CURRENT_TIMESTAMP, 'main/technologies');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2011,'Community','Community','/community',CURRENT_TIMESTAMP, 'main/community');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2012,'How to Guide','How to Guide','/howtoguide',CURRENT_TIMESTAMP, 'main/howtoguide');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2013,'Privacy Policy','Privacy Policy','/privacy',CURRENT_TIMESTAMP, 'main/privacy');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2014,'Contact Us','Contact Us','/contactus',CURRENT_TIMESTAMP, 'main/contactus');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2050,'Home','home','/test',CURRENT_TIMESTAMP, 'main/test')

INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (2015,'Solar','Solar','content/solar',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (2016,'Bio Mass','Bio Mass','content/biomass',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (2017,'Wind','Wind','content/wind',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (2018,'Hyndro','Hydro','content/hydro',CURRENT_TIMESTAMP);


INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (1,2,1,1)
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2,2000,2,1);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (3,2001,2,2);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (4,2002,2,3);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (5,2003,2,4);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (6,2004,2,5);

-- Builds the category hierarchy (simple in this case) - Merchandise --> Mens/Womens
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (8,2007,2003,1,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (9,2008,2003,2,TRUE);

-- Builds the category hierarchy (simple in this case) - Technologies --> Solar,Bio Mass, Wind and Hyndro
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (10,2015,2010,1,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (11,2016,2010,2,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (12,2017,2010,3,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (13,2018,2010,4,TRUE);

-- Add in any applicable search facets for the given category
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (1, 'PRODUCT', 'manufacturer', 'mfg', TRUE, 's');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (2, 'PRODUCT', 'productAttributes.heatRange', 'heatRange', FALSE, 'i');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (3, 'PRODUCT', 'defaultSku.retailPrice', 'price', FALSE, 'p');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, TRANSLATABLE, FACET_FIELD_TYPE) VALUES (4, 'PRODUCT', 'defaultSku.name', 'name', TRUE, TRUE, 's');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (5, 'PRODUCT', 'model', 'model', TRUE, 's');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, TRANSLATABLE) VALUES (6, 'PRODUCT', 'defaultSku.description', 'desc', TRUE, TRUE);
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, TRANSLATABLE) VALUES (7, 'PRODUCT', 'defaultSku.longDescription', 'ldesc', TRUE, TRUE);
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, FRIENDLY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (8, 'PRODUCT', 'productOptionValuesMap(COLOR)', 'Color', 'color', TRUE, 'ss');

INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (1, 't');
-- Note that we are don't search on heat range
-- Note that we are don't search on price
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (4, 't');
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (5, 't');
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (6, 't');
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (7, 't');
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (8, 'ss');

INSERT INTO BLC_SEARCH_FACET (SEARCH_FACET_ID, FIELD_ID, LABEL, SHOW_ON_SEARCH, MULTISELECT, SEARCH_DISPLAY_PRIORITY) VALUES (1, 1, 'Manufacturer', FALSE, TRUE, 0);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (1, 2002, 1, 1);

INSERT INTO BLC_SEARCH_FACET (SEARCH_FACET_ID, FIELD_ID, LABEL, SHOW_ON_SEARCH, MULTISELECT, SEARCH_DISPLAY_PRIORITY) VALUES (2, 2, 'Heat Range', FALSE, TRUE, 0);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (2, 2002, 2, 2);

INSERT INTO BLC_SEARCH_FACET (SEARCH_FACET_ID, FIELD_ID, LABEL, SHOW_ON_SEARCH, MULTISELECT, SEARCH_DISPLAY_PRIORITY) VALUES (4, 8, 'Color', TRUE, TRUE, 0);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (4,2003, 4, 1);

INSERT INTO BLC_SEARCH_FACET (SEARCH_FACET_ID, FIELD_ID, LABEL, SHOW_ON_SEARCH, MULTISELECT, SEARCH_DISPLAY_PRIORITY) VALUES (3, 3, 'Price', TRUE, TRUE, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (5, 2002, 3, 3);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (6, 2003, 3, 3);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (7, 2004, 3, 3);

INSERT INTO BLC_SEARCH_FACET_RANGE (SEARCH_FACET_RANGE_ID, SEARCH_FACET_ID, MIN_VALUE, MAX_VALUE) VALUES (1, 3, 0, 5000);
INSERT INTO BLC_SEARCH_FACET_RANGE (SEARCH_FACET_RANGE_ID, SEARCH_FACET_ID, MIN_VALUE, MAX_VALUE) VALUES (2, 3, 5000, 20000);
INSERT INTO BLC_SEARCH_FACET_RANGE (SEARCH_FACET_RANGE_ID, SEARCH_FACET_ID, MIN_VALUE, MAX_VALUE) VALUES (3, 3, 20000, 50000);
INSERT INTO BLC_SEARCH_FACET_RANGE (SEARCH_FACET_RANGE_ID, SEARCH_FACET_ID, MIN_VALUE, MAX_VALUE) VALUES (4, 3, 50000, null);

------------------------------------------------------------------------------------------------------------------
-- Inserting products manually involves five steps which are outlined below.   Typically, products are loaded 
-- up front in the project and then managed via the Broadleaf Commerce admin.   
--
-- Loading through this script is a convenient way to get started when prototyping and can be useful in development
-- as a way to share data-setup without requiring a shared DB connection. 
------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 1:  Create the products
-- =============================================
-- In this step, we are also populating the manufacturer for the product
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1,'/store/consumer/sudden_death_sauce','Blair''s',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (2,'/store/consumer/sweet_death_sauce','Blair''s',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (3,'/store/consumer/hoppin_hot_sauce','Salsa Express',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (4,'/store/consumer/day_of_the_dead_chipotle_hot_sauce','Spice Exchange',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (5,'/store/consumer/day_of_the_dead_habanero_hot_sauce','Spice Exchange',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (6,'/store/consumer/day_of_the_dead_scotch_bonnet_sauce','Spice Exchange',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (7,'/store/consumer/green_ghost','Garden Row',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (8,'/store/consumer/blazin_saddle_hot_habanero_pepper_sauce','D. L. Jardine''s',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (9,'/store/consumer/armageddon_hot_sauce_to_end_all','Figueroa Brothers',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (10,'/store/consumer/dr_chilemeisters_insane_hot_sauce','Figueroa Brothers',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (11,'/store/consumer/bull_snort_cowboy_cayenne_pepper_hot_sauce','Brazos Legends',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (12,'/store/consumer/cafe_louisiane_sweet_cajun_blackening_sauce','Garden Row',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (13,'/store/consumer/bull_snort_smokin_toncils_hot_sauce','Brazos Legends',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (14,'/store/consumer/cool_cayenne_pepper_hot_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (15,'/store/consumer/roasted_garlic_hot_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (16,'/store/consumer/scotch_bonnet_hot_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (17,'/store/consumer/insanity_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (18,'/store/consumer/hurtin_jalepeno_hot_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (19,'/store/consumer/roasted_red_pepper_chipotle_hot_sauce','Dave''s Gourmet',FALSE);

-- Merchandise (products with options)
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (100,'/store/commercial/hawt_like_a_habanero_mens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (200,'/store/commercial/hawt_like_a_habanero_womens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (300,'/store/commercial/heat_clinic_hand-drawn_mens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (400,'/store/commercial/heat_clinic_hand-drawn_womens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (500,'/store/commercial/heat_clinic_mascot_mens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (600,'/store/commercial/heat_clinic_mascot_womens','The Heat Clinic',FALSE);

-- Bundles
INSERT INTO BLC_PRODUCT (PRODUCT_ID,ARCHIVED,CAN_SELL_WITHOUT_OPTIONS,DISPLAY_TEMPLATE,IS_FEATURED_PRODUCT,MANUFACTURE,MODEL,URL,URL_KEY) VALUES (992,'N',false,null,false,null,null,'/bundle1',null);
INSERT INTO BLC_PRODUCT_BUNDLE (AUTO_BUNDLE,BUNDLE_PROMOTABLE,ITEMS_PROMOTABLE,PRICING_MODEL,BUNDLE_PRIORITY,PRODUCT_ID) VALUES (false,false,false,'ITEM_SUM',99,992);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,ARCHIVED,CAN_SELL_WITHOUT_OPTIONS,DISPLAY_TEMPLATE,IS_FEATURED_PRODUCT,MANUFACTURE,MODEL,URL,URL_KEY) VALUES (993,'N',false,null,false,null,null,'/bundle2',null);
INSERT INTO BLC_PRODUCT_BUNDLE (AUTO_BUNDLE,BUNDLE_PROMOTABLE,ITEMS_PROMOTABLE,PRICING_MODEL,BUNDLE_PRIORITY,PRODUCT_ID) VALUES (false,false,false,'BUNDLE',99,993);



------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 2:  Create "default" SKUs
-- =============================================
-- The Broadleaf Commerce product model is setup such that every product has a default SKU.   For many products,
-- a product only has one SKU.    SKUs hold the pricing information for the product and are the actual entity
-- that is added to the cart.    Inventory, Pricing, and Fulfillment concerns are done at the SKU level
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1,1,'Tata Solar Diva 5L - Portable Lighting System (Lantern)','Tata is a brand synonymous to trust, quality, efficiency and innovation. It has pioneered highly innovative and sophisticated products in many sectors. Tata power solar system is another TATA venture committed to make solar energy an inseparable part of our lives. The Tata power solar lighting system is an amazing product which will not only brighten up your life but will also save lot of energy and money for you. Easy and compatible use of solar energy is a concrete step in the direction of saving non renewable sources of energy. Order this lighting system from Snapdeal to get the best deals and best price offered by none other in the market. This emergency light comes with a warranty of 1 year on any manufacturing defect.',1555,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (2,2,'Tata Solar Sunjeevini - 300 Solar Inverter','<p>SunJeevini range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.</p><p>SunJeevini consists of solar panels and a charge controller. This comes with in-built solar priority which harness maximum solar energy and save grid electricity charges.</p><p>SunJeevini 300 model can be used with inverter rating of 1000 VA and battery capacity of 75-120 x 2 Ah. SunJeevini 300 model can generate 1065 Wh energy which typically supports equivalent loads of 1 Computer (1 x 200 W), 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 2 Ceiling fans (2 x 80 W) for 2.5 hours. Energy generated from the system depends upon battery and inverter efficiency.</p>',69999,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (3,3,'Tata Solar Dynamo 1100 (Power Pack) Solar Inverter','<p>Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.</p><p>Dynamo 1100 replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.</p><p>Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100 does not come with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement), however customer has an option to buy the system with structure and Installation kit (Dynamo 1100K).</p><p>PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.</p><p>Dynamo 1100 comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100 requires less than 100 sq. ft. area for installing PV modules.</p>',459999,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (4,4,'Tata Solar Sunjeevini - 80 Solar Inverter','<p>SunJeevini range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.</p><p>SunJeevini consists of solar panels and a charge controller. This comes with in-built solar priority which harness maximum solar energy and save grid electricity charges.</p><p>SunJeevini - 80 model can be used with inverter rating of 300 VA and battery capacity of 40-60 Ah. SunJeevini – 80 model can generate 280 Wh energy which typically supports 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 1 Ceiling fan (1 x 80 W) for 2 hours. Energy generated from the system depends upon battery and inverter efficiency.</p>',14500,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (5,5,'The Tata power solar lighting','The Tata power solar lighting system has emergency light with solar panel. These solar power panels are of less than 1 watt power. These solar panels trap the energy from sun to harness it into electrical energy using a transformer. Electrical energy produced in by the transformer is the stored in the batteries and used for lighting purpose. Now you don’t have to depend on grid supply or kerosene for charging or lighting of bulb at the time of emergency. Ergonomic design of the solar panels makes maximum utilization of sunlight available to it.',1500,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (6,6,'Solar Power Generators','<p>Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.</p><p>Dynamo 1100+ replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.</p><p>Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100+ does not come with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement), however customer has an option to buy the system with structure and Installation kit (Dynamo 1100K+).</p><p>PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.</p><p>Dynamo 1100+ comes with 4 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 8 hours. Dynamo 1100+ requires less than 100 sq. ft. area for installing PV modules.</p>',459599,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (7,7,'Oorja Jumbo K30 lx','Power is required to run almost everything in our homes. Since our planet is being harmed due to the great amounts of pollution caused by rapid urbanization and industrialisation, it’s high time we started moving towards economical and environment-friendly means of energy sources. The trusted brand of Tata Power introduces these ideally designed solar panels. It comes in an adequate dimension and size. Now the Tata Power Solar solar panels are available at amazing price through Snapdeal! Add them to your household and help save this planet!',5000,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (8,8,'Oorja k32','24V-30A hybrid solar charger. Power your home for upto 3 hours with sunjeevini, a retro-fit hybrid solar charge controller with plug-n-play design. Run your house or small business with reduced electricity costs, uninterrupted power by recharging your inverters with free power from the sun.',6500,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (9,9,'Oorja k31','<p>Solar street lantern from TPS consists of a 10W solar module with a 7W CFL and a 7AH sealed lead acid maintenance free battery.The product is easily installable. It gives a light output for 5 hours continuously from a single day''s charge.</p><p>The light output from the luminaire is 370 lumens which is sufficient to brighten up the entire hallThe improved electronics which minimizes the idle current and gives increased efficiency ensures that the battery is charged efficiently and maximum back up is available for the light output.The various protections for battery charging reverse current, no load and short circuit ensures that the product is safe, reliable and long lasting</p>',5200,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (10,10,'Oorja k33','A 200 lpd capacity system is sufficient for a family of 6-8 members',16500,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (11,11,'Oorja Pallets','<p>Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.</p><p>Dynamo 1100K replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.</p><p>Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100K is available with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement).</p><p>PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.</p><p.>Dynamo 1100K comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100K requires less than 100 sq. ft. area for installing PV modules.</p>',459780,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (12,12,'Biomass Real','<p>Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.</p><p>Dynamo 1100K replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.</p><p>Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100K is available with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement).</p><p>PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.</p><p.>Dynamo 1100K comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100K requires less than 100 sq. ft. area for installing PV modules.</p>',459780,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (13,13,'Bio Cook','<p>Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.</p><p>Dynamo 1100K replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.</p><p>Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100K is available with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement).</p><p>PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.</p><p.>Dynamo 1100K comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100K requires less than 100 sq. ft. area for installing PV modules.</p>',459780,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (14,14,'Recold Cooker','<p>Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.</p><p>Dynamo 1100K replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.</p><p>Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100K is available with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement).</p><p>PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.</p><p.>Dynamo 1100K comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100K requires less than 100 sq. ft. area for installing PV modules.</p>',459780,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (15,15,'Sonata Stove','The Tata power solar lighting system has emergency light with solar panel. These solar power panels are of less than 1 watt power. These solar panels trap the energy from sun to harness it into electrical energy using a transformer. Electrical energy produced in by the transformer is the stored in the batteries and used for lighting purpose. Now you don’t have to depend on grid supply or kerosene for charging or lighting of bulb at the time of emergency. Ergonomic design of the solar panels makes maximum utilization of sunlight available to it.',1500,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (16,16,'Tata Solar Diva 5L - Portable Lighting System (Lantern)','Tata is a brand synonymous to trust, quality, efficiency and innovation. It has pioneered highly innovative and sophisticated products in many sectors. Tata power solar system is another TATA venture committed to make solar energy an inseparable part of our lives. The Tata power solar lighting system is an amazing product which will not only brighten up your life but will also save lot of energy and money for you. Easy and compatible use of solar energy is a concrete step in the direction of saving non renewable sources of energy. Order this lighting system from Snapdeal to get the best deals and best price offered by none other in the market. This emergency light comes with a warranty of 1 year on any manufacturing defect.',1555,'Y','Y',CURRENT_TIMESTAMP);

--bundle1 Skus
INSERT INTO BLC_SKU (SKU_ID,ACTIVE_END_DATE,ACTIVE_START_DATE,AVAILABLE_FLAG,DESCRIPTION,CONTAINER_SHAPE,DEPTH,DIMENSION_UNIT_OF_MEASURE,GIRTH,HEIGHT,CONTAINER_SIZE,WIDTH,DISCOUNTABLE_FLAG,FULFILLMENT_TYPE,INVENTORY_TYPE,IS_MACHINE_SORTABLE,LONG_DESCRIPTION,NAME,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,WEIGHT,WEIGHT_UNIT_OF_MEASURE,DEFAULT_PRODUCT_ID) VALUES (9992,{ts '2099-04-05 00:00:00'},{ts '2001-02-24 00:00:00'},null,null,null,null,null,null,null,null,null,null,null,null,true,null,'bundle1',13,3,null,null,null,992);
INSERT INTO BLC_SKU_BUNDLE_ITEM (SKU_BUNDLE_ITEM_ID,ITEM_SALE_PRICE,QUANTITY,PRODUCT_BUNDLE_ID,SKU_ID) VALUES (-100,null,1,992,1);
INSERT INTO BLC_SKU_BUNDLE_ITEM (SKU_BUNDLE_ITEM_ID,ITEM_SALE_PRICE,QUANTITY,PRODUCT_BUNDLE_ID,SKU_ID) VALUES (-101,null,1,992,2);

---bundle2 Skus
INSERT INTO BLC_SKU (SKU_ID,ACTIVE_END_DATE,ACTIVE_START_DATE,AVAILABLE_FLAG,DESCRIPTION,CONTAINER_SHAPE,DEPTH,DIMENSION_UNIT_OF_MEASURE,GIRTH,HEIGHT,CONTAINER_SIZE,WIDTH,DISCOUNTABLE_FLAG,FULFILLMENT_TYPE,INVENTORY_TYPE,IS_MACHINE_SORTABLE,LONG_DESCRIPTION,NAME,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,WEIGHT,WEIGHT_UNIT_OF_MEASURE,DEFAULT_PRODUCT_ID) VALUES (9993,{ts '2099-01-06 00:00:00'},{ts '2001-02-24 00:00:00'},null,null,null,null,null,null,null,null,null,null,null,null,true,null,'bundle2',12.00,2.00,null,null,null,993);
INSERT INTO BLC_SKU_BUNDLE_ITEM (SKU_BUNDLE_ITEM_ID,ITEM_SALE_PRICE,QUANTITY,PRODUCT_BUNDLE_ID,SKU_ID) VALUES (-102,null,1,993,1);
INSERT INTO BLC_SKU_BUNDLE_ITEM (SKU_BUNDLE_ITEM_ID,ITEM_SALE_PRICE,QUANTITY,PRODUCT_BUNDLE_ID,SKU_ID) VALUES (-103,null,1,993,2);

------------------------------------------------------------------------------------------------------------------
-- Give some of the SKUs a sale price
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (17,17,'Insanity Sauce','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',5.99,4.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (18,18,'Hurtin'' Jalepeno Hot Sauce','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',5.99,4.49,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (19,19,'Roasted Red Pepper & Chipotle Hot Sauce','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',5.99,4.09,'Y','Y',CURRENT_TIMESTAMP);

------------------------------------------------------------------------------------------------------------------
-- Some SKUs (such as merchandise) may be product options based on one product. For example, there may be a 
-- "Men's Hand drawn Heat Clinic Shirt" product that has up to 12 SKUs showing the options of 
-- Red/Black/Silver, and Small/Medium/Large/X-Large
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_PRODUCT_OPTION (PRODUCT_OPTION_ID, OPTION_TYPE, ATTRIBUTE_NAME, LABEL, REQUIRED) VALUES (1, 'COLOR', 'COLOR', 'Shirt Color', TRUE);
INSERT INTO BLC_PRODUCT_OPTION (PRODUCT_OPTION_ID, OPTION_TYPE, ATTRIBUTE_NAME, LABEL, REQUIRED) VALUES (2, 'SIZE', 'SIZE', 'Shirt Size', TRUE);
INSERT INTO BLC_PRODUCT_OPTION (PRODUCT_OPTION_ID, OPTION_TYPE, ATTRIBUTE_NAME, LABEL, REQUIRED,USE_IN_SKU_GENERATION,VALIDATION_TYPE,VALIDATION_STRING,ERROR_MESSAGE,ERROR_CODE) VALUES (3, 'TEXT', 'NAME', 'Personalized Name', FALSE,FALSE,'REGEX','[a-zA-Z ]{3,30}','Name must be less than 30 characters, with only letters and spaces','INVALID_NAME');

INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (1, 'Black', 1, 1);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (2, 'Red', 2, 1);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (3, 'Silver', 3, 1);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (11, 'S', 1, 2);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (12, 'M', 2, 2);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (13, 'L', 3, 2);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (14, 'XL', 4, 2);

INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (100,100,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (200,200,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (300,300,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (400,400,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (500,500,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (600,600,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','Y',CURRENT_TIMESTAMP);

------------------------------------------------------------------------------------------------------------------
-- Update the DEFAULT_SKU_ID on the products
------------------------------------------------------------------------------------------------------------------
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1 WHERE PRODUCT_ID = 1;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 2 WHERE PRODUCT_ID = 2;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 3 WHERE PRODUCT_ID = 3;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 4 WHERE PRODUCT_ID = 4;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 5 WHERE PRODUCT_ID = 5;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 6 WHERE PRODUCT_ID = 6;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 7 WHERE PRODUCT_ID = 7;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 8 WHERE PRODUCT_ID = 8;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 9 WHERE PRODUCT_ID = 9;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 10 WHERE PRODUCT_ID = 10;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 11 WHERE PRODUCT_ID = 11;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 12 WHERE PRODUCT_ID = 12;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 13 WHERE PRODUCT_ID = 13;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 14 WHERE PRODUCT_ID = 14;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 15 WHERE PRODUCT_ID = 15;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 16 WHERE PRODUCT_ID = 16;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 17 WHERE PRODUCT_ID = 17;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 18 WHERE PRODUCT_ID = 18;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 19 WHERE PRODUCT_ID = 19;

UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 9992 WHERE PRODUCT_ID = 992;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 9993 WHERE PRODUCT_ID = 993;

UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 100 WHERE PRODUCT_ID = 100;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 200 WHERE PRODUCT_ID = 200;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 300 WHERE PRODUCT_ID = 300;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 400 WHERE PRODUCT_ID = 400;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 500 WHERE PRODUCT_ID = 500;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 600 WHERE PRODUCT_ID = 600;

------------------------------------------------------------------------------------------------------------------
-- Create non-default SKUs for some merchandise. In this case, we're stating that all XL shirts are $1.00 more
-- All other combinations have no special properties, but we must create them so we can track inventory on a 
-- per-SKU level. Generally, either you have only a default SKU or SKUs for all permutations of product options
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (114,100,16.99,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Y','/black_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (124,100,16.99,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Y','/red_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (134,100,16.99,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Y','/silver_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (214,200,16.99,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Y','/black_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (224,200,16.99,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Y','/red_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (234,200,16.99,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Y','/silver_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (314,300,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors','Y','/black_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (324,300,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors','Y','/red_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (334,300,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors','Y','/silver_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (414,400,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors','Y','/black_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (424,400,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors','Y','/red_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (434,400,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors','Y','/silver_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (514,500,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!','Y','/black_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (524,500,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!','Y','/red_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (534,500,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!','Y','/silver_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (614,600,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!','Y','/black_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (624,600,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!','Y','/red_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,TAXABLE_FLAG,URL_KEY) VALUES (634,600,16.99,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!','Y','/silver_xl');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (111,100,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/black_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (112,100,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/black_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (113,100,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/black_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (121,100,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/red_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (122,100,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/red_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (123,100,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/red_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (131,100,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/silver_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (132,100,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/silver_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (133,100,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/silver_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (211,200,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/black_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (212,200,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/black_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (213,200,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/black_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (221,200,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/red_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (222,200,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/red_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (223,200,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/red_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (231,200,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/silver_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (232,200,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/silver_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (233,200,'Y',CURRENT_TIMESTAMP,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','/silver_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (311,300,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','/black_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (312,300,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','/black_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (313,300,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','/black_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (321,300,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','/red_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (322,300,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','/red_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (323,300,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','/red_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (331,300,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','/silver_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (332,300,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','/silver_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (333,300,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','/silver_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (411,400,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','/black_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (412,400,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','/black_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (413,400,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','/black_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (421,400,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','/red_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (422,400,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','/red_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (423,400,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','/red_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (431,400,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','/silver_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (432,400,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','/silver_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (433,400,'Y',CURRENT_TIMESTAMP,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','/silver_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (511,500,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/black_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (512,500,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/black_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (513,500,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/black_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (521,500,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/red_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (522,500,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/red_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (523,500,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/red_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (531,500,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/silver_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (532,500,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/silver_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (533,500,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/silver_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (611,600,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/black_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (612,600,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/black_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (613,600,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/black_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (621,600,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/red_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (622,600,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/red_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (623,600,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/red_l');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (631,600,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/silver_s');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (632,600,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/silver_m');
INSERT INTO BLC_SKU (SKU_ID,ADDL_PRODUCT_ID,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,URL_KEY) VALUES (633,600,'Y',CURRENT_TIMESTAMP,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','/silver_l');

------------------------------------------------------------------------------------------------------------------
-- Associate the appropriate option values for the skus
------------------------------------------------------------------------------------------------------------------

INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (1, 111, 1), (2, 111, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (3, 112, 1), (4, 112, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (5, 113, 1), (6, 113, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (7, 114, 1), (8, 114, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (9, 121, 2), (10, 121, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (11, 122, 2), (12, 122, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (13, 123, 2), (14, 123, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (15, 124, 2), (16, 124, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (17, 131, 3), (18, 131, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (19, 132, 3), (20, 132, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (21, 133, 3), (22, 133, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (23, 134, 3), (24, 134, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (25, 211, 1), (26, 211, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (27, 212, 1), (28, 212, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (29, 213, 1), (30, 213, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (31, 214, 1), (32, 214, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (33, 221, 2), (34, 221, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (35, 222, 2), (36, 222, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (37, 223, 2), (38, 223, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (39, 224, 2), (40, 224, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (41, 231, 3), (42, 231, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (43, 232, 3), (44, 232, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (45, 233, 3), (46, 233, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (47, 234, 3), (48, 234, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (49, 311, 1), (50, 311, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (51, 312, 1), (52, 312, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (53, 313, 1), (54, 313, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (55, 314, 1), (56, 314, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (57, 321, 2), (58, 321, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (59, 322, 2), (60, 322, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (61, 323, 2), (62, 323, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (63, 324, 2), (64, 324, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (65, 331, 3), (66, 331, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (67, 332, 3), (68, 332, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (69, 333, 3), (70, 333, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (71, 334, 3), (72, 334, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (73, 411, 1), (74, 411, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (75, 412, 1), (76, 412, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (77, 413, 1), (78, 413, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (79, 414, 1), (80, 414, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (81, 421, 2), (82, 421, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (83, 422, 2), (84, 422, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (85, 423, 2), (86, 423, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (87, 424, 2), (88, 424, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (89, 431, 3), (90, 431, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (91, 432, 3), (92, 432, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (93, 433, 3), (94, 433, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (95, 434, 3), (96, 434, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (97, 511, 1), (98, 511, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (99, 512, 1), (100, 512, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (101, 513, 1), (102, 513, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (103, 514, 1), (104, 514, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (105, 521, 2), (106, 521, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (107, 522, 2), (108, 522, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (109, 523, 2), (110, 523, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (111, 524, 2), (112, 524, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (113, 531, 3), (114, 531, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (115, 532, 3), (116, 532, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (117, 533, 3), (118, 533, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (119, 534, 3), (120, 534, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (121, 611, 1), (122, 611, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (123, 612, 1), (124, 612, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (125, 613, 1), (126, 613, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (127, 614, 1), (128, 614, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (129, 621, 2), (130, 621, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (131, 622, 2), (132, 622, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (133, 623, 2), (134, 623, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (135, 624, 2), (136, 624, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (137, 631, 3), (138, 631, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (139, 632, 3), (140, 632, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (141, 633, 3), (142, 633, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_OPTION_VALUE_XREF_ID, SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (143, 634, 3), (144, 634, 14);

------------------------------------------------------------------------------------------------------------------
-- Add some heat levels to all the products
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (1, 1, 'heatRange', 4);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (2, 2, 'heatRange', 1);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (3, 3, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (4, 4, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (5, 5, 'heatRange', 4);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (6, 6, 'heatRange', 4);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (7, 7, 'heatRange', 3);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (8, 8, 'heatRange', 4);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (9, 9, 'heatRange', 5);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (10, 10, 'heatRange', 5);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (11, 11, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (12, 12, 'heatRange', 1);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (13, 13, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (14, 14, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (15, 15, 'heatRange', 1);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (16, 16, 'heatRange', 3);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (17, 17, 'heatRange', 5);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (18, 18, 'heatRange', 3);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (19, 19, 'heatRange', 1);

------------------------------------------------------------------------------------------------------------------
-- Add some heat levels to all the hot sauce skus
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (1, 1, 'heatRange', 4);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (2, 2, 'heatRange', 1);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (3, 3, 'heatRange', 2);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (4, 4, 'heatRange', 2);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (5, 5, 'heatRange', 4);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (6, 6, 'heatRange', 4);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (7, 7, 'heatRange', 3);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (8, 8, 'heatRange', 4);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (9, 9, 'heatRange', 5);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (10, 10, 'heatRange', 5);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (11, 11, 'heatRange', 2);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (12, 12, 'heatRange', 1);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (13, 13, 'heatRange', 2);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (14, 14, 'heatRange', 2);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (15, 15, 'heatRange', 1);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (16, 16, 'heatRange', 3);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (17, 17, 'heatRange', 5);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (18, 18, 'heatRange', 3);
INSERT INTO BLC_SKU_ATTRIBUTE (SKU_ATTR_ID, SKU_ID, NAME, VALUE) VALUES (19, 19, 'heatRange', 1);

------------------------------------------------------------------------------------------------------------------
-- Associate the merchandise products with their appropriate available product options
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (1, 1, 100);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (2, 1, 200);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (3, 1, 300);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (4, 1, 400);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (5, 1, 500);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (6, 1, 600);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (7, 2, 100);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (8, 2, 200);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (9, 2, 300);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (10, 2, 400);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (11, 2, 500);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (12, 2, 600);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_XREF_ID, PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (13, 3, 100);

------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 3:  Create Category/Product Mapping
-- ========================================================
-- Add all hot-sauce items to the hot-sauce category
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (1,1,2002,1,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (2,2,2002,2,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (3,3,2002,3,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (4,4,2002,4,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (5,5,2002,5,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (6,6,2002,6,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (7,7,2002,7,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (8,8,2002,8,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (9,9,2002,9,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (10,10,2002,10,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (11,11,2002,11,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (12,12,2002,12,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (13,13,2002,13,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (14,14,2002,14,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (15,15,2002,15,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (16,16,2002,16,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (17,17,2002,17,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (18,18,2002,18,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (19,19,2002,19,TRUE);

-- home page items
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (20,3,2001,1);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (21,6,2001,2);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (22,9,2001,3);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (23,12,2001,4);

-- clearance items
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (24,7,2004,1);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (25,8,2004,2);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (26,10,2004,3);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (27,11,2004,4);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (28,18,2004,5);

-- merchandise items
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (29,100,2003,1,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (30,200,2003,2,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (31,300,2003,3,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (32,400,2003,4,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (33,500,2003,5,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (34,600,2003,6,TRUE);

-- Submenu merchandise items
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (35,100,2007,1);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (36,200,2008,1);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (37,300,2007,2);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (38,400,2008,2);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (39,500,2007,3);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (40,600,2008,3);


------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 4:  Media Items used by products
-- ========================================================
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (101,'/cmsstatic/images/store/solar/solar_led.jpg','Solar Power LED','Solar Power LED');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (102,'/cmsstatic/images/store/solar/Tata-Solar-Sunjeevini-300-Solar.jpg','Solar-Sunjeevini','Solar-Sunjeevini');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (201,'/cmsstatic/images/store/solar/Tata-Solar-Dynamo-1100-Power.jpg','Sola Dynamo 1100','Sola Dynamo 1100');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (202,'/cmsstatic/images/store/solar/Tata-Solar-Sunjeevini-80-Solar.jpg','Solar-Sunjeevini-80','Solar-Sunjeevini-80');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (203,'/cmsstatic/images/store/solar/Tata-Power-Solar-Systems-Diva.jpg','Tata-Power-Solar-Systems-Diva','Tata-Power-Solar-Systems-Diva');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (204,'/cmsstatic/images/store/solar/Microtek-solar-inverter.jpg','Microtek Solar Inverter','Microtek Solar Inverter');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (205,'/cmsstatic/images/store/solar/solar_battery.jpg','solar solar-panel-250x250','solar solar-panel-250x250');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (206,'/cmsstatic/images/store/solar/solar_pv_controller.jpg','solar_pv_controller','solar_pv_controller');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (301,'/cmsstatic/images/store/solar/solar_street_light.jpg','solar_street_light','solar_street_light');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (302,'/cmsstatic/images/store/solar/solar_water_heater.jpg','solar_water_heater','solar_water_heater');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (401,'/cmsstatic/images/store/solar/Tata-Power-Solar-Tata-Power.jpg','Tata-Power-Solar-Tata-Power','Tata-Power-Solar-Tata-Power');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (402,'/cmsstatic/images/store/solar/Tata-Solar-Dynamo-1101-Power.jpg','Tata-Solar-Dynamo-1101-Power','Tata-Solar-Dynamo-1101-Power');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (501,'/cmsstatic/images/store/solar/TATA-Power-Solar-Solar-Module.jpg','TATA-Power-Solar-Solar-Module','TATA-Power-Solar-Solar-Module');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (502,'/cmsstatic/images/store/solar/Tata-Power-Solar-TATA-Power.jpg','Tata-Power-Solar-TATA-Power','Tata-Power-Solar-TATA-Power');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (601,'/cmsstatic/images/store/solar/Tata-Power-Solar-TATA-Power.jpg','Tata-Power-Solar-TATA-Power','Tata-Power-Solar-TATA-Power');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (602,'/cmsstatic/images/store/biomass/Oorja-Jumbo-K30-dlx.jpg','Oorja-Jumbo-K30-dlx','Oorja-Jumbo-K30-dlx');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (701,'/cmsstatic/images/store/biomass/oorja_k32.jpg','oorja_k32','oorja_k32');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (702,'/cmsstatic/images/store/biomass/orrja_k31.jpg','orrja_k31','orrja_k31');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (801,'/cmsstatic/images/store/biomass/orrja_k33.jpg','orrja_k33','orrja_k33');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (802,'/cmsstatic/images/store/biomass/pallets.jpg','pallets','pallets');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (901,'/cmsstatic/images/store/biomass/biomass_pic-s2100.jpg','biomass_pic-s2100','biomass_pic-s2100');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (902,'/cmsstatic/images/store/biomass/bio_cook1.jpg','bio_cook1','bio_cook1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1001,'/cmsstatic/images/store/biomass/bio_cook2.jpg','bio_cook2','bio_cook2');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1002,'/cmsstatic/images/store/biomass/bio_cook3.jpg','bio_cook3.jpg','bio_cook3.jpg');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1101,'/cmsstatic/images/store/biomass/cook_stove1.jpg','cook_stove1','cook_stove1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1102,'/cmsstatic/images/store/biomass/bio_cooker1.jpg','bio_cooker1.','bio_cooker1.');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1201,'/cmsstatic/images/store/solar/dream_water_heater1.jpg','dream_water_heater1','dream_water_heater1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1202,'/cmsstatic/images/store/solar/water_heater1.jpg','water_heater1','water_heater1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1301,'/cmsstatic/images/store/solar/inhabitat_water.jpg','inhabitat_water','inhabitat_water');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1302,'/cmsstatic/images/store/solar/unido_waterheater.jpg','unido_waterheater','unido_waterheater');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1401,'/cmsstatic/images/store/kinetic/mobile_charger1.jpg','mobile_charger1','mobile_charger1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1402,'/cmsstatic/images/store/kinetic/run_machine.jpg','run_machine','run_machine');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1501,'/cmsstatic/images/store/kinetic/bag_kit.jpg','bag_kit.jpg','bag_kit.jpg');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1502,'/cmsstatic/images/store/kinetic/cycle_dynamo.jpg','cycle_dynamo.jpg','cycle_dynamo.jpg');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1601,'/cmsstatic/images/store/kinetic/portable_radio.jpg','portable_radio','portable_radio');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1602,'/cmsstatic/images/store/solar/solar_charger.jpg','solar_charger','solar_charger');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1701,'/cmsstatic/images/store/solar/solar_dream_power1.jpg','solar_dream_power1','solar_dream_power1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1702,'/cmsstatic/images/store/solar/powerbank.jpg','powerbank','powerbank');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1801,'/cmsstatic/images/store/wind/wind_airoplane.jpg','wind_airoplane','wind_airoplane');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1802,'/cmsstatic/images/store/wind/wind_blower.jpg','wind_blower','wind_blower');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1901,'/cmsstatic/images/store/wind/wind_top_tower.jpg','wind_top_tower','wind_top_tower');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1902,'/cmsstatic/images/store/wind/wind_35_kva.jpg','wind_35_kva','wind_35_kva');

INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (10001,'/cmsstatic/images/store/tools/plug-in-power-monitor.jpg','Plug in Power Monitor','primary','Black');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (10002,'/cmsstatic/images/store/tools/envir-wireless-home-energy-electricity-monitor.jpg','Wireless Home Energy Monitor','primary','Red');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (10003,'/cmsstatic/images/store/solar/solar_fan.jpg','Solar Driven Fan','primary','Silver');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (20001,'/cmsstatic/images/store/solar/bag_solar_charger.jpg','Bag with Solar Charger','primary','Black');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (20002,'/cmsstatic/images/store/solar/solar-powered-mobile-charger-with-torch.jpg','Solar Powered Mobile Charger with Torch','primary','Red');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (20003,'/cmsstatic/images/store/solar/water_heater.jpg','Roof top water heater','primary','Silver');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (30001,'/cmsstatic/images/store/hydro/Micro-Hydro-Power-Dual-Nozzle.jpg','Micro Hydro Power Generators','primary', 'Black');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (30002,'/cmsstatic/images/store/biomass/greenway_stove.jpg','Greenway Stoves','primary', 'Red');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (30003,'/cmsstatic/images/store/biomass/CampStove_1.jpg','Camp Stoves','primary', 'Silver');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (40001,'/cmsstatic/images/store/kinetic/spin-bike-generator-power-system_emergency-dynamo.jpg','Spin Bike Power Generator','primary', 'Black');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (40002,'/cmsstatic/images/store/biomass/HomeBiogas3-1020x610.jpg','Home Bio gas','primary', 'Red');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (40003,'/cmsstatic/images/store/biomass/biostoves.jpg','Bio Stoves','primary', 'Silver');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (50001,'/cmsstatic/images/store/biomass/biogas-stoves.jpg','Portable Bio Gas Stoves','primary', 'Black');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (50002,'/cmsstatic/images/store/solar/solar_powered_cap_lights.jpg','Solar Powered Cap Lights','primary', 'Red');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (50003,'/cmsstatic/images/store/solar/solarradio.jpg','Solar Powered radio','primary', 'Silver');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (60001,'/cmsstatic/images/store/kinetic/StreetMachine-solar-fairing-7936.jpg','Solar Kinetic cycle combo','primary', 'Black');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (60002,'/cmsstatic/images/store/wind/Residential_Wind_Turbine_Netherlands.jpg','Wind turnbines for residence','primary', 'Red');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (60003,'/cmsstatic/images/store/wind/The-Archimedes-Liam.jpg','Liam Wind Power Generator','primary', 'Silver');


------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 5:  Mapping for product to media
-- ========================================================
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-100,1,101,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-99,2,201,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-98,3,301,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-97,4,401,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-96,5,501,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-95,6,601,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-94,7,701,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-93,8,801,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-92,9,901,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-91,10,1001,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-90,11,1101,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-89,12,1201,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-88,13,1301,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-87,14,1401,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-86,15,1501,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-85,16,1601,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-84,17,1701,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-83,18,1801,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-82,19,1901,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-81,1,102,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-80,2,202,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-79,3,302,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-78,4,402,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-77,5,502,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-76,6,602,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-75,7,702,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-74,8,802,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-73,9,902,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-72,10,1002,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-71,11,1102,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-70,12,1202,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-69,13,1302,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-68,14,1402,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-67,15,1502,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-66,16,1602,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-65,17,1702,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-64,18,1802,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-63,19,1902,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-62,2,203,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-61,2,204,'alt3');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-60,2,205,'alt4');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-59,2,206,'alt5');

INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-58,100,10001,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-57,200,20002,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-56,300,30003,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-55,400,40002,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-54,500,50003,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-53,600,60001,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-52,100,10002,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-51,200,20001,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-50,300,30001,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-49,400,40001,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-48,500,50001,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-47,600,60002,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-46,100,10003,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-45,200,20003,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-44,300,30002,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-43,400,40003,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-42,500,50002,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (-41,600,60003,'alt2');

------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 5: Asset Items (media)
-- ========================================================
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (101,'image/jpg','FILESYSTEM','/images/store/solar/solar_led.jpg','Solar Power LED');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (102,'image/jpg','FILESYSTEM','/images/store/solar/Tata-Solar-Sunjeevini-300-Solar.jpg','Solar-Sunjeevini');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (201,'image/jpg','FILESYSTEM','/images/store/solar/Tata-Solar-Dynamo-1100-Power.jpg','Sola Dynamo 1100');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (202,'image/jpg','FILESYSTEM','/images/store/solar/Tata-Solar-Sunjeevini-80-Solar.jpg','Solar-Sunjeevini-80');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (203,'image/jpg','FILESYSTEM','/images/store/solar/Tata-Power-Solar-Systems-Diva.jpg','Tata-Power-Solar-Systems-Diva');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (204,'image/jpg','FILESYSTEM','/images/store/solar/Microtek-solar-inverter.jpg','Microtek Solar Inverter');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (205,'image/jpg','FILESYSTEM','/images/store/solar/solar_battery.jpg','solar solar-panel-250x250');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (301,'image/jpg','FILESYSTEM','/images/store/solar/solar_pv_controller.jpg','solar_pv_controller');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (302,'image/jpg','FILESYSTEM','/images/store/solar/solar_street_light.jpg','solar_street_light');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (401,'image/jpg','FILESYSTEM','/images/store/solar/solar_water_heater.jpg','solar_water_heater');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (402,'image/jpg','FILESYSTEM','/images/store/solar/Tata-Power-Solar-Tata-Power.jpg','Tata-Power-Solar-Tata-Power');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (501,'image/jpg','FILESYSTEM','/images/store/solar/Tata-Solar-Dynamo-1101-Power.jpg','Tata-Solar-Dynamo-1101-Power');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (502,'image/jpg','FILESYSTEM','/images/store/solar/TATA-Power-Solar-Solar-Module.jpg','TATA-Power-Solar-Solar-Module');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (601,'image/jpg','FILESYSTEM','/images/store/solar/Tata-Power-Solar-TATA-Power.jpg','Tata-Power-Solar-TATA-Power');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (602,'image/jpg','FILESYSTEM','/images/store/biomass/Oorja-Jumbo-K30-dlx.jpg','Oorja-Jumbo-K30-dlx');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (701,'image/jpg','FILESYSTEM','/images/store/biomass/oorja_k32.jpg','oorja_k32');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (702,'image/jpg','FILESYSTEM','/images/store/biomass/orrja_k31.jpg','orrja_k31');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (801,'image/jpg','FILESYSTEM','/images/store/biomass/orrja_k33.jpg','orrja_k33');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (802,'image/jpg','FILESYSTEM','/images/store/biomass/pallets.jpg','pallets');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (901,'image/jpg','FILESYSTEM','/images/store/biomass/biomass_pic-s2100.jpg','biomass_pic-s2100');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (902,'image/jpg','FILESYSTEM','/images/store/biomass/bio_cook1.jpg','bio_cook1');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1001,'image/jpg','FILESYSTEM','/images/store/biomass/bio_cook2.jpg','bio_cook2');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1002,'image/jpg','FILESYSTEM','/images/store/biomass/bio_cook3.jpg','bio_cook3.jpg');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1101,'image/jpg','FILESYSTEM','/images/store/biomass/cook_stove1.jpg','cook_stove1');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1102,'image/jpg','FILESYSTEM','/images/store/biomass/bio_cooker1.jpg','bio_cooker1.');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1201,'image/jpg','FILESYSTEM','/images/store/solar/dream_water_heater1.jpg','dream_water_heater1');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1202,'image/jpg','FILESYSTEM','/images/store/solar/water_heater1.jpg','water_heater1');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1301,'image/jpg','FILESYSTEM','/images/store/solar/inhabitat_water.jpg','inhabitat_water');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1302,'image/jpg','FILESYSTEM','/images/store/solar/unido_waterheater.jpg','unido_waterheater');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1401,'image/jpg','FILESYSTEM','/images/store/kinetic/mobile_charger1.jpg','mobile_charger1');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1402,'image/jpg','FILESYSTEM','/images/store/kinetic/run_machine.jpg','run_machine');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1501,'image/jpg','FILESYSTEM','/images/store/kinetic/bag_kit.jpg','bag_kit.jpg');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1502,'image/jpg','FILESYSTEM','/images/store/kinetic/cycle_dynamo.jpg','cycle_dynamo.jpg');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1601,'image/jpg','FILESYSTEM','/images/store/kinetic/portable_radio.jpg','portable_radio');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1602,'image/jpg','FILESYSTEM','/images/store/solar/solar_charger.jpg','solar_charger');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1701,'image/jpg','FILESYSTEM','/images/store/solar/solar_dream_power1.jpg','solar_dream_power1');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1702,'image/jpg','FILESYSTEM','/images/store/solar/powerbank.jpg','powerbank');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1801,'image/jpg','FILESYSTEM','/images/store/wind/wind_airoplane.jpg','wind_airoplane');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1802,'image/jpg','FILESYSTEM','/images/store/wind/wind_blower.jpg','wind_blower');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1901,'image/jpg','FILESYSTEM','/images/store/wind/wind_top_tower.jpg','wind_top_tower');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (1902,'image/jpg','FILESYSTEM','/images/store/wind/wind_35_kva.jpg','wind_35_kva');

INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (10001,'image/jpg','FILESYSTEM','/images/store/tools/plug-in-power-monitor.jpg','Plug in Power Monitor');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (10002,'image/jpg','FILESYSTEM','/images/store/tools/envir-wireless-home-energy-electricity-monitor.jpg','Wireless Home Energy Monitor');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (10003,'image/jpg','FILESYSTEM','/images/store/solar/solar_fan.jpg','Solar Driven Fan');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (20001,'image/jpg','FILESYSTEM','/images/store/solar/bag_solar_charger.jpg','Bag with Solar Charger');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (20002,'image/jpg','FILESYSTEM','/images/store/solar/solar-powered-mobile-charger-with-torch.jpg','Solar Powered Mobile Charger with Torch');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (20003,'image/jpg','FILESYSTEM','/images/store/solar/water_heater.jpg','Roof top water heater');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (30001,'image/jpg','FILESYSTEM','/images/store/hydro/Micro-Hydro-Power-Dual-Nozzle.jpg','Micro Hydro Power Generators');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (30002,'image/jpg','FILESYSTEM','/images/store/biomass/greenway_stove.jpg','Greenway Stoves');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (30003,'image/jpg','FILESYSTEM','/images/store/biomass/CampStove_1.jpg','Camp Stoves');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (40001,'image/jpg','FILESYSTEM','/images/store/kinetic/spin-bike-generator-power-system_emergency-dynamo.jpg','Spin Bike Power Generator');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (40002,'image/jpg','FILESYSTEM','/images/store/biomass/HomeBiogas3-1020x610.jpg','Home Bio gas');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (40003,'image/jpg','FILESYSTEM','/images/store/biomass/biostoves.jpg','Bio Stoves');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (50001,'image/jpg','FILESYSTEM','/images/store/biomass/biogas-stoves.jpg','Portable Bio Gas Stoves');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (50002,'image/jpg','FILESYSTEM','/images/store/solar/solar_powered_cap_lights.jpg','Solar Powered Cap Lights');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (50003,'image/jpg','FILESYSTEM','/images/store/solar/solarradio.jpg','Solar Powered radio');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (60001,'image/jpg','FILESYSTEM','/images/store/kinetic/StreetMachine-solar-fairing-7936.jpg','Solar Kinetic cycle combo');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (60002,'image/jpg','FILESYSTEM','/images/store/wind/Residential_Wind_Turbine_Netherlands.jpg','Wind turnbines for residence');
INSERT INTO BLC_STATIC_ASSET (STATIC_ASSET_ID, MIME_TYPE, STORAGE_TYPE, FULL_URL, NAME) VALUES (60003,'image/jpg','FILESYSTEM','/images/store/wind/The-Archimedes-Liam.jpg','Liam Wind Power Generator');




------------------------------------------------------------------------------------------------------------------
-- End of Catalog load
-- ========================================================
------------------------------------------------------------------------------------------------------------------

INSERT INTO BLC_URL_HANDLER(URL_HANDLER_ID, INCOMING_URL, NEW_URL, URL_REDIRECT_TYPE) VALUES (1, '/googlePerm', 'http://www.google.com', 'REDIRECT_PERM');
INSERT INTO BLC_URL_HANDLER(URL_HANDLER_ID, INCOMING_URL, NEW_URL, URL_REDIRECT_TYPE) VALUES (2, '/googleTemp', 'http://www.google.com', 'REDIRECT_TEMP');
INSERT INTO BLC_URL_HANDLER(URL_HANDLER_ID, INCOMING_URL, NEW_URL, URL_REDIRECT_TYPE) VALUES (3, '/insanity', '/store/consumer/insanity_sauce', 'FORWARD');
INSERT INTO BLC_URL_HANDLER(URL_HANDLER_ID, INCOMING_URL, NEW_URL, URL_REDIRECT_TYPE) VALUES (4, '/jalepeno', '/store/consumer/hurtin_jalepeno_hot_sauce', 'REDIRECT_TEMP');

INSERT INTO BLC_SEARCH_INTERCEPT(SEARCH_REDIRECT_ID, PRIORITY,SEARCH_TERM, URL) VALUES (1,1, 'insanity', '/store/consumer/insanity_sauce');
INSERT INTO BLC_SEARCH_INTERCEPT(SEARCH_REDIRECT_ID,PRIORITY, SEARCH_TERM, URL,ACTIVE_START_DATE,ACTIVE_END_DATE) VALUES (2,-10, 'new york', '/search?q=pace picante','1992-10-15 14:28:36','1999-10-15 21:28:36');

-----------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
-- RELATED PRODUCT - DATA (featured products for right-hand side display)
-----------------------------------------------------------------------------------------------------------------------------------
-- Adding to merchandise category
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (5, 1, 2003, 4);

-- Adding to hot-sauces category
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, sequence, CATEGORY_ID, PRODUCT_ID)  VALUES (8, 1, 2002, 500);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (9, 2, 2002, 200);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (10, 3, 2002, 300);

-- Adding a 20% off sale to Merchandise category to fit the Shirts Special Homepage Banner
INSERT INTO BLC_OFFER (OFFER_ID, APPLIES_TO_RULES, OFFER_NAME, START_DATE, END_DATE, OFFER_TYPE, OFFER_DISCOUNT_TYPE, OFFER_VALUE, OFFER_DELIVERY_TYPE, STACKABLE, COMBINABLE_WITH_OTHER_OFFERS, OFFER_PRIORITY, APPLY_OFFER_TO_MARKED_ITEMS, APPLY_TO_SALE_PRICE, USES, MAX_USES) VALUES (1,NULL, 'Shirts Special',CURRENT_DATE,'2020-01-01 00:00:00','ORDER_ITEM','PERCENT_OFF',20,'AUTOMATIC',TRUE,TRUE,10,FALSE,FALSE,0,0);

INSERT INTO BLC_OFFER_ITEM_CRITERIA (OFFER_ITEM_CRITERIA_ID, ORDER_ITEM_MATCH_RULE, QUANTITY) VALUES (1, 'MVEL.eval("toUpperCase()",discreteOrderItem.category.name)==MVEL.eval("toUpperCase()","merchandise")', 1);

INSERT INTO BLC_TAR_CRIT_OFFER_XREF (OFFER_TAR_CRIT_ID, OFFER_ITEM_CRITERIA_ID, OFFER_ID) VALUES (-100, 1, 1);

-- Sample fulfillment option
INSERT INTO BLC_FULFILLMENT_OPTION (FULFILLMENT_OPTION_ID, NAME, LONG_DESCRIPTION, USE_FLAT_RATES, FULFILLMENT_TYPE) VALUES (1, 'Standard', '5 - 7 Days', FALSE, 'PHYSICAL_SHIP');
INSERT INTO BLC_FULFILLMENT_OPTION (FULFILLMENT_OPTION_ID, NAME, LONG_DESCRIPTION, USE_FLAT_RATES, FULFILLMENT_TYPE) VALUES (2, 'Priority', '3 - 5 Days', FALSE, 'PHYSICAL_SHIP');
INSERT INTO BLC_FULFILLMENT_OPTION (FULFILLMENT_OPTION_ID, NAME, LONG_DESCRIPTION, USE_FLAT_RATES, FULFILLMENT_TYPE) VALUES (3, 'Express', '1 - 2 Days', FALSE, 'PHYSICAL_SHIP');

INSERT INTO BLC_FULFILLMENT_OPTION_FIXED (FULFILLMENT_OPTION_ID, PRICE) VALUES (1, 5.00);
INSERT INTO BLC_FULFILLMENT_OPTION_FIXED (FULFILLMENT_OPTION_ID, PRICE) VALUES (2, 10.00);
INSERT INTO BLC_FULFILLMENT_OPTION_FIXED (FULFILLMENT_OPTION_ID, PRICE) VALUES (3, 20.00);



--------------------------------------------------------------------------------------------------
 -- Added by Gaurish for Consumer categories and products - 26 Jan 2016
--------------------------------------------------------------------------------------------------

INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE,DISPLAY_TEMPLATE) VALUES (3001,'Solar Consumer','Solar Consumers','/store/consumer',CURRENT_TIMESTAMP,'/content/consumer');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (3002,'Solar Panels','Solar Panels','/store/panels',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (3003,'Solar Lights','Solar Lights','/store/lights',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (3004,'Solar Power Generators','Solar Power Generators','/store/power_generators',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (3005,'Solar Inverters','Solar Inverters','/store/inverters',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (3006,'Solar Cooking','Solar Cooking','/store/cooking',CURRENT_TIMESTAMP);

INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID,DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (101,3002,3001,1,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID,DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (102,3003,3001,2,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID,DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (103,3004,3001,3,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID,DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (104,3005,3001,4,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID,DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (105,3006,3001,5,TRUE);

INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1001,'/store/consumer/tata_solar_diva','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1002,'/store/consumer/tata_solar_sunjeevini300','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1003,'/store/consumer/tata_solar_dynamo','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1004,'/store/consumer/tata_solar_sunjeevini80','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1005,'/store/consumer/tata_solar_power_lighting','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1006,'/store/consumer/tata_solar_generator','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1007,'/store/consumer/tata_solar_oorja_k30','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1008,'/store/consumer/tata_solar_oorja_k32','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1009,'/store/consumer/tata_solar_oorja_k31','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1010,'/store/consumer/tata_solar_oorja_k33','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1011,'/store/consumer/tata_solar_oorja_pallets','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1012,'/store/consumer/tata_solar_biomass_generator','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1013,'/store/consumer/tata_solar_bio_cook','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1014,'/store/consumer/tata_solar_recold_cooker','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1015,'/store/consumer/tata_solar_sonata_stove','Tata',TRUE);


INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1001,1001,'Tata Solar Diva 5L - Portable Lighting System(Lantern)','Tata is a brand synonymous to trust, quality, efficiency and innovation. It has pioneered highly innovativeenergy an inseparable part of our lives. The Tata power solar lighting system is an amazing product which will not only brighten up your life but will also save lot of energy and money for you. Easy and compatible use of solar energy is a concrete step in the direction of saving non renewable sources of energy. Order this lighting system from Snapdeal to get the best deals and best price offered by none other in the market. This emergency light comes with a warranty of 1 year on any manufacturing defect.',1555,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1002,1002,'Tata Solar Sunjeevini - 300 Solar Inverter','SunJeevini range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.SunJeevini consists of solar panels and a charge controller. This comes with in-built solar priority which harness maximum solar energy and save grid electricity charges.SunJeevini 300 model can be used with inverter rating of 1000 VA and battery capacity of 75-120 x 2 Ah. SunJeevini 300 model can generate 1065 Wh energy which typically supports equivalent loads of 1 Computer (1 x 200 W), 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 2 Ceiling fans (2 x 80 W) for 2.5 hours. Energy generated from the system depends upon battery and inverter efficiency.',69999,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1003,1003,'Tata Solar Dynamo 1100 (Power Pack) Solar Inverter','Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.Dynamo 1100 replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100 does not come with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement), however customer has an option to buy the system with structure and Installation kit (Dynamo 1100K).PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.Dynamo 1100 comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100 requires less than 100 sq. ft. area for installing PV modules.',459999,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1004,1004,'Tata Solar Sunjeevini - 80 Solar Inverter','SunJeevini range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.SunJeevini consists of solar panels and a charge controller. This comes with in- built solar priority which harness maximum solar energy and save grid electricity charges.SunJeevini - 80 model can be used with inverter rating of 300 VA and battery capacity of 40-60 Ah. SunJeevini – 80 model can generate 280 Wh energy which typically supports 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 1 Ceiling fan (1 x 80 W) for 2 hours.Energy generated from the system depends upon battery and inverter efficiency.',14500,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1005,1005,'The Tata power solar lighting','The Tata power solar lighting system has emergency light with solar panel. These solar power panels are of less than 1 watt power. These solar panels trap the energy from sun to harness it into electrical energy using a transformer. Electrical energy produced in by the transformer is the stored in the batteries and used for lighting purpose. Now you don’t have to depend on grid supply or kerosene for charging or lighting of bulb at the time of emergency. Ergonomic design of the solar panels makes maximum utilization of sunlight available to it.',1500,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1006,1006,'Solar Power Generators','Dynamo range of solar power generators are a perfect alternative for Invertors (back- up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.Dynamo 1100+ replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100+ does not come with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement), however customer has an option to buy the system with structure and Installation kit (Dynamo 1100K+).PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.Dynamo 1100+ comes with 4 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 8 hours. Dynamo 1100+ requires less than 100 sq. ft. area for installing PV modules.',459599,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1007,1007,'Oorja Jumbo K30 lx','Power is required to run almost everything in our homes. Since our planet is being harmed due to the great amounts of pollution caused by rapid urbanization and industrialisation, it’s high time we started moving towards economical and environment-friendly means of energy sources. The trusted brand of Tata Power introduces these ideally designed solar panels. It comes in an adequate dimension and size. Now the Tata Power Solar solar panels are available at amazing price through Snapdeal! Add them to your household and help save this planet!',5000,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1008,1008,'Oorja k32','24V-30A hybrid solar charger. Power your home for upto 3 hours with sunjeevini, a retro-fit hybrid solar charge controller with plug-n-play design. Run your house or small business with reduced electricity costs, uninterrupted power by recharging your inverters with free power from the sun.',6500,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1009,1009,'Oorja k31','Solar street lantern from TPS consists of a 10W solar module with a 7W CFL and a 7AH sealed lead acid maintenance free battery.The product is easily installable. It gives a light output for 5 hours continuously from a single day''s charge.The light output from the luminaire is 370 lumens which is sufficient to brighten up the entire hallThe improved electronics which minimizes the idle current and gives increased efficiency ensures that the battery is charged efficiently and maximum back up is available for the light output.The various protections for battery charging reverse current, no load and short circuit ensures that the product is safe, reliable and long lasting',5200,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1010,1010,'Oorja k33','A 200 lpd capacity system is sufficient for a family of 6-8 members',16500,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1011,1011,'Oorja Pallets','Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.Dynamo 1100K replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100K is available with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement).PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.<p.>Dynamo 1100K comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100K requires less than 100sq. ft. area for installing PV modules.',459780,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1012,1012,'Biomass Real','Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.Dynamo 1100K replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100K is available with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement).PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.<p.>Dynamo 1100K comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100K requires less than 100 sq. ft. area for installing PV modules.',459780,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1013,1013,'Bio Cook','Dynamo range of solar power generators are a perfect alternative for Invertors (back- up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.Dynamo 1100K replaces a Diesel Generator set using diesel at an average costof Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100K is available with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement).PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.<p.>Dynamo 1100K comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100K requires less than 100 sq. ft. area for installing PV modules.',459780,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1014,1014,'Recold Cooker','Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.Dynamo 1100K replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100K is available with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement).PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.<p.>Dynamo 1100K comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100K requires less than 100 sq. ft. area for installing PV modules.',459780,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1015,1015,'Sonata Stove','The Tata power solar lighting system has emergency light with solar panel. These solar powerpanels are of less than 1 watt power. These solar panels trap the energy from sun to harness it into electrical energy using a transformer. Electrical energy produced in by the transformer is the stored in the batteries and used for lighting purpose. Now you don’t have to depend on grid supply or kerosene for charging or lighting of bulb at the time of emergency. Ergonomic design of the solar panels makes maximum utilization of sunlight available to it.',1500,'Y','Y',CURRENT_TIMESTAMP);

UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1001 WHERE PRODUCT_ID = 1001;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1002 WHERE PRODUCT_ID = 1002;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1003 WHERE PRODUCT_ID = 1003;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1004 WHERE PRODUCT_ID = 1004;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1005 WHERE PRODUCT_ID = 1005;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1006 WHERE PRODUCT_ID = 1006;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1007 WHERE PRODUCT_ID = 1007;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1008 WHERE PRODUCT_ID = 1008;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1009 WHERE PRODUCT_ID = 1009;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1010 WHERE PRODUCT_ID = 1010;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1011 WHERE PRODUCT_ID = 1011;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1012 WHERE PRODUCT_ID = 1012;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1013 WHERE PRODUCT_ID = 1013;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1014 WHERE PRODUCT_ID = 1014;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1015 WHERE PRODUCT_ID = 1015;


INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (101,1001,3003,1,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (102,1002,3004,2,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (103,1003,3004,3,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (104,1004,3004,4,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (105,1005,3003,5,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (106,1006,3005,6,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (107,1007,3003,7,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (108,1008,3003,8,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (109,1009,3003,9,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (110,1010,3003,10,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (111,1011,3003,11,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (112,1012,3005,12,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (113,1013,3006,13,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (114,1014,3006,14,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (115,1015,3006,15,TRUE);


INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1001,1001,203,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1002,1002,102,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1003,1003,201,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1004,1004,202,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1005,1005,101,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1006,1006,201,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1007,1007,602,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1008,1008,701,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1009,1009,702,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1010,1010,801,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1011,1011,802,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1012,1012,901,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1013,1013,902,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1014,1014,1102,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1015,1015,1101,'primary');


INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1001, 1, 3001, 1001);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1002, 1, 3001, 1002);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1003, 1, 3001, 1003);

INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (8, 3001, 3, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (9, 3002, 3, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (10, 3003, 3, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (11, 3004, 3, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (12, 3005, 3, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (13, 3006, 3, 1);

--------------------------------------------------------------------------------------------------
 -- Added by Hitesh for Commercial categories and products - 28 Jan 2016
--------------------------------------------------------------------------------------------------
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE,DISPLAY_TEMPLATE) VALUES (3007,'Solar Commercial','Solar Commercial','/store/commercial',CURRENT_TIMESTAMP,'/content/business');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (3008,'Solar Scooter','Solar Scooter','/store/scooter',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (3009,'Solar Street Light','Solar Street Light','/store/street',CURRENT_TIMESTAMP);

INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID,DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (106,3008,3007,1,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID,DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (107,3009,3007,1,TRUE);

INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1016,'/store/commercial/Electric_60288992422','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1017,'/store/commercial/Electric_Self_60398310575','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1018,'/store/commercial/street_light_60401251940','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1019,'/store/commercial/street_light_60401251941','Tata',TRUE);

INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1016,1016,'Tata Solar Diva 5L - Portable Lighting System(Lantern)','Tata is a brand synonymous to trust, quality, efficiency and innovation. It has pioneered highly innovativeenergy an inseparable part of our lives. The Tata power solar lighting system is an amazing product which will not only brighten up your life but will also save lot of energy and money for you. Easy and compatible use of solar energy is a concrete step in the direction of saving non renewable sources of energy. Order this lighting system from Snapdeal to get the best deals and best price offered by none other in the market. This emergency light comes with a warranty of 1 year on any manufacturing defect.',1555,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1017,1017,'Tata Solar Sunjeevini - 300 Solar Inverter','SunJeevini range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.SunJeevini consists of solar panels and a charge controller. This comes with in-built solar priority which harness maximum solar energy and save grid electricity charges.SunJeevini 300 model can be used with inverter rating of 1000 VA and battery capacity of 75-120 x 2 Ah. SunJeevini 300 model can generate 1065 Wh energy which typically supports equivalent loads of 1 Computer (1 x 200 W), 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 2 Ceiling fans (2 x 80 W) for 2.5 hours. Energy generated from the system depends upon battery and inverter efficiency.',69999,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1018,1018,'Tata Solar Dynamo 1100 (Power Pack) Solar Inverter','Dynamo range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.Dynamo 1100 replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100 does not come with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement), however customer has an option to buy the system with structure and Installation kit (Dynamo 1100K).PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.Dynamo 1100 comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100 requires less than 100 sq. ft. area for installing PV modules.',459999,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1019,1019,'Tata Solar Sunjeevini - 80 Solar Inverter','SunJeevini range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.SunJeevini consists of solar panels and a charge controller. This comes with in- built solar priority which harness maximum solar energy and save grid electricity charges.SunJeevini - 80 model can be used with inverter rating of 300 VA and battery capacity of 40-60 Ah. SunJeevini – 80 model can generate 280 Wh energy which typically supports 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 1 Ceiling fan (1 x 80 W) for 2 hours.Energy generated from the system depends upon battery and inverter efficiency.',14500,'Y','Y',CURRENT_TIMESTAMP);

UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1016 WHERE PRODUCT_ID = 1016;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1017 WHERE PRODUCT_ID = 1017;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1018 WHERE PRODUCT_ID = 1018;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1019 WHERE PRODUCT_ID = 1019;

INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (116,1016,3008,1,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (117,1017,3008,2,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (118,1018,3009,3,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (119,1019,3009,4,TRUE);

INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1016,1016,203,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1017,1017,102,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1018,1018,201,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1019,1019,202,'primary');

INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1004, 1, 3007, 1016);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1005, 1, 3007, 1017);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1006, 1, 3007, 1018);

INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (14, 3007, 3, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (15, 3008, 3, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (16, 3009, 3, 1);
--------------------------------------------------------------------------------------------------
 -- Added by Hitesh for Government Subsidies categories and products - 28 Jan 2016
--------------------------------------------------------------------------------------------------


INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE,DISPLAY_TEMPLATE) VALUES (3010,'Solar Subsidies','Solar Subsidies','/store/subsidies',CURRENT_TIMESTAMP,'/content/governmentschemes');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (3011,'Solar Cooker','Solar Cooker','/store/cooker',CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,ACTIVE_START_DATE) VALUES (3012,'Solar Appliance','Solar Appliance','/store/appliance',CURRENT_TIMESTAMP);


INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID,DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (108,3011,3010,1,TRUE);
INSERT INTO BLC_CATEGORY_XREF (CATEGORY_XREF_ID, SUB_CATEGORY_ID, CATEGORY_ID,DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (109,3012,3010,1,TRUE);

INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1020,'/store/subsidies/Hamilton-Beach-5-Quart-Portable-Cooker','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1021,'/store/subsidies/Crock-Pot-SCCPVL600-R','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1022,'/store/subsidies/Crock-Pot-SCCPVL610-S','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1023,'/store/subsidies/Microtek-SS1660VA-24v-Solar-Ups-Inverter','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1024,'/store/subsidies/Microtek-UPS-SS1130','Tata',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1025,'/store/subsidies/Manhari-msl101','Tata',TRUE);

INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1020,1020,'Hamilton Beach 5 Quart Portable Cooker','Hamilton Beach 5 Quart Portable Cooker have trust, quality, efficiency and innovation. It has pioneered highly innovativeenergy an inseparable part of our lives. The Tata power solar lighting system is an amazing product which will not only brighten up your life but will also save lot of energy and money for you. Easy and compatible use of solar energy is a concrete step in the direction of saving non renewable sources of energy. Order this lighting system from Snapdeal to get the best deals and best price offered by none other in the market. This emergency light comes with a warranty of 1 year on any manufacturing defect.',1555,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1021,1021,'Crock-Pot SCCPVL600-R Cook N Carry 6-Quart Oval Manual ','Crock-Pot SCCPVL600-R Cook N Carry 6-Quart Oval Manual range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.SunJeevini consists of solar panels and a charge controller. This comes with in-built solar priority which harness maximum solar energy and save grid electricity charges.SunJeevini 300 model can be used with inverter rating of 1000 VA and battery capacity of 75-120 x 2 Ah. SunJeevini 300 model can generate 1065 Wh energy which typically supports equivalent loads of 1 Computer (1 x 200 W), 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 2 Ceiling fans (2 x 80 W) for 2.5 hours. Energy generated from the system depends upon battery and inverter efficiency.',69999,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1022,1022,'Crock-Pot SCCPVL610-S Programmable Cook and Carry Oval ','Crock-Pot SCCPVL610-S Programmable Cook and Carry Oval range of solar power generators are a perfect alternative for Invertors (back-up power source) and Diesel Generator set used for households and commercial applications. Dynamo solar power generators have been in the field for over 10 years.Dynamo 1100 replaces a Diesel Generator set using diesel at an average cost of Rs. 50 per litre, consuming 1.5 litres per hour. This leads to savings of 27,000 per year.Dynamo consists of a solar panel, PCU/inverter, low maintenance batteries. Dynamo 1100 does not come with structure and Installation kit (complete cables, mounting cables and hardware for installation with minimum maintenance requirement), however customer has an option to buy the system with structure and Installation kit (Dynamo 1100K).PCU/inverter also provides LED and backlit LCD indicators for charge, battery low alarm and load cut off conditions etc. PCU can be mounted on wall. PCU/inverter enclosure is IP21 certified for indoor usage.Dynamo 1100 comes with 2 nos of 180Ah batteries which can power your home typical household load of 800 W (1 * 200 W computer, 1*150 W TV, 4*40 W Tube lights, 5*10W CFLs and 4*60W Ceiling Fans) up to 4 hours. Dynamo 1100 requires less than 100 sq. ft. area for installing PV modules.',459999,'Y','Y',CURRENT_TIMESTAMP); 
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1023,1023,'Microtek SS1660VA 24v Solar Ups Inverter','Microtek SS1660VA 24v Solar Ups Inverter range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.SunJeevini consists of solar panels and a charge controller. This comes with in- built solar priority which harness maximum solar energy and save grid electricity charges.SunJeevini - 80 model can be used with inverter rating of 300 VA and battery capacity of 40-60 Ah. SunJeevini – 80 model can generate 280 Wh energy which typically supports 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 1 Ceiling fan (1 x 80 W) for 2 hours.Energy generated from the system depends upon battery and inverter efficiency.',14500,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1024,1024,'Microtek-UPS-SS1130 ','Microtek-UPS-SS1130 range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.SunJeevini consists of solar panels and a charge controller. This comes with in- built solar priority which harness maximum solar energy and save grid electricity charges.SunJeevini - 80 model can be used with inverter rating of 300 VA and battery capacity of 40-60 Ah. SunJeevini – 80 model can generate 280 Wh energy which typically supports 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 1 Ceiling fan (1 x 80 W) for 2 hours.Energy generated from the system depends upon battery and inverter efficiency.',14500,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (1025,1025,'Manhari msl101','Manhari msl101 range of products are ideal for customers with existing inverter and battery who want to use solar energy to charge batteries to get more hours of power back-up.SunJeevini consists of solar panels and a charge controller. This comes with in- built solar priority which harness maximum solar energy and save grid electricity charges.SunJeevini - 80 model can be used with inverter rating of 300 VA and battery capacity of 40-60 Ah. SunJeevini – 80 model can generate 280 Wh energy which typically supports 1 Tube light (1 x 40 W), 1 CFL (1 x 14 W) and 1 Ceiling fan (1 x 80 W) for 2 hours.Energy generated from the system depends upon battery and inverter efficiency.',14500,'Y','Y',CURRENT_TIMESTAMP);

UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1020 WHERE PRODUCT_ID = 1020;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1021 WHERE PRODUCT_ID = 1021;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1022 WHERE PRODUCT_ID = 1022;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1023 WHERE PRODUCT_ID = 1023;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1024 WHERE PRODUCT_ID = 1024;
UPDATE BLC_PRODUCT SET DEFAULT_SKU_ID = 1025 WHERE PRODUCT_ID = 1025;

INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (120,1020,3011,1,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (121,1021,3011,2,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (122,1022,3011,3,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (123,1023,3012,4,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (124,1024,3012,5,TRUE);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (CATEGORY_PRODUCT_ID, PRODUCT_ID,CATEGORY_ID, DISPLAY_ORDER, DEFAULT_REFERENCE) VALUES (125,1025,3012,6,TRUE);

INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1020,1020,1001,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1021,1021,1101,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1022,1022,1201,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1023,1023,1701,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1024,1024,1901,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (SKU_MEDIA_ID, BLC_SKU_SKU_ID, MEDIA_ID,MAP_KEY) VALUES (1025,1025,1601,'primary');

INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1007, 1, 3010, 1021);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1008, 1, 3010, 1022);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1009, 1, 3010, 1023);

INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (17, 3010, 3, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (18, 3011, 3, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (19, 3012, 3, 1);