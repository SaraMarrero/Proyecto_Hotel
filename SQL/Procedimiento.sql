------
/* 1 procedimiento / función almacenado */

Crear un procedimiento que dado el código de recepcionista muestre el nombre y apellidos por pantalla del recepcionista

DELIMITER $$
create procedure recepcionista(in id_recepcionista int)
BEGIN
    select nombre, apellido1, apellido2
    from recepcionista
    where recepcionista.id_recepcionista = id_recepcionista;
END $$
DEMILITER ;

call recepcionista(4);

------
