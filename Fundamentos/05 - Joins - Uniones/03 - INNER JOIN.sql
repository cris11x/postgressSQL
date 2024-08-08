select
    a.name as country,
    b.name as continent
from
    country a
    inner join continent b on a.continent = b.code
order by
    a.name;