from wtforms import Form, StringField, SubmitField, SelectField, validators, DateField, IntegerField

class ReservaForm(Form):

    dni = StringField('dni', 
                            [validators. Length (min=4, max=25)], 
                            default='dni',
                            renderkw={'class':'myclass'}
                        )

    nombre = StringField('nombre',
                            [validators.InputRequired(), 
                            validators.Length(min=6,max=60), 
                        ])

    apellido1 = StringField('apellido1',
                            [validators.InputRequired(), 
                            validators.Length(min=6,max=60), 
                        ])
    
    apellido2 = StringField('apellido2',
                            [validators.InputRequired(), 
                            validators.Length(min=6,max=60), 
                        ])

    telefono = IntegerField('telefono', validators.InputRequired())


    nacionalidad = SelectField('nacionalidad', choices=[ ('España'), ('Francia'), ('Alemania'), ('Inglaterra'), ('Otro')])


    fecha_entrada = DateField('fecha_entrada', validators.InputRequired())


    fecha_salida = DateField('fecha_salida', validators.InputRequired())


    reservar = SubmitField ('Reserva cliente')