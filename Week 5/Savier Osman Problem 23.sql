select format(max(BRAND_AVG_PRICE), 2) as "LARGEST AVERAGE"
from (
select BRAND_ID, avg(PROD_PRICE) as "BRAND_AVG_PRICE"
from LGPRODUCT
group by BRAND_ID
) as BRAND_AVG;