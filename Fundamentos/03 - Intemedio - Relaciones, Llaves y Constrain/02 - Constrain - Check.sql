-- Lista los paises-
select
    *
from
    country;

-- Agrega una condicion al campo surfacearea para solo ingresar numeros positovos.
alter table
    country
add
    check(surfacearea >= 0);