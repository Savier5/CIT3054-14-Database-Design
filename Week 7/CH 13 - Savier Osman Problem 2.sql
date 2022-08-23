SELECT CUS_CODE, TM_MONTH, P_CODE,
sum(sale_units * sale_price) as "Total Sales"
FROM dwdaysalesfact
	join DWTIME USING (TM_ID)
group by CUS_CODE, TM_MONTH, P_CODE with rollup;