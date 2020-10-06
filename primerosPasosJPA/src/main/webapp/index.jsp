<%@page import="java.util.Date"%>
<%
	
	Date d = (Date)session.getAttribute("fechahora");
	if(d == null){
		d = new Date(System.currentTimeMillis());
		session.setAttribute("fechahora", d);
	}
%>
<html>
<body>
<h2>Hello World!</h2>
<div>
	<p>Ud llegó a las <b><%=d%></b></p>
	<a href="otraPagina.jsp">Recuerdo que..</a>
</div>
<form action="numeros.jsp" method="post">
	<label for="desde">Desde</label><input id="desde" name="desde"/><br>
	<label for="hasta">Hasta</label><input id="hasta" name="hasta"/><br>
	<input type="submit" value="Enviar"/>
</form>
</body>
</html>
