from wtforms import Form, StringField, SubmitField, SelectField, validators, DateField, IntegerField, TextAreaField

class ReservaForm(Form):

    dni = StringField('dni', 
                            [validators.Length(min=4, max=25)], 
                            default='dni'
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

    telefono = StringField('telefono', validators.InputRequired())

    nacionalidad = SelectField('nacionalidad', choices=[('España'), ('Francia'), ('Alemania'), ('Inglaterra'), ('Otros')])

    id_reserva = IntegerField('id_reserva')

    fecha_entrada = DateField('fecha_entrada', validators.InputRequired())

    fecha_salida = DateField('fecha_salida', validators.InputRequired())

    datos_interes = TextAreaField('datos_interes',
                                    [validators.InputRequired(),
                                    validators.length(max=100)
                                ])

    reservar = SubmitField('Reserva cliente')