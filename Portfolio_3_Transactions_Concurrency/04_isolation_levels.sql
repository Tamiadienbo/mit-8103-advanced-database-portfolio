
-- PORTFOLIO 3: TRANSACTION ISOLATION LEVELS

-- Create a separate demonstration table
CREATE TABLE IF NOT EXISTS public.isolation_demo (
    student_id INTEGER PRIMARY KEY,
    student_name VARCHAR(100),
    outstanding_balance NUMERIC(10, 2)
);

-- Insert a demonstration student
INSERT INTO public.isolation_demo
    (student_id, student_name, outstanding_balance)
VALUES
    (1, 'Isolation Test Student', 100000.00)
ON CONFLICT (student_id) DO NOTHING;

-- Verify the starting balance
SELECT *
FROM public.isolation_demo
WHERE student_id = 1;

-- SESSION A: REPEATABLE READ
-- Run this entire block in Session A.
--
-- BEGIN ISOLATION LEVEL REPEATABLE READ;
-- SELECT outstanding_balance
-- FROM public.isolation_demo
-- WHERE student_id = 1;
-- SELECT pg_sleep(15);
-- SELECT outstanding_balance
-- FROM public.isolation_demo
-- WHERE student_id = 1;
-- COMMIT;

-- SESSION B: READ COMMITTED
-- Run this block in Session B while Session A is sleeping.
--
-- BEGIN;
-- UPDATE public.isolation_demo
-- SET outstanding_balance = outstanding_balance - 5000
-- WHERE student_id = 1;
-- COMMIT;

