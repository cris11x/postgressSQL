/*Que son indices? : En simples palabras, los índices en una base de datos son como un índice en un libro.
Ayudan a encontrar información rápidamente sin tener que revisar toda la tabla. 
Mejoran la velocidad de las búsquedas y consultas, haciendo que el acceso a los datos sea más eficiente.*/

-- Lista de indices:
SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'country';

-- Creacion de indices:

-- 1.Indice para la columna nombre de la table country.
create UNIQUE index "unique_country_name" on country(name);
-- 2.Indice para la columna continent.
create index "country_continent" on country(continent);