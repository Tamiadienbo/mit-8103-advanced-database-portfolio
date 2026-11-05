# Portfolio 2: Query Performance and Index Evaluation

## 1. Introduction

This exercise evaluates PostgreSQL query execution plans and the use of existing database indexes in the Miva Open University Postgraduate Academic Management System.

The objective is to examine how PostgreSQL retrieves records and determine whether existing indexes are selected during query execution.

## 2. Student Lookup Test

The student lookup query searched for a student using their matriculation number.

- Execution method: Sequential Scan on the students table.
- Rows returned: 1.
- Rows removed by filter: 5.
- Execution time: 3.266 ms.

Although a unique index exists on the matriculation number column, PostgreSQL selected a sequential scan. This may be appropriate because the table contains only six student records.

## 3. Course Lookup Test

The course lookup query searched for a course using its course code.

- Execution method: Index Scan.
- Index used: `courses_course_code_key`.
- Rows returned: 1.
- Execution time: 2.030 ms.

PostgreSQL used the existing unique index on the course code column to locate the requested course.

## 4. Comparative Findings

The two tests demonstrate that PostgreSQL does not automatically use an index whenever one is available. Its query planner selects an execution strategy based on estimated costs and available information.

The student lookup used a sequential scan, while the course lookup used an index scan.

The measured execution times are observations from individual runs on a small dataset. They should not be interpreted as proof that one access method is universally faster.

## 4.1 Enrolment Composite Index Test

The third experiment examined the composite index `uq_student_course_session` on the enrolments table.

The query filtered records using both `student_id` and `course_id`.

- Execution method: Index Scan.
- Index used: `uq_student_course_session`.
- Rows returned: 1.
- Execution time: 4.267 ms.
- Planning time: 0.385 ms.

The execution plan confirmed that PostgreSQL used the existing composite index to locate the matching enrolment.

This demonstrates how a composite index can support queries that filter using its leading columns. No additional index was required for this test.

### Optimised Student Enrolment Query

The optimised query retrieves course enrolment and academic result information for a specific student using their matriculation number. Unlike the baseline query, which retrieves records across all students, this query applies a WHERE filter to narrow the results to one student.

The query returned two enrolment records successfully.

**Execution plan observations:**

- A sequential scan was used to locate the student record.
- An index scan using `programmes_pkey` retrieved the student's programme.
- A bitmap index scan using `uq_student_course_session` retrieved the student's enrolments.
- A sequential scan was used on the courses table.
- An index scan using `results_enrolment_id_key` retrieved the corresponding results.

**Performance measurements:**

| Metric | Result |
|---|---:|
| Rows returned | 2 |
| Planning time | 1.409 ms |
| Execution time | 0.301 ms |
| Shared buffer hits | 13 |

The execution plan demonstrates PostgreSQL's ability to combine sequential scans, bitmap index scans, index scans, and sorting operations when processing a query.

The sequential scans on the students and courses tables are reasonable given the small sample dataset. The results demonstrate index utilisation but should not be interpreted as proof of improved performance at large scale.

## 5. Limitations

The database contains a small sample dataset. Consequently, the tests demonstrate query execution and index selection but do not establish performance improvements at larger data volumes.

## 6. Conclusion

The experiment demonstrates the importance of examining execution plans before introducing additional indexes. Existing indexes should be evaluated against actual query patterns to avoid unnecessary indexing and associated storage and maintenance overhead.
