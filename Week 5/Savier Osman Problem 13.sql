select  CUS_CODE, CUS_BALANCE, sum(LINE_UNITS * LINE_PRICE) as "Total Purchases"
from INVOICE
	join LINE using (INV_NUMBER)
    join CUSTOMER using (CUS_CODE)
group by CUS_CODE;