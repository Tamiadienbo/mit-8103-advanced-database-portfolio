# NoSQL Data Model Analysis

## 1. Overview

The postgraduate academic management system uses a document-oriented data model to represent student information, programme details, course enrolments and academic results.

Unlike a relational database, which stores information across multiple related tables, a document database can store related information together in a single JSON-like document.

## 2. Document Structure

The student document contains the following sections:

- **Student information:** Student ID, matriculation number, name and email.
- **Programme information:** Programme name, academic level and department.
- **Enrolments:** An array containing individual course enrolment records.
- **Academic session:** The academic session associated with the student's records.

## 3. Embedded Documents

The `student` and `programme` objects are embedded documents.

They group related information within the main student document.

## 4. Embedded Arrays

The `enrolments` field contains an array of course records.

Each record can contain the course code, course title, semester, enrolment status, score and grade.

This structure allows a student to have multiple course enrolments within one document.

## 5. Advantages

- Related student information can be retrieved together.
- The document structure supports flexible data fields.
- Embedded records can reduce the need for multiple joins.
- The model can accommodate changes to student and course information.

## 6. Limitations

- Repeated information across student documents can create duplication.
- Updating shared programme or course information may require changes to multiple documents.
- Data consistency and validation must be carefully managed.
- Large enrolment arrays can make documents increasingly complex.

## 7. Conclusion

The document-oriented model provides an alternative to the relational structure developed in Portfolio 1. It offers flexibility in representing student records and their associated academic information.
