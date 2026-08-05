-- =====================================================
-- Question 1
-- Insert Department
-- =====================================================
DESC DEPARTMENT;
ALTER TABLE DEPARTMENT ADD HOD VARCHAR2(100);
DESC DEPARTMENT;
INSERT INTO DEPARTMENT (DEPT_ID , DEPT_NAME , OFFICE_LOCATION , CONTACT_NUMBER , HOD) VALUES ('D101','COMPUTER SCIENCE', 'CARMEL BLOCK' , 9876543210 , 'DR ANIL KUMAR');
SELECT * FROM DEPARTMENT;
-- =====================================================
-- Question 2
-- Insert Selected Columns
-- =====================================================
INSERT INTO DEPARTMENT (DEPT_ID , DEPT_NAME , OFFICE_LOCATION) VALUES ('D102','MATHEMATICS','ASSUMPTION BLOCK');
SELECT * FROM DEPARTMENT;
-- =====================================================
-- Question 3
-- Multiple INSERT Statements
-- =====================================================
INSERT INTO DEPARTMENT VALUES ('D103','ENGLISH','OLD BUILDING BLOCK',9567617962,NULL,'DR SMITHA HARIDAS');
INSERT INTO DEPARTMENT VALUES ('D104','PHYSICS','KG BLOCK',9867617962,NULL,'DR ANNATHU VASUDEVAN');
INSERT INTO DEPARTMENT VALUES ('D105','STATISTICS','NEW BLOCK',9869617962,NULL,'DR ANIL KUMAR');
SELECT * FROM DEPARTMENT;
-- =====================================================
-- Question 4
-- Insert a Student Record
-- =====================================================
INSERT INTO STUDENT VALUES ('S101','AKHIL RAJ',TO_DATE('15-08-2005','DD-MM-YYYY'),'M',9876501234,'akhil@gmail.com',SYSDATE,8.2,'D101');
SELECT * FROM STUDENT;
-- =====================================================
-- Question 5
-- Insert a Student Record Without CGPA
-- =====================================================
INSERT INTO STUDENT (STUDENT_ID,STUDENT_NAME,DOB , GENDER,MOBILE_NUMBER,EMAIL_ID,ADMISSION_DATE,DEPT_ID) VALUES ('S102','DEEPA KAMMATH',TO_DATE('17-05-2005','DD-MM-YYYY'), 'F',9865239871,'deepa@gmail.com',SYSDATE,'D102');
SELECT * FROM STUDENT;
-- =====================================================
-- Question 6
-- Insert a Female Student with High CGPA
-- =====================================================
INSERT INTO STUDENT VALUES ('S103','SANDRA LUKOSE',TO_DATE('18-02-2005','DD-MM-YYYY'),'F', 7034461849,'sandralukose40@gmail.com',SYSDATE,10.00,'D101');
SELECT * FROM STUDENT;
-- =====================================================
-- Question 7
-- Insert Multiple Faculty Records Using INSERT ALL
-- =====================================================
INSERT ALL INTO FACULTY VALUES ('F101','KIRAN KUMAR','PhD','PROFESSOR',TO_DATE('01-05-2023','DD-MM-YYYY'),6500,'kiran@gmail.com','D102') INTO FACULTY VALUES ('F102','AMIT SAMUEL','MCA','ASSISTANT PROFESSOR',TO_DATE('10-05-2008','DD-MM-YYYY'),4800,'amit@gmail.com','D103') SELECT * FROM DUAL;
SELECT * FROM FACULTY;

-- =====================================================
-- Question 8
-- Insert a Faculty Record
-- ====================================================
ALTER TABLE FACULTY MODIFY SALARY NUMBER(10,2);
DELETE FROM FACULTY WHERE FACULTY_ID = 'F101';
INSERT INTO FACULTY VALUES ('F101','MEERA JOSEPH','PhD','ASSISTANT PROFESSOR',TO_DATE('01-06-2022','DD-MM-YYYY'),55000,'meera@rajagiri.edu','D101');
SELECT * FROM FACULTY;
-- =====================================================
-- Question 9
-- Insert a Course Record
-- =====================================================
INSERT INTO COURSE VALUES ('C101','DATABASE MANAGEMENT SYSTEM',4,3,'D101','F101');
SELECT * FROM COURSE;
-- =====================================================
-- Question 10
-- Insert a Course Without Specifying Column Names
-- =====================================================
INSERT INTO COURSE VALUES ('C102','MEAN MEDIAN AND MODE',3,5,'D105','F102');
SELECT * FROM COURSE;
-- =====================================================
-- Question 11
-- Insert an Enrollment Record Using the Default Date
-- =====================================================
INSERT INTO ENROLLMENT (ENROLLMENT_ID,STUDENT_ID,COURSE_CODE,ACADEMIC_YEAR) VALUES ('ENR101','S101','C101','2025');
SELECT * FROM ENROLLMENT;
-- =====================================================
-- Question 12
-- Insert a Result Record with Calculated Total Marks
-- =====================================================
INSERT INTO RESULT VALUES ('R101','ENR101',25,45,25+45,'B','PASS');
SELECT * FROM RESULT;
-- =====================================================
-- Question 13
-- Insert Multiple Event Records Using INSERT ALL
-- =====================================================
INSERT ALL INTO EVENT VALUES ('E101','TECH TALK','25-AUG-2026','CARMEL BLOCK','F102',400,200) INTO EVENT VALUES ('E102','SEMINAR PRESENTATION','05-SEP-2023','OLD BUILDING ','F102',200,100) INTO EVENT VALUES ('E103','PROJECT PRESENTATION','15-JUN-2022','ASSUMPTION BLOCK','F101',300,400) SELECT * FROM DUAL;
SELECT * FROM EVENT;
-- =====================================================
-- Question 14
-- Insert an Event Registration Record Using the Default Date
-- =====================================================
INSERT INTO EVENT_REGISTRATION (REGISTRATION_ID,EVENT_ID,STUDENT_ID,PARTICIPATION_STATUS) VALUES ('EVR101','E101','S102','REGISTERED');
 SELECT * FROM EVENT_REGISTRATION;
-- =====================================================
-- Question 15
-- Create a Backup Table Using INSERT INTO...SELECT
-- =====================================================
CREATE TABLE  HIGH_CGPA_STUDENTS AS SELECT * FROM STUDENT WHERE 1=2;
DESC HIGH_CGPA_STUDENTS;
SELECT * FROM HIGH_CGPA_STUDENTS;
INSERT INTO HIGH_CGPA_STUDENTS SELECT * FROM STUDENT WHERE CGPA>=8;
SELECT * FROM HIGH_CGPA_STUDENTS;