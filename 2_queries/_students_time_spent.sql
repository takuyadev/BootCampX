SELECT SUM(assignment_submissions.duration) 
  FROM assignment_submissions
    WHERE student_id IN (
      SELECT students.id FROM students
        WHERE students.id=186
    )
  GROUP BY assignment_submissions.student_id;