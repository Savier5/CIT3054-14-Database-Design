select format(min(CUS_BALANCE), 2) as "Minimum Balance",
format(max(CUS_BALANCE), 2) as "Maximum Balance",
format(avg(CUS_BALANCE), 2) as "Average Balance"
from CUSTOMER 
where cus_code in (select cus_code from invoice);