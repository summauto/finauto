-- DROP TABLE no_duplicate;

CREATE TABLE no_duplicate SELECT DISTINCT id, companyName,
	exchangeTicker,
	exchangePrimary,
	sharesOutstanding,
	marketCap,
	enterpriseValue,
	competitors,
	businessDescription,
	industryClassifications,
	primaryIndustry,
	primarySector FROM overall_screener
    GROUP BY (exchangeTicker);
    
DROP TABLE overall_screener;
ALTER TABLE no_duplicate RENAME TO overall_screener;