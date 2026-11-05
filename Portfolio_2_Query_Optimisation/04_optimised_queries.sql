-- Optimised student course enrolment query
SELECT
    s.matric_number,
    s.first_name,
    s.last_name,
    p.programme_name,
    c.course_code,
    c.course_title,
    e.semester,
    e.enrolment_status,
    r.score,
    r.grade
FROM students s
JOIN programmes p
    ON s.programme_id = p.programme_id
JOIN enrolments e
    ON e.student_id = s.student_id
JOIN courses c
    ON c.course_id = e.course_id
LEFT JOIN results r
    ON r.enrolment_id = e.enrolment_id
WHERE s.matric_number = 'MIVA/PG/2025/001'
ORDER BY c.course_code;

--Execution Plan--
EXPLAIN (ANALYZE, BUFFERS)
SELECT
    s.matric_number,
    s.first_name,
    s.last_name,
    p.programme_name,
    c.course_code,
    c.course_title,
    e.semester,
    e.enrolment_status,
    r.score,
    r.grade
FROM students s
JOIN programmes p
    ON s.programme_id = p.programme_id
JOIN enrolments e
    ON e.student_id = s.student_id
JOIN courses c
    ON c.course_id = e.course_id
LEFT JOIN results r
    ON r.enrolment_id = e.enrolment_id
WHERE s.matric_number = 'MIVA/PG/2025/001'
ORDER BY c.course_code;
