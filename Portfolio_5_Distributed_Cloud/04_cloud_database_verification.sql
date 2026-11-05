
-- PORTFOLIO 5: CLOUD DATABASE VERIFICATION
-- Verify the PostgreSQL environment hosted through Supabase.

-- 1. Identify the database and PostgreSQL version
SELECT
    current_database() AS database_name,
    version() AS postgresql_version;

-- 2. Confirm the logical database schemas
SELECT
    schema_name
FROM information_schema.schemata
WHERE schema_name IN (
    'academic_node',
    'records_node',
    'cloud_node'
)
ORDER BY schema_name;

-- 3. Confirm the tables created in each schema
SELECT
    table_schema,
    table_name
FROM information_schema.tables
WHERE table_schema IN (
    'academic_node',
    'records_node',
    'cloud_node'
)
ORDER BY table_schema, table_name;

-- 4. Verify that the three logical nodes contain data
SELECT
    'Academic Node' AS logical_node,
    COUNT(*) AS total_records
FROM academic_node.students

UNION ALL

SELECT
    'Records Node',
    COUNT(*)
FROM records_node.academic_records

UNION ALL

SELECT
    'Cloud Node',
    COUNT(*)
FROM cloud_node.student_access;
