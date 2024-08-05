-- Utillizando GROUP BY para  contar la contidad de seguidores(followers)
select
    count(*) as conteo,
    followers
from
    users
where
    followers = 4
    or followers = 4999
GROUP BY
    followers;
    
-- con between
select
    count(*) as conteo,
    followers
from
    users
where
    followers BETWEEN 4500 and 4999
GROUP BY
    followers;