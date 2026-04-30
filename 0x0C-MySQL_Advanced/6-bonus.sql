-- Script que crea un procedimiento almacenado AddBonus
-- que agrega una nueva corrección para un estudiante.
DELIMITER //

CREATE PROCEDURE AddBonus(
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score INT
)
BEGIN
    DECLARE project_id INT;

    -- 1. Intentar obtener el ID del proyecto si ya existe
    SELECT id INTO project_id
    FROM projects
    WHERE name = project_name;

    -- 2. Si el proyecto no existe (project_id es NULL), lo creamos
    IF project_id IS NULL THEN
        INSERT INTO projects (name) VALUES (project_name);
        SET project_id = LAST_INSERT_ID();
    END IF;

    -- 3. Insertar la nueva corrección
    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, project_id, score);
END; //

DELIMITER ;
