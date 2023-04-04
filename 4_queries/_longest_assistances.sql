SELECT cohorts.name, AVG(a.completed_at - a.started_at) as average_assistance_time FROM assistance_requests AS a
  JOIN students ON (students.id=a.student_id)
  JOIN cohorts ON (cohorts.id=students.cohort_id)
  GROUP BY cohorts.name
  ORDER BY average_assistance_time DESC
  LIMIT 1;