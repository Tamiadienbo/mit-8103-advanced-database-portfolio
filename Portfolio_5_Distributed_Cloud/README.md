# Portfolio 5: Distributed and Cloud Database Exercise

## Case Study
**Miva Open University – Postgraduate Academic Management System**

## 1. Overview

This portfolio explores distributed database architecture and cloud database concepts using a proposed postgraduate academic management system.

The exercise demonstrates how student profiles, academic records, and cloud access information can be organised into separate logical database components and retrieved through SQL queries.

## 2. Objectives

- Understand the basic architecture of distributed databases.
- Explore logical data distribution across database components.
- Implement a simulated multi-node database structure.
- Retrieve related information across logical database nodes.
- Explore cloud-hosted database environments.
- Evaluate the benefits and limitations of the proposed architecture.

## 3. Tools and Technologies

- PostgreSQL
- Supabase
- GitHub
- SQL

## 4. Activities Completed

| File | Activity |
|---|---|
| `01_distributed_database_architecture.md` | Proposed distributed database architecture |
| `02_distributed_database_implementation.sql` | Logical database node implementation |
| `03_cross_node_queries.sql` | Cross-node data retrieval |
| `04_cloud_database_verification.sql` | Cloud database verification |
| `05_distributed_database_evaluation.md` | Evaluation, challenges, and recommendations |

## 5. Architecture

The proposed architecture contains three logical database nodes:

1. **Academic Node:** Stores student profiles and programme information.
2. **Records Node:** Stores course and academic result information.
3. **Cloud Node:** Stores student access information.

The implementation represents these components using separate PostgreSQL schemas within the Supabase database.

## 6. Implementation Summary

The practical exercise included:

- Creating three PostgreSQL schemas.
- Creating tables within each schema.
- Inserting sample academic records.
- Retrieving related information using SQL joins.
- Verifying database schemas, tables, and record counts.
- Evaluating the proposed architecture.

## 7. Implementation Limitation

The exercise uses separate schemas within one PostgreSQL database to simulate logical data distribution.

It does not represent a fully distributed database deployment involving independent database servers, network communication, replication, or distributed transaction management.

Supabase provides the cloud-hosted PostgreSQL environment used for the practical demonstration.

## 8. Conclusion

This portfolio demonstrates foundational concepts in distributed database architecture and cloud database management. It provides practical experience with logical data separation, cross-schema queries, and cloud-hosted PostgreSQL while identifying the additional infrastructure required for a fully distributed production system.

## 9. Evidence

Practical screenshots and query results are stored in the folder.

