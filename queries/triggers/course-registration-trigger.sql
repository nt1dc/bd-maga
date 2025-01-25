CREATE TRIGGER after_student_registration
AFTER INSERT ON course_student
FOR EACH ROW
EXECUTE FUNCTION notify_registraton();