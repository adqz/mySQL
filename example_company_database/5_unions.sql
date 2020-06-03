-- Union combines results from multiple SELECT statments into a list
-- Rules 1) Same number of columns, 2) same data type

-- Find a list of employee and branch names
SELECT first_name AS names
FROM employee
UNION
SELECT branch_name
FROM branch;

-- Find a list of all clients and branch suppliers name
SELECT client_name AS names, client.branch_id AS id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find a list of all money spent or eanred by comoany
SELECT -1 * salary AS Money
FROM employee
UNION
SELECT total_sales
FROM works_with;

