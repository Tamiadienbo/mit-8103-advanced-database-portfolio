# Relational vs Document-Oriented Database Comparison

## 1. Introduction

This exercise compares the relational database model developed in Portfolio 1 with the document-oriented model implemented in Portfolio 4 using PostgreSQL JSONB.

Both approaches were used to represent student information, programmes, course enrolments and academic results.

## 2. Structural Differences

### Relational Database

The relational model stores information in separate tables, including:

- Students
- Programmes
- Courses
- Enrolments
- Results

Relationships between tables are maintained using primary keys and foreign keys.

### Document-Oriented Model

The document model stores related information together in a JSONB document.

Student details, programme information and course enrolments are represented as nested objects and arrays within one document.

## 3. Comparison

| Feature | Relational Model | Document Model |
|---|---|---|
| Data structure | Tables and rows | JSON documents |
| Relationships | Primary and foreign keys | Embedded objects and arrays |
| Data retrieval | SQL joins | JSONB operators |
| Schema | Structured schema | Flexible document structure |
| Data duplication | Can be reduced through normalisation | May occur through embedding |
| Updates | Updates to individual table records | Updates to document fields |

## 4. Advantages of the Relational Model

- Strong relationship management through foreign keys.
- Supports normalisation to reduce unnecessary duplication.
- Suitable for structured academic records.
- Supports complex queries involving multiple tables.

## 5. Advantages of the Document Model

- Related information can be retrieved together.
- Supports nested and flexible data structures.
- Can reduce the need for joins when retrieving embedded information.
- Allows different documents to contain different fields.

## 6. Limitations

The relational model may require several joins when retrieving related information.

The document model can introduce duplicated information and more complicated updates when the same information appears in multiple documents.

## 7. Application to the Academic Management System

The relational model is suitable for managing structured records such as students, programmes, courses, enrolments and results.

The document model is useful for representing a student's consolidated academic profile, particularly where related information needs to be retrieved together.

## 8. Conclusion

Both models offer useful approaches to data management. The relational model provides structured relationships and integrity constraints, while the document-oriented model offers flexibility in representing related information.

The choice depends on the application's data structure, consistency requirements and query patterns.
