-- script that resets the attribute valid_email only when the email has been changed.
DROP TRIGGER IF EXISTS email_validator;
DELIMITER $$
CREATE TRIGGER email_validator
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    ELSE
        SET NEW.valid_email = NEW.valid_email;
    END IF;
END $$
DELIMITER ;