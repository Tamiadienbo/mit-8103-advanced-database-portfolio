# Portfolio 3: Transactions and Concurrency

## 1. Introduction

This portfolio explores transaction management and concurrency control in PostgreSQL using a fictional postgraduate academic management system for Miva Open University.

The practical exercises demonstrate how database transactions maintain data consistency, how concurrent operations interact, and how PostgreSQL handles transaction failures and deadlocks.

## 2. Objectives

- Understand database transactions and transaction boundaries.
- Demonstrate COMMIT and ROLLBACK operations.
- Examine transaction atomicity.
- Explore concurrent database updates.
- Investigate transaction isolation levels.
- Demonstrate deadlock detection and handling.

## 3. Tools and Technologies

- PostgreSQL
- Supabase SQL Editor
- SQL
- GitHub for version control and project documentation

## 4. Practical Activities

### Activity 1: Transaction Basics

Demonstrated transaction execution using BEGIN, COMMIT, and ROLLBACK. A committed record remained in the database, while a rolled-back insertion was cancelled.

### Activity 2: Transaction Atomicity

Introduced a deliberate division-by-zero error during a transaction. The earlier balance update was rolled back, preserving the original balance of 100,000.00.

### Activity 3: Concurrency Control

Used two separate database sessions to perform concurrent updates on the same record. Both deductions were applied, resulting in a final balance of 70,000.00.

### Activity 4: Isolation Levels

Tested READ COMMITTED and REPEATABLE READ isolation settings. The REPEATABLE READ setting was successfully verified. However, the observed results did not conclusively demonstrate snapshot consistency across concurrent transactions. This limitation was documented.

### Activity 5: Deadlock Handling

Created two concurrent transactions that acquired locks on records in opposite orders. PostgreSQL detected the resulting deadlock and returned error code 40P01. One transaction was aborted, allowing the other to proceed.

The final account balances were 98,000.00 for both accounts.

## 5. Key Findings

- COMMIT makes transaction changes permanent.
- ROLLBACK cancels uncommitted changes.
- Transaction atomicity ensures that failed transactions do not leave partial updates.
- Concurrent transactions can interact through database locks.
- Isolation levels influence the visibility of changes between transactions.
- PostgreSQL automatically detects deadlocks and aborts one transaction to resolve the circular wait.

## 6. Limitations

The REPEATABLE READ exercise confirmed the configured isolation level but did not conclusively establish the expected snapshot behaviour. Further testing with verified session and transaction boundaries would be required.

The demonstrations used a small fictional dataset and were conducted in a Supabase PostgreSQL environment.

## 7. Conclusion

This portfolio provided practical experience with PostgreSQL transaction management, atomicity, concurrency, isolation settings, and deadlock detection. The exercises demonstrated the importance of transaction control in maintaining database consistency and managing concurrent operations.

## 8. Evidence

Screenshots and supporting evidence for the five activities are stored in the `Evidence` folder.

