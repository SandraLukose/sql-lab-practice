# 💻 Oracle SQL UPDATE Operations – Solutions

This document contains the SQL solutions for the UPDATE operation practice questions.

Each solution includes:
- The SQL query
- A brief explanation of the query

---

# Question 16

### Update the CGPA of student **S101** to **8.7**.

```sql
UPDATE STUDENT
SET CGPA = 8.7
WHERE STUDENT_ID = 'S101';

SELECT * FROM STUDENT;
```

**Explanation**

Updates the CGPA of student **S101** to **8.7**.

---

# Question 17

### Change the mobile number and email address of a particular student using one UPDATE statement.

```sql
UPDATE STUDENT
SET MOBILE_NUMBER = 9567617962,
    EMAIL_ID = 'san@gmail.com'
WHERE STUDENT_ID = 'S103';

SELECT * FROM STUDENT;
```

**Explanation**

Updates two columns (**MOBILE_NUMBER** and **EMAIL_ID**) simultaneously using a single UPDATE statement.

---

# Question 18

### Increase the salary of faculty member **F101** by ₹5,000.

```sql
UPDATE FACULTY
SET SALARY = SALARY + 5000
WHERE FACULTY_ID = 'F101';

SELECT * FROM FACULTY;
```

**Explanation**

Adds ₹5,000 to the salary of faculty member **F101**.

---

# Question 19

### Increase the salary of all faculty members by **10%**.

```sql
UPDATE FACULTY
SET SALARY = SALARY + (SALARY * 10/100);

SELECT * FROM FACULTY;
```

**Explanation**

Increases the salary of every faculty member by **10%**.

---

# Question 20

### Increase the salary of only Assistant Professors by **8%**.

```sql
UPDATE FACULTY
SET SALARY = SALARY + (SALARY * 8/100)
WHERE DESIGNATION = 'ASSISTANT PROFESSOR';

SELECT * FROM FACULTY;
```

**Explanation**

Updates only those faculty members whose designation is **Assistant Professor**.

---

# Question 21

### Change the office location of the Computer Science department.

```sql
UPDATE DEPARTMENT
SET OFFICE_LOCATION = 'GOLDEN AUREOLE'
WHERE DEPT_NAME = 'COMPUTER SCIENCE';

SELECT * FROM DEPARTMENT;
```

**Explanation**

Updates the office location of the Computer Science department.

---

# Question 22

### Update the credits of Database Management Systems from **4** to **5**.

```sql
UPDATE COURSE
SET CREDITS = 5
WHERE COURSE_NAME = 'DATABASE MANAGEMENT SYSTEM';

SELECT * FROM COURSE;
```

**Explanation**

Changes the course credits from **4** to **5**.

---

# Question 23

### Change all courses assigned to faculty member **F101** to **F102**.

```sql
UPDATE COURSE
SET FACULTY_ID = 'F102'
WHERE FACULTY_ID = 'F101';

SELECT * FROM COURSE;
```

**Explanation**

Transfers all courses handled by **F101** to **F102**.

---

# Question 24

### Update total marks as the sum of internal and external marks.

```sql
UPDATE RESULT
SET TOTAL_MARKS = INTERNAL_MARKS + EXTERNAL_MARKS;

SELECT * FROM RESULT;
```

**Explanation**

Calculates the total marks by adding **INTERNAL_MARKS** and **EXTERNAL_MARKS**.

---

# Question 25

### Set the grade to **A** for students scoring **80 or above**.

#### Sample Data

```sql
INSERT INTO RESULT VALUES ('R102','ENR101',38,40,(38+40),'B','PASS');
INSERT INTO RESULT VALUES ('R103','ENR101',45,42,(45+42),'B','PASS');
INSERT INTO RESULT VALUES ('R104','ENR101',41,43,(41+43),'B','PASS');
INSERT INTO RESULT VALUES ('R105','ENR101',48,47,(48+47),'B','PASS');
INSERT INTO RESULT VALUES ('R106','ENR101',25,20,(25+20),'D','FAIL');
```

#### Solution

```sql
UPDATE RESULT
SET GRADE = 'A'
WHERE TOTAL_MARKS >= 80;

SELECT * FROM RESULT;
```

**Explanation**

Updates the grade to **A** for all students whose total marks are **80 or above**.

---

# Question 26

### Set the result status to PASS or FAIL based on total marks.

#### Sample Data

```sql
INSERT INTO RESULT VALUES ('R107','ENR101',30,18,(30+18),'D','PASS');
INSERT INTO RESULT VALUES ('R108','ENR101',20,15,(20+15),'F','PASS');
INSERT INTO RESULT VALUES ('R109','ENR101',28,24,(28+24),'C','FAIL');
INSERT INTO RESULT VALUES ('R110','ENR101',50,45,(50+45),'B','FAIL');
```

#### Solution

```sql
UPDATE RESULT
SET RESULT_STATUS = 'PASS'
WHERE TOTAL_MARKS >= 50;

UPDATE RESULT
SET RESULT_STATUS = 'FAIL'
WHERE TOTAL_MARKS < 50;

SELECT * FROM RESULT;
```

**Explanation**

Assigns **PASS** to students scoring **50 or more**, and **FAIL** to students scoring below **50**.

---

# Question 27

### Change the participation status to ATTENDED.

#### Sample Data

```sql
INSERT INTO EVENT_REGISTRATION VALUES ('EVR102','E101','S101',SYSDATE,'REGISTERED');
INSERT INTO EVENT_REGISTRATION VALUES ('EVR103','E102','S102',SYSDATE,'REGISTERED');
INSERT INTO EVENT_REGISTRATION VALUES ('EVR104','E103','S103',SYSDATE,'REGISTERED');
INSERT INTO EVENT_REGISTRATION VALUES ('EVR105','E103','S103',SYSDATE,'REGISTERED');
```

#### Solution

```sql
UPDATE EVENT_REGISTRATION
SET PARTICIPATION_STATUS = 'ATTENDED'
WHERE EVENT_ID = 'E101'
AND STUDENT_ID = 'S101';

SELECT * FROM EVENT_REGISTRATION;
```

**Explanation**

Updates the participation status of the selected student for a particular event.

---

# Question 28

### Update the registration fee of all free events from NULL to 0.

#### Modify the CHECK Constraint

```sql
ALTER TABLE EVENT
DROP CONSTRAINT REG_CHECK;

ALTER TABLE EVENT
ADD CONSTRAINT REG_CHECK
CHECK(REGISTRATION_FEE >= 0);
```

#### Sample Data

```sql
INSERT INTO EVENT VALUES ('E104','AI WORKSHOP','20-SEP-26','SEMINAR HALL','F101',100,NULL);

INSERT INTO EVENT VALUES ('E105','HACKATHON','25-SEP-26','LAB BLOCK','F102',150,250);
```

#### Solution

```sql
UPDATE EVENT
SET REGISTRATION_FEE = 0
WHERE REGISTRATION_FEE IS NULL;

SELECT * FROM EVENT;
```

**Explanation**

Replaces all **NULL** registration fees with **0**, indicating that the event is free.

---

# Question 29

### Increase the registration fee of events having more than 100 participants by 15%.

```sql
UPDATE EVENT
SET REGISTRATION_FEE = REGISTRATION_FEE + (REGISTRATION_FEE * 15/100)
WHERE MAX_PARTICIPANTS > 100;

SELECT * FROM EVENT;
```

**Explanation**

Increases the registration fee by **15%** for events whose maximum participant count exceeds **100**.

---

# Question 30

### Update the academic year from **2025-2026** to **2026-2027**.

#### Sample Data

```sql
INSERT INTO ENROLLMENT VALUES ('ENR103','S102','C102',SYSDATE,'2025-2026');
INSERT INTO ENROLLMENT VALUES ('ENR104','S104','C102',SYSDATE,'2025-2026');
```

#### Solution

```sql
UPDATE ENROLLMENT
SET ACADEMIC_YEAR = '2026-2027'
WHERE ACADEMIC_YEAR = '2025-2026';

SELECT * FROM ENROLLMENT;
```

**Explanation**

Updates all enrollment records belonging to the academic year **2025-2026** to **2026-2027**.

---

## 🎯 Summary

In this exercise, the following UPDATE operations were practiced:

- Updating a single column
- Updating multiple columns
- Performing arithmetic updates
- Updating rows using conditions
- Updating calculated values
- Updating NULL values
- Updating multiple records
- Using the `WHERE` clause effectively