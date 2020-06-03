-- Example of ON DELETE SET NULL. Use when column/attribute is not crucial.
DELETE FROM employee
WHERE emp_id = 102;

SELECT *
FROM branch;

SELECT *
FROM employee;

-- Example of ON DELETE CASCASE. Use when the foreign key is also a primary key in a table Coz primary key can't have null value
DELETE FROM branch
WHERE branch_id = 2;

SELECT *
FROM branch_supplier;

