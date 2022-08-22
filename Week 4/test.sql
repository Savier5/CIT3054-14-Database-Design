select *
from employee
where job_code = "501"
and EMP_HIREDATE >= "1989-01-01"
and EMP_LNAME like 'S%';

select EMP_NUM as "Employee Number", EMP_LNAME as "EMployee Last Name", EMP_FNAME as "Employee First Name", EMP_INITIAL as "Employee Inital", EMP_HIREDATE, JOB_CODE
from employee
where (job_code = "501" or JOB_CODE = "502")
order by EMP_HIREDATE desc;