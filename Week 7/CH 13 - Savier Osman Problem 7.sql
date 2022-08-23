SELECT tm_month, p_category, p_code, count(p_code) as "# Of Sales",
sum(sale_units * sale_price) as "Total Sales"
FROM dwdaysalesfact as f
	join dwtime as t using (tm_id)
    join dwproduct as p using (p_code)
group by tm_month, p_category, p_code with rollup;
