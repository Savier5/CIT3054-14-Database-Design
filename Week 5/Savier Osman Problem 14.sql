select (select count(*) from invoice) as "Total Invoices",
format(sum(InvTotal), 2) as "Total Sales", format(min(InvTotal), 2) as "Smallest Customer Purchases",
format(max(InvTotal), 2) as "Largest Customer Purchase", format(round(avg(InvTotal), 2), 2) as "Average Customer Purchase"
from
(
select 	cus_code,
		sum(round((line_units * line_price), 2)) as InvTotal
from 	invoice
		join line using (inv_number)
group by cus_code
order by cus_code
) as TotalPurchasesPerCustomer;