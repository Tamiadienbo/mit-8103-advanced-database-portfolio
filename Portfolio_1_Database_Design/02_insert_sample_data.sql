
-- MIT 8103: Miva Open University
-- Portfolio 1: Sample Academic Data
-- All student and staff records are fictional.
-- Faculty/department groupings and course offerings
-- are proposed for this academic database model.

-- FACULTIES
INSERT INTO faculties (faculty_name, description)
VALUES
('Faculty of Computing and Technology', 'Proposed academic grouping for computing programmes'),
('Faculty of Management Sciences', 'Proposed academic grouping for management programmes'),
('Faculty of Social Sciences', 'Proposed academic grouping for public administration programmes'),
('Faculty of Health Sciences', 'Proposed academic grouping for public health programmes');

-- DEPARTMENTS
INSERT INTO departments (faculty_id, department_name)
VALUES
(1, 'Information Technology'),
(2, 'Business Administration'),
(3, 'Public Administration'),
(4, 'Public Health');

-- POSTGRADUATE PROGRAMMES
INSERT INTO programmes (department_id, programme_name, duration_years)
VALUES
(1, 'Master of Information Technology', 2),
(2, 'Master of Business Administration', 2),
(3, 'Master of Public Administration', 2),
(4, 'Master of Public Health', 2);

-- LECTURERS (FICTIONAL)
INSERT INTO lecturers
(department_id, staff_number, first_name, last_name, email)
VALUES
(1, 'MIVA-LEC-001', 'David', 'Okafor', 'david.okafor@example.com'),
(2, 'MIVA-LEC-002', 'Grace', 'Adeyemi', 'grace.adeyemi@example.com'),
(3, 'MIVA-LEC-003', 'Samuel', 'Bello', 'samuel.bello@example.com'),
(4, 'MIVA-LEC-004', 'Esther', 'Nwosu', 'esther.nwosu@example.com');

-- STUDENTS (FICTIONAL)
INSERT INTO students
(programme_id, matric_number, first_name, last_name, email, admission_date)
VALUES
(1, 'MIVA/PG/2025/001', 'Chinedu', 'Okoro', 'chinedu.okoro@example.com', '2025-01-15'),
(1, 'MIVA/PG/2025/002', 'Amina', 'Yusuf', 'amina.yusuf@example.com', '2025-01-15'),
(2, 'MIVA/PG/2025/003', 'Daniel', 'Eze', 'daniel.eze@example.com', '2025-01-15'),
(2, 'MIVA/PG/2025/004', 'Fatima', 'Ibrahim', 'fatima.ibrahim@example.com', '2025-01-15'),
(3, 'MIVA/PG/2025/005', 'Tunde', 'Balogun', 'tunde.balogun@example.com', '2025-01-15'),
(4, 'MIVA/PG/2025/006', 'Ngozi', 'Obi', 'ngozi.obi@example.com', '2025-01-15');

-- COURSES (ILLUSTRATIVE, NOT VERIFIED MIVA COURSE CODES)
INSERT INTO courses
(department_id, course_code, course_title, credit_units)
VALUES
(1, 'MIT801', 'Database Systems and Management', 3),
(1, 'MIT802', 'Information Systems Security', 3),
(2, 'MBA801', 'Strategic Management', 3),
(2, 'MBA802', 'Business Research Methods', 3),
(3, 'MPA801', 'Public Policy Analysis', 3),
(4, 'MPH801', 'Principles of Public Health', 3);

-- COURSE TO PROGRAMME MAPPING
INSERT INTO course_programmes
(course_id, programme_id, semester)
VALUES
(1, 1, 'First'),
(2, 1, 'First'),
(3, 2, 'First'),
(4, 2, 'First'),
(5, 3, 'First'),
(6, 4, 'First');

-- ACADEMIC SESSION
INSERT INTO academic_sessions
(session_name, start_date, end_date)
VALUES
('2025/2026', '2025-09-01', '2026-08-31');

-- COURSE ENROLMENTS
INSERT INTO enrolments
(student_id, course_id, session_id, semester)
VALUES
(1, 1, 1, 'First'),
(1, 2, 1, 'First'),
(2, 1, 1, 'First'),
(2, 2, 1, 'First'),
(3, 3, 1, 'First'),
(3, 4, 1, 'First'),
(4, 3, 1, 'First'),
(5, 5, 1, 'First'),
(6, 6, 1, 'First');

-- RESULTS
INSERT INTO results
(enrolment_id, score, grade, grade_point, remarks)
VALUES
(1, 78, 'A', 5.00, 'Excellent'),
(2, 69, 'B', 4.00, 'Very Good'),
(3, 82, 'A', 5.00, 'Excellent'),
(5, 74, 'A', 5.00, 'Very Good'),
(6, 63, 'B', 4.00, 'Good'),
(8, 71, 'A', 5.00, 'Very Good'),
(9, 85, 'A', 5.00, 'Excellent');

