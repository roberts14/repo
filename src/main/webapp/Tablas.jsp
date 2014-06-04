
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
input[type=submit]{
	padding:1em;
	background:#0080ff;
	border=none;
	color:white;
	font-family:arial black;
	font-size:14px;
	border-radius:3px;
	margin:auto;
}
input[type=submit]:hover{
	background:#0040ff;
	cursor:pointer;
}
</style>

<script> 
//creo array de imágenes 
array_imagen = new Array(4) 
array_imagen[0] = new Image(1000,350) 
array_imagen[0].src = "Images/banner.png" 
array_imagen[1] = new Image(1000,350)  
array_imagen[1].src = "Images/banner1.png"
array_imagen[2] = new Image(1000,350)  
array_imagen[2].src = "Images/banner.png"
array_imagen[3] = new Image(1000,350)   
array_imagen[3].src = "Images/banner2.png"

//variable para llevar la cuenta de la imagen siguiente 
contador = 0 

//función para rotar el banner 
function alternar_banner(){ 
    window.document["banner"].src = array_imagen[contador].src 
    contador ++ 
    contador = contador % array_imagen.length 
    setTimeout("alternar_banner()",3000) 
} </script> 
</head>
<body onload="alternar_banner()">

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
		session=request.getSession(true);
		nombre=(String)session.getAttribute("user");
		text="Bienvenido "+nombre;
	}
   %>
<center><img src="#" name="banner" width=900 height=350 border=0></center><div id="usuario">
<h5><p align="right"><%=text%></p></h5>
</div>
<br>
<form  name="f2"  action="control" method="post">

<TABLE WIDTH=1300 HEIGHT=300 BORDER=16 class="tab">
<tr>
  <td><img onclick="javascript:this.width=250;this.height=200" ondblclick="javascript:this.width=200;this.height=160" src="Images\hand.jpg" width="200" height="160"/></td>
  <td><strong><p><font size=5>Pelota de handball<br>Marca: Nike</br><br>Precio: $ 700</br></br> </font></p></strong></td>
  <td><strong><p><p><input type="checkbox" name="seleccion" value="hand">Agregar a carrito</p></p></strong></td>
</tr>

<tr>
	<td><img onclick="javascript:this.width=250;this.height=200" ondblclick="javascript:this.width=200;this.height=160" src="Images\fut.png" width="200" height="160" alt="balon_baseball"></td>
	<td><strong><p><font size=5>Balon de futball<br>Marca: Nike</br><br>Precio: $ 700</br> </font></p></strong></td>
	<td><strong><p><p><input type="checkbox" name="seleccion" value="hand1">Agregar a carrito</p></p></strong></td>
</tr>
<tr>
	<td><img onclick="javascript:this.width=250;this.height=200" ondblclick="javascript:this.width=200;this.height=160" src="Images\pelota_inteligente.jpg" width="200" height="160" alt="balon_vole"></td>
	<td><strong><p><font size=5>Pelota de Voleyball<br>Marca: Molten</br><br>Precio: $ 1000</br> </font></p></strong></td>
	<td><strong><p><p><input type="checkbox" name="seleccion" value="hand2">Agregar a carrito</p></p></strong></td>
</tr>

<tr>
	<td><img onclick="javascript:this.width=250;this.height=200" ondblclick="javascript:this.width=200;this.height=160" src="Images\tenis.jpg" width="200" height="160" alt="balon_tenis"></td>
	<td><strong><p><font size=5>Pelota de Tenis<br>Marca: Pirma</br><br>Precio: $ 500</br> </font></p></strong></td>
	<td><strong><p><p><input type="checkbox" name="seleccion" value="hand3">Agregar a carrito</p></p></strong></td>
</tr>
</TABLE>			
    <input type="submit" value="Comprar" name="comprar">
</form>
</body>
</html>