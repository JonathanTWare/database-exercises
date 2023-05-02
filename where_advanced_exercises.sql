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

-- The above was incorrect, formatted incorrectly below is the correct way
-- correct answer is 10200, 10397, 10610

SELECT *
FROM employees
WHERE first_name =  'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya';


-- 3. Answer: 10397, 10821, 11327
SELECT *
FROM employees
WHERE (first_name =  'Irena'or 'Vidya'or 'Maya')
AND gender = 'M';

-- The above was incorrect, formatted incorrectly below is the correct way
-- Correct answer is 10200, 10397, 1081
SELECT *
FROM employees
WHERE (first_name =  'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
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
-- or simplified as WHERE last_name LIKE 'E%E' 

-- 8. Answer: 10008, 10011, 10012

SELECT * 
FROM employees;

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- The above is incorrect, below is the correct way
-- answe is 10008, 10011, and 10012
SELECT DISTINCT *
FROM employees
WHERE hire_date LIKE '199%';



-- 9. Answer 10078, 10115, 10261

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

-- The above is incorrect and can be simplified, below is the correct way
-- answer is 10078, 10115, and 10261

SELECT DISTINCT *
FROM employees
WHERE birth_date LIKE '%12-25';



-- 10. Answer: 10261, 10438, 10681

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
AND (MONTH(birth_date) = 12 AND DAY(birth_date) = 25);

-- The above is incorrect and can be simplified, below is the correct way
-- answer is 10261, 10438, ANBD 10681

SELECT DISTINCT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25';



-- 11. Answer: BELOW

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

-- The above is incorrect,  below is the correct way
-- answer is 1034, 10879 and 10923

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';


-- 12. Answer: BELOW

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

-- The above is incorrect,  below is the correct way
-- answer is 10879, 11395, and 11436

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';









































