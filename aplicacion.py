import sqlite3
from bottle import *
from config.config import *

@route('/datos')
def datos_list():
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()
    c.execute("select * from cliente")
    result = c.fetchall()
    return str(result)

if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)