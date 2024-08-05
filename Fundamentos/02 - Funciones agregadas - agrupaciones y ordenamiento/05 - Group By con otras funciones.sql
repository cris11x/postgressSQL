select
    count(*),
    SUBSTRING(email, POSITION('@' IN email) + 1) as domain
from
    users
group by
    SUBSTRING(email, POSITION('@' IN email) + 1)
having
    count(*) > 1;