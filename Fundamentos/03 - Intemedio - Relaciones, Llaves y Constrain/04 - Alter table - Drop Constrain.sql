-- Se desea eliminar el ultimo constrain aplicado en la tabla country en el campo continent.

-- Visulizar constrain de una tabla.
SELECT
    constraint_name,
    constraint_type
FROM
    information_schema.table_constraints
WHERE
    table_name = 'country';


-- Eliminar constrain.
alter table
    country drop CONSTRAINT "country_continent_check";