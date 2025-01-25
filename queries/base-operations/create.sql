INSERT INTO students (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com');

INSERT INTO courses (name, description) VALUES
('Math 101', 'Basic mathematics course'),
('History 202', 'Introduction to world history');

INSERT INTO course_student (student_id, course_id, progress) VALUES
(1, 1, 50),
(1, 2, 20),
(2, 1, 80);