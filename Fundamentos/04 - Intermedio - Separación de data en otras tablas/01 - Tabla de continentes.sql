-- 1. Lista el nombre de los continentes descartando a los repetidos en la tabla paises(country)-
select
    distinct continent
from
    country
order by
    continent asc;

-- 2. Por medio del insert into y combinada con un select que por medio de un distinct lista el nombre de los continentes.
insert into
    continent (name)
	select
	    distinct continent
	from
	    country
	order by
	    continent asc;

-- 3. Se verifica que los nuevos datos han sido insertados.  
select
    *
from
    continent;