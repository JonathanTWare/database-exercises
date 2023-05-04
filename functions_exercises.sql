
-- 1. create file
-- 2. Answer: BELOW
-- 
SELECT CONCAT (first_name," ", last_name) AS Full_Name
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY full_name ASC;
-- 3. Answer: BELOW
-- 
SELECT UPPER (CONCAT(first_name," ", last_name)) AS Full_Name
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY full_name ASC;
-- 4. Answer: BELOW
SELECT COUNT(first_name) AS Output_Count
FROM employees
WHERE last_name like 'E%E'
ORDER BY last_name ASC;

-- 5. Answer Below
SELECT first_name AS 'FIRST NAME', last_name AS 'LAST NAME' ,hire_date AS 'HIRE DATE', CURDATE() AS TODAY,  DATEDIFF(CURDATE(),hire_date) AS 'NUMBER OF DAYS EMPLOYED' 
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25';

-- 6. Answer Below
-- MIN SALARY: 38623, MAX SALARY: 158220
SHOW TABLES;

SELECT *
FROM salaries;

SELECT emp_no, salary AS Smallest_Salary
FROM salaries
WHERE salary = (SELECT MIN(salary) FROM salaries);

SELECT MAX(salary) AS Smallest_Salary
FROM salaries;



-- 7. Answer Below
--
SELECT 
    *
FROM
    employees;
    

SELECT 
    LOWER(CONCAT(SUBSTR(first_name, 1, 1),
                    SUBSTR(last_name, 1, 4),
                    '_',
                    SUBSTR(birth_date, 6, 2),
                    SUBSTR(birth_date, 3, 2))) AS USERNAME,
    CONCAT(first_name, ' ', last_name) AS "Full Name",
    birth_date AS  "BIRTH DATE"
FROM
    employees;
    




