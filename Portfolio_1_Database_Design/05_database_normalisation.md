# Database Normalisation

## Introduction
The Miva Open University Postgraduate Academic Management System is structured using relational database principles to reduce unnecessary data duplication and improve data consistency.

## First Normal Form (1NF)
Each table contains a primary key, and each column stores a single value rather than multiple values in one field. Student information, course details and results are stored in separate records.

## Second Normal Form (2NF)
The design separates information about students, courses, programmes and academic sessions into different tables. The Course_Programmes table resolves the many-to-many relationship between courses and programmes using its own primary key and foreign keys.

## Third Normal Form (3NF)
Non-key attributes are stored in the tables representing the entities they describe. For example, faculty names are stored in Faculties rather than repeated in Departments, and programme names are stored in Programmes rather than repeated in Students.

## Conclusion
The proposed schema follows the principles of 1NF, 2NF and 3NF by using atomic attributes, separate entity tables, primary keys and foreign-key relationships. This structure helps reduce redundancy and supports data integrity.
