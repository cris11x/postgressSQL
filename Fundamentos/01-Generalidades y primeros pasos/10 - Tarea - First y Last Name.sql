update
    users
set
    first_name = SUBSTRING(name, 0, POSITION(' ' in name)),
    last_name = SUBSTRING(name, POSITION(' ' in name) + 1);