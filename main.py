import sqlite3
from bottle import *
from config.config import *

@get('/datos')
def datos_list():
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()
    c.execute("select * from cliente")
    result = c.fetchall()
    c.close()
    output = template('make_table', rows=result)
    return output

#------

@get('/new')
def new_item_form():
    return template('checkin')


@post('/new')
def new_item_save():
    if request.POST.save:
        new = request.POST.task.strip()    
        conn = sqlite3.connect('datos.db')
        c = conn.cursor()

        c.execute("Insert into cliente values ('11111111K','Lola','Betancor','Santana','Alemania','111222333')")
        new_id = c.lastrowid

        conn.commit()
        c.close()

        return redirect('datos')

#------

@get('/edit/<no:int>')
def edit_item(no):
    conn = sqlite3.connect('datos.db')
    c = conn.cursor()
    c.execute("Select dni from cliente where dni=?", (no, ))
    cur_data = c.fetchone()
    return template('edit_cliente', old=cur_data, no=no)


@post('/edit/<no:int>')
def edit_item(no):

    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()
    c.execute("UPDATE cliente SET dni = ?, nombre = ? , apellido1 = ?, apellido2 = ?, nacionalidad = ?, telefono = ? WHERE dni LIKE '?'", ("",no))
    conn.commit()

    return redirect('/todo')

#------

@get('/index')
def index():
    return static_file('index.html', root="static")

@get("/static/<index:path>")
def html(index):
    return static_file(index, root = "static")

#------

if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)