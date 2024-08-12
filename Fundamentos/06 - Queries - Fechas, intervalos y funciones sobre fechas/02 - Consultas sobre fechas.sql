select * from employees
where hire_date > '1998-02-05'
order by hire_date desc;
    
    
SELECT
	max(hire_date) as mas_nuevo,
	min(hire_date) as primer_empleado
from employees;


SELECT * FROM employees
WHERE hire_date BETWEEN '1999-01-01' AND '2000-01-01'
ORDER BY hire_date desc;