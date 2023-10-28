SELECT t.fullname AS teacher_name, s.fullname AS student_name, AVG(g.grade) AS average_grade
FROM teachers t
JOIN subjects sub ON t.id = sub.teacher_id
JOIN grades g ON sub.id = g.subject_id
JOIN students s ON g.student_id = s.id
WHERE t.fullname = 'Heather Espinoza' -- Замініть на ім'я викладача, якого ви шукаєте
  AND s.fullname = 'Mary Park' -- Замініть на ім'я студента, якого ви шукаєте
GROUP BY t.fullname, s.fullname;
