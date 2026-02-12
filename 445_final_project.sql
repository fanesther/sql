/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [StudentID]
      ,[Age]
      ,[Gender]
      ,[Ethnicity]
      ,[ParentalEducation]
      ,[StudyTimeWeekly]
      ,[Absences]
      ,[Tutoring]
      ,[ParentalSupport]
      ,[Extracurricular]
      ,[Sports]
      ,[Music]
      ,[Volunteering]
      ,[GPA]
      ,[GradeClass]
  FROM [445_final_project].[dbo].[Student_performance_data _]

 CREATE TABLE dbo.ParentalEducation (
    parentaleducationID INT PRIMARY KEY,
    parental_education_level varchar(50), 
);

insert into dbo.ParentalEducation (parentaleducationID,  parental_education_level)
values  (0, 'None'),
		(1, 'High_School'),
		(2, 'Some_College'),
		(3, 'Bachelor_Degree'),
		(4, 'Higher');

CREATE TABLE dbo.ParentalSupport(
    parentalsupportID INT PRIMARY KEY,
    parental_support_level varchar(50)); 

insert into dbo.ParentalSupport (parentalsupportID, parental_support_level)
values  (0,'None'),
		(1, 'Low'),
		(2, 'Moderate'),
		(3, 'High'),
		(4, 'Very High');

Create TABLE dbo.Ethnicity(ethnicityID INT PRIMARY KEY, ethnicity_name VARCHAR(50));

INSERT INTO dbo.Ethnicity (ethnicityID, ethnicity_name)
VALUES  (0, 'Caucasian'),
		(1, 'African American'),
		(2, 'Asian'),
        (3, 'Other');

CREATE TABLE dbo.GradeClass ( gradeID INT PRIMARY KEY, grade_level VARCHAR(50));

INSERT INTO dbo.GradeClass (gradeID, grade_level)
VALUES  (0, 'A'),
		(1, 'B'),
		(2, 'C'),
		(3, 'D'),
		(4, 'F');

