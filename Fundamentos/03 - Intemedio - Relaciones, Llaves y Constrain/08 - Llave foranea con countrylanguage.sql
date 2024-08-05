-- + CREANDO LLAVE FOREANEA.
-- Normal.
ALTER TABLE
    city
add
    CONSTRAINT fk_country_code 
    FOREIGN KEY (countrycode) 
    REFERENCES country(code);

-- Con borrado en cascada.
ALTER TABLE
    city
add
    CONSTRAINT fk_country_code 
    FOREIGN KEY (countrycode) 
    REFERENCES country(code)
    ON DELETE CASCADE;


-- + BORRAR LLAVE FORANEA.
-- ALTER TABLE nombre_de_la_tabla DROP CONSTRAINT nombre_de_la_llave_foranea;
ALTER TABLE city DROP CONSTRAINT fk_country_code;
