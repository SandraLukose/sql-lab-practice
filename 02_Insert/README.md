# INSERT Operations

## Overview

This section contains practice exercises on the SQL `INSERT` statement. These exercises cover inserting records into tables, using default values, inserting multiple rows, `INSERT ALL`, and creating backup tables using `INSERT INTO ... SELECT`.

---

## Question 1

Insert a new department with the following details:

| Field | Value |
|-------|-------|
| Department ID | D01 |
| Department Name | Computer Science |
| HOD Name | Dr. Anil Kumar |
| Office Location | Carmel Block |
| Contact Number | 9876543210 |

---

## Question 2

Insert a new department by specifying only:

- Department ID
- Department Name
- Office Location

---

## Question 3

Insert **three department records** into the **DEPARTMENT** table using **separate INSERT statements**.

---

## Question 4

Insert the following student record into the **STUDENT** table.

| Field | Value |
|-------|-------|
| Student ID | S101 |
| Student Name | Akhil Raj |
| Date of Birth | 15-Aug-2005 |
| Gender | M |
| Mobile Number | 9876501234 |
| Email ID | akhil@gmail.com |
| Department ID | D01 |
| Admission Date | Current Date |
| CGPA | 8.2 |

---

## Question 5

Insert a student record **without providing the CGPA value**.

---

## Question 6

Insert a **female student** belonging to the **Computer Science** department with a **CGPA greater than 9**.

---

## Question 7

Insert **two faculty records** into the **FACULTY** table using a single **INSERT ALL** statement.

---

## Question 8

Insert a faculty member with the following details.

| Field | Value |
|-------|-------|
| Faculty ID | F101 |
| Faculty Name | Meera Joseph |
| Qualification | PhD |
| Designation | Assistant Professor |
| Joining Date | 01-Jun-2022 |
| Salary | 55000 |
| Email ID | meera@rajagiri.edu |
| Department ID | D01 |

---

## Question 9

Insert a course titled **Database Management Systems** with:

- Credits: 4
- Semester: 3

---

## Question 10

Insert a course **without mentioning the column names**.

Ensure that the values are inserted in the correct table-column order.

---

## Question 11

Insert an enrollment record and allow the **ENROLLMENT_DATE** column to take its **default value**.

---

## Question 12

Insert a result record where the **TOTAL_MARKS** column is calculated by adding the **INTERNAL_MARKS** and **EXTERNAL_MARKS**.

---

## Question 13

Insert **three events** into the **EVENT** table using an Oracle **INSERT ALL** statement.

---

## Question 14

Insert an **EVENT_REGISTRATION** record and allow the **REGISTRATION_DATE** column to automatically store the current date.

---

## Question 15

Create a backup table named **HIGH_CGPA_STUDENTS** and copy all students whose **CGPA is 8.0 or above** using:

```sql
INSERT INTO ... SELECT
```

---

## Learning Outcomes

After completing these exercises, you should be able to:

- Insert single records
- Insert multiple records
- Use `INSERT ALL`
- Insert partial column values
- Use default values
- Copy data using `INSERT INTO ... SELECT`