select * from customer;
select * from invoice;

BEGIN;
insert into customer (cust_lname, cust_fname, cust_balance) values ("Powers", "Ruth", 500);
select * from customer;
insert into invoice (cust_num, inv_date, inv_amount) values (2000, "2016-05-05", 500);
select * from invoice;
COMMIT;