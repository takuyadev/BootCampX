
SELECT id, name, COUNT(*) FROM students 
WHERE cohort_id=7
GROUP BY id
ORDER BY name;