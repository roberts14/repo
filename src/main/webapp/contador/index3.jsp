 <HTML>
<BODY>
   <%
      String nombre = (String)session.getAttribute("viagoogle.nombre");
   %>
   Felicidades <%=nombre%>, soy una variable de session
</FORM>
</BODY>
</HTML>