CREATE OR REPLACE FUNCTION notify_registraton()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO notifications (student_id, message)
    VALUES (
        NEW.student_id,
        'Congratulations! successfully registered for course with ID: ' ||
        (SELECT name FROM courses WHERE id = NEW.course_id)
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;