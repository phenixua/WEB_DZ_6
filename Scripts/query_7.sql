SELECT s.fullname AS student_name, g.grade, g.grade_date
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sub ON g.subject_id = sub.id
WHERE s.group_id = 2 -- Замініть на ідентифікатор групи, яку ви шукаєте
  AND sub.name = 'fast'; -- Замініть на назву потрібного предмета
