SELECT teachers.name FROM assistance_requests 
LEFT JOIN teachers ON (teachers.id=assistance_requests.teacher_id)
JOIN (
  SELECT cohorts.name, students.id AS id FROM students
  JOIN cohorts ON (students.cohort_id=cohorts.id)
  WHERE cohorts.name = 'JUL02'
) as students ON (students.id = assistance_requests.student_id)
GROUP BY teachers.name
ORDER BY teachers.name ASC;


