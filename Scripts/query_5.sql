SELECT sub.name AS course_name
FROM subjects sub
INNER JOIN teachers t ON sub.teacher_id = t.id
WHERE t.fullname = 'Robert Lang' -- Замініть 'ПІБ викладача' на ім'я викладача, якого ви шукаєте
