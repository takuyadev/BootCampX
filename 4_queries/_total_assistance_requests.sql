SELECT COUNT(id) AS total_assistances, teachers.name FROM teachers
 GROUP BY teachers.name;