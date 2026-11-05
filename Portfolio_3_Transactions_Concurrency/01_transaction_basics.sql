
-- PORTFOLIO 3: TRANSACTION BASICS

-- 1. Create a separate demonstration table
CREATE TABLE IF NOT EXISTS public.transaction_demo (
    demo_key VARCHAR(50) PRIMARY KEY,
    description VARCHAR(150),
    amount NUMERIC(10, 2)
);

-- 2. Start a transaction
BEGIN;

-- 3. Insert a record and save it permanently
INSERT INTO public.transaction_demo
    (demo_key, description, amount)
VALUES
    ('commit_test', 'Committed transaction', 50000.00);

COMMIT;

-- 4. Check that the record was saved
SELECT *
FROM public.transaction_demo
WHERE demo_key = 'commit_test';

-- 5. Start another transaction and insert a record
BEGIN;

INSERT INTO public.transaction_demo
    (demo_key, description, amount)
VALUES
    ('rollback_test', 'Rolled back transaction', 25000.00);

-- 6. Cancel the transaction
ROLLBACK;

-- 7. Check that the second record was not saved
SELECT *
FROM public.transaction_demo
WHERE demo_key = 'rollback_test';
