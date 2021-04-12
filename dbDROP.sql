-- Create a script that will drop all the objects you have 
-- created for your project including table, trigger, index, 
-- and etc.. This will be used to start from a clean state 
-- after some inserts and deletes have been added to your 
-- application to check the correctness of your queries. 
-- You should be able to clean everything through this 
-- script and re-create the database instance.
DROP TABLE `ADMIN`;
DROP TABLE COURSE;
DROP TABLE ADVISOR;
DROP TABLE `DEPENDENT`;
DROP TABLE STUDENT;
-- STUDENT'S COMPLETED COURSES
DROP TABLE COMPLETED_COURSE;
-- STUDENT'S COURSE PLANNER
DROP TABLE COURSE_PLANNER;
DROP TABLE USER;