CREATE OR REPLACE FUNCTION get_sal
(p_id IN employees.employee_id%TYPE)
RETURN NUMBER
IS
	v_salary employees.salary%TYPE:=0;
BEGIN
	SELECT salary
	INTO v_salary
	FROM employees
	WHERE employee_id=p_id;
RETURN v_salary;
END get_sal;
/
