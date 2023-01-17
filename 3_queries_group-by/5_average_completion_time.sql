SELECT name AS student, AVG(duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY name
ORDER BY average_assignment_duration DESC;
