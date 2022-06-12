from wtforms import Form, IntegerField, StringField, validators, PasswordField

class LoginForm(Form):

    Id_recepcionista = IntegerField('Id_recepcionista')

    Nombre = StringField('Nombre',
                            [validators.InputRequired(), 
                            validators.Length(min=6,max=60), 
                        ])

    Apellido1 = StringField('Apellido1',
                            [validators.InputRequired(), 
                            validators.Length(min=6,max=60), 
                        ])

    Apellido2 = StringField('Apellido2',
                            [validators.InputRequired(), 
                            validators.Length(min=6,max=60), 
                        ])

    Contraseña = PasswordField('Contraseña', 
                                [validators.DataRequired(),
                                validators.EqualTo('password_confirm', 
                                message='Las contraseñas no coinciden')
                        ])

    Confirmar_contraseña = PasswordField('Confirmar_contraseña')

    Enviar = StringField('Enviar')