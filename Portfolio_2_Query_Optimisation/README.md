# Portfolio 2: Query Processing and Optimisation

## 1. Introduction

This portfolio focuses on query processing and optimisation using the Miva Open University Postgraduate Academic Management System database developed in Portfolio 1.

The exercise explores how PostgreSQL processes SQL queries, evaluates execution plans, and uses database indexes to retrieve information efficiently.

## 2. Objectives

The objectives of this portfolio are to:

- Execute SQL queries involving multiple table joins.
- Examine query execution plans using `EXPLAIN ANALYZE`.
- Understand the differences between sequential scans and index scans.
- Identify and evaluate existing database indexes.
- Apply query filtering to retrieve specific student records.
- Compare query execution strategies and document performance observations.

## 3. Tools and Technologies

- **Database Management System:** PostgreSQL
- **Database Platform:** Supabase
- **SQL Environment:** Supabase SQL Editor
- **Version Control:** GitHub

## 4. Activities Performed

### Activity 1: Baseline Query Execution

A baseline query was developed to retrieve student information, programme details, course enrolments, and academic results using multiple table joins.

The query used an INNER JOIN for related student, programme, enrolment, and course records, alongside a LEFT JOIN to preserve enrolments without recorded results.

### Activity 2: Query Execution Plan Analysis

The `EXPLAIN ANALYZE` command was used to examine how PostgreSQL executed the baseline query.

The execution plan demonstrated operations including:

- Sequential scans
- Index scans
- Hash joins
- Nested loop joins
- Sorting operations

### Activity 3: Index Identification and Testing

Existing database indexes were examined using the PostgreSQL `pg_indexes` catalogue.

Three lookup scenarios were tested:

1. Student lookup using a matriculation number.
2. Course lookup using a course code.
3. Enrolment lookup using student and course identifiers.

The results demonstrated that PostgreSQL selected different execution strategies depending on the query and available data.

### Activity 4: Optimised Query Execution

A filtered student enrolment query was developed to retrieve records for a specific student.

The query returned two course enrolment records and used a combination of sequential scans, index scans, a bitmap index scan, and sorting.

The observed execution time was **0.301 ms**, with a planning time of **1.409 ms**.

## 5. Key Findings

The exercise demonstrated that:

- PostgreSQL does not necessarily use an index for every query.
- Sequential scans can be appropriate for small tables.
- Unique indexes support efficient lookups on indexed columns.
- Composite indexes can support queries involving multiple columns.
- Execution plans provide useful information about database query processing.
- Query performance measurements should be interpreted in the context of dataset size and execution conditions.

## 6. Limitations

The database contains a relatively small fictional sample dataset. Therefore, the execution times observed during testing should not be treated as evidence of performance improvements at large scale.

The exercise demonstrates query processing and index selection rather than large-scale database benchmarking.

## 7. Conclusion

This portfolio provided practical experience in SQL query execution, execution plan interpretation, and database index evaluation using PostgreSQL.

It also demonstrated how query filters and existing indexes influence the execution strategies selected by the database query planner.

## 8. Evidence

Screenshots of the SQL queries, execution plans, index tests, and query results are stored in the `Evidence` folder within this portfolio directory.
