-- ==========================================
-- Oracle SQL ALTER TABLE Operations
-- Solutions.sql
-- ==========================================

-- ==========================================
-- Question 31
-- Add a column named ADDRESS to the STUDENT table.
-- ==========================================

ALTER TABLE STUDENT
ADD ADDRESS VARCHAR2(200);

DESC STUDENT;


-- ==========================================
-- Question 32
-- Add CITY and STATE columns to the STUDENT table.
-- ==========================================

ALTER TABLE STUDENT
ADD
(
    CITY VARCHAR2(200),
    STATE VARCHAR2(200)
);

DESC STUDENT;


-- ==========================================
-- Question 33
-- Add EXPERIENCE_YEARS column to the FACULTY table.
-- ==========================================

ALTER TABLE FACULTY
ADD EXPERIENCE_YEARS NUMBER(2);

DESC FACULTY;


-- ==========================================
-- Question 34
-- Modify STUDENT_NAME datatype to VARCHAR2(100).
-- ==========================================

ALTER TABLE STUDENT
MODIFY STUDENT_NAME VARCHAR2(100);

DESC STUDENT;


-- ==========================================
-- Question 35
-- Modify MOBILE_NUMBER to store 15 digits.
-- ==========================================

ALTER TABLE STUDENT
MODIFY MOBILE_NUMBER NUMBER(15);

DESC STUDENT;


-- ==========================================
-- Question 36
-- Rename MOBILE_NUMBER to CONTACT_NUMBER.
-- ==========================================

ALTER TABLE STUDENT
RENAME COLUMN MOBILE_NUMBER TO CONTACT_NUMBER;

DESC STUDENT;


-- ==========================================
-- Question 37
-- Rename COURSE_NAME to COURSE_TITLE.
-- ==========================================

ALTER TABLE COURSE
RENAME COLUMN COURSE_NAME TO COURSE_TITLE;

DESC COURSE;


-- ==========================================
-- Question 38
-- Drop ADDRESS column from STUDENT table.
-- ==========================================

ALTER TABLE STUDENT
DROP COLUMN ADDRESS;

DESC STUDENT;


-- ==========================================
-- Question 39
-- Drop QUALIFICATION column from FACULTY table.
-- ==========================================

ALTER TABLE FACULTY
DROP COLUMN QUALIFICATION;

DESC FACULTY;


-- ==========================================
-- Question 40
-- Add CHECK constraint for SALARY > 0.
-- ==========================================

ALTER TABLE FACULTY
ADD CONSTRAINT CHECK_SAL
CHECK (SALARY > 0);

DESC FACULTY;


-- ==========================================
-- Question 41
-- Add CHECK constraint for CGPA between 0 and 10.
-- ==========================================

ALTER TABLE STUDENT
ADD CONSTRAINT CHECK_CGPA
CHECK (CGPA BETWEEN 0 AND 10);

DESC STUDENT;


-- ==========================================
-- Question 42
-- Add NOT NULL constraint to EVENT_NAME.
-- ==========================================

ALTER TABLE EVENT
MODIFY EVENT_NAME NOT NULL;

DESC EVENT;


-- ==========================================
-- Question 43
-- Add UNIQUE constraint to CONTACT_NUMBER.
-- ==========================================

ALTER TABLE STUDENT
ADD CONSTRAINT CONTACT_UNIQUE
UNIQUE (CONTACT_NUMBER);

DESC STUDENT;


-- ==========================================
-- Question 44
-- Rename EVENT table to COLLEGE_EVENT.
-- ==========================================

RENAME EVENT TO COLLEGE_EVENT;

DESC COLLEGE_EVENT;


-- ==========================================
-- Question 45
-- Rename COLLEGE_EVENT back to EVENT.
-- ==========================================

RENAME COLLEGE_EVENT TO EVENT;

DESC EVENT;


-- ==========================================
-- Question 46
-- Add HOD_FACULTY_ID column to DEPARTMENT.
-- ==========================================

ALTER TABLE DEPARTMENT
ADD HOD_FACULTY_ID VARCHAR2(10);

DESC DEPARTMENT;


-- ==========================================
-- Question 47
-- Create Foreign Key for HOD_FACULTY_ID.
-- ==========================================

ALTER TABLE DEPARTMENT
ADD CONSTRAINT DEPT_FK
FOREIGN KEY (HOD_FACULTY_ID)
REFERENCES FACULTY(FACULTY_ID);

DESC DEPARTMENT;


-- ==========================================
-- Question 48
-- Drop HOD_NAME column.
-- ==========================================

ALTER TABLE DEPARTMENT
DROP COLUMN HOD_NAME;

DESC DEPARTMENT;


-- ==========================================
-- Question 49
-- Disable Foreign Key between COURSE and FACULTY.
-- ==========================================

SELECT CONSTRAINT_NAME
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'COURSE'
AND CONSTRAINT_TYPE = 'R';

ALTER TABLE COURSE
DISABLE CONSTRAINT COS_FTY_FK;

DESC COURSE;


-- ==========================================
-- Question 50
-- Enable the Foreign Key.
-- ==========================================

ALTER TABLE COURSE
ENABLE CONSTRAINT COS_FTY_FK;

DESC COURSE;