SELECT companyName, totalRevenue2021, cast(REPLACE(totalRevenue2021,',','') as DECIMAL(10,2)) as newCap
from overall_screener2
order by newCap asc;
## since you cant convert NULL to decimal, just cast it as decimal when you are querying.