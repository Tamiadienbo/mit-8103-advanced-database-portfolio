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

## 5. Limitations

The database contains a small sample dataset. Consequently, the tests demonstrate query execution and index selection but do not establish performance improvements at larger data volumes.

## 6. Conclusion

The experiment demonstrates the importance of examining execution plans before introducing additional indexes. Existing indexes should be evaluated against actual query patterns to avoid unnecessary indexing and associated storage and maintenance overhead.
