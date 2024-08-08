select
    a.name as country,
    a.continent as continent_code,
    b.name as continent_name
from
    country a 
    FULL OUTER JOIN continent b ON a.continent = b.code;