SELECT c.cohort_name, AVG(a.completed_at - a.started_at) AS average_assistance_time FROM assistance_requests AS a
JOIN students AS b ON (b.id=a.student_id)
JOIN (
  SELECT cohorts.name as cohort_name, students.name as student_name FROM students
  JOIN cohorts ON (cohorts.id=students.cohort_id)
) AS c ON (c.student_name=b.name)
GROUP BY c.cohort_name
ORDER BY average_assistance_time;

-- SELECT cohorts.name, students.name FROM students
--  JOIN cohorts ON (cohorts.id=students.cohort_id);