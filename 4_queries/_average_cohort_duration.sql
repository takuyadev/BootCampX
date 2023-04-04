SELECT AVG(a.total_duration) AS average_total_duration FROM (
  SELECT c.name, SUM(a.completed_at - a.started_at)  AS total_duration FROM assistance_requests AS a
    JOIN students AS b ON (a.student_id=b.id)
    JOIN cohorts AS c ON (b.cohort_id=c.id)
    GROUP BY c.name
    ORDER BY total_duration
) as a;