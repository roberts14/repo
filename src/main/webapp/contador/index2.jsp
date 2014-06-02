
<HTML>
<BODY>
   <%
       String nombre = request.getParameter("nombre");
       if (nombre != null)
            session.setAttribute("via.hugo",nombre);
   %>
   Hola, <%=session.getAttribute("via.hugo")%>
   <A HREF="index3.jsp">Confirmar</A>
</BODY>
</HTML>