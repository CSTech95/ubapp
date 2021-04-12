-- Make a file containing the SQL statements that 
-- create your entire database schema, named dbDDL.sql. 
-- This includes the tables with their constraints, 
-- view, indexes, triggers, and all other database 
-- objects if you have them.
-- To keep the project consistent, make sure you 
-- have at least 8 tables. Make sure you have at 
-- least 2 database objects among trigger, function, 
-- procedure or view.
--
-- CREATE EACH TABLE SEPARATELY INSTEAD OF ALL AT ONCE
--
-- USER Table
CREATE TABLE USER(
    id INT AUTO_INCREMENT PRIMARY KEY,
    fName VARCHAR(75) NOT NULL,
    lName VARCHAR(75) NOT NULL,
    sex VARCHAR(20) NOT NULL,
    userName VARCHAR(75) NOT NULL,
    `password` VARCHAR(75) NOT NULL,
    phoneNumber INT,
    `address` INT,
    city INT,
    `state` INT,
    zipCode INT
);
-- ADMIN Table
CREATE TABLE `ADMIN`(
    adminId INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id INT,
    -- FOREIGN KEY --
    CONSTRAINT fkAdminUserId FOREIGN KEY (id) REFERENCES USER (id) ON DELETE
    SET NULL ON UPDATE
    SET NULL,
        `level` VARCHAR(20) NOT NULL
);
-- COURSE Table
CREATE TABLE COURSE(
    courseId INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    courseName VARCHAR(100) NOT NULL,
    `subject` VARCHAR(255) NOT NULL
);
-- ADVISOR Table
CREATE TABLE ADVISOR(
    advisorId INT AUTO_INCREMENT PRIMARY KEY,
    id INT,
    -- FOREIGN KEY --
    CONSTRAINT fkAdvisorUserId FOREIGN KEY (id) REFERENCES USER (id) ON DELETE
    SET NULL ON UPDATE
    SET NULL,
        `Subject` VARCHAR(255) NOT NULL
);
-- STUDENT Table
CREATE TABLE STUDENT(
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    id INT,
    -- FOREIGN KEY --
    CONSTRAINT fkStudentUserId FOREIGN KEY (id) REFERENCES USER (id) ON DELETE
    SET NULL ON UPDATE
    SET NULL,
        isGrad TINYINT,
        isApproved TINYINT
);
--
-- IF YOU COPIED AND PASTE YOU MAY HAVE TO RECOPY FROM `DEPENDENT TABLE TO END
-- DEPENDENT Table
CREATE TABLE `DEPENDENT`(
    id INT,
    -- FOREIGN KEY --
    CONSTRAINT fkDependentUserId FOREIGN KEY (id) REFERENCES STUDENT (id) ON DELETE
    SET NULL ON UPDATE
    SET NULL,
        fName VARCHAR(100),
        relationship VARCHAR(100)
);
-- STUDENT's Completed Courses
CREATE TABLE COMPLETED_COURSE(
    courseName VARCHAR(100) NOT NULL,
    courseId INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id INT,
    -- FOREIGN KEY --
    CONSTRAINT fkCOMPLETED_COURSEUserId FOREIGN KEY (id) REFERENCES USER (id) ON DELETE
    SET NULL ON UPDATE
    SET NULL,
        grade VARCHAR(5) NOT NULL
);
-- STUDENT'S Course Planner Table
CREATE TABLE COURSE_PLANNER(
    id INT,
    -- FOREIGN KEY --
    CONSTRAINT fkCOURSE_PLANNERUserId FOREIGN KEY (id) REFERENCES USER (id) ON DELETE
    SET NULL ON UPDATE
    SET NULL,
        courseName VARCHAR(100) NOT NULL,
        courseID INT,
        year VARCHAR(100) NOT NULL,
        isApproved TINYINT
);
------
-- Trigger
-- &
-- Views
-- onwards
-- Store Trigger Info
--------
CREATE TABLE PLANNER_ACTIVITY (
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    id INT,
    -- FOREIGN KEY --
    CONSTRAINT fkPLANNER_ACTIVITYUserId FOREIGN KEY (id) REFERENCES STUDENT (id),
    courseID INT,
    courseName VARCHAR(100) NOT NULL,
    dateOfActivity DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);
-- After an entry in the COURSE_PLANNER TABLE
-- Test if this trigger works🤯🤯🤯🤯🤯🤯
CREATE TRIGGER after_planner_entry
AFTER
INSERT ON COURSE_PLANNER FOR EACH ROW
INSERT INTO PLANNER_ACTIVITY
SET action = 'INSERT',
    studentId = studentId,
    courseID = courseID,
    courseName = courseName,
    dateOfActivity = NOW();