-- Create a script with queries from the relation algebra 
-- in Step 7, named dbSQL.sql. This script
-- should contain at least 5 queries on your database. 
-- Use the comment facility in SQL*Plus 
-- (starting a line with -- , or /* */ ) 
-- to write the English version of your query, followed by the SQL version of the query. 
-- Also show the expected output in the file. These queries need to satisfy the following:
-- • Should be at least join queries (some involving more than 2 relations)
-- • At least two of them should be aggregate queries including GROUP BY and
-- HAVING clauses with ORDER BY clause as well
-- • At least one of them should have nested subquery
-- The purpose of having you write these is to make you 
-- think about slightly complex scenarios on your database 
-- schema and have you write queries involving join, aggregation 
-- and nesting that you have learned in the class.
SELECT STUDENT.fName,
    DEPENDENT.fName,
    DEPENDENT.relationshipName
FROM STUDENT
    INNER JOIN DEPENDENT ON STUDENT.ID = DEPENDENT.ID;
--
SELECT *
FROM COURSE_PLANNER
WHERE isApproved = 0;
GROUP BY year desc;
--
SELECT STUDENT.fName,
    COMPLETED_COURSE.courseName,
    COMPLETED_COURSE.grade
FROM STUDENT,
    COMPLETED_COURSE
WHERE STUDENT.ID = COMPLETED_COURSE.ID
ORDER BY STUDENT.fName;
--
SELECT *
FROM STUDENT
WHERE STUDENT.isGrad = 1;
--
SELECT *
FROM COURSE;