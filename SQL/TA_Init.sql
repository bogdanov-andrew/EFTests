CREATE TABLE [Standard] (
StandardId INT NOT NULL PRIMARY KEY,
StandardName VARCHAR(100),
[Description] VARCHAR(250)
)

CREATE TABLE [Teacher] (
TeacherId INT NOT NULL PRIMARY KEY,
TeacherName VARCHAR(100),
StandardId INT,
TeacherType INT,
)

ALTER TABLE Teacher
ADD FOREIGN KEY (StandardId)
REFERENCES [Standard](StandardId)

CREATE TABLE [Student] (
StudentId INT NOT NULL PRIMARY KEY,
StudentName VARCHAR(100),
StandardId INT
)
ALTER TABLE [Student]
ADD FOREIGN KEY (StandardId)
REFERENCES [Standard](StandardId)

CREATE TABLE [StudentAddress] (
StudentId INT,
Address1 VARCHAR(100),
Address2 VARCHAR(100),
City VARCHAR(50),
[State] VARCHAR(50),
)

ALTER TABLE [StudentAddress]
ADD FOREIGN KEY (StudentId)
REFERENCES [Student](StudentId)

CREATE TABLE [Course] (
CourseId INT NOT NULL PRIMARY KEY,
CourseName VARCHAR(100),
Location VARCHAR(100),
TeacherId INT
)

ALTER TABLE Course
ADD FOREIGN KEY (TeacherId)
REFERENCES [Teacher](TeacherId)




