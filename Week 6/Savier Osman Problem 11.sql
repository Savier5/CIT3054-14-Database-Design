-- 11.a 
delimiter //
CREATE TRIGGER trg_updatecustbalance2 AFTER DELETE ON invoice
FOR EACH ROW
BEGIN
	update customer set cust_balance = cust_balance - OLD.inv_amount;
END;//
delimiter ;

-- 11.b
delimiter //
CREATE PROCEDURE prc_invoice_delete (param_inv_num int(11))
BEGIN
	delete from invoice where inv_num = param_inv_num;
END;//
delimiter ;

-- 11.c
begin;
call prc_invoice_delete (8005);
commit;

-- 11.d
select cust_num, cust_balance, inv_num, inv_amount
from customer
	join invoice using (cust_num)
where cust_num = 1001;

