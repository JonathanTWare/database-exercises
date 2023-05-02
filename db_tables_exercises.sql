#Open MySQL Workbench and login to the database server
#Save your work in a file named db_tables_exercises.sql

#List all the databases
SHOW DATABASES;

#Write the SQL code necessary to use the albums_db database
USE albums_db;

#Show the currently selected database
SELECT database();


#List all tables in the database
SHOW TABLES;


#Write the SQL code to switch the employees database
USE employees;

#Show the currently selected database
SELECT database();

#List all the tables in the database
SHOW TABLES;

#Explore the employees table. What different data types are present on this table?
SELECT *
FROM employees;
-- First and Last name, birth date, emplyee number, hire date, and gender


#Which table(s) do you think contain a numeric type column? (Write this question and your answer in a comment)
-- Emp_no -- 

#Which table(s) do you think contain a string type column? (Write this question and your answer in a comment)
-- first_name and last_name

#Which table(s) do you think contain a date type column? (Write this question and your answer in a comment)
-- birth_date and hire_date

#What is the relationship between the employees and the departments tables? (Write this question and your answer in a comment)
-- There is nothing in common between both tables. There is no relationship.

#Show the SQL that created the dept_manager table. Write the SQL it takes to show this as your exercise solution.
SHOW CREATE TABLE dept_manager;

/* CREATE TABLE `dept_manager` (
  `emp_no` int NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=latin1
*/