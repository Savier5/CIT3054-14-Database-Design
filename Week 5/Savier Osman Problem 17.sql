select format(sum(CUS_BALANCE), 2) as "Total Balance", 
format(min(CUS_BALANCE), 2) as "Minimum Balance",
format(max(CUS_BALANCE), 2) as "Maximum Balance",
format(avg(CUS_BALANCE), 2) as "Average Balance"
from CUSTOMER 