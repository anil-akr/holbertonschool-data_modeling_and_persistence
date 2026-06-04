SELECT DISTINCT students.name
FROM registrations
JOIN students ON registrations.student_id = students.id
ORDER BY students.name ASC;