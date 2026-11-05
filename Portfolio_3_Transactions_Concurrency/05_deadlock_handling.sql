
-- PORTFOLIO 3: DEADLOCK HANDLING
-- Setup for a two-session deadlock demonstration

CREATE TABLE IF NOT EXISTS public.deadlock_demo (
    account_id INTEGER PRIMARY KEY,
    account_name VARCHAR(100),
    balance NUMERIC(10,2)
);

INSERT INTO public.deadlock_demo
    (account_id, account_name, balance)
VALUES
    (1, 'Account A', 100000.00),
    (2, 'Account B', 100000.00)
ON CONFLICT (account_id) DO NOTHING;

SELECT * FROM public.deadlock_demo
ORDER BY account_id;

