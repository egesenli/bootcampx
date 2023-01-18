SELECT students.name AS student_name, COUNT(assistance_requests.id) AS total_assistances
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY student_name;