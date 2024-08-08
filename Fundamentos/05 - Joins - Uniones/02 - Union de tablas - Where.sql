SELECT
    a.name as country ,b.name as continet from country a,continent b
where
    a.continent = b.code
order by
    a.name asc;