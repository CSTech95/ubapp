-- Make a file containing INSERT statements which populate the 
-- table created in Step 9, named dbDML.sql. This script will 
-- contain SQL commands to fill data in your data. Each table 
-- should have around 7 ~ 10 sample data. If needed, other DML 
-- statement, such UPDATE, and DELETE can be included here
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'John',
        'Doe',
        'M',
        'johnD223',
        'pizza123',
        2033333333,
        '300 Elm St',
        'Bridgeport',
        'CT',
        06604
    );
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'Jane',
        'Doe',
        'F',
        'janeD332',
        'candy123',
        2039999999,
        '123 Norm Ave',
        'Milford',
        'CT',
        01747
    );
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'Adam',
        'West',
        'M',
        'awest7',
        'star69',
        2037777777,
        '47 Main St',
        'Bridgeport',
        'CT',
        06604
    );
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'Susan',
        'Smith',
        'F',
        'ssmith38',
        'lemons789',
        2035433443,
        '315 Roosevelt Ave',
        'Bridgeport',
        'CT',
        06604
    );
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'Tim',
        'Jackson',
        'M',
        'timj1010',
        'wheels2020',
        2038044080,
        '47 Booth St',
        'Stratford',
        'CT',
        06615
    );
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'Amanda',
        'Blake',
        'F',
        'ablake45',
        'beach123',
        2031234567,
        '123 Norm Ave',
        'Milford',
        'CT',
        01747
    );
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'Mike',
        'Mitchell',
        'M',
        'mikem3',
        'grass123',
        2033145285,
        '123 Water St',
        'Norwalk',
        'CT',
        06854
    );
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'Tory',
        'Weller',
        'F',
        'mikem23',
        'corners48',
        2036831321,
        '5065 Main St',
        'Trumbull',
        'CT',
        06611
    );
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'Anthony',
        'Johnson',
        'M',
        'timj1',
        'sports68',
        2038044080,
        '25 Yukon St',
        'Stratford',
        'CT',
        06615
    );
INSERT INTO USER (
        fName,
        lName,
        sex,
        userName,
        password,
        phoneNumber,
        address,
        city,
        state,
        zipCode
    )
VALUES (
        'Gina',
        'Lewis',
        'F',
        'glewis360',
        'shirts88',
        2035433443,
        '315 Mary Ave',
        'Bridgeport',
        'CT',
        06604
    );
INSERT INTO ADMIN (level)
VALUES (1);
INSERT INTO ADMIN (level)
VALUES (2);
INSERT INTO ADMIN (level)
VALUES (2);
INSERT INTO ADMIN (level)
VALUES (3);
INSERT INTO ADMIN (level)
VALUES (3);
INSERT INTO ADMIN (level)
VALUES (3);
INSERT INTO ADMIN (level)
VALUES (3);
INSERT INTO COURSE (courseName, subject)
VALUES ('Algebra 1', 'Math');
INSERT INTO COURSE (courseName, subject)
VALUES ('Algebra 2', 'Math');
INSERT INTO COURSE (courseName, subject)
VALUES ('Calculus 1', 'Math');
INSERT INTO COURSE (courseName, subject)
VALUES ('Calculus 2', 'Math');
INSERT INTO COURSE (courseName, subject)
VALUES ('Calculus 3', 'Math');
INSERT INTO COURSE (courseName, subject)
VALUES ('English 101', 'English');
INSERT INTO COURSE (courseName, subject)
VALUES ('English 102', 'English');
INSERT INTO COURSE (courseName, subject)
VALUES ('Physics 101', 'Science');
INSERT INTO COURSE (courseName, subject)
VALUES ('Physics 102', 'Science');
INSERT INTO COURSE (courseName, subject)
VALUES ('Psychology 101', 'Humanities');
INSERT INTO COURSE (courseName, subject)
VALUES ('Psychology 102', 'Humanities');
INSERT INTO COURSE (courseName, subject)
VALUES ('Law Theory', 'Law');
INSERT INTO COURSE (courseName, subject)
VALUES ('Intro to Negotiation', 'Business');
INSERT INTO COURSE (courseName, subject)
VALUES ('Art History 1', 'Art');
INSERT INTO ADVISOR (subject)
VALUES ('Math');
INSERT INTO ADVISOR (subject)
VALUES ('Science');
INSERT INTO ADVISOR (subject)
VALUES ('English');
INSERT INTO ADVISOR (subject)
VALUES ('Humanities');
INSERT INTO ADVISOR (subject)
VALUES ('Law');
INSERT INTO ADVISOR (subject)
VALUES ('Business');
INSERT INTO ADVISOR (subject)
VALUES ('Art');
INSERT INTO STUDENT (isGrad, isApproved)
VALUES (0, 1);
INSERT INTO STUDENT (isGrad, isApproved)
VALUES (0, 1);
INSERT INTO STUDENT (isGrad, isApproved)
VALUES (0, 1);
INSERT INTO STUDENT (isGrad, isApproved)
VALUES (0, 1);
INSERT INTO STUDENT (isGrad, isApproved)
VALUES (0, 1);
INSERT INTO STUDENT (isGrad, isApproved)
VALUES (0, 1);
INSERT INTO STUDENT (isGrad, isApproved)
VALUES (0, 1);
INSERT INTO COMPLETED_COURSE (courseName, grade)
VALUES ('Algebra 1' 'A');
INSERT INTO COMPLETED_COURSE (courseName, grade)
VALUES ('Art History' 'C');
INSERT INTO COMPLETED_COURSE (courseName, grade)
VALUES ('Law Theory' 'B');
INSERT INTO COMPLETED_COURSE (courseName, grade)
VALUES ('Algebra 2' 'B');
INSERT INTO COMPLETED_COURSE (courseName, grade)
VALUES ('Algebra 1' 'C');
INSERT INTO COMPLETED_COURSE (courseName, grade)
VALUES ('Psychology 101' 'A');
INSERT INTO COMPLETED_COURSE (courseName, grade)
VALUES ('Physics 101' 'B');
INSERT INTO COURSE_PLANNER (courseName, year, isApproved)
VALUES ('Algebra 1', '2020', 1);
INSERT INTO COURSE_PLANNER (courseName, year, isApproved)
VALUES ('Algebra 2', '2020', 0);
INSERT INTO COURSE_PLANNER (courseName, year, isApproved)
VALUES ('Law Theory', '2020', 0);
INSERT INTO COURSE_PLANNER (courseName, year, isApproved)
VALUES ('Physics 101', '2020', 1);
INSERT INTO COURSE_PLANNER (courseName, year, isApproved)
VALUES ('Art History 1', '2020', 1);
INSERT INTO COURSE_PLANNER (courseName, year, isApproved)
VALUES ('English 101', '2020', 1);
INSERT INTO COURSE_PLANNER (courseName, year, isApproved)
VALUES ('Psychology 101', '2020', 1);