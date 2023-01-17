SELECT cohorts.name AS cohort_name, COUNT(students.id) AS total_students
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.id) >= 18
ORDER BY total_students ASC;
