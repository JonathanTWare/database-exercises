-- *** PART ONE ***


-- 1. 
USE join_example_db;

SELECT *
FROM users;

SELECT *
FROM roles;

/*  2. INNER -  GUESS: rows will not be there when running the below. ACTUAL: INNER JOIN only kept 4 rows.
	   LEFT -   GUESS: 4 rows will be returned. ACTUAL: LEFT JOIN only kept 6 rows of user data 4 rows of role data, generating 2 rows of NULL for name and role_id.
       RIGHT - GUESS: We lose 2 rows of user data and keep 6 rows of role_id and name. ACTUAL: 5 total rows, 5th row missing user info as NULL but keeping Role_id and Name
       
       */

SELECT *
FROM users AS u
JOIN roles AS r ON r.id = u.role_id;

SELECT *
FROM users AS u
LEFT JOIN roles AS r ON r.id = u.role_id;

SELECT *
FROM users AS u
RIGHT JOIN roles AS r ON r.id = u.role_id;

SELECT u.role_id, r.name, COUNT(*) AS no_of_emp
FROM users AS u
JOIN roles AS r ON r.id = u.role_id
GROUP BY u.role_id, r.name
ORDER BY u.role_id ASC;







-- *** PART 2 *** 
-- 1. 
USE employees;


-- 2.

SELECT *
FROM departments;

SELECT *
FROM dept_manager;


SELECT * 
FROM employees;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name,' ' ,e.last_name) AS Department_Manager
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date LIKE '9999%'
ORDER BY d.dept_name ASC;

-- 3.

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name,' ' ,e.last_name) AS Department_Manager, gender
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date LIKE '9999%' AND  gender = 'F'
ORDER BY d.dept_name ASC;

-- 4.


SELECT *
FROM dept_emp;

SELECT *
FROM titles;

SELECT t.title, COUNT(t.emp_no) AS No_of_Emp
FROM titles AS t
JOIN dept_emp AS dp ON dp.emp_no = t.emp_no
JOIN departments AS d ON d.dept_no = dp.dept_no
WHERE dp.to_date LIKE '9999%' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

-- 5.

USE employees;


SELECT *
FROM dept_manager;



SELECT dp.dept_name,  CONCAT(e.first_name," ", e.last_name) AS MANAGER_NAME, s.salary
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN salaries AS s ON dm.emp_no = s.emp_no
JOIN departments AS dp ON dm.dept_no = dp.dept_no
WHERE dm.to_date LIKE '9999%' AND s.to_date LIKE '9999%'
ORDER BY dp.dept_name ASC;







-- 6. 
SELECT de.dept_no, d.dept_name, COUNT(*) AS num_employees
FROM dept_emp AS de
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE de.to_date LIKE '9999%'
GROUP BY d.dept_name
ORDER BY de.dept_no ASC;

-- 7.

SELECT d.dept_name, AVG(s.salary) AS avg_salary
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN salaries AS s ON e.emp_no = s.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE s.to_date LIKE '9999%' AND de.to_date LIKE '9999%'
GROUP BY d.dept_name
ORDER BY avg_salary DESC
LIMIT 1;

-- 8.

SELECT UPPER (CONCAT(e.first_name," ", e.last_name)) AS HIGHEST_PAID_MARKETING
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
JOIN dept_emp AS de ON e.emp_no = de.emp_no
WHERE s.to_date LIKE '9999%' AND de.to_date LIKE '9999%' AND de.dept_no = 'd001'
ORDER BY s.salary DESC
LIMIT 1;

-- 9.


SELECT e.first_name, d.dept_name, AVG(s.salary) AS avg_salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE s.to_date LIKE '9999%' AND dm.to_date LIKE '9999%' 
GROUP BY dm.dept_no
ORDER BY avg_salary DESC
LIMIT 1;

-- 10.
SELECT d.dept_name, ROUND(AVG(s.salary)) AS avg_salary
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN salaries AS s ON e.emp_no = s.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
GROUP BY d.dept_name
ORDER BY avg_salary DESC;

-- 11.

SELECT (CONCAT(e.first_name, e.last_name)), d.dept_name, CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
JOIN dept_manager AS dm ON de.dept_no = dm.dept_no
JOIN employees AS m ON dm.emp_no = m.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';


SELECT COUNT(*) as total_count
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
JOIN dept_manager AS dm ON de.dept_no = dm.dept_no
JOIN employees AS m ON dm.emp_no = m.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';









 




























