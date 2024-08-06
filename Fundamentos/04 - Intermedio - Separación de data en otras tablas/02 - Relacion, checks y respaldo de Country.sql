-- Creo una replica de la tabla country.
CREATE TABLE "public"."country_bk" (
    "code" bpchar(3) NOT NULL,
    "name" text NOT NULL,
    "continent" text NOT NULL,
    "region" text NOT NULL,
    "surfacearea" float4 NOT NULL,
    "indepyear" int2,
    "population" int4 NOT NULL,
    "lifeexpectancy" float4,
    "gnp" numeric(10,2),
    "gnpold" numeric(10,2),
    "localname" text NOT NULL,
    "governmentform" text NOT NULL,
    "headofstate" text,
    "capital" int4,
    "code2" bpchar(2) NOT NULL,
    PRIMARY KEY ("code")
);

-- Inserto la misma data de la tabla country a la tabla country_bk
insert into country_bk
	select * from country;
	
-- Verifico que en la tabla country_bk este toda la información insertada
select * from country_bk;

alter table country drop CONSTRAINT country_continent_check;