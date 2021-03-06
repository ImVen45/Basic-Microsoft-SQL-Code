/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [id]
      ,[lastname]
      ,[firstname]
      ,[dateofbirth]
      ,[enrollmentdate]
  FROM [school].[dbo].[Students]
 

-- Retrieve only students with the last name 'Williams'
select lastname, firstname, dateofbirth
from school.dbo.students
where lastname = 'Student'

-- Retrieve only students with the word 'Student' in their last name
select lastname, firstname, dateofbirth
from school.dbo.students
where lastname like '%Williams%'


-- Retrieve only Full Names of Students and their enrollment dates
select firstname+' '+lastname [Student Full Name], enrollmentdate [Enrollment Date]
from school.dbo.students

-- Select Courses with the number of credits greater than 2
select * from school.dbo.courses
where NumberOfCredits = 3

-- Select Courses with the number of credits 3 and less
select * from school.dbo.courses
where NumberOfCredits <= 3