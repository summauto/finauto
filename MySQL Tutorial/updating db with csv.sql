-- LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\20210612_screenerdb_income_3.CSV' 
-- IGNORE INTO TABLE `overall_screener_income_statements` 
-- FIELDS TERMINATED BY ',' 
-- ENCLOSED BY '"' 
-- LINES TERMINATED BY '\r\n' 
-- IGNORE 1 LINES;

############### how to remove duplicates #######################
SET SQL_SAFE_UPDATES = 0;
SET innodb_lock_wait_timeout = 100;
CREATE TABLE if not exists source_copy like overall_screener_income_statements;
INSERT INTO source_copy
SELECT * FROM overall_screener_income_statements
GROUP BY `companyName`;

## replace the original table with this copy
DROP TABLE overall_screener_income_statements;
ALTER TABLE source_copy RENAME TO overall_screener_income_statements;
