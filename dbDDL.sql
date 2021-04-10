-- Make a file containing the SQL statements that 
-- create your entire database schema, named dbDDL.sql. 
-- This includes the tables with their constraints, 
-- view, indexes, triggers, and all other database 
-- objects if you have them.
-- To keep the project consistent, make sure you 
-- have at least 8 tables. Make sure you have at 
-- least 2 database objects among trigger, function, 
-- procedure or view.
-- USER Table
CREATE TABLE USER(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    fName VARCHAR(75) NOT NULL,
    lName VARCHAR(75) NOT NULL,
    phoneNum INT,
    address INT
) -- ADMIN Table
CREATE TABLE ADMIN(
    adminId INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (Id) REFERENCES USER (Id)
) -- COURSE Table
CREATE TABLE COURSE(
    courseId INT AUTO_INCREMENT PRIMARY KEY colName VARCHAR(155) NOT NULL,
    FOREIGN KEY (colId) REFERENCES COLLEGE (colId) colId INT AUTO_INCREMENT PRIMARY KEY colName VARCHAR(155) NOT NULL,
    courseName VARCHAR(100) NOT NULL,
    subject VARCHAR(255) NOT NULL
) -- STATISTICS Table
CREATE TABLE STATISTICS(colId INT AUTO_INCREMENT PRIMARY KEY) -- ADVISOR Table
CREATE TABLE ADVISOR(
    advisorId INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (Id) REFERENCES USER (Id)
) -- STUDENT Table
CREATE TABLE STUDENT(
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (Id) REFERENCES USER (Id) isUndergrad TINYINT,
    isGrad TINYINT,
    isApproved TINYINT,
) -- DEPENDENT Table
CREATE TABLE DEPENDENT(
    FOREIGN KEY (Id) REFERENCES USER (Id) relType VARCHAR(100) NOT NULL
) -- COMPLETED COURSES Table
CREATE TABLE C_COURSES(
    FOREIGN KEY (Id) REFERENCES USER (Id) courseName VARCHAR(100) NOT NULL
) -- PENDING COURSES Table
CREATE TABLE P_COURSES(
    FOREIGN KEY (Id) REFERENCES USER (Id) courseName VARCHAR(100) NOT NULL
) -- AVAILABLE COURSES Table
CREATE TABLE COLLEGE(
    colId INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (courseId) REFERENCES COURSE (courseId) colName VARCHAR(255) NOT NULL
) CREATE TABLE A_COURSES(
    colId INT AUTO_INCREMENT PRIMARY KEY,
    courseName VARCHAR(100) NOT NULL
) -- COLLEGE OF HEALTH SCIENCES Table
CREATE TABLE COH() -- COLLEGE OF ENGINEERING, BUSINESS AND EDUCATION Table
CREATE TABLE COE() -- COLLEGE OF ARTS AND SCIENCES Table
CREATE TABLE COA()