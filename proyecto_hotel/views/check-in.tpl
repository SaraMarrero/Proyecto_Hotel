<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="check-in.css">
    <title></title>
</head>
<body>
    <section class="section1">
        <h1>Premium Hotel</h1>
    </section>

    <form method ="post">
        <table>
            <tr>
                <td colspan="2">
                    <h3 class="titulo">Datos de personales</h3>
                </td>
            </tr>

            <tr>
                <td class="td">
                    <label for="DNI">DNI<span>*</span></label><br>
                    <input type="text" name="DNI" id="DNI" required>
                </td>
            
                <td class="td">
                    <label for="Nombre">Nombre<span>*</span></label><br>
                    <input type="text" name="Nombre" id="Nombre" required>
                </td>
            </tr>

            <tr>
                <td class="td">
                    <label for="Primer apellido">Primer apellido<span>*</span></label><br>
                    <input type="text" name="Primer apellido" id="Primer apellido" required>
                </td>

                <td class="td">
                    <label for="Segundo apellido">Segundo apellido<span>*</span></label><br>
                    <input type="text" name="Segundo apellido" id="Segundo apellido" required>
                </td>
            </tr>

            <tr>
                <td class="td"> 
                    <label for="Nacionalidad">Nacionalidad<span>*</span></label><br>
                    <select name="Nacionalidad" id="Nacionalidad" required>
                        <option value select="selected">Seleccionar</option>
                        <option value="Nacionalidad1">España</option>
                        <option value="Nacionalidad2">Francia</option>
                        <option value="Nacionalidad3">Alemania</option>
                        <option value="Nacionalidad4">Inglaterra</option>
                        <option value="Nacionalidad5">Otro</option>
                    </select>
                </td>

                <td class="td">
                    <label for="Telefono">Teléfono<span>*</span></label><br>
                    <input type="tel" name="Telefono" id="Telefono">
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
                    <input type="date" id="fehcaentrada" name="fechaentrada" min="01-01-2022">
                </td>

                <td class="td">
                    <label for="fechasalida">Fecha de salida<span>*</span></label><br>
                    <input type="date" id="fehcasalida" name="fechasalida" min="01-01-2022" required>
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
                <td class="td1">
                    <input type="submit" value="Reservar">
                </td>

                <td class="td1">
                    <input type="submit" value="Resetear campos">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>