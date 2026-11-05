
-- PORTFOLIO 5: CROSS-NODE DATA RETRIEVAL
-- Retrieve related information from three logical database nodes.

SELECT
    s.matric_number,
    s.student_name,
    s.programme_name,
    r.course_code,
    r.score,
    r.grade,
    c.access_status,
    c.last_accessed
FROM academic_node.students s
JOIN records_node.academic_records r
    ON s.student_id = r.student_id
JOIN cloud_node.student_access c
    ON s.student_id = c.student_id
ORDER BY s.matric_number;
