CREATE OR REPLACE FUNCTION create_notification_on_completion()
RETURNS TRIGGER AS $$
BEGIN
    -- Проверяем, что прогресс равен 100% и курс завершен
    IF NEW.progress = 100 AND NEW.completed_at IS NOT NULL THEN
        INSERT INTO notifications (student_id, message)
        VALUES (
            NEW.student_id,
            'Congratulations! You have completed the course: ' ||
            (SELECT name FROM courses WHERE id = NEW.course_id)
        );
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;