CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    blood_group VARCHAR(5),
    course VARCHAR(100),
    grade CHAR(2),
    email VARCHAR(100),
    dob DATE,
    country VARCHAR(50)
);


INSERT into student (student_id, first_name, last_name, age, blood_group, course, grade, email, dob, country)   
VALUES
(1, 'Alice', 'Johnson', 22, 'A+', 'Computer Science', 'A', 'alice.johnson@example.com', '2003-01-15', 'USA'),
(2, 'Rahim', 'Ahmed', 23, 'O+', 'Electrical Engineering', 'B+', 'rahim.ahmed@example.com', '2002-08-21', 'Bangladesh'),
(3, 'Liam', 'Smith', 21, 'B+', 'Mechanical Engineering', 'A-', 'liam.smith@example.com', '2003-05-10', 'UK'),
(4, 'Sophia', 'Lee', 20, 'AB-', 'Mathematics', 'A+', 'sophia.lee@example.com', '2004-04-02', 'South Korea'),
(5, 'Noah', 'Martinez', 22, 'O-', 'Physics', 'B', 'noah.martinez@example.com', '2002-12-09', 'Mexico'),
(6, 'Maya', 'Khan', 21, 'A-', 'Biochemistry', 'B+', 'maya.khan@example.com', '2003-07-27', 'Pakistan'),
(7, 'Daniel', 'Garcia', 24, 'B-', 'Civil Engineering', 'C+', 'daniel.garcia@example.com', '2001-03-18', 'Spain'),
(8, 'Fatima', 'Hassan', 23, 'AB+', 'Software Engineering', 'A', 'fatima.hassan@example.com', '2002-11-25', 'UAE'),
(9, 'Ethan', 'Williams', 22, 'O+', 'Artificial Intelligence', 'A-', 'ethan.williams@example.com', '2003-02-13', 'Canada'),
(10, 'Aria', 'Patel', 20, 'A+', 'Data Science', 'B-', 'aria.patel@example.com', '2004-10-05', 'India'),
(11, 'James', 'Brown', 21, 'B+', 'Cybersecurity', 'A+', 'james.brown@example.com', '2003-06-30', 'USA'),
(12, 'Ayesha', 'Begum', 22, 'O-', 'Information Systems', 'B', 'ayesha.begum@example.com', '2003-09-17', 'Bangladesh'),
(13, 'William', 'Davis', 24, 'AB+', 'Economics', 'C', 'william.davis@example.com', '2001-12-01', 'UK'),
(14, 'Mehedi', 'Hasan', 23, 'A-', 'Networking', 'A', 'mehedi.hasan@example.com', '2002-07-14', 'Bangladesh'),
(15, 'Olivia', 'Wilson', 22, 'O+', 'Robotics', 'B+', 'olivia.wilson@example.com', '2003-11-03', 'Australia'),
(16, 'Lucas', 'Nguyen', 21, 'B-', 'Statistics', 'A-', 'lucas.nguyen@example.com', '2003-03-12', 'Vietnam'),
(17, 'Nora', 'Rahman', 20, 'A+', 'Environmental Science', 'B+', 'nora.rahman@example.com', '2004-05-23', 'Bangladesh'),
(18, 'Henry', 'Kim', 24, 'O-', 'Business Administration', 'B', 'henry.kim@example.com', '2001-10-29', 'South Korea'),
(19, 'Sara', 'Ali', 21, 'AB-', 'Psychology', 'A', 'sara.ali@example.com', '2003-08-07', 'Pakistan'),
(20, 'Jacob', 'Thompson', 22, 'B+', 'Media Studies', 'B-', 'jacob.thompson@example.com', '2003-01-20', 'USA');

SELECT * FROM student

SELECT email FROM student age

SELECT * FROM student WHERE age > 20

SELECT DISTINCT blood_group FROM student

--scalar 
SELECT length(first_name) FROM student

--aggregate
SELECT avg(age) FROM student

SELECT max(age) FROM student

SELECT count(*) FROM student

SELECT max(length(first_name)) FROM student



SELECT * FROM student WHERE NOT country ='Bangladesh'

SELECT * FROM student WHERE country = 'Bangladesh' AND age > 20;

--null-coalescing 
SELECT COALESCE(email, 'No Email Provided') FROM student;

SELECT * FROM student WHERE country IN ('Bangladesh', 'USA');

SELECT * FROM student WHERE country NOT IN ('Bangladesh', 'USA');

SELECT * FROM student WHERE first_name LIKE '%a%';
SELECT * FROM student WHERE first_name LIKE '_a%';

SELECT * FROM student WHERE age BETWEEN 20 AND 22;

--pagination
SELECT * FROM student LIMIT 5;
SELECT * FROM student OFFSET 5 LIMIT 5;


SELECT * FROM student LIMIT 5 OFFSET 5 * 0;
SELECT * FROM student LIMIT 5 OFFSET 5 * 1;

--delete
DELETE FROM student WHERE grade = 'C';

--update
UPDATE student SET grade = 'A+' WHERE student_id = 2;