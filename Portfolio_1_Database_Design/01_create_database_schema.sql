
-- MIT 8103: Miva Open University
-- Postgraduate Academic Management System
-- Portfolio 1: Database Design and Modelling

CREATE TABLE faculties (
    faculty_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    faculty_name VARCHAR(150) NOT NULL UNIQUE,
    description TEXT
);

CREATE TABLE departments (
    department_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    faculty_id BIGINT NOT NULL,
    department_name VARCHAR(150) NOT NULL,
    description TEXT,
    CONSTRAINT fk_department_faculty
        FOREIGN KEY (faculty_id)
        REFERENCES faculties(faculty_id),
    CONSTRAINT uq_department_faculty
        UNIQUE (faculty_id, department_name)
);

CREATE TABLE programmes (
    programme_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department_id BIGINT NOT NULL,
    programme_name VARCHAR(200) NOT NULL UNIQUE,
    programme_level VARCHAR(30) NOT NULL DEFAULT 'Master''s',
    duration_years NUMERIC(3,1),
    CONSTRAINT fk_programme_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    CONSTRAINT chk_programme_level
        CHECK (programme_level = 'Master''s'),
    CONSTRAINT chk_programme_duration
        CHECK (duration_years IS NULL OR duration_years > 0)
);

CREATE TABLE students (
    student_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    programme_id BIGINT NOT NULL,
    matric_number VARCHAR(30) NOT NULL UNIQUE,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    admission_date DATE NOT NULL,
    student_status VARCHAR(20) NOT NULL DEFAULT 'Active',
    CONSTRAINT fk_student_programme
        FOREIGN KEY (programme_id)
        REFERENCES programmes(programme_id),
    CONSTRAINT chk_student_status
        CHECK (student_status IN ('Active', 'Graduated', 'Suspended', 'Withdrawn'))
);

CREATE TABLE lecturers (
    lecturer_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department_id BIGINT NOT NULL,
    staff_number VARCHAR(30) NOT NULL UNIQUE,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    CONSTRAINT fk_lecturer_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE courses (
    course_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department_id BIGINT NOT NULL,
    course_code VARCHAR(20) NOT NULL UNIQUE,
    course_title VARCHAR(200) NOT NULL,
    credit_units INTEGER NOT NULL,
    CONSTRAINT fk_course_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    CONSTRAINT chk_course_credit_units
        CHECK (credit_units > 0)
);

CREATE TABLE course_programmes (
    course_programme_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    course_id BIGINT NOT NULL,
    programme_id BIGINT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    CONSTRAINT fk_cp_course
        FOREIGN KEY (course_id) REFERENCES courses(course_id),
    CONSTRAINT fk_cp_programme
        FOREIGN KEY (programme_id) REFERENCES programmes(programme_id),
    CONSTRAINT uq_course_programme_semester
        UNIQUE (course_id, programme_id, semester)
);

CREATE TABLE academic_sessions (
    session_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    session_name VARCHAR(20) NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    CONSTRAINT chk_session_dates
        CHECK (end_date > start_date)
);

CREATE TABLE enrolments (
    enrolment_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_id BIGINT NOT NULL,
    course_id BIGINT NOT NULL,
    session_id BIGINT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    enrolment_date DATE NOT NULL DEFAULT CURRENT_DATE,
    enrolment_status VARCHAR(20) NOT NULL DEFAULT 'Registered',
    CONSTRAINT fk_enrolment_student
        FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_enrolment_course
        FOREIGN KEY (course_id) REFERENCES courses(course_id),
    CONSTRAINT fk_enrolment_session
        FOREIGN KEY (session_id) REFERENCES academic_sessions(session_id),
    CONSTRAINT uq_student_course_session
        UNIQUE (student_id, course_id, session_id, semester),
    CONSTRAINT chk_enrolment_status
        CHECK (enrolment_status IN ('Registered', 'Completed', 'Dropped'))
);

CREATE TABLE results (
    result_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    enrolment_id BIGINT NOT NULL UNIQUE,
    score NUMERIC(5,2),
    grade VARCHAR(2),
    grade_point NUMERIC(3,2),
    remarks TEXT,
    CONSTRAINT fk_result_enrolment
        FOREIGN KEY (enrolment_id)
        REFERENCES enrolments(enrolment_id),
    CONSTRAINT chk_result_score
        CHECK (score IS NULL OR score BETWEEN 0 AND 100),
    CONSTRAINT chk_grade_point
        CHECK (grade_point IS NULL OR grade_point BETWEEN 0 AND 5)
);
