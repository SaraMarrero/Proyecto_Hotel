%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)

% include('header.tpl')
<button><a href="/index">Salir</a></button>
<h3>PREMIUM HOTEL</h3>
<p>Los datos de la tabla elegida son los siguientes:</p>

<table border="1">
    %for row in rows:
        <tr>
        %for col in row:
            <td>{{col}}</td>
        %end
        </tr>
    %end
</table>
</body>
</html>
