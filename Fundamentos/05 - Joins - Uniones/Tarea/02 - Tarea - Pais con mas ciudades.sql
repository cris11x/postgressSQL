-- Quiero que me muestren el pais con mas ciudades.
-- Campos: Total de ciudades y el nombre del pais.
-- Usar inner join.


-- Solución implementada.
select
    count(*) as total,
    a.name
from
    country a
    inner join city b on a.code = b.countrycode
group by
    a.code
order by
    total desc
LIMIT
    1;

-- Solucion implemeta por el profesor.
select
    count(*) as total,
    b.name
from
    city a
    inner join country b on a.countrycode = b.code
group by
    b.name
order by
    count(*) desc
limit
    1;