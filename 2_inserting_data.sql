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

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

SELECT * FROM student;