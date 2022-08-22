select EMP_FNAME, EMP_LNAME, EMP_EMAIL
from lgemployee
where emp_hiredate >= "2005-01-01"
and emp_hiredate <= "2014-12-31"
order by emp_lname, emp_fname;