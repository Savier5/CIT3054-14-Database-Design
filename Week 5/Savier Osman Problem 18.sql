select cus_code, cus_balance
from customer
where cus_code not in (select distinct cus_code from invoice);