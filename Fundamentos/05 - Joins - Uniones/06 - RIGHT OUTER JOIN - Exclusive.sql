-- lISTADO DE TODOS LOS CONTIENETES CON NINGUN PAIS ASOCIADO.
select
    a.name as country,
    a.continent as continent_code,
    b.name as continent_name
from
    country a
    RIGHT JOIN continent b ON a.continent = b.code
WHERE
    A.continent IS NULL;