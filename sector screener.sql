select *
###################################################################

from overall_screener2
join overall_screener_income_statements on overall_screener2.exchangeTicker=overall_screener_income_statements.exchangeTicker

#################### filter your thingos ##########################
where true
and overall_screener2.companyName COLLATE UTF8_GENERAL_CI like "%amazon%" 
or overall_screener2.companyName COLLATE UTF8_GENERAL_CI like "%alibaba%" 
-- and overall_screener2.primarySector like "%real est%" 
--  and overall_screener2.primaryIndustry like "silver"
-- and overall_screener2.exchangePrimary like "%SGX%"
-- and yf_tickers .yfTicker is null
-- and yf_tickers.exchange like "%SGX%"

## this search can be used when you wanna find competitors in a specific segment of a company
-- and primaryIndustry like "%real %" #this converts the BLOB to character and then makes the search case insensitive
###################################################################

-- group by primaryIndustry
 order by cast(REPLACE(overall_screener2.marketCap,',','') as DECIMAL(10,2)) desc
;