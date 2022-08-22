ALTER TABLE invoice DROP FOREIGN KEY invoice_ibfk_1;
ALTER TABLE customer MODIFY COLUMN cust_num int(11) AUTO_INCREMENT;
ALTER TABLE customer AUTO_INCREMENT = 2000;
ALTER TABLE invoice ADD FOREIGN KEY (CUST_NUM) REFERENCES CUSTOMER(CUST_NUM);

ALTER TABLE invoice MODIFY COLUMN inv_num int(11) AUTO_INCREMENT;
ALTER TABLE invoice AUTO_INCREMENT = 9000;