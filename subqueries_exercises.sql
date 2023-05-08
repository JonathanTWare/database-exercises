USE employees;

SELECT *
FROM employees;

-- 1.

SELECT *
FROM employees
WHERE emp_no = 101010;

SELECT emp_no, hire_date
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);

-- 2.

SELECT *
FROM titles;


SELECT title, CONCAT(aamods.first_name, " ", aamods.last_name) AS Full_Name
FROM titles
JOIN (
	SELECT *
    FROM employees
    WHERE first_name = 'Aamod'
    ) AS aamods ON aamods.emp_no = titles.emp_no
WHERE titles.to_date > NOW();

-- 3.

SELECT count(*) 
FROM employees 
WHERE emp_no NOT IN 
    (SELECT emp_no
    FROM dept_emp
    WHERE to_date > NOW());
    
    -- 4.
    
SELECT *
FROM employees
WHERE emp_no in (
    SELECT emp_no
	FROM dept_manager
	WHERE to_date > now()
)
AND gender = "f";

-- 5.

SELECT salary, emp_no
FROM salaries 
JOIN employees using(emp_no)
WHERE to_date > now() 
AND  salary > (SELECT AVG(salary) FROM salaries);

-- 6.

#need to further review these steps

SELECT((SELECT count(*)
FROM salaries
WHERE to_date > now()
AND salary > (
(SELECT MAX(salary) FROM salaries WHERE to_date > now()) -
(SELECT STD(salary) FROM salaries WHERE to_date > now())
))/(SELECT count(*)
FROM salaries 
WHERE to_date > now())) * 100 AS "1 Stdev of Highest Salary";








