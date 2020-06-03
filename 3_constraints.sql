DROP TABLE student;
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    major VARCHAR(50) DEFAULT 'undecided',
    PRIMARY KEY (student_id)
);

DESCRIBE student;

-- ALTER TABLE student ADD gpa DECIMAL(3,2);
-- ALTER TABLE student DROP column gpa;

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');

SELECT * FROM student;