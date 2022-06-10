import sqlite3

class Reservas():
    def __init__(self, database):
        self.database = database

    def __conectar(self): 
        conn = sqlite3.connect(self.database)
        return conn

    def _insert_cliente(self, dni, nombre, apellido1, apellido2, nacionalidad, telefono):
        conn = self.__conectar()
        c = conn.cursor()
        c.execute("Insert into cliente values (?,?,?,?,?,?)", (dni,nombre,apellido1,apellido2,nacionalidad,telefono))
        conn.commit()
        c.close()
        return True
    
    def _insert_reserva(self, id_reserva, fecha_entrada, fecha_salida):
        conn = self.__conectar()
        c = conn.cursor()
        c.execute("Insert into reservas values (?,?,?)", (id_reserva,fecha_entrada, fecha_salida))
        conn.commit()
        c.close()
        return True