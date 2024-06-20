-- DML Code

-- Teacher DML

SELECT * FROM tbl_Teacher;

INSERT INTO tbl_Teacher (teacherID, teacherPrefix, teacherFname, teacherLname, teacherDOB, teacherEmail, 
teacherPhoneNumber, teacherAddress) 
VALUES (1, 'Mr', 'James', 'Smitherton', '1985-04-12', 'jsmitherton1@gmail.com', '07342614412', '11 Clapton Road
RD2 4DR');

UPDATE tbl_Teacher
SET teacherEmail = 'jsmitherton2@gmail.com' 
WHERE teacherID = 1;

DELETE FROM tbl_Teacher WHERE teacherID = 1;

-- Student DML

SELECT * FROM tbl_Student;

INSERT INTO tbl_Student (studentID, studentPrefix, studentFname, studentLname, studentDOB, studentEmail, 
studentPhoneNumber, studentAddress) 
VALUES (1, 'Miss', 'Holly', 'Newton', '2004-08-04', 'hnewton1@gmail.com', '07451129327', '76 Abbey Lane
CV4 3FA');

UPDATE tbl_Student
SET studentEmail = 'hnewton2@gmail.com' 
WHERE studentID = 1;

DELETE FROM tbl_Student WHERE studentID = 1;


-- Staff DML

SELECT * FROM tbl_Staff;

INSERT INTO tbl_Staff (staffID, teacherID, staffPrefix, staffFname, staffLname, staffDOB, staffEmail, 
staffPhoneNumber, staffAddress, staffPosition, staffDepartment)
VALUES (1, NULL, 'Mrs', 'Vicky', 'Donald', '1976-11-12', 'vdonald1@gmail.com', '07112954721', '43 Romway Road
KD2 2DV', 'Course Leader', 'Mathematics');

UPDATE tbl_Staff
SET staffEmail = 'vdonald2@gmail.com' 
WHERE staffID = 1;

DELETE FROM tbl_Staff WHERE staffID = 1;

-- Enrolment DML

SELECT * FROM tbl_Enrolment;

INSERT INTO tbl_Enrolment (enrolmentID, enrolmentCourseName, enrolmentStartdate, enrolmentEnddate, 
enrolmentTuitionFee)
VALUES (1, 'Applied Mathematics', '2024-09-10', '2027-09-10', 9130.00);

Update tbl_Enrolment
SET enrolmentTuitionFee = 9140.00
WHERE enrolmentID = 1;

DELETE FROM tbl_Enrolment WHERE enrolmentID = 1;
-- Course DML

SELECT * FROM tbl_Course;

INSERT INTO tbl_Course (courseID, enrolmentID, studentID, courseName, courseStartdate, 
courseEnddate, courseTeacher, courseRoom)
VALUES (1, NULL, NULL, 'Spanish', '2024-09-14', '2027-09-14', 'Mr Jack', 'RM321');


UPDATE tbl_Course
SET courseroom = 'RM327'
WHERE courseID = 1;

DELETE FROM tbl_Course WHERE courseID = 1;

