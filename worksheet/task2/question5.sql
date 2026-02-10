SELECT
  s.StudentId,
  s.FirstName,
  s.LastName,
  COALESCE(SUM(c.Credits), 0) AS TotalCreditsPassed
FROM Student s
LEFT JOIN (
  SELECT DISTINCT StudentId, CourseId
  FROM Enrolment
  WHERE Grade >= 40
) p
  ON p.StudentId = s.StudentId
LEFT JOIN Course c
  ON c.CourseId = p.CourseId
GROUP BY s.StudentId, s.FirstName, s.LastName
ORDER BY s.StudentId;