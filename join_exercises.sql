SHOW DATABASES;

-- ***PART ONE*** --

-- 1. 
USE join_example_db;

SHOW TABLES;

SELECT *
FROM users;

SELECT *
FROM roles;
-- 2a.
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

-- 2b.
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

-- 3.




-- ***PART TWO*** --

-- 1. .















