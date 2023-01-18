SELECT teachers.name AS teacher_name, COUNT(assistance_requests.id) AS total_assistance_requests
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teacher_name;