-- Question 1: Student Records System
-- Objective: Design and implement a full-featured Student Records DB using MySQL

-- Step 1: Create `students` table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Step 2: Create `courses` table
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(10) UNIQUE NOT NULL
);

-- Step 3: Create `grades` table (many-to-many relationship with grade)
CREATE TABLE grades (
    student_id INT,
    course_id INT,
    grade VARCHAR(2),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Step 4: Insert sample data into `students`
INSERT INTO students (first_name, last_name, email) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com'),
('Bob', 'Smith', 'bob.smith@example.com'),
('Carol', 'Lee', 'carol.lee@example.com');

-- Step 5: Insert sample data into `courses`
INSERT INTO courses (course_name, course_code) VALUES
('Database Systems', 'DB101'),
('Web Development', 'WD201'),
('Data Structures', 'DS301');

-- Step 6: Insert sample data into `grades`
INSERT INTO grades (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'C'),
(2, 3, 'B'),
(3, 2, 'A');
