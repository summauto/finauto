SELECT companyName, industryClassifications
FROM overall_screener
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tesyk.csv'
FIELDS TERMINATED BY '\t'
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\r\n';