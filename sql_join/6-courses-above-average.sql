SELECT courses.title AS course_title
FROM courses
JOIN enrollments
ON courses.id = enrollments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(enrollments.student_id) > (
    SELECT AVG(course_count)
    FROM (
        SELECT COUNT(student_id) AS course_count
        FROM enrollments
        GROUP BY course_id
    ) AS sub
)
ORDER BY course_title ASC;