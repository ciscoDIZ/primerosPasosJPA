<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Date d = (Date) session.getAttribute("fechahora");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recuerdo que...</title>
</head>
<body>
	<p>Yo recuerdo que usted llegó a las <b><%=d%></b></p>
</body>
</html>