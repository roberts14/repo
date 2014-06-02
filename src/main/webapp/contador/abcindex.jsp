<%-- 
    Document   : index
    Created on : 15/05/2014, 04:27:31 PM
    Author     : Ricardo Alan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! int contador=0 ; %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% contador = contador+1; %>
        <%= "<h1>Contador :" + contador + "visitantes</h1>" %>
		<% 	out.println("tu SO:"+request.getRemoteAddr());%>
		
        
    </body>
</html>
