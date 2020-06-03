-- Creating a table to illustrate triggers
CREATE TABLE trigger_test (
    message VARCHAR(100)
);

-- Trigger creation commands need to be executed in terminal and not popSQL coz delimiter can't be changed in popSQL
USE giraffe; --selects database to operate on

DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

-- Trigger creation commands need to be executed in terminal and not popSQL coz delimiter can't be changed in popSQL
-- Can access information from the new row by using keyword NEW
DELIMITER $$
CREATE
    TRIGGER my_trigger_2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;


INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

-- Trigger with conditionals (can also use AFTER instead of BEFORE and UPDATE, DELETE instead of INSERT)
DELIMITER $$
CREATE
    TRIGGER my_trigger_4 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES(CONCAT('Added male employee: ', NEW.first_name));
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES(CONCAT('Added female employee: ', NEW.first_name));
        END IF;
    END$$
DELIMITER ;


INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);

SELECT *
FROM trigger_test;

-- Command to delete trigger
DROP TRIGGER giraffe.my_trigger_3;