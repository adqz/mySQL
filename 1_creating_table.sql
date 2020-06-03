-- DROP TABLE student;
CREATE TABLE student (
    student_id INT,
    name VARCHAR(50),
    major VARCHAR(50),
    PRIMARY KEY (student_id)
);

DESCRIBE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP column gpa;