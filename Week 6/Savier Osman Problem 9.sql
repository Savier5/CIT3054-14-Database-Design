delimiter //
CREATE PROCEDURE prc_cust_add (PRC_CUST_NUM int(11), PRC_CUST_LNAME varchar(30),
PRC_CUST_FNAME varchar(30), PRC_CUST_BALANCE decimal(8,2), CUST_DOB date)
BEGIN
	insert into customer values (PRC_CUST_NUM, PRC_CUST_LNAME, PRC_CUST_FNAME, PRC_CUST_BALANCE, CUST_DOB);
END;//
delimiter ;

CALL prc_cust_add (1002, "Rauther", "Peter", 0.00, "1970-01-01");
SELECT * from customer;

commit;