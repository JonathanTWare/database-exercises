-- 1.
SELECT dp.dept_no,dp.emp_no,dp.from_date AS 'start',dp.to_date AS 'end',dp.to_date > NOW() AS current_employee
FROM dept_emp dp
ORDER BY emp_no;

-- 2.

SELECT first_name, last_name,LEFT(last_name, 1) AS firstletter_last_name,
    CASE
        WHEN LEFT(last_name, 1) <= 'H' THEN 'A-H'
        WHEN SUBSTR(last_name, 1, 1) <= 'Q' THEN 'I-Q'
        WHEN LEFT(last_name, 1) <= 'Z' THEN 'R-Z'
    END AS alpha_group
FROM employees;

-- 3.
SELECT COUNT(*) AS HOW_MANY_Emp, CONCAT(SUBSTR(birth_date, 1, 3), '0') as born_decade
FROM employees
GROUP BY born_decade;

-- 4.

SELECT
    CASE
	WHEN dp.dept_name IN ('Research', 'Development') THEN 'R&D'
	WHEN dp.dept_name IN ('Sales', 'Marketing') THEN 'Sales & Marketing'
	WHEN dp.dept_name IN ('Production', 'Quality Management') THEN 'Prod & QM'
	WHEN dp.dept_name IN ('Finance', 'Human Resources') THEN 'Finanace & HR'
	ELSE dp.dept_name
    END AS Department, salary AS AVG_SALARY
FROM departments AS dp
JOIN dept_emp AS de USING (dept_no)
JOIN salaries AS s USING (emp_no)
WHERE s.to_date > NOW() AND de.to_date > NOW(); 


-- wanting to gather count all row output for the above --





