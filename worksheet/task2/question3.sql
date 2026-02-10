SELECT d.DepartmentName,
       COUNT(e.EnrolmentId) AS TotalEnrolments
FROM Department d
JOIN Course c
  ON c.DepartmentId = d.DepartmentId
JOIN Enrolment e
  ON e.CourseId = c.CourseId
GROUP BY d.DepartmentName;