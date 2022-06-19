<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/static/CSS/checkin.css">
    <title>Check-in</title>
</head>
<body>
    <section class="section1">
        <h1>Premium Hotel</h1>
    </section>

    <form action="/checkin" method="post">
        <table>
            <tr>
                <td colspan="2">
                    <h3 class="titulo">Datos de personales</h3>
                </td>
            </tr>

            <tr>
                <td class="td">
                    <label for="DNI">DNI<span>*</span></label><br>
                    <input type="text" name="dni" id="dni" required>
                </td>
            
                <td class="td">
                    <label for="Nombre">Nombre<span>*</span></label><br>
                    <input type="text" name="nombre" id="nombre" required>
                </td>
            </tr>

            <tr>
                <td class="td">
                    <label for="Primer apellido">Primer apellido<span>*</span></label><br>
                    <input type="text" name="apellido1" id="apellido1" required>
                </td>

                <td class="td">
                    <label for="Segundo apellido">Segundo apellido<span>*</span></label><br>
                    <input type="text" name="apellido2" id="apellido2" required>
                </td>
            </tr>

            <tr>
                <td class="td"> 
                    <label for="nacionalidad">Nacionalidad<span>*</span></label><br>
                    <select name="nacionalidad" id="nacionalidad" required>
                        <option value select="selected">Seleccionar</option>
                        <option value="España">España</option>
                        <option value="Francia">Francia</option>
                        <option value="Alemania">Alemania</option>
                        <option value="Inglaterra">Inglaterra</option>
                        <option value="Otro">Otro</option>
                    </select>
                </td>

                <td class="td">
                    <label for="telefono">Teléfono<span>*</span></label><br>
                    <input type="text" name="telefono" id="telefono">
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <h3 class="titulo">Datos de la reserva</h3>
                </td>
            </tr>

            <tr>
                <td class="td">
                    <label for="fechaentrada">Fecha de entrada<span>*</span></label><br>
                    <input type="date" id="fecha_entrada" name="fecha_entrada" min="01-01-2022">
                </td>

                <td class="td">
                    <label for="fechasalida">Fecha de salida<span>*</span></label><br>
                    <input type="date" id="fecha_salida" name="fecha_salida" min="01-01-2022">
                </td>
            </tr>

            <tr>
                <td class="td">
                    <label for="Datosdeinteres">Datos de interés</label>
                </td>

                <td class="td">
                    <textarea id="Datosdeinteres"placeholder="Información relevante sobre su reserva..." rows="7" cols="20" maxlength="200"></textarea><br>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <h3 class="titulo">Opciones de pago</h3>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="td">
                    <input type="radio" value="p">Pagar en el hotel<br>
                    <span>Seleccionando esta opción queda informado de que el pago solo se puede efectuar en el hotel</span>
                </td>
            </tr>

            <tr>
                <td class="td1" colspan="2">
                    <input type="submit" name="reservar" id="reservar" value="Reservar">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
