DROP temporary TABLE temptable;

CREATE TEMPORARY TABLE temptable (
	id  INT UNSIGNED NOT NULL,
    companyName	varchar(1024),
	exchangeTicker	varchar(45),
	exchangePrimary	varchar(45),
	sharesOutstanding	decimal(15,2),
	marketCap	decimal(15,2),
	enterpriseValue	varchar(255),
	competitors	blob,
	businessDescription	blob,
	industryClassifications	blob,
	primaryIndustry	varchar(255),
	primarySector	varchar(255),
    PRIMARY KEY (id)
) ENGINE = InnoDB;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/logreit.csv' # i think it only can read files from in here
INTO TABLE temptable
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (companyName,
	exchangeTicker,
	exchangePrimary,
	sharesOutstanding,
	marketCap,
	enterpriseValue,
	competitors,
	businessDescription,
	industryClassifications,
	primaryIndustry,
	primarySector);

INSERT IGNORE INTO overall_screener (companyName,
	exchangeTicker,
	exchangePrimary,
	sharesOutstanding,
	marketCap,
	enterpriseValue,
	competitors,
	businessDescription,
	industryClassifications,
	primaryIndustry,
	primarySector)##ignore skips duplicates
SELECT companyName,
	exchangeTicker,
	exchangePrimary,
	sharesOutstanding,
	marketCap,
	enterpriseValue,
	competitors,
	businessDescription,
	industryClassifications,
	primaryIndustry,
	primarySector FROM temptable;

DROP TEMPORARY TABLE temptable;