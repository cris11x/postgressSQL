-- Creacion de una secuencia.
CREATE SEQUENCE nombre_secuencia;
-- Eliminar una secuencia.
DROP SEQUENCE nombre_secuancia;

-- Genera una nueva secuencia.
select nextval('user_sequence');
-- Muestra la secuecia actual y la nueva secuancia generada.
select currval('user_sequence'), nextval('user_sequence');

-- Creacion de una tabla con una secuancia.
CREATE TABLE users7 (
    "user_id" INTEGER PRIMARY KEY DEFAULT nextval('user_sequence'),
    "username" VARCHAR
);