-- En la tabla pais en el campo continent, una lista de string admitidos en ese campo.

alter table
    country
add
    CHECK(
        (continent = 'Asia')
        or (continent = 'South America')
        or (continent = 'North America')
        or (continent = 'Oceania')
        or (continent = 'Antarctica')
        or (continent = 'Africa')
        or (continent = 'Europe')
    );
