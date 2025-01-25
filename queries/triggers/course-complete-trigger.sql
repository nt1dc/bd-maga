CREATE TRIGGER notify_on_course_completion
AFTER UPDATE ON course_student
FOR EACH ROW
EXECUTE FUNCTION create_notification_on_completion();