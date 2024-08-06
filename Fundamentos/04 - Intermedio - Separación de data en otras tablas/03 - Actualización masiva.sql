-- Lista los paises
select
    *
from
    country;

-- Lista la tabla continente.
select
    *
from
    continent;

-- Elimina la relacion de la llave foranea.
alter table
    country drop CONSTRAINT country_continent_check;
    
-- Lista el cotenido de la tabla pais, por medio de un select desde la tabla continete lista el codigo del pais.
select
    a.name, a.continent,
    (select b.code from continent b where b.name = a.continent)
from
    country a;
    
-- Actualiza el campo continet de la tabla country por id.    
update
    country a
set
    continent = (
        select
            "code"
        from
            continent b
        where
            b.name = a.continent
    );