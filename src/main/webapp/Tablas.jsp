
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#usuario{
	background:#0080ff;
	border:white;
	font-family:arial black;
	font-size:20px;
}

.tab{
	border:2px solid #000;
}

.tab td{
	border:1px solid #000;
	BGCOLOR="grey";
}

body{
	background:#b6b6b6;
}
</style>
</head>
<body>
<div id="usuario">
<%
	String text="";
	String var=request.getParameter("user");
	String nombre;
       	if(var == "")
	{
		text="No se ha iniciado secion";
	}
	else
	{
		nombre=request.getParameter("user");
		text="Bienvenido "+nombre;
	}
   %>
<%=text%>
</div>
<br><br>

<table class="tab">
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
<tr>
<td>Imagen</td>
<td>Flamante bicicleta de montaña con amortiguadores, velocidades en los dos lados del manublio, amortiguadores en llanta delantera y trasera $750</td>
<td><input type="checkbox" name="bici" value="bici"> Agregar a Carrito<br></td>
</tr>
</table>
</body>
</html>