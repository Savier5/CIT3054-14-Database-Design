select EMP_NUM, EMP_LNAME, EMP_FNAME, EMP_INITIAL
from employee
where EMP_LNAME like "Smith%"
order by emp_num;