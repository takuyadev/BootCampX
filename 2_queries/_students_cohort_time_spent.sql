SELECT SUM(assignment_submissions.duration) 
  FROM assignment_submissions
    WHERE student_id IN (
      SELECT students.id FROM students
        WHERE cohort_id IN (
          SELECT cohorts.id FROM cohorts
            WHERE cohorts.id = 7; 
          )
    )
  GROUP BY assignment_submissions.student_id;