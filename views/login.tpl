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
    <form  method="POST" action="/login">
        <table>
            <tr>
                <td>
                    {{ form.id.label }}
                </td>
                   
                <td>
                    {{ form.id }}
                </td>
            </tr>
            
            <tr>
                <td>
                    {{ form.nombre.label}}
                </td>
                   
                <td>
                    {{ form.nombre }}
                </td>
            </tr>

            <tr>
                <td>
                    {{ form.apellido1.label }}
                </td>
                    
                <td>
                    {{ form.apellido1 }}
                </td>
            </tr>
             
            <tr>
                <td>
                    {{ form.apellido2.label }}
                </td>
                  
                <td>
                    {{ form.apellido2 }}
                </td>
            </tr>
                
            <tr>
                <td colspan="2">
                    {{ form.entrar }}
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
