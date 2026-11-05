# Distributed Database Evaluation

## 1. Introduction

This exercise explored distributed database concepts using the Miva Open University Postgraduate Academic Management System as a case study. The proposed architecture separates student information, academic records, and cloud access information into three logical database nodes.

The implementation used PostgreSQL through Supabase, a cloud-hosted database platform.

## 2. Architecture Implemented

The exercise created three PostgreSQL schemas to represent logical database nodes:

| Logical Node | Schema | Responsibility |
|---|---|---|
| Node 1 | `academic_node` | Stores student profiles and programme information |
| Node 2 | `records_node` | Stores course and academic result records |
| Node 3 | `cloud_node` | Stores student access information |

Sample records were inserted into the three schemas and retrieved through a combined SQL query.

## 3. Benefits of the Proposed Architecture

- **Data separation:** Different categories of academic information are organised independently.
- **Improved organisation:** Student profiles and academic records are stored in separate logical structures.
- **Cloud accessibility:** Supabase provides a cloud-hosted PostgreSQL environment.
- **Integrated retrieval:** SQL joins allow related information from the logical nodes to be retrieved together.
- **Potential scalability:** The architecture provides a conceptual foundation for separating database workloads as institutional requirements grow.

## 4. Challenges and Limitations

The implementation used three schemas within a single PostgreSQL database. These schemas represent logical separation rather than three independent physical database servers.

Consequently:

- The exercise did not demonstrate communication between separate database servers.
- It did not implement actual network-based distributed transactions.
- It did not demonstrate replication between independent database nodes.
- A failure affecting the underlying PostgreSQL database could affect all three logical schemas.
- Additional configuration would be required to deploy the architecture across independent cloud database instances.

## 5. Recommendations

For a production-level implementation, the university could consider deploying separate database instances for student administration, academic records, and other institutional services.

Additional measures could include:

- Database replication and backup.
- Secure network communication between database nodes.
- Access control and authentication.
- Distributed transaction management where required.
- Monitoring, disaster recovery, and performance testing.

## 6. Conclusion

The exercise demonstrated the principles of logical data distribution, cloud database hosting, and integrated data retrieval using PostgreSQL and Supabase.

Although the implementation did not establish a fully distributed multi-server database, it provided a practical demonstration of how academic information can be separated into logical components and accessed through a unified query.

The proposed architecture provides a foundation for understanding how a larger university database system could be designed and expanded.
