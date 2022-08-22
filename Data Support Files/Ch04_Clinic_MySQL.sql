/* Database Systems, Coronel/Morris */
/* Type of SQL : MySQL */


CREATE TABLE DOCTOR (
DOC_ID varchar(5),
DOC_LNAME varchar(15),
DOC_FNAME varchar(15),
DOC_INITIAL varchar(1),
DOC_SPECIALTY varchar(15)
);
INSERT INTO DOCTOR VALUES('29827','Sanchez','Julio','J','Dermatology');
INSERT INTO DOCTOR VALUES('32445','Jorgensen','Annelise','G','Neurology');
INSERT INTO DOCTOR VALUES('33456','Korenski','Anatoly','A','Urology');
INSERT INTO DOCTOR VALUES('33989','LeGrande','George','','Pediatrics');
INSERT INTO DOCTOR VALUES('34409','Washington','Dennis','F','Orthopaedics');
INSERT INTO DOCTOR VALUES('36221','McPherson','Katye','H','Dermatology');
INSERT INTO DOCTOR VALUES('36712','Dreifag','Herman','G','Psychiatry');
INSERT INTO DOCTOR VALUES('38995','Minh','Tran','','Neurology');
INSERT INTO DOCTOR VALUES('40004','Chin','Ming','D','Orthopaedics');
INSERT INTO DOCTOR VALUES('40028','Feinstein','Denise','L','Gynecology');


/* -- */


CREATE TABLE DRUG (
DRUG_CODE varchar(5),
DRUG_NAME varchar(25),
DRUG_PRICE numeric(7,2)
);
INSERT INTO DRUG VALUES('AF15','Afgapan-15','25');
INSERT INTO DRUG VALUES('AF25','Afgapan-25','35');
INSERT INTO DRUG VALUES('DRO','Droalene Chloride','111.89');
INSERT INTO DRUG VALUES('DRZ','Druzocholar Cryptolene','18.99');
INSERT INTO DRUG VALUES('KO15','Koliabar Oxyhexalene','65.75');
INSERT INTO DRUG VALUES('OLE','Oleander-Drizapan','123.95');
INSERT INTO DRUG VALUES('TRYP','Tryptolac Heptadimetric','79.45');


/* -- */

CREATE TABLE PATIENT (
PAT_NUM varchar(5),
PAT_TITLE varchar(4),
PAT_LNAME varchar(15),
PAT_FNAME varchar(15),
PAT_INITIAL varchar(1),
PAT_DOB datetime,
PAT_AREACODE varchar(3),
PAT_PHONE varchar(8)
);
INSERT INTO PATIENT VALUES('100','Mr.','Kolmycz','George','D','1942-6-15','615','324-5456');
INSERT INTO PATIENT VALUES('101','Ms.','Lewis','Rhonda','G','2005-3-19','615','324-4472');
INSERT INTO PATIENT VALUES('102','Mr.','VanDam','Rhett','','1958-11-14','901','675-8993');
INSERT INTO PATIENT VALUES('103','Ms.','Jones','Anne','M','1974-10-16','615','898-3456');
INSERT INTO PATIENT VALUES('104','Mr.','Lange','John','P','1971-11-8','901','504-4430');
INSERT INTO PATIENT VALUES('105','Mr.','Williams','Robert','D','1975-3-14','615','890-3220');
INSERT INTO PATIENT VALUES('106','Mrs.','Smith','Jeanine','K','2003-2-12','615','324-7883');
INSERT INTO PATIENT VALUES('107','Mr.','Diante','Jorge','D','1974-8-21','615','890-4567');
INSERT INTO PATIENT VALUES('108','Mr.','Wiesenbach','Paul','R','1966-2-14','615','897-4358');
INSERT INTO PATIENT VALUES('109','Mr.','Smith','George','K','1961-6-18','901','504-3339');
INSERT INTO PATIENT VALUES('110','Mrs.','Genkazi','Leighla','W','1970-5-19','901','569-0093');
INSERT INTO PATIENT VALUES('111','Mr.','Washington','Rupert','E','1966-1-3','615','890-4925');
INSERT INTO PATIENT VALUES('112','Mr.','Johnson','Edward','E','1961-5-14','615','898-4387');
INSERT INTO PATIENT VALUES('113','Ms.','Smythe','Melanie','P','1970-9-15','615','324-9006');
INSERT INTO PATIENT VALUES('114','Ms.','Brandon','Marie','G','1932-11-2','901','882-0845');
INSERT INTO PATIENT VALUES('115','Mrs.','Saranda','Hermine','R','1972-7-25','615','324-5505');
INSERT INTO PATIENT VALUES('116','Mr.','Smith','George','A','1965-11-8','615','890-2984');

/* -- */


CREATE TABLE PRESCRIPTION (
DOC_ID varchar(5),
PAT_NUM varchar(5),
DRUG_CODE varchar(5),
PRES_DOSAGE varchar(50),
PRES_DATE datetime
);
INSERT INTO PRESCRIPTION VALUES('32445','102','DRZ','2 tablets every four hours -- 50 tablets total','2018-11-12');
INSERT INTO PRESCRIPTION VALUES('34409','101','KO15','1 tablet every six hours -- 30 tablets total','2018-11-14');
INSERT INTO PRESCRIPTION VALUES('32445','113','OLE','1 teaspoon with each meal -- 250 ml total','2018-11-14');
INSERT INTO PRESCRIPTION VALUES('36221','109','DRO','2 tablets with every meal -- 60 tablets total','2018-11-14');
INSERT INTO PRESCRIPTION VALUES('38995','107','KO15','1 tablet every six hours -- 30 tablets total','2018-11-14');


