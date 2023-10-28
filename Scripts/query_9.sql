SELECT sub.name AS course_name
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sub ON g.subject_id = sub.id
WHERE s.fullname = 'Sarah Williams' -- Замініть 'ПІБ студента' на ім'я студента, якого ви шукаєте
