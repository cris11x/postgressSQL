select * from max(hire_date) from employees;select
    max(hire_date),
--     max(hire_date) + INTERVAL '1 days' as days,
--     max(hire_date) + INTERVAL '1 months' as months,
--     max(hire_date) + INTERVAL '1 years' as years,
    max(hire_date) + INTERVAL '1.1 years' + INTERVAL '1 day' as years,
    date_part('year', now()),
    MAKE_INTERVAL( YEARS := date_part('year', now())::integer),
    max(hire_date) + MAKE_INTERVAL(YEARS:= 23)
from
    employees;