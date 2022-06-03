------
/* 1 trigger */

Crear un trigger que compruebe cualquier actualización del precio de la habitación sea 
superior a 200, pondrá esa cantidad como precio máximo

DELIMITER $$
DROP TRIGGER [IF EXISTS] habitacion;
CREATE TRIGGER habitacion
BEFORE UPDATE ON habitacion
FOR EACH ROW
BEGIN
    if new.precio_habitacion > 200 then
        set new.precio_habitacion = 200
    end if;
END $$
DELIMITER ;

update habitacion
set precio_habitacion = 100
where numero_habitacion = 24;

------
