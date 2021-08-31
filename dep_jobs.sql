CREATE OR REPLACE FUNCTION QUERY_DEPT
(d_id IN employees.department_id%TYPE)
RETURN NUMBER
IS
	v_contador NUMBER:=0;
BEGIN 
select COUNT(DISTINCT  j.job_id)
INTO v_contador
from departments d,jobs j,employees e
where e.department_id=d.department_id and j.job_id=e.job_id
and d.department_id=d_id;	

RETURN v_contador;
END QUERY_DEPT;
/

