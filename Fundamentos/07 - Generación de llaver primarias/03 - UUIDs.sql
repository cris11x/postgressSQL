-- Genera UUIDS aleatorios.
select gen_random_uuid();

-- Creacion de una tabla, con el uuid generado nativamente por postgres.
CREATE TABLE Students (
    "id" uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    "name" VARCHAR(200) not NULL
);

-- Instalando extension adicional para UUID.
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Eliminado extension.
DROP EXTENSION "uuid-ossp";

-- Genera UUIDS aleatorios de la nueva extension.
SELECT uuid_generate_v4();

-- Creacion de una tabla, con el uuid generado de la nueva extension.
CREATE TABLE users5 (
    "user_id" UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    "username" VARCHAR
);