SELECT cus_code as "Customer Code", p_code as "Product Code",
sum(sale_units * sale_price) as "Total Sales"
FROM dwdaysalesfact as f
group by cus_code, p_code with rollup;