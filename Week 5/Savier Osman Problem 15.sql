select CUS_CODE, CUS_BALANCE
from INVOICE
	join CUSTOMER using (cus_code)
group by cus_code;