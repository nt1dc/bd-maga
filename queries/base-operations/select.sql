---Получить студентов, записанных на курс
SELECT s.name AS student_name, c.name AS course_name, cs.progress
FROM course_student cs
JOIN Students s ON cs.student_id = s.id
JOIN Courses c ON cs.course_id = c.id;

---Вывести уведомления для студента
SELECT message, sent_at
FROM Notifications
WHERE student_id = 1;

