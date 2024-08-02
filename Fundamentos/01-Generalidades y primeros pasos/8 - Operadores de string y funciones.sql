-- Mayusculas
select
    id,
    upper(name) as upper_name,
    lower(name) as lower_name,
    LENGTH(name) as LENGTH,
    (20 * 2) as constante,
    '*'|| id ||'-'|| name ||'*' as barcode,
    CONCAT('*', id, '-', name, '*'),
    name
from
    users;