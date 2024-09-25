-- CREATE DATABASE SISDB
-- students,courses,enrollments,teachers, and payments
-- use SISDB;

CREATE TABLE Students( 
student_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),date_of_birth DATE,
email VARCHAR(100),
phone_number INT);

CREATE TABLE Courses (course_id INT PRIMARY KEY,course_name VARCHAR(100),credits INT,teacher_id INT,FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id));

CREATE TABLE Teacher (teacher_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), email VARCHAR(100));

CREATE TABLE Enrollments (
enrollment_id INT PRIMARY KEY AUTO_INCREMENT, 
student_id INT, course_id int, 
FOREIGN KEY (student_id) REFERENCES Students(student_id), 
FOREIGN KEY(course_id) REFERENCES Courses(course_id));

ALTER TABLE  Enrollments ADD COLUMN enrollment_date DATE;

CREATE TABLE Payments (
payment_id INT PRIMARY KEY, 
student_id INT, 
amount DECIMAL(10, 2), 
payment_date DATE, 
FOREIGN KEY (student_id) REFERENCES Students(student_id));

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
VALUES
(1, 'John', 'Doe', '2000-01-15', 'john.doe@example.com', 1234567890),
(2, 'Jane', 'Smith', '1999-05-22', 'jane.smith@example.com', 9876543210),
(3, 'Michael', 'Johnson', '2001-09-10', 'michael.johnson@example.com', 1112223333),
(4, 'Emily', 'Williams', '2000-03-18', 'emily.williams@example.com', 4445556666),
(5, 'James', 'Brown', '1998-12-05', 'james.brown@example.com', 7778889999),
(6, 'Sophia', 'Miller', '1999-07-30', 'sophia.miller@example.com', 3216549870),
(7, 'Daniel', 'Wilson', '2002-02-20', 'daniel.wilson@example.com', 6663339999),
(8, 'Olivia', 'Moore', '2001-04-12', 'olivia.moore@example.com', 8887776666),
(9, 'David', 'Garcia', '2000-06-25', 'david.garcia@example.com', 5554443333),
(10, 'Isabella', 'Martinez', '1999-08-15', 'isabella.martinez@example.com', 2221110000);

INSERT INTO Courses (course_id, course_name, credits, teacher_id)
VALUES
(1, 'Database Management', 3, 1),
(2, 'Software Engineering', 4, 2),
(3, 'Web Development', 3, 3),
(4, 'Data Structures and Algorithms', 3, 1),
(5, 'Artificial Intelligence', 4, 2),
(6, 'Machine Learning', 4, 3),
(7, 'Mobile App Development', 3, 1),
(8, 'Network Security', 3, 2),
(9, 'Cloud Computing', 4, 3),
(10, 'Blockchain Fundamentals', 3, 1);

INSERT INTO Teacher (teacher_id, first_name, last_name, email)
VALUES
(1, 'John', 'Smith', 'john.smith@example.com'),
(2, 'Jane', 'Doe', 'jane.doe@example.com'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com'),
(4, 'Emily', 'Williams', 'emily.williams@example.com'),
(5, 'James', 'Brown', 'james.brown@example.com'),
(6, 'Sophia', 'Miller', 'sophia.miller@example.com'),
(7, 'Daniel', 'Wilson', 'daniel.wilson@example.com'),
(8, 'Olivia', 'Moore', 'olivia.moore@example.com'),
(9, 'David', 'Garcia', 'david.garcia@example.com'),
(10, 'Isabella', 'Martinez', 'isabella.martinez@example.com');

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES
(1, 1, 1, '2024-09-19'),
(2, 2, 2, '2024-09-18'),
(3, 3, 3, '2024-09-17'),
(4, 4, 1, '2024-09-16'),
(5, 5, 2, '2024-09-15'),
(6, 6, 3, '2024-09-14'),
(7, 7, 1, '2024-09-13'),
(8, 8, 2, '2024-09-12'),
(9, 9, 3, '2024-09-11'),
(10, 10, 1, '2024-09-10');

INSERT INTO Payments (payment_id, student_id, amount, payment_date)
VALUES
(1, 1, 100.00, '2024-09-19'),
(2, 2, 150.50, '2024-09-18'),
(3, 3, 200.75, '2024-09-17'),
(4, 4, 75.25, '2024-09-16'),
(5, 5, 120.00, '2024-09-15'),
(6, 6, 180.50, '2024-09-14'),
(7, 7, 95.00, '2024-09-13'),
(8, 8, 210.25, '2024-09-12'),
(9, 9, 85.75, '2024-09-11'),
(10, 10, 150.00, '2024-09-10');







