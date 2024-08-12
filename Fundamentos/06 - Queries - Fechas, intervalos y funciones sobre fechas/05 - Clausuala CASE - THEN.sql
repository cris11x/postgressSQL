select
    first_name,
    last_name,
    hire_date,
    CASE
    	WHEN hire_date > now() - INTERVAL '1 year' then '1 año o menos'
    	WHEN hire_date > now() - INTERVAL '3 year' then '1 a 3 años'
    	WHEN hire_date > now() - INTERVAL '6 year' then '3 a 6 años'
    	else '+ de 6 años'
    END as rango_antiguedad
from
    employees
order by
    hire_date desc;