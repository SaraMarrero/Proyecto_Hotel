from email_validator import EmailNotValidError
from wtforms import Form, BooleanField, StringField, PasswordField, SubmitField , RadioField, TextAreaField, SelectField, validators

COUNTRIES = [('', 'Select country'), ('ES', 'Spain'), ('US', 'United States'), ('UK', 'United Kingdom')]


class RegistrationForm(Form):
    
    username = StringField('Username', 
                               [validators.Length(min=4, max=25)], 
                               default='nombre de usuario', 
                               render_kw={'class':'myclass'}
                            )
    email  = StringField('Email Address', [
                                    validators.InputRequired(), 
                                    validators.Length(min=6, max=60), 
                                    validators.Email( message='Correo incorrecto')
                                ])
    color = RadioField('Color preferido', choices=[('blue', 'Azul'), ('red', 'Rojo'), ('green', 'Verde')])
    
    historia = TextAreaField('Cuéntame algo', [validators.Length(min=10, max=1000)])
    
    pais = SelectField(label='País', choices=COUNTRIES, validators = [validators.InputRequired()])
    
    password = PasswordField('New Password', [
                                    validators.Length(min=10, max=60),
                                    validators.EqualTo('password_confirm', message='Las contraseñas no coinciden')
                                ])
    password_confirm = PasswordField('Repeat Password')
    accept_rules = BooleanField('Acepto las reglas del sitio', [validators.InputRequired()])
    save = SubmitField('Guardar')
    cancel = SubmitField('Cancelar')
    