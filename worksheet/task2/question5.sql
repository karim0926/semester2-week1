SELECT
  s.StudentId,
  s.FirstName,
  s.LastName,
  SUM(c.Credits) AS TotalCreditsPassed
FROM Student s
JOIN Enrolment e
  ON e.StudentId = s.StudentId
JOIN Course c
  ON c.CourseId = e.CourseId
WHERE e.Grade >= 40
GROUP BY s.StudentId, s.FirstName, s.LastName;
