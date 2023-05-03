-- 1. Created SQL file

/* 2. Answer Below
'Zykh'
'Zyda'
'Zwicker'
'Zweizig'
'Zumaque'
'Zultner'
'Zucker'
'Zuberek'
'Zschoche'
'Zongker'
*/
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

/* 3. Answer Below
Alselm Cappello
Utz Mandell
Bouchung Shreiter
Baocai Kushner
Petter Stroustrup
*/
SELECT DISTINCT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY hire_date ASC
LIMIT 5;

-- 4. Answer Below
-- Limit is the lines of sentences and offset is the pages in analagoy. 5 is the limit and 10 is the number of pages.
SELECT DISTINCT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY hire_date ASC
LIMIT 5 OFFSET 50;



