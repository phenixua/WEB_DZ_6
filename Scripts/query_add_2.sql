SELECT s.fullname AS student_name, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sub ON g.subject_id = sub.id
WHERE s.group_id = 3 -- Замініть на ідентифікатор групи, яку ви шукаєте
  AND sub.name = 'pattern' -- Замініть на назву потрібного предмета
  AND g.grade_date = (
      SELECT MAX(grade_date)
      FROM grades
      WHERE student_id = s.id AND subject_id = sub.id
  );
