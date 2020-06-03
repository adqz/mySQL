-- Add the extra branch
INSERT INTO branch VALUES(4, "Buffalo", NULL, NULL);

SELECT *
FROM branch;

-- This is using INNER JOIN
-- Find all branches and name of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- Find all branches and name of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM branch
JOIN employee
ON employee.emp_id = branch.mgr_id;

-- Find all branches and name of their managers using LEFT JOIN (this includes all rows in employee will get included but only rows which match branch table will get matched/joined)
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- Find all branches and name of their managers using RIGHT JOIN
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- FULL OUTER JOIN is basically a LEFT and RIGHT JOIN combined but MySQL doesn't support it
