SELECT s.StudentId,
       s.FirstName,
       s.LastName,
       COALESCE(SUM(c.Credits), 0) AS TotalCreditsPassed
FROM Student s
LEFT JOIN Enrolment e
  ON e.StudentId = s.StudentId
 AND e.Grade >= 40
LEFT JOIN Course c
  ON c.CourseId = e.CourseId
GROUP BY s.StudentId, s.FirstName, s.LastName
ORDER BY s.StudentId;