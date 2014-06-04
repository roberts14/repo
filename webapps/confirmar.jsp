
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
       String nombre = request.getParameter("user");
       String pass = request.getParameter("pass");
   %>
Nombre : <%=nombre%>  pass : <%=pass%>
<br><br>
<div name=tab>
<table>
<tr>
<td>Imagen</td>
<td>Balon de boley marca Voit color verde $100.00</td>
<td><input type="checkbox" name="balon" value="balon"> Agregar a Carrito<br></td>
</tr>
<tr>
<td>Imagen</td>
<td>Una rica Pera traida del supermercado $2.00</td>
<td><input type="checkbox" name="pera" value="pera"> Agregar a Carrito<br></td>
</tr>

</table>
<div>
</body>
</html>