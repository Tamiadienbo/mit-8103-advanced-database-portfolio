
-- QUERY 1: Retrieve student information

SELECT
    student_record->>'matric_number' AS matric_number,
    student_record->'student'->>'first_name' AS first_name,
    student_record->'student'->>'last_name' AS last_name,
    student_record->'student'->>'email' AS email
FROM public.nosql_student_documents;


-- QUERY 2: Retrieve programme information

SELECT
    student_record->'programme'->>'name' AS programme_name,
    student_record->'programme'->>'department' AS department,
    student_record->'programme'->>'level' AS programme_level
FROM public.nosql_student_documents;


-- QUERY 3: Extract course enrolments from JSON array

SELECT
    student_record->>'matric_number' AS matric_number,
    enrolment->>'course_code' AS course_code,
    enrolment->>'course_title' AS course_title,
    enrolment->>'status' AS enrolment_status,
    enrolment->>'grade' AS grade
FROM public.nosql_student_documents,
     jsonb_array_elements(student_record->'enrolments') AS enrolment;
