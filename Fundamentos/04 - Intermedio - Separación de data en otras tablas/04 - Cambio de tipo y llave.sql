-- Lista todos los paises.
select * from country;

-- Cambio de tipo de columna.
alter table
    country
alter COLUMN
    continent type int4 using continent :: integer;