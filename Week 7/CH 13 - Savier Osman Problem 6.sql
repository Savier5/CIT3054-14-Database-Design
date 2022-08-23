SELECT TM_MONTH, P_CATEGORY, count(SALE_UNITS) as '# of Sales',
sum(sale_units * sale_price) as "Total Sales"
FROM dwdaysalesfact
	join DWPRODUCT USING (P_CODE)
    join DWTIME USING (TM_ID)
group by TM_MONTH, P_CATEGORY with rollup;