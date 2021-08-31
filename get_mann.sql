CREATE OR REPLACE FUNCTION QUERY_JEFE(e_employee_id IN employees.employee_id%TYPE)
RETURN VARCHAR2
IS
	
	v_manager	employees.last_name%TYPE;
BEGIN
	SELECT m.last_name 

	INTO v_manager 
	FROM employees e, employees m 
	WHERE m.employee_id = e.manager_id
	AND e.employee_id=e_employee_id;

RETURN v_manager;
END QUERY_JEFE;
/
