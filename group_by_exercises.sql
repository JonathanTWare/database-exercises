-- 1. Creat SQL file

SHOW DATABASES;

SELECT *
FROM titles;
-- 2. COUNT and Listed unique titles
SELECT DISTINCT title
FROM titles;

SELECT COUNT(DISTINCT title)
FROM titles;

-- 3.  Answer Below

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

-- 4. Answer belpw
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E' 
GROUP BY first_name, last_name;

-- 5. Chleq, Lindqvist, and Qiwen
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- 6. Chleq - 189, Lindqvist- 190, Qiwen 168
SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- 7. 
SELECT first_name AS "First Name", gender AS "Gender", COUNT(*) AS HOW_MANY
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY first_name, gender
ORDER BY  HOW_MANY DESC;

-- 8.
SELECT 
    LOWER(CONCAT(SUBSTR(first_name, 1, 1),
                    SUBSTR(last_name, 1, 4),
                    '_',
                    SUBSTR(birth_date, 6, 2),
                    SUBSTR(birth_date, 3, 2))) AS USERNAME,
    COUNT(*) AS UNQ_username
FROM
    employees
    GROUP BY USERNAME
    ORDER BY UNQ_username DESC;
    
    -- 9. Yes, 6. 13,251 usernames
    
    SELECT 
    LOWER(CONCAT(SUBSTR(first_name, 1, 1),
                    SUBSTR(last_name, 1, 4),
                    '_',
                    SUBSTR(birth_date, 6, 2),
                    SUBSTR(birth_date, 3, 2))) AS USERNAME,
    COUNT(*) AS UNQ_username
FROM
    employees
    GROUP BY USERNAME
    HAVING UNQ_username > 1
    ORDER BY UNQ_username DESC; 
    
    -- OR MAKE A SUBQUERY
    
   SELECT 
    COUNT(*) AS No_of_Unq_Usernames
FROM
    (SELECT 
        LOWER(CONCAT(SUBSTR(first_name, 1, 1), SUBSTR(last_name, 1, 4), '_', SUBSTR(birth_date, 6, 2), SUBSTR(birth_date, 3, 2))) AS USERNAME,
            COUNT(*) AS UNQ_username
    FROM
        employees
    GROUP BY USERNAME
    HAVING UNQ_username > 1
    ORDER BY UNQ_username DESC) AS SUBQUERY
    


