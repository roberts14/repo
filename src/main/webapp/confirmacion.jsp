<html>
<head>
<title>Agregadas a Carrito</title>

<style type="text/css">
#usuario{
	background:#0080ff;
	border:white;
	font-family:arial black;
	font-size:20px;
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
	session=request.getSession(true);
  	String val = (String)session.getAttribute("sec");
	String dir=(String)session.getAttribute("dir");
	String user=(String)session.getAttribute("user");
	String text="";
	String precio="";
if(val=="uno")
{
	String Total="";
	int total=0;
	
   String[] selecciones=request.getParameterValues("seleccion");
   if(selecciones!= null){
			text=text+"<h1>Tu carrito tiene :</h1>";
			
			for (int i=0;i<selecciones.length;i++){
			
			if(selecciones[i].matches("hand")){
			text=text+"Pelota de Handball <br>";	
			total=total+700;
	            }
				
			if(selecciones[i].matches("hand1")){
	           	text=text+"Balon de Futball <br>";
			total=total+700;	
			}
			
			if(selecciones[i].matches("hand2")){
	            	text=text+"Pelota de Voleyball <br>";
			total=total+1000;	
			}
				
			if(selecciones[i].matches("hand3")){
	             	text=text+"Pelota de Tenis <br>";
			total=total+500;
			
			}
			}
			}else{
	    	text=text+"No agrego productos al carrito";
	        
	    }
}else
{
	text=(String)session.getAttribute("texto");
	precio=(String)session.getAttribute("precio");
	session.setAttribute("sec","uno");
}
   %>
<center><img src="#" name="banner" width=900 height=350 border=0></center>
<div id="usuario">
<h5><p align="right">Bienvenido <%=user%></p></h5>
</div>
<br>
   
   <%= text %>
<br><br>
<%=precio%>
 <br><br>
<form action="control" method="post">
<input type="submit" value="Regresar" name="regresar">
<input type="submit" value="Comprar" name="enviar">
</form> 
</body>
</html>