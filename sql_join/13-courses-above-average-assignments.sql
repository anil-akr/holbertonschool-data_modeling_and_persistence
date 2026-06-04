SELECT courses.title
FROM courses
JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(cnt) FROM (
        SELECT COUNT(id) AS cnt
        FROM assignments
        GROUP BY course_id
    )
)
ORDER BY courses.title;
