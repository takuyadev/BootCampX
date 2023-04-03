SELECT cohorts.name AS cohort, count(assignment_submissions.id)
FROM cohorts
  JOIN students ON (students.cohort_id=cohorts.id)
  JOIN assignment_submissions ON (students.id=assignment_submissions.student_id)
  GROUP BY cohorts.name
  ORDER BY count(assignment_submissions) DESC;