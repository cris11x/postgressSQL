select
    DISTINCT a.languagecode ,
    d."name" as lenguaje,
    c."name" as continent
from
    countrylanguage a
    inner JOIN country b ON a.countrycode = b.code
    inner join continent c on b.continent = c.code
    inner join language d on a.languagecode = d.code
where
    a.isofficial = true