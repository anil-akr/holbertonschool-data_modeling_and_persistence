SELECT authors.name AS author_name, title
FROM authors
LEFT JOIN books
ON books.author_id = authors.id
ORDER BY authors.name, title ASC;