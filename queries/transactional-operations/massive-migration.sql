BEGIN;

INSERT INTO Students (name, email) VALUES
('Charlie Brown', 'charlie@example.com'),
('Diana Prince', 'diana@example.com');

INSERT INTO Course_Student (student_id, course_id) VALUES
((SELECT id FROM Students WHERE email = 'charlie@example.com'), 1),
((SELECT id FROM Students WHERE email = 'diana@example.com'), 2);

COMMIT;