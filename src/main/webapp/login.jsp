<html>
<head>
<meta http-equiv="Content-Type" conten="text/html; charset=utf-8">
<style type="text/css">
#caja {
	background:#f0f0f0;
	width:200px;
	border:1px solid white;
	margin:200px auto;
	padding:1em;
	border-radius:10px;
}

h1{
	font-family:arial;
	color:#0080ff;
}

input[type=text],input[type=password]{
	margin:0 0 1em 0;
	width:200px;
	border:0px;
	padding:1em;
	border-radius:3px;
}

input[type=submit],form a{
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

body{
	background:#b6b6b6;
}
</style>
</head>
<body>

<%
	session=request.getSession(true);
	String text="";
	String precio="";
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
	session.setAttribute("texto",text);
	session.setAttribute("precio",precio);
%>

<div id="caja">
<h1>Login</h1>
<form action="control" method="post">
	<input type="text" name="user"/>
	<input type="password" name="pass"/>
	<input type="submit" value="Login" name="logprinc"/>
	<input type="submit" value="Registrar" name="registrar"/>
</form>
</div>
</body>

</html>