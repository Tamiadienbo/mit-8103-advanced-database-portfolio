EXPLAIN ANALYZE
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
    ON s.student_id = e.student_id
JOIN courses c
    ON e.course_id = c.course_id
LEFT JOIN results r
    ON e.enrolment_id = r.enrolment_id
ORDER BY s.matric_number, c.course_code;

