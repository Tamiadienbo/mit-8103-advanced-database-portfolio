# Distributed Database Architecture

## 1. Introduction

This exercise explores a proposed distributed database architecture for the Miva Open University Postgraduate Academic Management System.

A distributed database architecture allows data to be managed across multiple database locations or nodes while supporting access to information across the wider system.

## 2. Proposed Architecture

The proposed system uses three logical database locations:

- **Node 1 – Main Academic Database:** Stores central student profiles, programme information and academic administration records.
- **Node 2 – Academic Records Database:** Stores course enrolments, examination results and academic performance records.
- **Node 3 – Cloud Database:** Provides cloud-hosted database access and supports centralised access to academic information.

These nodes represent a proposed academic architecture for this exercise, not Miva University's verified internal infrastructure.

## 3. Data Distribution

Student profile information is assigned to the Main Academic Database.

Course enrolments and examination results are assigned to the Academic Records Database.

The cloud database provides a proposed environment for accessing and managing the academic information.

## 4. Advantages

- Supports separation of database responsibilities.
- Can improve scalability as the institution grows.
- Allows different academic data groups to be managed independently.
- Cloud hosting can support remote access and availability.

## 5. Challenges

- Maintaining consistency across database locations.
- Managing network connectivity and communication failures.
- Securing data across different locations.
- Coordinating backups and recovery.
- Managing distributed queries and transactions.

## 6. Conclusion

The proposed architecture illustrates how an academic management system could organise its database responsibilities across multiple logical locations and use cloud infrastructure to support access and scalability.
