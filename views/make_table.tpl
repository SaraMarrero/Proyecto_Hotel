%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)

% include('header.tpl')

<p>Las clientes de hotel son los siguientes:</p>

<table border="1">
<tr>
  <th>DNI</th>
  <th>Nombre</th>
  <th>Apellido1</th>
  <th>Apellido2</th>
  <th>Nacionalidad</th>
  <th>Teléfono</th>
  <th>Acciones</th>
</tr>

%for row in rows:
        <tr>
        %for col in row:
            <td>{{col}}</td>
        %end
            <td>
                
                <input type="submit" name="edit" value="editar" formaction="/edit">
            
                <input type="submit" name="delete" value="Borrar" formaction="/app1">
            </td>
        </tr>
    %end
</table>
</body>
</html>
