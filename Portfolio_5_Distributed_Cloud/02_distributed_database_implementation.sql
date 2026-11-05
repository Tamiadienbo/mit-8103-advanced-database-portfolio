
-- PORTFOLIO 5: DISTRIBUTED DATABASE SIMULATION
-- Logical separation of academic data using PostgreSQL schemas.

-- NODE 1: Main Academic Database
CREATE SCHEMA IF NOT EXISTS academic_node;

-- NODE 2: Academic Records Database
CREATE SCHEMA IF NOT EXISTS records_node;

-- NODE 3: Cloud Access Database
CREATE SCHEMA IF NOT EXISTS cloud_node;


-- Create student table in Node 1
CREATE TABLE IF NOT EXISTS academic_node.students (
    student_id INTEGER PRIMARY KEY,
    matric_number VARCHAR(30) UNIQUE NOT NULL,
    student_name VARCHAR(150) NOT NULL,
    programme_name VARCHAR(150) NOT NULL
);


-- Create academic records table in Node 2
CREATE TABLE IF NOT EXISTS records_node.academic_records (
    record_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_code VARCHAR(20) NOT NULL,
    score NUMERIC(5,2),
    grade VARCHAR(2)
);


-- Create cloud access table in Node 3
CREATE TABLE IF NOT EXISTS cloud_node.student_access (
    access_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_id INTEGER NOT NULL,
    access_status VARCHAR(30) NOT NULL,
    last_accessed TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Insert sample student data
INSERT INTO academic_node.students
    (student_id, matric_number, student_name, programme_name)
VALUES
    (1, 'MIVA/PG/2025/001', 'Chinedu Okoro',
     'Master of Information Technology')
ON CONFLICT (student_id) DO NOTHING;


-- Insert academic record
INSERT INTO records_node.academic_records
    (student_id, course_code, score, grade)
VALUES
    (1, 'MIT801', 85, 'A');


-- Insert cloud access record
INSERT INTO cloud_node.student_access
    (student_id, access_status)
VALUES
    (1, 'Active');


-- Verify the three logical nodes
SELECT * FROM academic_node.students;
SELECT * FROM records_node.academic_records;
SELECT * FROM cloud_node.student_access;
