------
/* 5 consultas sencillas */
1. Muestra todos los datos de las habitaciones cuyo tipo de habitación empiezen por "d"

select * from habitaciones where tipo_habitacion like "d%";
+-------------------+-----------------+--------------+--------+-------------------+
| numero_habitacion | tipo_habitacion | numero_camas | planta | precio_habitacion |
+-------------------+-----------------+--------------+--------+-------------------+
|               162 | deluxe          |            3 |      2 |               165 |
|               189 | deluxe          |            3 |      2 |               165 |
|               436 | deluxe          |            3 |      5 |               165 |
|               512 | deluxe          |            2 |      6 |               165 |
+-------------------+-----------------+--------------+--------+-------------------+

------
2. Muestra todos los datos de los recepcionistas cuyo primer apellido sea "Pulido"

select * from recepcionista where apellido1 like "Pulido";
+------------------+---------+-----------+-----------+
| id_recepcionista | nombre  | apellido1 | apellido2 |
+------------------+---------+-----------+-----------+
|                3 | Natalia | Pulido    | Suarez    |
+------------------+---------+-----------+-----------+

------
3. Muestra todos los nombre y apellidos de los cliente cuya nacionalidad sea francesa

select nombre, apellido1, apellido2 from cliente where nacionalidad like "Francia";
+--------+-----------+-----------+
| nombre | apellido1 | apellido2 |
+--------+-----------+-----------+
| Raul   | Gonzalez  | Trujilllo |
| David  | Rodriguez | Fernandez |
| Laila  | Ramirez   | Valido    |
+--------+-----------+-----------+

------
4. Muestra todos los datos de las habitaciones cuyo precio sea mayor que 100

select * from habitaciones where precio_habitacion > 100;
+-------------------+-----------------+--------------+--------+-------------------+
| numero_habitacion | tipo_habitacion | numero_camas | planta | precio_habitacion |
+-------------------+-----------------+--------------+--------+-------------------+
|               162 | deluxe          |            3 |      2 |               165 |
|               189 | deluxe          |            3 |      2 |               165 |
|               236 | premium         |            1 |      3 |               198 |
|               287 | premium         |            3 |      3 |               198 |
|               436 | deluxe          |            3 |      5 |               165 |
|               512 | deluxe          |            2 |      6 |               165 |
|               517 | premium         |            3 |      6 |               198 |
+-------------------+-----------------+--------------+--------+-------------------+

------
5. Muestra el dni y el nombre de los clientes junto con sus respectivos apellidos en orden descendiente

select dni, nombre, apellido1, apellido2 from cliente order by apellido1 ASC, apellido2 DESC;
+-----------+-----------+-----------+-----------+
| dni       | nombre    | apellido1 | apellido2 |
+-----------+-----------+-----------+-----------+
| 11111111I | Sara      | Dominguez | Miranda   |
| 11111111C | Paula     | Dominguez | Merkle    |
| 11111111B | Raul      | Gonzalez  | Trujilllo |
| 11111111H | Alejandro | Marrero   | Carre?o   |
| 11111111D | Carmen    | Miranda   | Gonzalez  |
| 11111111J | Laila     | Ramirez   | Valido    |
| 11111111F | David     | Rodriguez | Fernandez |
| 11111111E | Celia     | Santana   | Sosa      |
| 11111111G | Maia      | Sarmiento | Perez     |
| 11111111A | Laura     | Sarmiento | Melian    |
+-----------+-----------+-----------+-----------+

------
/* 5 consultas con inner join / right join / left join */
1. Mostrar los nombres de los clientes con sus respectivos apellidos y el recepcionista que se ocupa de cada cliente

select cliente.nombre, cliente.apellido1, cliente.apellido2, id_recepcionista, dni_cliente
from cliente
inner join recepcionista_cliente_reservas
on cliente.dni = recepcionista_cliente_reservas.dni_cliente;
+-----------+-----------+-----------+------------------+-------------+
| nombre    | apellido1 | apellido2 | id_recepcionista | dni_cliente |
+-----------+-----------+-----------+------------------+-------------+
| Laura     | Sarmiento | Melian    |                1 | 11111111A   |
| Maia      | Sarmiento | Perez     |                1 | 11111111G   |
| Raul      | Gonzalez  | Trujilllo |                2 | 11111111B   |
| Alejandro | Marrero   | Carre?o   |                2 | 11111111H   |
| Paula     | Dominguez | Merkle    |                3 | 11111111C   |
| Sara      | Dominguez | Miranda   |                3 | 11111111I   |
| Carmen    | Miranda   | Gonzalez  |                4 | 11111111D   |
| Laila     | Ramirez   | Valido    |                4 | 11111111J   |
| Celia     | Santana   | Sosa      |                5 | 11111111E   |
| David     | Rodriguez | Fernandez |                6 | 11111111F   |
+-----------+-----------+-----------+------------------+-------------+

------
2. Muestra el tipo de servicio y precio y el identificador de las reservas

select servicios.tipo_servicio, servicios.precio, reservas_servicios.id_reserva
from servicios
inner join reservas_servicios
on servicios.id_servicio = reservas_servicios.id_reserva;
+-------------------------------+--------+------------+
| tipo_servicio                 | precio | id_reserva |
+-------------------------------+--------+------------+
| servicio de limpieza          |     20 |          1 |
| servicio de transporte        |     12 |          2 |
| servicio de excursiones       |     25 |          3 |
| servicio de guia-traductor    |     30 |          4 |
| servicio de spa-talasoterapia |     50 |          5 |
+-------------------------------+--------+------------+

------
3. Muestra nombres y apellidos de los clientes con sus respectivos datos de entrada y salida de la reserva

select cliente.nombre, cliente.apellido1, cliente.apellido2, reservas.fecha_entrada, reservas.fecha_salida
from cliente inner join recepcionista_cliente_reservas on cliente.dni = recepcionista_cliente_reservas.dni_cliente
inner join reservas on reservas.id_reserva = recepcionista_cliente_reservas.id_reserva;
+-----------+-----------+-----------+---------------+--------------+
| nombre    | apellido1 | apellido2 | fecha_entrada | fecha_salida |
+-----------+-----------+-----------+---------------+--------------+
| Laura     | Sarmiento | Melian    | 2018-10-14    | 2018-10-17   |
| Maia      | Sarmiento | Perez     | 2017-01-20    | 2017-01-24   |
| Raul      | Gonzalez  | Trujilllo | 2017-08-30    | 2017-09-06   |
| Alejandro | Marrero   | Carre?o   | 2018-05-23    | 2018-05-26   |
| Paula     | Dominguez | Merkle    | 2019-11-30    | 2019-12-04   |
| Sara      | Dominguez | Miranda   | 2019-04-19    | 2019-04-23   |
| Carmen    | Miranda   | Gonzalez  | 2017-06-08    | 2017-06-20   |
| Laila     | Ramirez   | Valido    | 2017-08-26    | 2017-08-29   |
| Celia     | Santana   | Sosa      | 2018-01-17    | 2018-01-20   |
| David     | Rodriguez | Fernandez | 2019-09-19    | 2019-09-29   |
+-----------+-----------+-----------+---------------+--------------+

------
4. Muestra a la izquierda los nombres y apellidos de las recepcionistas y los dni de los clientes que atienden

select recepcionista.nombre, recepcionista.apellido1, recepcionista.apellido2, recepcionista_cliente_reservas.dni_cliente
from recepcionista
left join recepcionista_cliente_reservas
on recepcionista.id_recepcionista = recepcionista_cliente_reservas.dni_cliente;
+-----------+-----------+-----------+-------------+
| nombre    | apellido1 | apellido2 | dni_cliente |
+-----------+-----------+-----------+-------------+
| Francisco | Trujillo  | Ojeda     | NULL        |
| Monica    | Naranjo   | Carrasco  | NULL        |
| Natalia   | Pulido    | Suarez    | NULL        |
| Gisela    | Rodriguez | Garcia    | NULL        |
| Juanjo    | Sarmiento | Gonzalez  | NULL        |
| Luis      | Santos    | Alonso    | NULL        |
+-----------+-----------+-----------+-------------+

------
5. Representa los nombres y apellidos de los recepcionistas y el dni de los clientes que atienden usando right join

select recepcionista.nombre, recepcionista.apellido1, recepcionista.apellido2, recepcionista_cliente_reservas.dni_cliente
from recepcionista
right join recepcionista_cliente_reservas
on recepcionista.id_recepcionista = recepcionista_cliente_reservas.dni_cliente;
+--------+-----------+-----------+-------------+
| nombre | apellido1 | apellido2 | dni_cliente |
+--------+-----------+-----------+-------------+
| NULL   | NULL      | NULL      | 11111111A   |
| NULL   | NULL      | NULL      | 11111111G   |
| NULL   | NULL      | NULL      | 11111111B   |
| NULL   | NULL      | NULL      | 11111111H   |
| NULL   | NULL      | NULL      | 11111111C   |
| NULL   | NULL      | NULL      | 11111111I   |
| NULL   | NULL      | NULL      | 11111111D   |
| NULL   | NULL      | NULL      | 11111111J   |
| NULL   | NULL      | NULL      | 11111111E   |
| NULL   | NULL      | NULL      | 11111111F   |
+--------+-----------+-----------+-------------+

------
