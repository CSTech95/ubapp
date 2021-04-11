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
    zipcode INT
) -- ADMIN Table
CREATE TABLE `ADMIN`(
    adminId INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES USER (id),
    `level` VARCHAR(20) NOT NULL
) -- COURSE Table
CREATE TABLE COURSE(
    courseId INT AUTO_INCREMENT PRIMARY KEY colName VARCHAR(155) NOT NULL,
    courseName VARCHAR(100) NOT NULL,
    `subject` VARCHAR(255) NOT NULL
) -- ADVISOR Table
CREATE TABLE ADVISOR(
    advisorId INT AUTO_INCREMENT PRIMARY KEY,
    `Subject` VARCHAR(255) NOT NULL FOREIGN KEY (id) REFERENCES USER (id)
) -- STUDENT Table
CREATE TABLE STUDENT(
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES USER (id) isUndergrad TINYINT,
    isGrad TINYINT,
    isApproved TINYINT,
) -- DEPENDENT Table
CREATE TABLE `DEPENDENT`(
    FOREIGN KEY (id) REFERENCES USER (id) relType VARCHAR(100) NOT NULL
) -- STUDENT's Completed Courses
CREATE TABLE COMPLETED_COURSE(
    FOREIGN KEY (id) REFERENCES USER (id) courseName VARCHAR(100) NOT NULL
) -- STUDENT'S Course Planner Table
CREATE TABLE COURSE_PLANNER(
    -- TODO !!!!🔥🔥🔥🔥🔥🔥🔥
    FOREIGN KEY (id) REFERENCES USER (id) courseName VARCHAR(100) NOT NULL
) -- Store Trigger Info
CREATE TABLE PLANNER_ACTIVITY (
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    -- FOREIGN KEY (id) REFERENCES USER (id) isUndergrad TINYINT,
    courseID INT,
    dateOfActivity DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);
-- After an entry in the COURSE_PLANNER TABLE
-- Test if this trigger works🤯🤯🤯🤯🤯🤯
CREATE TRIGGER before_planner_entry
AFTER
INSERT ON COURSE_PLANNER FOR EACH ROW
INSERT INTO PLANNER_ACTIVITY
SET action = 'INSERT',
    studentId = OLD.studentId,
    courseID = OLD.lastncourseIDame,
    courseName VARCHAR(100) NOT NULL,
    dateOfActivity = NOW();