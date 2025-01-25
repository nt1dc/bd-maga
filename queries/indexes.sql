CREATE INDEX idx_courses_name ON courses(name);
CREATE INDEX idx_students_email ON students(email);
CREATE INDEX idx_course_student_progress ON course_student(course_id, progress);
