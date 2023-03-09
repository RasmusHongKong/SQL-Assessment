# SQL-Assessment

SQL Assessment

Start the assessment by writing a new schema:
Create 2 different tables called students and papers, with columns as shown below.
Table name: Students
Column: Id , First_name
Table name: Papers
Column: Title, Grade, Student_id
“Student_id” is a foreign key referencing “id” (“Id” should be a primary key, auto increment )
Then insert values into each table.
Run this insert after you have created the correct table:
INSERT INTO students (first_name) VALUES
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);
Then print the joined together query for all the tables present in the following sheet:
https://docs.google.com/spreadsheets/d/1-L-oFy-
_vYoOLttMyREp221HgYYzvp7MQgYHkjTWUDM/edit
Consider the threshold for passing > 75
