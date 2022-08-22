delimiter //
CREATE PROCEDURE prc_invoice_add (PRC_INV_NUM INT, PRC_CUST_NUM INT,
PRC_INV_DATE DATETIME, PRC_INV_AMOUNT float(8))
BEGIN
	CALL prc_invoice_add (8006, 1000, "2018-04-30", 301.72);
END;//
delimiter ;

commit;

SELECT CUST_NUM, CUST_BALANCE, INV_NUM, INV_AMOUNT 
from customer
	JOIN invoice USING (CUST_NUM);
    
drop PROCEDURE prc_invoice_add;