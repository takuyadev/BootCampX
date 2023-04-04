SELECT b.id, b.name, b.day, b.chapter, COUNT(b.id) AS total_requests FROM assistance_requests AS a
JOIN assignments AS b ON (b.id=a.assignment_id)
GROUP BY b.id, b.name, b.day, b.chapter
ORDER BY total_requests DESC;