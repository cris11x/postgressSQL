-- 1. Listado de catidad de paises por continente.
select
    count(*),
    b.name
from
    country a
    INNER JOIN continent b on a.continent = b.code
GROUP BY
    b.name
order by
    count(*) asc;

-- 2. Lista los continente que no tienen ningun pais.
select
    0,
    b.name
from
    country a
    RIGHT JOIN continent b on a.continent = b.code
    WHERE a.continent is null
GROUP BY
    b.name
order by
    count(*) asc;


-- 3. se unen ambas consultas con un union al final de esa union se hace un orderby.
(
    select
        count(*) as contador,
        b.name
    from
        country a
        INNER JOIN continent b on a.continent = b.code
    GROUP BY
        b.name
)
union
    (
        select
            0 as contador,
            b.name
        from
            country a
            RIGHT JOIN continent b on a.continent = b.code
        WHERE
            a.continent is null
        GROUP BY
            b.name
    )
order by
    contador asc;