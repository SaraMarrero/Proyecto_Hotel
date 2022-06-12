<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/static/CSS/login.css">
    <link rel="shorcut icon" href="/static/img/gestion.png">   
    <title>Premium hotel</title>
</head>
<body>
    <h1>Inicio de sesión</h1>
    % if form.errors:
    <blockquote>
        <p>Hay errores en el formulario:</p>
        <ul>
        % for field, errors in form.errors.items():
            % for error in errors:
            <li>{{field}}: {{error}}</li>
            % end
        % end
        </ul>
    </blockquote>

    % end
    <form  method="POST" action="/login">
        <table>
            <tr>
                <td>
                    {{ form.id.label }}
                    <!-- <label for="id">ID<span>*</span></label> -->
                </td>
                   
                <td>
                    {{ form.id }}
                    <!-- <input type="text" name="id" id="id" required> -->
                </td>
            </tr>
            
            <tr>
                <td>
                    {{ form.nombre.label}}
                    <!-- <label for="Nombre">Nombre<span>*</span></label> -->
                </td>
                   
                <td>
                    {{ form.nombre }}
                    <!-- <input type="text" name="nombre" id="nombre" required> -->
                </td>
            </tr>

            <tr>
                <td>
                    {{ form.apellido1.label }}
                    <!-- <label for="Apellido1">Apellido 1<span>*</span></label> -->
                </td>
                    
                <td>
                    {{ form.apellido1 }}
                    <!-- <input type="text" name="apellido1" id="apellido1" required> -->
                </td>
            </tr>
             
            <tr>
                <td>
                    {{ form.apellido2.label }}
                    <!-- <label for="Apellido2">Apellido 2<span>*</span></label> -->
                </td>
                  
                <td>
                    {{ form.apellido2 }}
                    <!-- <input type="text" name="apellido2" id="apellido2" required> -->
                </td>
            </tr>
                
            <tr>
                <td colspan="2">
                    {{ form.entrar }}
                    <!-- <input type="submit" name="entrar" id="entrar" value="Entrar"> -->
                </td>
            </tr>
        </table>
    </form>
</body>
</html>