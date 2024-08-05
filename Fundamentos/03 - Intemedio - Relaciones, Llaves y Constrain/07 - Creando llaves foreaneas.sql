-- Crear llave foranea.

/*
ALTER TABLE
    nombre_tabla
add
    CONSTRAINT fk_tabla_columna FOREIGN KEY (nombre_columna) REFERENCES tabla_referencia(columna_llave_primaria);
*/

ALTER TABLE
    city
add
    CONSTRAINT fk_country_code FOREIGN KEY (countrycode) REFERENCES country(code);