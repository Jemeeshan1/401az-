-- DDL Code

-- Teacher DDL
CREATE TABLE IF NOT EXISTS tbl_Teacher ( 
teacherID INT AUTO_INCREMENT,
teacherPrefix VARCHAR(20) NOT NULL,
teacherFname VARCHAR(30) NOT NULL,
teacherLname VARCHAR(40) NOT NULL,
teacherDOB DATE NOT NULL,
teacherEmail VARCHAR(40) NOT NULL,
teacherPhoneNumber VARCHAR(40) NOT NULL,
teacherAddress VARCHAR(40) NOT NULL,
CONSTRAINT pk_teacher PRIMARY KEY(teacherID)
);

-- Student DDL

CREATE TABLE IF NOT EXISTS tbl_Student ( 
studentID INT AUTO_INCREMENT,
studentPrefix VARCHAR(20) NOT NULL,
studentFname VARCHAR(30) NOT NULL,
studentLname VARCHAR(40) NOT NULL,
studentDOB DATE NOT NULL,
studentEmail VARCHAR(40) NOT NULL,
studentPhoneNumber VARCHAR(40) NOT NULL,
studentAddress VARCHAR(40) NOT NULL,
CONSTRAINT pk_student PRIMARY KEY(studentID)
);

-- Staff DDL

CREATE TABLE IF NOT EXISTS tbl_Staff (
staffID INT AUTO_INCREMENT,
teacherID INT,
staffPrefix VARCHAR(20) NOT NULL,
staffFname VARCHAR(30) NOT NULL,
staffLname VARCHAR(40) NOT NULL,
staffDOB DATE NOT NULL,
staffEmail VARCHAR(40) NOT NULL,
staffPhoneNumber VARCHAR(40) NOT NULL,
staffAddress VARCHAR(40) NOT NULL,
staffPosition VARCHAR(30) NOT NULL,
staffDepartment VARCHAR(30) NOT NULL,
CONSTRAINT pk_staff PRIMARY KEY(staffID),
CONSTRAINT fk_teacherID FOREIGN KEY(teacherID) REFERENCES tbl_Teacher (teacherID) 
ON Update CASCADE ON DELETE NO ACTION

);

-- Enrolment DDL

CREATE TABLE IF NOT EXISTS tbl_Enrolment (	
enrolmentID INT AUTO_INCREMENT,
enrolmentCourseName VARCHAR(40) NOT NULL,
enrolmentStartdate DATE NOT NULL,
enrolmentEnddate DATE NOT NULL,
enrolmentTuitionFee DECIMAL(10,2) NOT NULL,
CONSTRAINT pk_enrolment PRIMARY KEY(enrolmentID)
);

-- Course DDL
CREATE TABLE IF NOT EXISTS tbl_Course (
courseID INT AUTO_INCREMENT,
enrolmentID INT,
studentID INT,
courseName VARCHAR(40) NOT NULL,
courseStartdate DATE NOT NULL,
courseEnddate DATE NOT NULL,
courseTeacher VARCHAR(40) NOT NULL, 
courseRoom VARCHAR(20) NOT NULL,
CONSTRAINT pk_courseID PRIMARY KEY(courseID),
CONSTRAINT fk_enrolmentID FOREIGN KEY(enrolmentID) REFERENCES tbl_Enrolment
(enrolmentID) ON Update CASCADE ON DELETE NO ACTION,
CONSTRAINT fk_studentID FOREIGN KEY(studentID) REFERENCES tbl_Student
(studentID) ON Update CASCADE ON DELETE NO ACTION
);



