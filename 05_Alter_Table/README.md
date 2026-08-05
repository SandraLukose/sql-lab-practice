# 📝 Oracle SQL ALTER TABLE Operations

This document contains practice questions based on the Oracle SQL **ALTER TABLE** statement.

---

## 📚 Learning Objectives

After completing these exercises, you will learn how to:

- Add new columns
- Modify existing columns
- Rename columns
- Delete columns
- Add constraints
- Rename tables
- Enable and disable constraints

---

# 📋 Practice Questions

### Question 31

Add a column named **ADDRESS** with datatype **VARCHAR2(200)** to the **STUDENT** table.

---

### Question 32

Add two columns, **CITY** and **STATE**, to the **STUDENT** table.

---

### Question 33

Add a column named **EXPERIENCE_YEARS** to the **FACULTY** table.

---

### Question 34

Modify the size of the **STUDENT_NAME** column to **VARCHAR2(100)**.

---

### Question 35

Modify the datatype of **MOBILE_NUMBER** so that it can store **15 digits**.

---

### Question 36

Rename the column **MOBILE_NUMBER** in the **STUDENT** table to **CONTACT_NUMBER**.

---

### Question 37

Rename the column **COURSE_NAME** in the **COURSE** table to **COURSE_TITLE**.

---

### Question 38

Delete the newly added **ADDRESS** column from the **STUDENT** table.

---

### Question 39

Drop the **QUALIFICATION** column from the **FACULTY** table.

---

### Question 40

Add a **CHECK** constraint to ensure that faculty salary is greater than zero.

---

### Question 41

Add a **CHECK** constraint to ensure that student CGPA remains between **0 and 10**.

---

### Question 42

Add a **NOT NULL** constraint to the **EVENT_NAME** column.

---

### Question 43

Add a **UNIQUE** constraint to the **CONTACT_NUMBER** column of the **STUDENT** table.

---

### Question 44

Rename the **EVENT** table to **COLLEGE_EVENT**.

---

### Question 45

Rename the **COLLEGE_EVENT** table back to **EVENT**.

---

### Question 46

Add a column named **HOD_FACULTY_ID** to the **DEPARTMENT** table.

---

### Question 47

Create a **Foreign Key** constraint linking **HOD_FACULTY_ID** in **DEPARTMENT** with **FACULTY_ID** in **FACULTY**.

---

### Question 48

Remove the existing **HOD_NAME** column from the **DEPARTMENT** table.

---

### Question 49

Disable the foreign key constraint connecting **COURSE** and **FACULTY**.

---

### Question 50

Enable the previously disabled foreign key constraint.

---

## 📁 Related Files

- **Solutions.md** – SQL solutions for all ALTER TABLE questions.

---

> **Note:** These exercises were performed using Oracle SQL and SQL*Plus.