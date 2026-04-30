-- Script que crea una función SafeDiv que divide dos números
-- o devuelve 0 si el segundo número es igual a 0.
DELIMITER //

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    IF b = 0 THEN
        RETURN 0;
    END IF;
    RETURN a / b;
END; //

DELIMITER ;
