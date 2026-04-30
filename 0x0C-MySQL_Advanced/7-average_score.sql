-- Script que crea un procedimiento almacenado ComputeAverageScoreForUser
-- que calcula y almacena el promedio de calificaciones de un estudiante.
DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE avg_score FLOAT;

    -- 1. Calcular el promedio de las puntuaciones del usuario
    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE corrections.user_id = user_id;

    -- 2. Actualizar el campo average_score en la tabla users
    UPDATE users
    SET average_score = avg_score
    WHERE id = user_id;
END; //

DELIMITER ;
