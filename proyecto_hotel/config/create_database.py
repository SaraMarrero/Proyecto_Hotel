import sqlite3

def create_database(db_file):
    conn = sqlite3.connect(db_file)

    #Creamos las tablas
    conn.execute("create table if not exists cliente (dni varchar(9) primary key, nombre varchar(10), apellido1 varchar(15), apellido2 varchar(15), nacionalidad varchar(10), telefono int)")

    conn.execute("create table if not exists habitaciones (numero_habitacion int primary key, tipo_habitacion varchar(10), numero_camas int, planta int, precio_habitacion int)")

    conn.execute("create table if not exists recepcionista (id_recepcionista int primary key, nombre varchar(10), apellido1 varchar(15), apellido2 varchar(15))")

    conn.execute("create table if not exists reservas (id_reserva int primary key, fecha_entrada date, fecha_salida date)")

    conn.execute("create table if not exists servicios (id_servicio int primary key, tipo_servicio varchar(30), precio int)")

    conn.execute("create table if not exists recepcionista_cliente_reservas (id_recepcionista int, dni_cliente varchar(9), id_reserva int, primary key (id_recepcionista, dni_cliente, id_reserva), foreign key(id_recepcionista) references recepcionista(id_recepcionsita), foreign key(dni_cliente) references cliente(dni), foreign key(id_reserva) references reservas(id_reserva))")

    conn.execute("create table if not exists reservas_habitacion( id_reserva int, numero_habitacion int, primary key( id_reserva, numero_habitacion), foreign key (id_reserva) references reservas(id_reserva), foreign key (numero_habitacion) references habitaciones(numero_habitacion))")

    conn.execute("create table if not exists reservas_servicios(id_reserva int, id_servicio int, primary key (id_reserva, id_servicio), foreign key (id_reserva) references reservas(id_reserva), foreign key (id_servicio) references servicios(id_servicio))")

    #Insertamos los datos
    conn.execute("Insert into cliente values ('11111111A','Laura','Sarmiento','Melian','Espana','111111111'), ('11111111B','Raul','Gonzalez','Trujilllo','Francia','222222222'),('11111111C','Paula','Dominguez','Merkle','Alemania','333333333'),('11111111D','Carmen','Miranda','Gonzalez','Inglaterra','444444444'),('11111111E','Celia','Santana','Sosa','Espana','555555555'),('11111111F','David','Rodriguez','Fernandez','Francia','666666666'), ('11111111G','Maia','Sarmiento','Perez','Alemania','777777777'), ('11111111H','Alejandro','Marrero','Carreño','Inglaterra','888888888'), ('11111111I','Sara','Dominguez','Miranda','Espana','999999999'), ('11111111J','Laila','Ramirez','Valido','Francia','123456789')")

    conn.execute("Insert into habitaciones values (236,'premium',3,3,198), (512,'deluxe',2,6,165), (189,'deluxe',2,2,165), (67,'estandar',1,1,93), (287,'premium',3,3,198), (162,'deluxe',2,2,165), (517,'premium',3,6,198), (24,'standar',1,1,93), (436,'deluxe',2,5,165), (14,'estandar',1,1,93)")

    conn.execute("Insert into recepcionista values (1,'Francisco','Trujillo','Ojeda'), (2,'Monica','Naranjo','Carrasco'), (3,'Natalia','Pulido','Suarez'), (4,'Gisela','Rodriguez','Garcia'), (5,'Juanjo','Sarmiento','Gonzalez'), (6,'Luis','Santos','Alonso')")

    conn.execute("Insert into reservas values (1,'2018-10-14','2018-10-17'), (2,'2017-08-30','2017-09-06'), (3,'2019-11-30','2019-12-04'), (4,'2017-06-08','2017-06-20'), (5,'2018-01-17','2018-01-20'), (6,'2019-09-19','2019-09-29'), (7,'2017-01-20','2017-01-24'), (8,'2018-05-23','2018-05-26'), (9,'2019-04-19','2019-04-23'), (10,'2017-08-26','2017-08-29')")

    conn.execute("Insert into servicios values (1,'servicio de limpieza',20), (2,'servicio de transporte',12), (3,'servicio de excursiones',25), (4,'servicio de guia-traductor',30), (5,'servicio de spa-talasoterapia',50)")

    conn.execute("Insert into recepcionista_cliente_reservas values (1,'11111111A',1), (2,'11111111B',2), (3,'11111111C',3), (4,'11111111D',4), (5,'11111111E',5), (6,'11111111F',6), (1,'11111111G',7), (2,'11111111H',8), (3,'11111111I',9), (4,'11111111J',10)")

    conn.execute("Insert into reservas_habitacion values (1,236), (2,512), (3,189), (4,67), (5,287), (6,162), (7,517), (8,24), (9,436), (10,14)")

    conn.execute("Insert into reservas_servicios values (1,2), (2,4), (3,3), (4,4), (5,1), (6,3), (7,5), (8,2), (9,4), (10,5)")

    conn.commit()