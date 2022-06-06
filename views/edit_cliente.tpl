<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="">
    <title>Edit_cliente</title>
</head>
<body>
    <p>Editar el cliente con DNI = {{no}}</p>
    <form action="/edit/{{no}}" method="POST">
    <table>
      <tr>
        <td>
          <label for="dni">DNI</label>
        </td>

        <td>
          <input type="text" name="dni">
        </td>

        <td>
          <input type="submit" name="save" value="save">
        </td>
      </tr>

      <tr>
        <td>
          <label for="Nombre">Nombre</label>
        </td>

        <td>
          <input type="text" name="nombre">
        </td>

        <td>
          <input type="submit" name="save" value="save">
        </td>
      </tr>

      <tr>
        <td>
          <label for="apellido1">Apellido1</label>
        </td>

        <td>
          <input type="text" name="apellido1">
        </td>

        <td>
          <input type="submit" name="save" value="save">
        </td>
      </tr>

      <tr>
        <td>
          <label for="apellido2">Apellido2</label>
        </td>

        <td>
          <input type="text" name="apellido2">
        </td>

        <td>
          <input type="submit" name="save" value="save">
        </td>
      </tr>

      <tr>
        <td>
          <label for="nacionalidad">Nacionalidad</label>
        </td>

        <td>
          <input type="text" name="nacionalidad">
        </td>

        <td>
          <input type="submit" name="save" value="save">
        </td>
      </tr>

      <tr>
        <td>
          <label for="telefono">Teléfono</label>
        </td>

        <td>
          <input type="" name="telefono">
        </td>

        <td>
          <input type="submit" name="save" value="save">
        </td>
      </tr>
    </table>
    </form>   
</body>
</html>


