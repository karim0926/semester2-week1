SELECT s.StudentId,
       s.FirstName,
       s.LastName,
       c.CourseName
FROM Student s
JOIN Enrolment e
  ON e.StudentId = s.StudentId
JOIN Course c
  ON c.CourseId = e.CourseId
ORDER BY s.StudentId, c.CourseName;