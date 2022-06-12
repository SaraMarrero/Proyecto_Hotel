from wtforms import Form, IntegerField, StringField, validators, SubmitField

class LoginForm(Form):

    id = IntegerField('Id_recepcionista')
                        

    nombre = StringField('Nombre',
                            [validators.Length(min=3,max=20), 
                        ])

    apellido1 = StringField('Apellido1',
                            [validators.Length(min=3,max=20), 
                        ])

    apellido2 = StringField('Apellido2',
                            [validators.Length(min=3,max=20), 
                        ])                  

    entrar = SubmitField('Entrar')