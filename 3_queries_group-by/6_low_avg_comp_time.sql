SELECT s.name AS student, AVG(asub.duration) AS average_completion_time, AVG(a.duration) AS average_estimated_time
FROM students s
JOIN assignment_submissions asub ON s.id = asub.student_id
JOIN assignments a ON asub.assignment_id = a.id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING AVG(asub.duration) < AVG(a.duration)
ORDER BY average_completion_time ASC;
