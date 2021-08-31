CREATE OR REPLACE FUNCTION annual_comp
(em_id IN employees.employee_id%TYPE)
RETURN VARCHAR2
IS
	v_salary employees.salary%TYPE:=0;
	v_com employees.commission_pct%TYPE:=0;
BEGIN
	SELECT salary,commission_pct 
	INTO v_salary,v_com
	FROM employees
	WHERE employee_id=em_id;
  
    RETURN TO_CHAR(v_salary * 12 + v_com * v_salary * 12);
END annual_comp;

