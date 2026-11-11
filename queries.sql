CREATE TABLE Student (
    student_id INTEGER PRIMARY KEY,
    student_name TEXT NOT NULL,
    gender TEXT,
    age INTEGER,
    department TEXT,
    year INTEGER,
    city TEXT,
    cgpa REAL,
    attendance REAL
);
INSERT INTO Student VALUES
(1, 'MANOJ', 'Male', 21, 'Computer Science', 3, 'Chennai', 8.75, 92.5),
(2, 'NISHA', 'Female', 22, 'IT', 4, 'Madurai', 9.20, 95.0),
(3, 'RAGHUL', 'Male', 20, 'Mechanical', 2, 'Trichy', 7.80, 85.5),
(4, 'ATCHAYA', 'Female', 21, 'Computer Science', 3, 'Coimbatore', 9.50, 98.0),
(5, 'KISHORE', 'Male', 22, 'Electronics', 4, 'Chennai', 8.10, 78.0),
(6, 'SANDHIYA', 'Female', 20, 'IT', 2, 'Salem', 8.90, 90.0),
(7, 'UDHAYA', 'Male', 21, 'Mechanical', 3, 'Madurai', 7.50, 82.0),
(8, 'PARGAVI', 'Female', 22, 'Computer Science', 4, 'Chennai', 9.80, 96.5),
(9, 'SARAVANA', 'Male', 20, 'Electronics', 2, 'Trichy', 8.40, 88.0),
(10, 'DHARANI', 'Female', 21, 'IT', 3, 'Coimbatore', 9.10, 93.0),
(11, 'HARI', 'Male', 23, 'Computer Science', 4, 'Salem', 7.90, 75.0),
(12, 'ARTHI', 'Female', 20, 'Electronics', 2, 'Chennai', 9.30, 97.0),
(13, 'SURYA', 'Male', 22, 'IT', 4, 'Trichy', 8.60, 89.5),
(14, 'NIVI', 'Female', 21, 'Mechanical', 3, 'Madurai', 8.20, 84.0),
(15, 'MUSARAFF', 'Male', 20, 'Computer Science', 2, 'Coimbatore', 7.60, 80.0);
SELECT * FROM Student;
SELECT * FROM student WHERE age = 21; 
SELECT *FROM Student WHERE age > 20 AND cgpa > 8.5;
SELECT * FROM student WHERE department = 'IT' OR department = 'Mechanical';
SELECT * FROM student WHERE cgpa BETWEEN 7 AND 9;
SELECT * FROM student WHERE city IN ('Chennai', 'Coimbatore', 'Madurai');
SELECT * FROM student WHERE student_name LIKE '%S';
SELECT * FROM student ORDER BY cgpa ASC;
SELECT DISTINCT age FROM student;
SELECT * FROM student LIMIT 8;
SELECT COUNT(*) AS total_students FROM student;
SELECT SUM(attendance) AS total_attendance FROM student;
SELECT AVG(cgpa) AS average_cgpa FROM student;
SELECT MIN(cgpa) AS minimum_cgpa FROM student;
SELECT MAX(cgpa) AS maximum_cgpa FROM student;
SELECT gender, COUNT(*) AS total_students FROM student GROUP BY gender;
SELECT city, COUNT(*) AS total_students FROM Student GROUP BY city HAVING COUNT(*) >= 3;