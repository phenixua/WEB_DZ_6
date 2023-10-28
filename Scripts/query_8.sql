SELECT t.fullname AS teacher_name, AVG(g.grade) AS average_grade
FROM teachers t
JOIN subjects sub ON t.id = sub.teacher_id
JOIN grades g ON sub.id = g.subject_id
GROUP BY t.fullname;
