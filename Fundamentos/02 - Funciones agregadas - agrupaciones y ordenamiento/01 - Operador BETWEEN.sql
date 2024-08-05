-- Sin between

select
    first_name,
    last_name,
    followers
from
    users
where
    followers > 4600 AND followers < 4700
order by 
	followers desc;


-- Con between

select
    first_name,
    last_name,
    followers
from
    users
where
    followers BETWEEN 4600 and 4700
order by 
	followers desc;