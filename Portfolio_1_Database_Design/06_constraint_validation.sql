SELECT
    tc.table_name,
    tc.constraint_name,
    tc.constraint_type
FROM information_schema.table_constraints tc
WHERE tc.constraint_schema = 'public'
ORDER BY tc.table_name, tc.constraint_type;
