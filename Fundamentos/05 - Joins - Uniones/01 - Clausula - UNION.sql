select code, name, '123' from continent where name like '%America%'
UNION
select 1, 'Otra cosa', name from continent where code in (3, 5)
ORDER BY
	name ASC;