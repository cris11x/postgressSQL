select
    sum(total)
from
    (
        select
            count(*) as total,
            SUBSTRING(email, POSITION('@' IN email) + 1) as domain
        from
            users
        group by
            SUBSTRING(email, POSITION('@' IN email) + 1)
        having
            count(*) > 1
        order by
            SUBSTRING(email, POSITION('@' IN email) + 1) asc
    ) as email_domains;