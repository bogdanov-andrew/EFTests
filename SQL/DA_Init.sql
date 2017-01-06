INSERT INTO dbo.Standard (
	StandardId,
	StandardName,
	Description
) VALUES ( 
	/* StandardId - int */ 1,
	/* StandardName - varchar(100) */ 'St1',
	/* Description - varchar(250) */ 'Desc1' ) 

INSERT INTO dbo.Standard (
	StandardId,
	StandardName,
	Description
) VALUES ( 
	/* StandardId - int */ 2,
	/* StandardName - varchar(100) */ 'St2',
	/* Description - varchar(250) */ 'Desc2' ) 
	
INSERT INTO dbo.Student (
	StudentId,
	StudentName,
	StandardId
) VALUES ( 
	/* StudentId - int */ 1,
	/* StudentName - varchar(100) */ 'Student1',
	/* StandardId - int */ 1 ) 
INSERT INTO dbo.Student (
	StudentId,
	StudentName,
	StandardId
) VALUES ( 
	/* StudentId - int */ 2,
	/* StudentName - varchar(100) */ 'Student2',
	/* StandardId - int */ 1 )
INSERT INTO dbo.Student (
	StudentId,
	StudentName,
	StandardId
) VALUES ( 
	/* StudentId - int */ 3,
	/* StudentName - varchar(100) */ 'Student3',
	/* StandardId - int */ 2 )

INSERT INTO dbo.StudentAddress (
	StudentId,
	Address1,
	Address2,
	City,
	State
) VALUES ( 
	/* StudentId - int */ 1,
	/* Address1 - varchar(100) */ 'Addr1',
	/* Address2 - varchar(100) */ '',
	/* City - varchar(50) */ '',
	/* State - varchar(50) */ '' ) 

INSERT INTO dbo.StudentAddress (
	StudentId,
	Address1,
	Address2,
	City,
	State
) VALUES ( 
	/* StudentId - int */ 2,
	/* Address1 - varchar(100) */ 'Addr2',
	/* Address2 - varchar(100) */ '',
	/* City - varchar(50) */ '',
	/* State - varchar(50) */ '' ) 

INSERT INTO dbo.Teacher (
	TeacherId,
	TeacherName,
	StandardId,
	TeacherType
) VALUES ( 
	/* TeacherId - int */ 1,
	/* TeacherName - varchar(100) */ 'Teacher1',
	/* StandardId - int */ 1,
	/* TeacherType - int */ 0 ) 
INSERT INTO dbo.Teacher (
	TeacherId,
	TeacherName,
	StandardId,
	TeacherType
) VALUES ( 
	/* TeacherId - int */ 2,
	/* TeacherName - varchar(100) */ 'Teacher2',
	/* StandardId - int */ 1,
	/* TeacherType - int */ 0 ) 
INSERT INTO dbo.Teacher (
	TeacherId,
	TeacherName,
	StandardId,
	TeacherType
) VALUES ( 
	/* TeacherId - int */ 3,
	/* TeacherName - varchar(100) */ 'Teacher3',
	/* StandardId - int */ 2,
	/* TeacherType - int */ 0 ) 

INSERT INTO dbo.Course (
	CourseId,
	CourseName,
	Location,
	TeacherId
) VALUES ( 
	/* CourseId - int */ 1,
	/* CourseName - varchar(100) */ 'C1',
	/* Location - varchar(100) */ '',
	/* TeacherId - int */ 1 ) 
INSERT INTO dbo.Course (
	CourseId,
	CourseName,
	Location,
	TeacherId
) VALUES ( 
	/* CourseId - int */ 2,
	/* CourseName - varchar(100) */ 'C2',
	/* Location - varchar(100) */ '',
	/* TeacherId - int */ 2 ) 