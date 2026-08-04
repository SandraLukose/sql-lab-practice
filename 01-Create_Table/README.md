# CREATE TABLE Practice Questions

## Scenario

Design a database schema for a **College Academic Management System**. The system should manage:

- Students
- Departments
- Faculty
- Courses
- Enrollments
- Results
- Events

---

## Question 1: Create the DEPARTMENT Table

Create a table named **DEPARTMENT** with the following columns:

| Column Name | Description |
|------------|-------------|
| dept_id | Department ID |
| dept_name | Department Name |
| hod_name | Head of Department |
| office_location | Office Location |
| contact_number | Department Contact Number |

### Constraints

- Department ID should be the **Primary Key**.
- Department Name should be **Unique**.
- Department Name should **NOT NULL**.

---

## Question 2: Create the STUDENT Table

Create a table named **STUDENT** with the following columns:

| Column Name | Description |
|------------|-------------|
| student_id | Student ID |
| student_name | Student Name |
| dob | Date of Birth |
| gender | Gender |
| mobile_number | Mobile Number |
| email_id | Email ID |
| dept_id | Department ID |
| admission_date | Admission Date |
| cgpa | CGPA |

### Constraints

- Student ID should be the **Primary Key**.
- Email ID should be **Unique**.
- Gender should allow only **'M'** or **'F'**.
- CGPA should be between **0 and 10**.
- Department ID should reference the **DEPARTMENT** table.

---

## Question 3: Create the FACULTY Table

Create a table named **FACULTY** with the following columns:

| Column Name | Description |
|------------|-------------|
| faculty_id | Faculty ID |
| faculty_name | Faculty Name |
| qualification | Qualification |
| designation | Designation |
| joining_date | Date of Joining |
| salary | Salary |
| email_id | Email ID |
| dept_id | Department ID |

### Constraints

- Faculty ID should be the **Primary Key**.
- Email ID should be **Unique**.
- Salary should be greater than **0**.
- Department ID should reference the **DEPARTMENT** table.

---

## Question 4: Create the COURSE Table

Create a table named **COURSE** with the following columns:

| Column Name | Description |
|------------|-------------|
| course_id | Course ID |
| course_name | Course Name |
| credits | Number of Credits |
| semester | Semester |
| dept_id | Department ID |
| faculty_id | Faculty ID |

### Constraints

- Course ID should be the **Primary Key**.
- Course Name should **NOT NULL**.
- Credits should be between **1 and 6**.
- Semester should be between **1 and 8**.
- Department ID should reference the **DEPARTMENT** table.
- Faculty ID should reference the **FACULTY** table.

---

## Question 5: Create the ENROLLMENT Table

Create a table named **ENROLLMENT** with the following columns:

| Column Name | Description |
|------------|-------------|
| enrollment_id | Enrollment ID |
| student_id | Student ID |
| course_id | Course ID |
| enrollment_date | Enrollment Date |
| academic_year | Academic Year |

### Constraints

- Enrollment ID should be the **Primary Key**.
- Student ID should reference the **STUDENT** table.
- Course ID should reference the **COURSE** table.
- Enrollment Date should default to the **Current Date**.
- A student should not enroll in the same course more than once.

---

## Question 6: Create the RESULT Table

Create a table named **RESULT** with the following columns:

| Column Name | Description |
|------------|-------------|
| result_id | Result ID |
| enrollment_id | Enrollment ID |
| internal_marks | Internal Marks |
| external_marks | External Marks |
| total_marks | Total Marks |
| grade | Grade |
| result_status | PASS / FAIL |

### Constraints

- Result ID should be the **Primary Key**.
- Enrollment ID should reference the **ENROLLMENT** table.
- Internal Marks should be between **0 and 50**.
- External Marks should be between **0 and 50**.
- Grade should allow only **A, B, C, D, F**.
- Result Status should allow only **PASS** or **FAIL**.

---

## Question 7: Create the EVENT Table

Create a table named **EVENT** with the following columns:

| Column Name | Description |
|------------|-------------|
| event_id | Event ID |
| event_name | Event Name |
| event_date | Event Date |
| venue | Venue |
| faculty_id | Coordinator Faculty ID |
| max_participants | Maximum Participants |
| registration_fee | Registration Fee |

### Constraints

- Event ID should be the **Primary Key**.
- Faculty ID should reference the **FACULTY** table.
- Maximum Participants should be greater than **0**.
- Registration Fee should not be negative.

---

## Question 8: Create the EVENT_REGISTRATION Table

Create a table named **EVENT_REGISTRATION** with the following columns:

| Column Name | Description |
|------------|-------------|
| registration_id | Registration ID |
| event_id | Event ID |
| student_id | Student ID |
| registration_date | Registration Date |
| participation_status | REGISTERED / ATTENDED / ABSENT |

### Constraints

- Registration ID should be the **Primary Key**.
- Event ID should reference the **EVENT** table.
- Student ID should reference the **STUDENT** table.
- Registration Date should default to the **Current Date**.
- Participation Status should allow only:
  - REGISTERED
  - ATTENDED
  - ABSENT

---

# Challenge Question

## Database Redesign using ALTER TABLE

The **DEPARTMENT** table currently stores the Head of Department using the **hod_name** column. Since faculty details already exist in the **FACULTY** table, this causes data redundancy.

Modify the database design by performing the following tasks:

1. Add a new column named **hod_faculty_id** to the **DEPARTMENT** table.
2. Create a **Foreign Key** relationship between **hod_faculty_id** and **FACULTY(faculty_id)**.
3. Remove the existing **hod_name** column.
4. Display the structure of the modified **DEPARTMENT** table.