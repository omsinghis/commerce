-----------------------------------------------------------------------------------------------------------------------------------
-- Structured Content to support page templates
-- Create new content entry screens for Renergy pages which has three steps
-----------------------------------------------------------------------------------------------------------------------------------

-- The Sample Project is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for creating the content structure which includes page-types (e.g. template
-- mappings) and structured-content-types (e.g. ad placement among other things).
--
INSERT INTO BLC_CURRENCY(CURRENCY_CODE, FRIENDLY_NAME, DEFAULT_FLAG) VALUES('USD', 'US Dollar', TRUE);
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('en', FALSE, 'English', 'USD');

--
-- The following items create page templates.    
-- In the example below, there is only one page templates "basic" providing a header, footer, and sidebar around the content
-- The full path to the template is .../WEB_INF/jsp/templates/content/default.html
INSERT INTO BLC_PAGE_TMPLT (PAGE_TMPLT_ID, TMPLT_NAME, TMPLT_DESCR, TMPLT_PATH) VALUES (1, 'Basic Template', 'This template provides a basic layout with header and footer surrounding the content and title.', '/content/default') ;


--
-- Field groups define a list of dynamic fields.    Field groups can be associated with page
-- templates or structured content types.    The field group below defines two fields named
-- "body", which is a rich text edit field, and "title", which is a string field.
-- This will tell the Broadleaf admin how to generate the view for a given template
--
INSERT INTO BLC_FLD_GROUP(FLD_GROUP_ID, NAME, INIT_COLLAPSED_FLAG) VALUES (1, 'Content', FALSE);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (3, 'title', 'Title', 'STRING', NULL, FALSE, null, null, null, '*', FALSE, NULL, FALSE, 1, 0);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (2, 'body', 'Body', 'HTML', NULL, FALSE, null, null, null, '*', FALSE, NULL, FALSE, 1, 1);

--
-- Map both templates to the field groups
--
INSERT INTO BLC_PGTMPLT_FLDGRP_XREF(PG_TMPLT_FLD_GRP_ID, PAGE_TMPLT_ID, FLD_GROUP_ID, GROUP_ORDER) VALUES (1, 1,1,0);

--  
-- NONE template
-- 
-- note id 2 is in i18n file
INSERT INTO BLC_PAGE_TMPLT (PAGE_TMPLT_ID, TMPLT_NAME, TMPLT_DESCR, TMPLT_PATH) VALUES (-3, 'NONE', 'Outputs the body field.', 'NONE') ;
INSERT INTO BLC_FLD_GROUP(FLD_GROUP_ID, NAME, INIT_COLLAPSED_FLAG) VALUES (-3, 'None', FALSE);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (-1, 'body', 'File Contents', 'HTML', NULL, FALSE, null, null, null, '*', FALSE, NULL, FALSE, -3, 0);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (-2, 'plainText', 'Plain Text', 'BOOLEAN', NULL, FALSE, null, null, null, '*', FALSE, NULL, FALSE, -3, 1);

INSERT INTO BLC_PGTMPLT_FLDGRP_XREF(PG_TMPLT_FLD_GRP_ID,PAGE_TMPLT_ID, FLD_GROUP_ID, GROUP_ORDER) VALUES (2, -3, -3 ,0);

-----------------------------------------------------------------------------------------------------------------------------------
-- Structured Content Step 1:   Create Structured Content Field Groups
-----------------------------------------------------------------------------------------------------------------------------------
-- Create Ad Fields - Defining the ad field group as a group of two fields: Image URL and Target URL
INSERT INTO BLC_FLD_GROUP(FLD_GROUP_ID, NAME, INIT_COLLAPSED_FLAG) VALUES (4, 'Ad Fields', FALSE);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (7, 'imageUrl', 'Image URL', 'STRING', NULL, FALSE, null, null, 150, '*', FALSE, NULL, FALSE, 4, 0);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (8, 'targetUrl', 'Target URL', 'STRING', NULL, FALSE, null, null, 150, '*', FALSE, NULL, FALSE, 4, 1);

-- Create HTML Fields - Defining the message field group as a single field called messageText
INSERT INTO BLC_FLD_GROUP(FLD_GROUP_ID, NAME, INIT_COLLAPSED_FLAG) VALUES (5, 'HTML Fields', FALSE);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (10, 'htmlContent', 'HTML Content', 'HTML', NULL, FALSE, null, null, null, '*', FALSE, NULL, FALSE, 5, 0);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (110, 'targetUrl', 'Target URL', 'STRING', NULL, FALSE, null, null, 150, '*', FALSE, NULL, FALSE, 5, 1);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (111, 'css', 'Css String', 'STRING', NULL, FALSE, null, null, 150, '*', FALSE, NULL, FALSE, 5, 1);

-- Create Message Fields - Defining the message field group as a single field called messageText
INSERT INTO BLC_FLD_GROUP(FLD_GROUP_ID, NAME, INIT_COLLAPSED_FLAG) VALUES (6, 'Message Fields', FALSE);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (9, 'messageText', 'Message Text', 'STRING', NULL, FALSE, null, null, 150, '*', FALSE, NULL, FALSE, 6, 0);

-----------------------------------------------------------------------------------------------------------------------------------
-- Structured Content Step 2:   Create Templates.     The examples below create field templates for Ads, Messages, and HTML blocks.
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SC_FLD_TMPLT(SC_FLD_TMPLT_ID, NAME) VALUES(1, 'Ad Template');
INSERT INTO BLC_SC_FLD_TMPLT(SC_FLD_TMPLT_ID, NAME) VALUES(2, 'HTML Template');
INSERT INTO BLC_SC_FLD_TMPLT(SC_FLD_TMPLT_ID, NAME) VALUES(3, 'Message Template');


-----------------------------------------------------------------------------------------------------------------------------------
-- Structured Content Step 3:   Add Field Groups to Templates
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SC_FLDGRP_XREF(SC_FLD_TMPLT_ID, FLD_GROUP_ID, GROUP_ORDER) VALUES (1,4,0);
INSERT INTO BLC_SC_FLDGRP_XREF(SC_FLD_TMPLT_ID, FLD_GROUP_ID, GROUP_ORDER) VALUES (2,5,0);
INSERT INTO BLC_SC_FLDGRP_XREF(SC_FLD_TMPLT_ID, FLD_GROUP_ID, GROUP_ORDER) VALUES (3,6,0);

-----------------------------------------------------------------------------------------------------------------------------------
-- Structured Content Step 4:   Create Types (These represent areas on a page or general types:  e.g 'Homepage Banner Ad')
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SC_TYPE (SC_TYPE_ID, NAME, DESCRIPTION, SC_FLD_TMPLT_ID) VALUES (1, 'Homepage Banner Ad', NULL, 1);
INSERT INTO BLC_SC_TYPE (SC_TYPE_ID, NAME, DESCRIPTION, SC_FLD_TMPLT_ID) VALUES (2, 'Homepage Middle Promo Snippet', NULL, 2);
INSERT INTO BLC_SC_TYPE (SC_TYPE_ID, NAME, DESCRIPTION, SC_FLD_TMPLT_ID) VALUES (3, 'Homepage Featured Products Title', NULL, 3);
INSERT INTO BLC_SC_TYPE (SC_TYPE_ID, NAME, DESCRIPTION, SC_FLD_TMPLT_ID) VALUES (4, 'Right Hand Side Banner Ad', NULL, 1);



-- Step 1 - Create a Page template
INSERT INTO BLC_PAGE_TMPLT (PAGE_TMPLT_ID, TMPLT_NAME, TMPLT_DESCR, TMPLT_PATH) VALUES (5, 'Renergy Content Template', 'Use this template to completely control the page contents.', '/content/default') ;

-- Step 2 - Create a FLD GROUP 
INSERT INTO BLC_FLD_GROUP(FLD_GROUP_ID, NAME, INIT_COLLAPSED_FLAG) VALUES (100, 'Content', false);

INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (101, 'heading', 'Heading ', 'STRING', NULL, false, null, null, null, '*', false, NULL, false, 100, 0);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (102, 'introduction', 'Introduction', 'HTML', NULL, false, null, null, null, '*', false, NULL, false, 100, 1);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (103, 'body', 'Body', 'HTML', NULL, false, null, null, null, '*', false, NULL, false, 100, 2);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (104, 'benefits', 'Benefits', 'HTML', NULL, false, null, null, null, '*', false, NULL, false, 100, 3);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (105, 'costing', 'Cost Assessment', 'HTML', NULL, false, null, null, null, '*', false, NULL, false, 100, 4);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (106, 'renergyOffering', 'Renergy Offering', 'HTML', NULL, false, null, null, null, '*', false, NULL, false, 100, 5);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (107, 'questions', 'Related Questions', 'HTML', NULL, false, null, null, null, '*', false, NULL, false, 100, 6);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (108, 'imageUrl', 'Image URL', 'STRING', NULL, false, null, null, 150, 200, false, NULL, false, 100, 7);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (109, 'date', 'Creation Date', 'DATE', NULL, false, null, null, null, '*', false, NULL, false, 100, 8);

-- Step 3 - Map the FLD GROUP with PAGE TEMPLATE 
INSERT INTO BLC_PGTMPLT_FLDGRP_XREF(PG_TMPLT_FLD_GRP_ID, PAGE_TMPLT_ID, FLD_GROUP_ID, GROUP_ORDER) VALUES (3,5,100,0);

-----------------------------------------------------------------------------------------------------------------------------------
-- Structured Content to support modules on pages
-- Create FAQ List Fields - Defining the ad field group as a group of two fields: Questions and Target URL
-----------------------------------------------------------------------------------------------------------------------------------

--Step1
INSERT INTO BLC_FLD_GROUP(FLD_GROUP_ID, NAME, INIT_COLLAPSED_FLAG) VALUES (7, 'FAQ Questions', FALSE);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (70, 'question', 'question', 'STRING', NULL, FALSE, null, null, 150, '*', FALSE, NULL, FALSE, 7, 0);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (71, 'answer', 'Answer URL', 'HTML', NULL, FALSE, null, null, null, '*', FALSE, NULL, FALSE, 7, 1);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (72, 'targetUrl', 'Target URL', 'STRING', NULL, FALSE, null, null, 150, '*', FALSE, NULL, FALSE, 7, 1);



--Step 2  Create Templates. 
INSERT INTO BLC_SC_FLD_TMPLT(SC_FLD_TMPLT_ID, NAME) VALUES(4, 'FAQ Template');
--Step 3  Add Field Groups to Templates
INSERT INTO BLC_SC_FLDGRP_XREF(SC_FLD_TMPLT_ID, FLD_GROUP_ID, GROUP_ORDER) VALUES (4,7,0);

-- Step 4 Create Types ( these represent the area on the page)
INSERT INTO BLC_SC_TYPE (SC_TYPE_ID, NAME, DESCRIPTION, SC_FLD_TMPLT_ID) VALUES (5, 'Solar FAQ List', NULL, 4);
INSERT INTO BLC_SC_TYPE (SC_TYPE_ID, NAME, DESCRIPTION, SC_FLD_TMPLT_ID) VALUES (6, 'Wind FAQ List', NULL, 4);
INSERT INTO BLC_SC_TYPE (SC_TYPE_ID, NAME, DESCRIPTION, SC_FLD_TMPLT_ID) VALUES (7, 'Biomass FAQ List', NULL, 4);