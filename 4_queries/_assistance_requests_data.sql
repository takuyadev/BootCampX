SELECT b.name, c.name, d.name, (a.completed_at - a.started_at) AS duration FROM assistance_requests as a 
  JOIN teachers as b ON (b.id=a.teacher_id)
  JOIN students as c ON (c.id=a.student_id)
  JOIN assignments as d ON (d.id=a.assignment_id)
  ORDER BY duration;