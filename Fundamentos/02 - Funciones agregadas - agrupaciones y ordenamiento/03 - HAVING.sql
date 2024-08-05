select
    count(*) as total,
    country
from
    users
group by
    country
HAVING
    count(*) BETWEEN 1
    and 5
order by
    count(*) desc;