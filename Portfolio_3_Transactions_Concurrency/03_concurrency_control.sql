
-- PORTFOLIO 3: CONCURRENCY CONTROL
-- Demonstrating row-level locking

-- Create a separate table for concurrency testing
CREATE TABLE IF NOT EXISTS public.concurrency_demo (
    student_id INTEGER PRIMARY KEY,
    student_name VARCHAR(100),
    outstanding_balance NUMERIC(10, 2)
);

-- Insert a sample student
INSERT INTO public.concurrency_demo
    (student_id, student_name, outstanding_balance)
VALUES
    (1, 'Concurrency Test Student', 100000.00)
ON CONFLICT (student_id) DO NOTHING;

-- Verify the starting balance
SELECT *
FROM public.concurrency_demo
WHERE student_id = 1;

-- SESSION A:
-- BEGIN;
-- SELECT * FROM public.concurrency_demo
-- WHERE student_id = 1 FOR UPDATE;
-- UPDATE public.concurrency_demo
-- SET outstanding_balance = outstanding_balance - 10000
-- WHERE student_id = 1;
-- COMMIT;

-- SESSION B:
-- BEGIN;
-- UPDATE public.concurrency_demo
-- SET outstanding_balance = outstanding_balance - 20000
-- WHERE student_id = 1;
-- COMMIT;

