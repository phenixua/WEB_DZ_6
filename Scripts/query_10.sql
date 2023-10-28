SELECT sub.name AS course_name
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sub ON g.subject_id = sub.id
JOIN teachers t ON sub.teacher_id = t.id
WHERE s.fullname = 'Mark Edwards' -- Замініть 'ПІБ студента' на ім'я студента, якого ви шукаєте
  AND t.fullname = 'Regina Richard' -- Замініть 'ПІБ викладача' на ім'я викладача, якого ви шукаєте
