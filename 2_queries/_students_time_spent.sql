SELECT assignment_submissions.student_id, SUM(assignments.duration) 
  FROM assignments
  JOIN assignment_submissions ON (assignments.id=assignment_submissions.assignment_id)
    WHERE assignments.id IN (
      SELECT assignment_submissions.assignment_id 
        FROM assignment_submissions 
          WHERE student_id = 186
  GROUP BY assignment_submissions.student_id;

SELECT id, name FROM students WHERE name = 'Ibrahim Schimmel';