BEGIN;
INSERT INTO PAYMENTS (PMT_ID, PMT_DATE, CUS_CODE, PMT_AMT, PMT_TYPE)
	VALUES ('1012', '2018-5-10', '10011', '38.48', 'CASH');
UPDATE INVOICE SET INV_STATUS = 'PAID' where cus_code = '10011';
COMMIT;