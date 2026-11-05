
-- PORTFOLIO 4: NOSQL DOCUMENT UPDATES
-- Demonstrating updates to nested JSONB fields in PostgreSQL.

-- QUERY 1: Update the student's email address
UPDATE public.nosql_student_documents
SET student_record = jsonb_set(
    student_record,
    '{student,email}',
    '"chinedu.okoro@miva.edu.ng"'::jsonb
)
WHERE student_record->>'matric_number' = 'MIVA/PG/2025/001';


-- QUERY 2: Verify the updated student email
SELECT
    student_record->'student'->>'first_name' AS first_name,
    student_record->'student'->>'email' AS updated_email
FROM public.nosql_student_documents;


-- QUERY 3: Update MIT802 enrolment status to Completed
UPDATE public.nosql_student_documents
SET student_record = jsonb_set(
    student_record,
    '{enrolments,1,status}',
    '"Completed"'::jsonb
)
WHERE student_record->>'matric_number' = 'MIVA/PG/2025/001';


-- QUERY 4: Verify the updated course enrolment statuses
SELECT
    enrolment->>'course_code' AS course_code,
    enrolment->>'status' AS enrolment_status
FROM public.nosql_student_documents,
     jsonb_array_elements(student_record->'enrolments') AS enrolment;
