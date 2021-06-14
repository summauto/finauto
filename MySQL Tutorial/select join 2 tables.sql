select companyName, primaryIndustry, gics.sector, marketCap from overall_screener
left join gics on gics.sub_industry=overall_screener.primaryIndustry
-- where gics.sector is null
and sub_industry like "% "
-- where overall_screener.companyName = 'microsoft%'
-- order by overall_screener.marketCap desc;