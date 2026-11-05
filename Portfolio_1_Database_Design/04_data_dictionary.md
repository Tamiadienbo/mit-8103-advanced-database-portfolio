# Data Dictionary – Miva Open University Postgraduate Academic Management System

## 1. Faculties
Stores the proposed academic faculties in the university database.
- faculty_id: Unique faculty identifier (Primary Key).
- faculty_name: Name of the faculty.
- description: Description of the faculty.

## 2. Departments
Stores academic departments associated with faculties.
- department_id: Unique department identifier (Primary Key).
- faculty_id: Faculty reference (Foreign Key).
- department_name: Department name.
- description: Department description.

## 3. Programmes
Stores postgraduate academic programmes.
- programme_id: Unique programme identifier (Primary Key).
- department_id: Department reference (Foreign Key).
- programme_name: Programme title.
- programme_level: Academic level.
- duration_years: Programme duration.

## 4. Students
Stores fictional postgraduate student records.
- student_id: Unique student identifier (Primary Key).
- programme_id: Programme reference (Foreign Key).
- matric_number: Unique matriculation number.
- first_name: Student's first name.
- last_name: Student's surname.
- email: Unique student email.
- admission_date: Date of admission.
- student_status: Current academic status.

## 5. Lecturers
Stores fictional academic staff records.
- lecturer_id: Unique lecturer identifier (Primary Key).
- department_id: Department reference (Foreign Key).
- staff_number: Unique staff identifier.
- first_name: Lecturer's first name.
- last_name: Lecturer's surname.
- email: Unique lecturer email.

## 6. Courses
Stores academic courses.
- course_id: Unique course identifier (Primary Key).
- department_id: Department reference (Foreign Key).
- course_code: Unique course code.
- course_title: Course title.
- credit_units: Course credit units.

## 7. Course_Programmes
Connects courses to the programmes in which they are offered.
- course_programme_id: Unique mapping identifier (Primary Key).
- course_id: Course reference (Foreign Key).
- programme_id: Programme reference (Foreign Key).
- semester: Semester in which the course is offered.

## 8. Academic_Sessions
Stores academic session information.
- session_id: Unique session identifier (Primary Key).
- session_name: Academic session name.
- start_date: Session start date.
- end_date: Session end date.

## 9. Enrolments
Records students' course registrations.
- enrolment_id: Unique enrolment identifier (Primary Key).
- student_id: Student reference (Foreign Key).
- course_id: Course reference (Foreign Key).
- session_id: Academic session reference (Foreign Key).
- semester: Registration semester.
- enrolment_date: Date of registration.
- enrolment_status: Registration status.

## 10. Results
Stores academic performance for registered courses.
- result_id: Unique result identifier (Primary Key).
- enrolment_id: Enrolment reference (Foreign Key).
- score: Student's numerical score.
- grade: Letter grade.
- grade_point: Grade-point value.
- remarks: Performance comments.

## Database Design Note
The database uses primary keys to uniquely identify records and foreign keys to maintain relationships between related tables. Constraints enforce selected uniqueness, valid values, and referential integrity.
