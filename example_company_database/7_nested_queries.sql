-- Use results of one select statement to use in another select statement
-- Inner queries are executed first by thr server

-- Find names of all employees who have sold over 30,000 to a single client
-- Step 1: Get emp_id
SELECT works_with.emp_id
FROM works_with
WHERE works_with.total_sales > 30000;

-- Step 2: Query results from Step 1 in another query
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
)

-- Find all clients who are handled by Michael Scott's branch. Assume you know his ID
SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
);

-- Find all clients who are handled by Michael Scott's branch. Assume you know his ID
-- Good idea to LIMIT 1 when using equality in case the query returns multiple results
SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1
);
