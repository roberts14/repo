<html>
<head>
<meta http-equiv="Content-Type" conten="text/html; charset=utf-8">
<style type="text/css">
#caja {
	background:#f0f0f0;
	width:250px;
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
	width:230px;
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
<div id="caja">
<h1>Login</h1>
<form action="control" method="post">
	<input type="text" name="user"/>
	<input type="password" name="pass"/>
	<input type="submit" value="Login" name="login"/>
	
	<input type="submit" value="Entrar sin logear" name="sin"/>
</form>
</div>
</body>

</html>