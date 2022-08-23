SELECT REG_ID, CUS_CODE,
sum(sale_units * sale_price) as "Total Sales"
FROM dwdaysalesfact
	join DWCUSTOMER USING (CUS_CODE)
    join DWREGION USING (REG_ID)
group by REG_ID, CUS_CODE with rollup;