SELECT name, major
FROM student;

SELECT *
FROM student
ORDER BY major, student_id DESC;

SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 2;

SELECT *
FROM student
WHERE major = 'Biology';

SELECT *
FROM student
WHERE major = 'Chemistry' OR major = 'Biology';

SELECT *
FROM student
WHERE major = 'Chemistry' OR major = 'Biology';

SELECT *
FROM student
WHERE major = 'Chemistry' OR major = 'Biology';

SELECT *
FROM student
WHERE major IN ('Biology', 'Chemistry') AND student_id > 2;
