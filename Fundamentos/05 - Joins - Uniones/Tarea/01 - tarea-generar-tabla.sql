

-- Count Union - Tarea
-- Total |  Continent
-- 5	  | Antarctica
-- 28	  | Oceania
-- 46	  | Europe
-- 51	  | America
-- 51	  | Asia
-- 58	  | Africa

-- Propuesta por el profesor.
(
    select
        count(*) as total,
        b.name
    from
        country a
        INNER JOIN continent b on a.continent = b.code
    where
        b.code not in (4, 6, 8)
    group by
        b.name
)
union
    (
        select
            count(*) as total,
            'America'
        from
            country a
            inner join continent b on a.continent = b.code
        where
            b.code in (4, 6, 8)
    )
order by
    total asc;

-- Solución realizada.
select
    sum(contador) as contador,
    'America' as name
from
    (
        select
            count(*) as contador,
            b.name
        from
            country a
            INNER JOIN continent b on a.continent = b.code
        WHERE
            b.name like '%America%'
        GROUP BY
            b.name
    ) as country
union
    (
        select
            count(*) as contador,
            b.name
        from
            country a
            INNER JOIN continent b on a.continent = b.code
        WHERE
            b.name NOT like '%America%'
        GROUP BY
            b.name
    )
