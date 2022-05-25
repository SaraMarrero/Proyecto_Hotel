import sqlite3
from bottle import *
from proyecto_hotel.config.config import DATABASE


@route('\datos')
def datos_list():
    conexion = sqlite3.connect(DATABASE)
    c = conexion.cursor()
    c.execute("SELECT id, task FROM todo WHERE status LIKE '1'")
    result = c.fetchall()
    return str(result)



if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)