select EMP_NUM, EMP_LNAME, EMP_FNAME, SAL_AMOUNT
from LGEMPLOYEE
	join LGSALARY_HISTORY using (EMP_NUM)
group by EMP_NUM
having min(sal_from)
order by EMP_NUM;