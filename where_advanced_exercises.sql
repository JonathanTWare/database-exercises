SHOW DATABASES;

USE employees;

SELECT database();

SELECT *
FROM employees;

-- 1. Answer: 10200, 10397, 10610
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya');

-- 2.Answer: 10397, 10610, 10821
SELECT *
FROM employees
WHERE first_name =  'Irena'or 'Vidya'or 'Maya';

-- 3. Answer: 10397, 10821, 11327
SELECT *
FROM employees
WHERE (first_name =  'Irena'or 'Vidya'or 'Maya')
AND gender = 'M';

-- 4. Answer: BELOW

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%';

-- 5. Answer: BELOW

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%' 
OR last_name LIKE '%E';

-- 6. Answer: BELOW

SELECT DISTINCT last_name
FROM employees
WHERE last_name NOT LIKE 'E%' 
AND last_name LIKE '%E';

-- 7. Answer: BELOW
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%' 
AND last_name LIKE '%E';

-- 8. Answer: 10008, 10011, 10012

SELECT * 
FROM employees;

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- 9. Answer 10078, 10115, 10261

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

-- 10. Answer: 10261, 10438, 10681

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
AND (MONTH(birth_date) = 12 AND DAY(birth_date) = 25);

-- 11. Answer: BELOW

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

-- 12. Answer: BELOW

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';




























