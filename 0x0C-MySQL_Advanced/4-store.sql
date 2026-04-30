-- Script que crea un trigger que disminuye la cantidad de un artículo
-- después de añadir un nuevo pedido (order).
DELIMITER //

CREATE TRIGGER decrease_quantity_after_order
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END; //

DELIMITER ;
