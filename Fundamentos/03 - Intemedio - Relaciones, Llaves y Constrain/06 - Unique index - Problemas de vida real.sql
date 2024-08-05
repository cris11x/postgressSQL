-- 1. CREACION DE INDICES:

-- Indices Simples:
-- create index "nombre_indice" on nombre_tabla (nombre_columna);
create index "index_district" on city (district);

-- Indices Compuetos:
-- create unique index "nombre_indice" on nombre_tabla (nombre_columna_1, nombre_columna_2, nombre_columna_n);
create unique index "inique_name_country_code_distric" on city (name, countrycode, district);

-- Nota:
-- + Consejos para colocar indices:
-- - Columnas altamente transaccionales (Cambian con frecuencia).
-- - Columnas altamente consultadas.