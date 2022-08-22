delimiter //
CREATE TRIGGER trg_updatecustbalance AFTER INSERT ON invoice
FOR EACH ROW
BEGIN
	UPDATE customer set cust_balanace = cust_balance + new.inv_amount
    WHERE cust_num = new.cust_num;
    INSERT INTO invoice VALUES (8005, 1001, "2018-4-27", 225, 40);
END;//
delimiter ;

COMMIT;

select * from customer;