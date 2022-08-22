-- select PROJ_NAME, PROJ_VALUE, PROJ_BALANCE, EMP_LNAME, EMP_FNAME, EMP_INITIAL, JOB_CODE, JOB_DESCRIPTION, JOB_CHG_HOUR
-- from project join employee on project.EMP_NUM = employee.EMP_NUM;

select PROJ_NAME, PROJ_VALUE, PROJ_BALANCE, EMP_LNAME, EMP_FNAME, EMP_INITIAL, JOB_CODE, JOB_DESCRIPTION, JOB_CHG_HOUR
from project
	join employee using (EMP_NUM)
	join job using (job_code)
order by PROJ_VALUE;