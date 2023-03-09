CREATE DATABASE rasmus_sql_assessment;
USE rasmus_sql_assessment;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100)
);

CREATE TABLE papers (
    title VARCHAR(255),
    grade INT,
    student_id INT,
    FOREIGN KEY (student_id)
        REFERENCES students (id)
);

# Inserting values into Students
INSERT INTO students (first_name) VALUES
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

# Inserting values into Papers

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT 
    a.first_name AS 'First name',
    b.title AS Title,
    b.grade AS Grade
FROM
    students a
        JOIN
    papers b ON a.id = b.student_id
ORDER BY b.grade DESC;

SELECT 
    a.first_name AS 'First name',
    b.title AS Title,
    b.grade AS Grade
FROM
    students a
        LEFT JOIN
    papers b ON a.id = b.student_id;

SELECT 
    a.first_name AS 'First Name',
    COALESCE(b.title, 'MISSING') AS Title,
    COALESCE(b.grade, 0) AS Grade
FROM
    students a
        LEFT JOIN
    papers b ON a.id = b.student_id;

SELECT 
    a.first_name AS 'First name',
    ROUND(COALESCE(AVG(b.grade), 0), 1) AS Average
FROM
    students a
        LEFT JOIN
    papers b ON a.id = b.student_id
GROUP BY a.first_name
ORDER BY Average DESC;

SELECT 
    a.first_name AS 'First name',
    ROUND(COALESCE(AVG(b.grade), 0), 1) AS Average,
    CASE
        WHEN ROUND(COALESCE(AVG(b.grade), 0), 1) > 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS Passing_status
FROM
    students a
        LEFT JOIN
    papers b ON a.id = b.student_id
GROUP BY a.first_name
ORDER BY Average DESC;
