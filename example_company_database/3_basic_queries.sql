-- Find all employees ordered by salary
SELECT *
FROM employee
ORDER BY SALARY DESC;

-- Find all employees ordered by sex then name
SELECT *
FROM employee
ORDER BY sex, first_name, last_name;

-- Find the first 5 employees 
SELECT *
FROM employee
LIMIT 5;

-- Find first and last name of all employees
SELECT first_name, last_name
FROM employee;

-- Find first and last name of all employees and change column names
SELECT first_name AS forename, last_name AS surname
FROM employee;

-- Find out all different genders
SELECT DISTINCT sex
FROM employee;

-- Find out all ditinct branch ids
SELECT DISTINCT branch_id
FROM employee;
