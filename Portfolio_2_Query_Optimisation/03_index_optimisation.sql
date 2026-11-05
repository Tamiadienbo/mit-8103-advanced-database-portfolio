
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

