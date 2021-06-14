USE finance_tracker;
-- CREATE TABLE semicon_details (
-- id INT NOT NULL AUTO_INCREMENT,
-- Company_Name VARCHAR(255) NOT NULL, 
-- Exchange_Ticker VARCHAR(255) NOT NULL, 
-- Yahoo_Finance_Ticker VARCHAR(255) NOT NULL, 
-- Exchanges VARCHAR(255) NOT NULL, 
-- YF_Price DOUBLE NOT NULL, 
-- Shares_Outstanding DOUBLE NOT NULL, 
-- Market_Capitalization DOUBLE NOT NULL, 
-- Total_Enterprise_Value DOUBLE NOT NULL, 
-- Primary_Industry VARCHAR(255) NOT NULL,
-- PRIMARY KEY (id));

LOAD DATA LOCAL INFILE
'D:\\Finance\\Workspace\\Semicon\\Semicon_details.csv'
INTO TABLE semicon_details
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS 
(Company_Name, Exchange_Ticker, Yahoo_Finance_Ticker, Exchanges, YF_Price, Shares_Outstanding, Market_Capitalization, Total_Enterprise_Value, Primary_Industry);