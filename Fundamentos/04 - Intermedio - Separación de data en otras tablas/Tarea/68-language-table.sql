

-- Tarea con countryLanguage

-- Crear la tabla de language

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS language_code_seq;


-- Table Definition
CREATE TABLE "public"."language" (
    "code" int4 NOT NULL DEFAULT 	nextval('language_code_seq'::regclass),
    "name" text NOT NULL,
    PRIMARY KEY ("code")
);

-- Crear una columna en countrylanguage
ALTER TABLE countrylanguage
ADD COLUMN languagecode varchar(3);

-- Crear los registros en la base de datos del leguaje.
insert into language (name)
	select distinct "language" from countrylanguage

select * from "language";

-- Empezar con el select para confirmar lo que vamos a actualizar
select
    "language",
    (select code from "language" b where a."language" = b.name)
from
    countrylanguage a;

-- Actualizar todos los registros
update
    countrylanguage a 
set 
    languagecode = (select code from "language" b where a."language" = b.name);

-- Cambiar tipo de dato en countrylanguage - languagecode por int4
alter table
    countrylanguage
alter COLUMN
    languagecode Type int4 USING languagecode :: integer;

-- Crear el forening key y constraints de no nulo el language_code
ALTER TABLE
    countryLanguage
add
    CONSTRAINT fk_countrylanguague_languagecode 
    FOREIGN KEY (languagecode) 
    REFERENCES language(code);

-- Revisar lo creado
select * from countrylanguage;