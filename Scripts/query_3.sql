SELECT s.group_id, AVG(g.grade) AS average_grade
FROM students s
INNER JOIN grades g ON s.id = g.student_id
INNER JOIN subjects sub ON g.subject_id = sub.id
WHERE sub.name = 'fast' -- Замініть на назву потрібного предмета
GROUP BY s.group_id;
