-- Lista todos los paises
select
    *
from
    country;
    
-- Asigna como llaver primaria el codigo del pais.    
alter table
    country
add
    Primary key (code);
