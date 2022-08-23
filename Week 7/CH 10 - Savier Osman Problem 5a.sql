BEGIN;
INSERT INTO LINE (INV_NUMBER, LINE_NUMBER, P_CODE, LINE_UNITS, LINE_PRICE)
	VALUES('1010','1', '14-Q1/L3','2','17.49');
INSERT INTO INVOICE (INV_NUMBER, CUS_CODE, INV_DATE, INV_TOTAL, INV_TERMS, INV_STATUS)
	VALUES ('1010', '10011', '2018-4-15',
    (select round(((line_price * line_units) + (line_price * line_units * 0.10)), 2) from line where INV_NUMBER = "1010"),
    'CREDIT', 'NOT PAID');
COMMIT;

-- select * from INVOICE;
-- select * from line;