-- Script que crea una vista 'need_meeting' que lista todos los estudiantes
-- que tienen un score menor a 80 y no han tenido una reunión (last_meeting)
-- en más de un mes o nunca la han tenido.
CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80
AND (last_meeting IS NULL OR last_meeting < DATE_SUB(CURDATE(), INTERVAL 1 MONTH));
