select emp_num, emp_fname, emp_lname, emp_email, sum(line_qty) as TotalSold
from lginvoice
	join lgline using (inv_num)
	join lgproduct using (prod_sku)
	join lgbrand using (brand_id)
	join lgemployee on lgemployee.emp_num = lginvoice.EMPLOYEE_ID
where brand_name = "BINDER PRIME"
and (inv_date between "2017-11-01" and "2017-12-05")
group by employee_id
having sum(line_qty) =
(
	select max(TotalSold)
	from
	(
		select employee_id,
			sum(line_qty) TotalSold
        from lginvoice
			join lgline using (inv_num)
			join lgproduct using (prod_sku)
			join lgbrand using (brand_id)
		where brand_name = "BINDER PRIME"
		and (inv_date between "2017-11-01" and "2017-12-05")
		group by employee_id
        order by sum(line_qty) desc
	) as BlinderPrimeEmployeeSales
)
order by emp_lname;