-- Script to select all the students being taught by John McDonald. 
-- Using Group By, we are eliminating all repeating results, since the same student might be enrolled
-- in more than one classes for said lecturer.
SELECT 
       
      s.firstname + ' ' + s.lastname [Student Name],
	  t.firstname + ' ' + t.lastname [Teacher Name]

  FROM [school].[dbo].[Enrollments]
  inner join teacher t on t.id = teacherid
  inner join students s on s.id = StudentId
  where teacherid = 2
  group by s.firstname, s.lastname,t.firstname, t.lastname
  --,[CourseId]


