---Курс пройден полностью для студента
UPDATE Course_Student
SET progress = 100, completed_at = CURRENT_TIMESTAMP
WHERE student_id = 1 AND course_id = 1;