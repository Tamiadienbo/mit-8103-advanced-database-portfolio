# Portfolio 4: NoSQL and Advanced Data Models

## 1. Introduction

This portfolio explores document-oriented data modelling using a fictional postgraduate academic management system for Miva Open University.

The exercise demonstrates how student information, programme details, course enrolments and academic records can be represented and managed using JSON documents.

PostgreSQL JSONB was used to implement and query the document-oriented model.

## 2. Objectives

- Understand document-oriented data modelling.
- Represent academic records using JSON.
- Implement document storage using PostgreSQL JSONB.
- Retrieve nested information using JSONB operators.
- Update individual fields within JSON documents.
- Compare relational and document-oriented database models.

## 3. Tools and Technologies

- PostgreSQL
- Supabase SQL Editor
- JSON and JSONB
- SQL
- GitHub

## 4. Practical Activities

### Activity 1: Document Data Modelling

Designed a JSON document containing student details, programme information, course enrolments and academic session information.

### Activity 2: Document Implementation

Created a PostgreSQL table named `nosql_student_documents` with a JSONB column and inserted a sample postgraduate student document.

### Activity 3: Document Queries

Used JSONB operators and functions to retrieve:
- Student information.
- Programme information.
- Individual course enrolment records.

### Activity 4: Document Updates

Updated the student's email address and modified the enrolment status of MIT802 using the PostgreSQL `jsonb_set()` function.

The updated document was queried to verify the changes.

### Activity 5: Relational vs Document-Oriented Comparison

Compared the relational database design from Portfolio 1 with the JSONB document model.

The comparison considered data structure, relationships, retrieval, schema flexibility, advantages and limitations.

## 5. Key Findings

- JSON documents can represent nested and related academic information.
- PostgreSQL JSONB supports storage and querying of structured document data.
- JSONB operators allow access to nested objects and array elements.
- The `jsonb_set()` function supports updates to specific document fields.
- Relational and document-oriented models offer different approaches to data organisation and retrieval.

## 6. Limitations

PostgreSQL JSONB was used to demonstrate document-oriented data modelling. It is not a dedicated NoSQL database engine such as MongoDB.

The implementation used a small fictional dataset and was intended for academic demonstration.

## 7. Conclusion

This portfolio provided practical experience with document-oriented data modelling, JSONB implementation, querying and updating.

It also demonstrated how document-based structures differ from relational database designs and how each approach can support different application requirements.

## 8. Evidence

Screenshots of document retrieval, programme queries, course enrolments and document updates are stored in the folder.
