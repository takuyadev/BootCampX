SELECT COUNT(a.*) total_assistances, b.name FROM assistance_requests as a
JOIN students AS b ON (b.id=a.student_id) 
WHERE b.name = 'Felipe Kessler'
GROUP BY b.name;