SELECT courses.title, instructors.name
FROM courses
JOIN instructors ON instructors.id = courses.instructor_id
ORDER BY courses.title;