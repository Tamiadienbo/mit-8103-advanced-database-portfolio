SELECT
    s.matric_number,
    s.first_name,
    s.last_name,
    p.programme_name,
    c.course_code,
    c.course_title,
    e.semester,
    r.score,
    r.grade
FROM enrolments e
JOIN students s
    ON e.student_id = s.student_id
JOIN courses c
    ON e.course_id = c.course_id
JOIN programmes p
    ON s.programme_id = p.programme_id
LEFT JOIN results r
    ON e.enrolment_id = r.enrolment_id
ORDER BY s.matric_number;
