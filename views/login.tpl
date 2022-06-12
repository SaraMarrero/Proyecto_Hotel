<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="">
    <link rel="shorcut icon" href="/static/img/gestion.png">   
    <title>Premium hotel</title>
</head>
<body>
    <h1>Inicio de sesión</h1>
    <form action="/login" method="Post">
        <table>
            <tr>
                <td>
                    {{ form.Id_recepcionista.label }}:
                    <!-- <label for="id">ID<span>*</span></label> -->
                </td>
                   
                <td>
                    {{ form.Id_recepcionista }}
                    <!-- <input type="text" name="id" id="id" required> -->
                </td>
            </tr>
            
            <tr>
                <td>
                    {{ form.Nombre.label }}
                    <!-- <label for="Nombre">Nombre<span>*</span></label> -->
                </td>
                   
                <td>
                    {{ form.Nombre }}
                    <!-- <input type="text" name="nombre" id="nombre" required> -->
                </td>
            </tr>

            <tr>
                <td>
                    {{ form.Apellido1.label }}
                    <!-- <label for="Apellido1">Apellido 1<span>*</span></label> -->
                </td>
                    
                <td>
                    {{ form.Apellido1 }}
                    <!-- <input type="text" name="apellido1" id="apellido1" required> -->
                </td>
            </tr>
             
            <tr>
                <td>
                    {{ form.Apellido2.label }}
                    <!-- <label for="Apellido2">Apellido 2<span>*</span></label> -->
                </td>
                  
                <td>
                    {{ form.Apellido2 }}
                    <!-- <input type="text" name="apellido2" id="apellido2" required> -->
                </td>
            </tr>

            <tr>
                <td>
                    {{ form.Contraseña.label }}
                    <!-- <label for="Contraseña">Contraseña<span>*</span></label> -->
                </td>
                 
                <td>
                    {{ form.Contraseña }}
                    <!-- <input type="password" name="contraseña" id="contraseña" required> -->
                </td>
            </tr>
                
            <tr>
                <td>
                    {{ form.Confirmar_contraseña.label }}
                    <!-- <label for="Confirmar contraseña">Confirmar contraseña<span>*</span></label> -->
                </td>
                 
                <td>
                    {{ form.Confirmar_contraseña }}
                    <!-- <input type="password" name="confirmar_contraseña" id="confirmar_contraseña" required> -->
                </td>
            </tr>
                
            <tr>
                <td colspan="2">
                    <input type="submit" name="entrar" id="entrar" value="Entrar">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>