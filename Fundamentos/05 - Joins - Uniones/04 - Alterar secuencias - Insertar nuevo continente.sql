-- 1. Listar secuencias.
SELECT sequence_schema, sequence_name
FROM information_schema.sequences;

-- 2. Editar secuencias.
-- alter SEQUENCE "nombre_secuencia" RESTART with 8;
alter SEQUENCE "continent_code_seq" RESTART with 8;
