SHOW DATABASES;

USE employees;

SELECT database();

SELECT *
FROM employees;

-- 2. Answer: Irena Reutenauer
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC;

-- 3.Answer: IRENA ACTON and IVidya Zweizig
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC, last_name ASC;


-- 4. Answer: IRENA ACTON and Maya Zyda
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name ASC, first_name ASC;





-- 5. Answer: BELOW
-- 10021 Ramzi Erde, 499648 Tadahiro Erde
SELECT *
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no ASC;

-- 6. Answer: BELOW
-- 899 rows, 67892 Teiji Eldridge, and 233488 Sergi Erde

SELECT DISTINCT *
FROM employees
WHERE last_name LIKE 'E%E' 
ORDER BY hire_date DESC;

-- 7. Answer: BELOW
-- 362 rows, Khun Bernini and Douadi Pettis

SELECT DISTINCT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;