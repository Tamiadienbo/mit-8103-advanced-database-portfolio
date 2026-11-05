
-- =====================================================
-- PORTFOLIO 2: INDEX INVENTORY
-- Miva Open University
-- =====================================================

-- Retrieve all existing indexes in the public schema.

SELECT
    tablename,
    indexname,
    indexdef
FROM pg_indexes
WHERE schemaname = 'public'
ORDER BY tablename, indexname;

-- Index inventory reviewed before optimisation.
-- Existing primary-key and unique indexes will be
-- considered before introducing additional indexes.

-- student lookup query--
EXPLAIN ANALYZE
SELECT
    s.matric_number,
    s.first_name,
    s.last_name,
    p.programme_name
FROM students s
JOIN programmes p
    ON s.programme_id = p.programme_id
WHERE s.matric_number = 'MIVA/PG/2025/001';
