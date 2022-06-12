import sqlite3
from bottle import *
from config.config import *

from models.formularios import *

from forms.reserva import *
from forms.login import *



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

@get('/checkin')
def new_item_form():
    form = ReservaForm(request.POST)
    return template('checkin', form=form)


@post('/checkin')
def new_item_save():
    if request.POST.reservar:
        dni = request.POST.dni.strip()
        nombre = request.POST.nombre.strip()
        apellido1 = request.POST.apellido1.strip()
        apellido2 = request.POST.apellido2.strip()
        nacionalidad = request.POST.nacionalidad.strip()
        telefono = request.POST.telefono.strip()
        id_reserva = request.POST.id_reserva.strip()
        fecha_entrada = request.POST.fecha_entrada.strip()
        fecha_salida = request.POST.fecha_salida.strip()

        #Reservas.
        reservas = Reservas(DATABASE)
        reservas._insert_cliente(dni,nombre,apellido1,apellido2,nacionalidad,telefono)
        reservas._insert_reserva(id_reserva,fecha_entrada, fecha_salida)

        return redirect('/index')

#-----

@get('/login')
def view_login():
    form = LoginForm(request.POST)
    return template('login', form=form)

@post('/login')
def login():
    form = LoginForm(request.POST)
    if form.entrar.data and form.validate():
        form_data = {
            'id': form.id.data,
            'nombre': form.nombre.data,
            'apellido1': form.apellido1.data,
            'apellido2': form.apellido2.data
        }
        print(form_data)
        redirect('/datos')
    print(form.errors)
    return template('login', form=form)

#------

@get('/index')
def index():
    return static_file('index.html', root='static')


@get("/static/<index:path>")
def html(index):
    return static_file(index, root = "static")

@get('/checkin')
def checkin():
    # if request.POST.reserva:
    return template('checkin')

#------

if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)