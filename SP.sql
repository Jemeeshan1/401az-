-- Stored Procedures 

DELIMITER //

-- Get Teacher
DELIMITER //
CREATE PROCEDURE sp_GetTeacher()
BEGIN
	SELECT * FROM tbl_Teacher;
END //
DELIMITER ;

-- Add Teacher

DELIMITER //
CREATE PROCEDURE sp_AddTeacher(
   IN p_teacherID INT,
   IN p_teacherPrefix VARCHAR(20),
   IN p_teacherFname VARCHAR(30),
   IN p_teacherLname VARCHAR(40),
   IN p_teacherDOB DATE,
   IN p_teacherEmail VARCHAR(40),
   IN p_teacherPhoneNumber VARCHAR(40),
   IN p_teacherAddress VARCHAR(40) 
)
BEGIN
	INSERT INTO tbl_Teacher (teacherID, teacherPrefix, teacherFname, teacherLname, teacherDOB, teacherEmail, 
	teacherPhoneNumber, teacherAddress)
   VALUES (p_teacherID, p_teacherPrefix, p_teacherFname, p_teacherLname, p_teacherDOB, p_teacherEmail, 
	p_teacherPhoneNumber, p_teacherAddress);
END //
DELIMITER ;



-- Update Teacher
DELIMITER //
CREATE PROCEDURE sp_UpdateTeacher(
   IN p_teacherID INT,
   IN p_teacherPrefix VARCHAR(20),
   IN p_teacherFname VARCHAR(30),
   IN p_teacherLname VARCHAR(40),
   IN p_teacherEmail VARCHAR(40),
   IN p_teacherPhoneNumber VARCHAR(40),
   IN p_teacherAddress VARCHAR(40)
)
BEGIN
   UPDATE Teacher
	SET
	   teacherPrefix = p_teacherPrefix,
	   teacherFname = p_teacherFname ,
	   teacherLname = p_teacherLname,
	   teacherDOB = p_teacherDOB,
	   teacherEmail = p_teacherEmail,
	   teacherPhoneNumber = p_teacherPhoneNumber,
	   teacherAddress = p_teacherAddress
   WHERE teacherID = p_teacherID;
END //
DELIMITER ;


-- Delete Teacher
DELIMITER //
CREATE PROCEDURE sp_DeleteTeacher(
    IN p_teacherID INT
)
BEGIN
    DELETE FROM tbl_Teacher
    WHERE teacherID = p_teacherID;
END //
DELIMITER ;


-- Get Student
DELIMITER //
CREATE PROCEDURE sp_GetStudent()
BEGIN
    SELECT * FROM tbl_Student; 
END //
DELIMITER ;
-- Add Student
DELIMITER //
CREATE PROCEDURE sp_AddStudent(
   IN p_studentID INT,
   IN p_studentPrefix VARCHAR(20),
   IN p_studentFname VARCHAR(30),
   IN p_studentLname VARCHAR(40),
   IN p_studentDOB DATE,
   IN p_studentEmail VARCHAR(40),
   IN p_studentPhoneNumber VARCHAR(40),
   IN p_studentAddress VARCHAR(40) 
)

BEGIN
    INSERT INTO tbl_Student (studentID, studentPrefix, studentFname, studentLname, studentDOB, studentEmail, 
studentPhoneNumber, studentAddress)
    VALUES (p_studentID, p_studentPrefix, p_studentFname, p_studentLname, p_studentDOB, p_studentEmail, 
p_studentPhoneNumber, p_studentAddress);
END //
DELIMITER ;

-- Update Student
DELIMITER //
CREATE PROCEDURE sp_UpdateStudent(
   IN p_studentID INT,
   IN p_studentPrefix VARCHAR(20),
   IN p_studentFname VARCHAR(30),
   IN p_studentLname VARCHAR(40),
   IN p_studentEmail VARCHAR(40),
   IN p_studentPhoneNumber VARCHAR(40),
   IN p_studentAddress VARCHAR(40)
)
BEGIN
	UPDATE Student
   SET
		studentPrefix = p_studentPrefix,
	   studentFname = p_studentFname ,
	   studentLname = p_studentLname,
	   studentDOB = p_studentDOB,
	   studentEmail = p_studentEmail,
	   studentPhoneNumber = p_studentPhoneNumber,
	   studentAddress = p_studentAddress
   WHERE studentID = p_studentID;
END //
DELIMITER ;

-- Delete Student
DELIMITER //
CREATE PROCEDURE sp_DeleteStudent(
    IN p_studentID INT
)
BEGIN
    DELETE FROM tbl_Student
    WHERE studentID = p_studentID;
END //
DELIMITER ;


-- Get Staff 
DELIMITER //
CREATE PROCEDURE sp_GetStaff()
BEGIN
    SELECT * FROM tbl_Staff; 
END //
DELIMITER ;


-- Add Staff
DELIMITER //
CREATE PROCEDURE sp_AddStaff( 
	IN p_staffID INT,
	IN p_teacherID INT,
   IN p_staffPrefix VARCHAR(20),
   IN p_staffFname VARCHAR(30),
   IN p_staffLname VARCHAR(40),
   IN p_staffDOB DATE,
   IN p_staffEmail VARCHAR(40),
   IN p_staffPhoneNumber VARCHAR(40),
   IN p_staffAddress VARCHAR(40),
   IN p_staffPosition VARCHAR(30),
   IN p_staffDepartment VARCHAR(30)
)

BEGIN
    INSERT INTO tbl_Staff (staffID, teacherID,staffPrefix, staffFname, staffLname, staffDOB, staffEmail, 
staffPhoneNumber, staffAddress, staffPosition, staffDepartment)
    
	 VALUES (p_staffID, p_teacherID,p_staffPrefix, p_staffFname, p_staffLname, p_staffDOB, p_staffEmail, 
p_staffPhoneNumber, p_staffAddress, p_staffPosition, p_staffDepartment);
END //
DELIMITER ;


-- Update Staff
DELIMITER //
CREATE PROCEDURE sp_UpdateStaff(
   IN p_staffID INT,
   IN p_teacherID INT,
   IN p_staffPrefix VARCHAR(20),
   IN p_staffFname VARCHAR(30),
   IN p_staffLname VARCHAR(40),
   IN p_staffDOB DATE,
   IN p_staffEmail VARCHAR(40),
   IN p_staffPhoneNumber VARCHAR(40),
   IN p_staffAddress VARCHAR(40),
   IN p_staffPosition VARCHAR(30),
   IN p_staffDepartment VARCHAR(30)
)
BEGIN
   UPDATE Staff
   SET
   	teacherID = p_teacherID,
		staffPrefix = p_staffPrefix,
	   staffFname = p_staffFname ,
	   staffLname = p_staffLname,
	   staffDOB = p_staffDOB,
	   staffEmail = p_staffEmail,
	   staffPhoneNumber = p_staffPhoneNumber,
	   staffAddress = p_staffAddress
   WHERE staffID = p_staffID;
END //
DELIMITER ;


-- Delete Staff
DELIMITER //
CREATE PROCEDURE sp_DeleteStaff(
    IN p_staffID INT
)
BEGIN
    DELETE FROM tbl_Staff
    WHERE staffID = p_staffID;
END //
DELIMITER ;

-- Get Enrolment
DELIMITER //
CREATE PROCEDURE sp_GetEnrolment()
BEGIN
    SELECT * FROM tbl_Enrolment; 
END //
DELIMITER ;


-- Add Enrolment
DELIMITER //
CREATE PROCEDURE sp_AddEnrolment( 
   IN p_enrolmentID INT,
	IN p_enrolmentCourseName VARCHAR(40),
 	IN p_enrolmentStartdate DATE,
	IN p_enrolmentEnddate DATE,
	IN p_enrolmentTuitionFee DECIMAL(10,2)
)

BEGIN
    INSERT INTO tbl_Enrolment (enrolmentID, enrolmentCourseName, enrolmentStartdate, enrolmentEnddate, 
enrolmentTuitionFee)
    
	 VALUES (p_enrolmentID, p_enrolmentCourseName, p_enrolmentStartdate, p_enrolmentEnddate, 
p_enrolmentTuitionFee);
END //
DELIMITER ;


-- Update Enrolment
DELIMITER //
CREATE PROCEDURE sp_UpdateEnrolment(
	IN p_enrolmentID INT,
	IN p_enrolmentCourseName VARCHAR(40),
 	IN p_enrolmentStartdate DATE,
	IN p_enrolmentEnddate DATE,
	IN p_enrolmentTuitionFee DECIMAL(10,2)
)
BEGIN
   UPDATE Enrolment
   SET
	   enrolmentCourseName = p_enrolmentCourseName,
	   enrolmentStartdate = p_enrolmentStartdate,
	   enrolmentEnddate = p_enrolmentEnddate,
	   enrolmentTuitionFee = p_enrolmentTuitionFee
   WHERE enrolmentID = p_enrolmentID;
END //
DELIMITER ;


-- Delete Enrolment
DELIMITER //
CREATE PROCEDURE sp_DeleteEnrolment(
    IN p_enrolmentID INT
)
BEGIN
    DELETE FROM tbl_Enrolment
    WHERE enrolmentID = p_enrolmentID;
END //
DELIMITER ;

-- Get Course

DELIMITER //
CREATE PROCEDURE sp_GetCourse()
BEGIN
    SELECT * FROM tbl_Course; 
END //
DELIMITER ;

-- Add Course
DELIMITER //
CREATE PROCEDURE sp_AddCourse( 
	IN p_courseID INT,
	IN p_enrolmentID INT,
	IN p_studentID INT,
	IN p_courseName VARCHAR(40),
 	IN p_courseStartdate DATE,
 	IN p_courseEnddate DATE,
	IN p_courseTeacher VARCHAR(40), 
	IN p_courseRoom VARCHAR(20)
)

BEGIN
    INSERT INTO tbl_Course (courseID, enrolmentID,studentID,courseName, courseStartdate, 
courseEnddate, courseTeacher, courseRoom)
    
	 VALUES (p_courseID, p_enrolmentID, p_studentID, p_courseName, p_courseStartdate, 
p_courseEnddate, p_courseTeacher, p_courseRoom);
END //
DELIMITER ;



-- Update Course
DELIMITER //
CREATE PROCEDURE sp_UpdateCourse(
	IN p_courseID INT,
	IN p_enrolmentID INT,
	IN p_studentID INT,
	IN p_courseName VARCHAR(40),
 	IN p_courseStartdate DATE,
 	IN p_courseEnddate DATE,
	IN p_courseTeacher VARCHAR(40), 
	IN p_courseRoom VARCHAR(20)
)
BEGIN
   UPDATE Course
   SET
   	enrolmentID = p_enrolmentID,
   	studentID = p_studentID,
	   courseName = p_courseName,
	   courseStartdate = p_courseStartdate,
	   courseEnddate = p_courseEnddate,
	   courseTeacher = p_courseTeacher,
	   courseRoom = p_courseRoom
   WHERE courseID = p_courseID;
END //
DELIMITER ;

-- Delete Course
DELIMITER //
CREATE PROCEDURE sp_DeleteCourse(
    IN p_courseID INT
)
BEGIN
    DELETE FROM tbl_Course
    WHERE courseID = p_courseID;
END //

DELIMITER ;


-- Call Stored Procedures 

-- Teacher Stored Procedures 

-- Call the sp_GetTeacher stored procedure
CALL sp_GetTeacher();

-- Call the sp_AddTeacher stored procedure
CALL sp_AddTeacher(6, 'Mr', 'Jeremy', 'Smith', '1991-08-04', 'jsmith1@gmail.com', 
'07721643218', '16 Kingston Lane LA1 2EF');

-- Call the sp_UpdateTeacher stored procedure
CALL sp_UpdateTeacher(6, 'Mr', 'Jeremy', 'Smith', '1991-08-04', 'jsmith2@gmail.com', 
'07721643218', '16 Kingston Lane LA1 2EF');

-- Call the sp_DeleteTeacher stored procedure
CALL sp_DeleteTeacher(6);


-- Student Stored Procedures 

-- Call the sp_GetStudent stored procedure
CALL sp_GetStudent();

-- Call the sp_AddStudent stored procedure
CALL sp_AddStudent(5, 'Miss', 'Laila', 'Johnson', '2005-08-04', 'ljohnson@gmail.com', 
'07721233812', '61 Orland Drive PK1 1YD');

-- Call the sp_UpdateStudent stored procedure
CALL sp_UpdateStudent(5, 'Miss', 'Laila', 'Johnson', '2005-08-04', 'ljohnson2@gmail.com', 
'07721233812', '61 Orland Drive PK1 1YD');

-- Call the sp_DeleteStudent stored procedure
CALL sp_DeleteStudent(5);


-- Staff Stored Procedures 

-- Call the sp_GetStaff stored procedure
CALL sp_GetStaff();

-- Call the sp_AddStaff stored procedure
CALL sp_AddStaff(9,2, 'Mr', 'Ronald', 'Mixan', '1988-02-15', 'rmixan@gmail.com', 
'07821743192', '96 Sydney Road FA3 1ED', 'Cover Teacher', 'Sociology');

-- Call the sp_UpdateStaff stored procedure
CALL sp_UpdateStaff(9,2, 'Mr', 'Ronald', 'Mixan', '1988-02-15', 'rmixan2@gmail.com', 
'07821743192', '96 Sydney Road FA3 1ED', 'Cover Teacher', 'Sociology');

-- Call the sp_DeleteStaff stored procedure
CALL sp_DeleteStaff(9);


-- Enrolment Stored Procedures 

-- Call the sp_GetEnrolment stored procedure
CALL sp_GetEnrolment();

-- Call the sp_AddEnrolment stored procedure
CALL sp_AddEnrolment(104, 'English', '2024-09-05', '2027-09-05', 7500.00);

-- Call the sp_UpdateEnrolment stored procedure
CALL sp_UpdateEnrolment(104,'English', '2024-09-05', '2027-09-05', 7500.10);

-- Call the sp_DeleteEnrolment stored procedure
CALL sp_DeleteEnrolment(104);


-- Course Stored Procedures 

-- Call the sp_GetCourse stored procedure
CALL sp_GetCourse();

-- Call the sp_AddCoursestored procedure
CALL sp_AddCourse(5,2,1, 'Politics', '2024-09-23', '2027-09-23', 'Mr Smith', 'RM214');

-- Call the sp_UpdateCourse stored procedure
CALL sp_UpdateCourse(5,2,1, 'Politics', '2024-09-23', '2027-09-23', 'Mr Smith', 'RM215');

-- Call the sp_DeleteCourse stored procedure
CALL sp_DeleteCourse(5);
