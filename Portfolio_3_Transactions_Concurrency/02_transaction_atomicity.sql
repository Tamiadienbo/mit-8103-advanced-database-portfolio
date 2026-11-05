
-- PORTFOLIO 3: TRANSACTION ATOMICITY

-- Create a separate table for the atomicity demonstration
CREATE TABLE IF NOT EXISTS public.atomicity_demo (
    student_id INTEGER PRIMARY KEY,
    student_name VARCHAR(100),
    outstanding_balance NUMERIC(10, 2)
);

-- Insert a sample student
INSERT INTO public.atomicity_demo
    (student_id, student_name, outstanding_balance)
VALUES
    (1, 'Demo Student', 100000.00)
ON CONFLICT (student_id) DO NOTHING;

-- Begin the transaction
BEGIN;

-- Operation 1: Reduce the student's outstanding balance
UPDATE public.atomicity_demo
SET outstanding_balance = outstanding_balance - 50000.00
WHERE student_id = 1;

-- Operation 2: Simulate an error using an invalid SQL statement
UPDATE public.atomicity_demo
SET outstanding_balance = outstanding_balance / 0
WHERE student_id = 1;

-- Commit would not be reached because the transaction has failed
COMMIT;

