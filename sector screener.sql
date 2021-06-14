select 
###################### what do you want to see? ######################
companyName,
--  exchangePrimary, 
--  yf_tickers.exchange, 
yfTicker,
(marketCap), 
-- primaryIndustry,
-- industryClassifications,
null
###################################################################

from overall_screener
left join gics on gics.sub_industry=overall_screener.primaryIndustry
left join yf_tickers on yf_tickers.exchangeTicker=overall_screener.exchangeTicker

#################### filter your thingos ##########################
where true
-- and companyName COLLATE UTF8_GENERAL_CI like "%brooks%"
 -- and sector like "%real est%" 
--  and primaryIndustry like "silver"
--  and exchangePrimary like "%SGX%"
-- and yf_tickers.yfTicker is null
-- and yf_tickers.exchange like "%SGX%"

## this search can be used when you wanna find competitors in a specific segment of a company
and CONVERT(industryClassifications, CHAR) COLLATE UTF8_GENERAL_CI like "%semiconductor%" #this converts the BLOB to character and then makes the search case insensitive
###################################################################

-- group by primaryIndustry
 order by (marketCap) desc
;