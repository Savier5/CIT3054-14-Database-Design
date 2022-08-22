select CUS_CODE, INV_NUMBER, P_DESCRIPT,
LINE_UNITS AS "Units Bought", LINE_PRICE as "Unit Price",
(LINE_UNITS * LINE_PRICE) as Subtotal
from INVOICE
	join LINE using (INV_NUMBER)
    join PRODUCT using (P_CODE)
order by CUS_CODE, INV_NUMBER, P_DESCRIPT;