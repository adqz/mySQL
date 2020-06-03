-- Find number of employees
SELECT COUNT(emp_id)
FROM employee;

-- Find number of employees that have supervisors
SELECT COUNT(super_id)
FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day > '1970-01-01';

-- Find average salary of all employees
SELECT AVG(salary)
FROM employee;

-- Find average salary of male employees
SELECT AVG(salary)
FROM employee
WHERE sex='M';

-- Find sum of all employee salaries
SELECT SUM(salary)
FROM employee;

-- Find out how many males and females in company
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Find the total sales of each salesmen
SELECT emp_id, SUM(total_sales)
FROM works_with
GROUP BY emp_id;

-- Find LLC type company using wildcard
-- % = any number of characters before pattern, _ = one character before pattern
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch suppliers in the labels business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '% Label%';

-- Find employees born in October
SELECT *
FROM employee
WHERE birth_day LIKE '____-10%';

-- Find employees born in October
SELECT *
FROM client
WHERE client_name LIKE '%school%';
