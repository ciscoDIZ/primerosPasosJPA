<%@page import="java.util.ArrayList"%>
<%@page import="java.util.InputMismatchException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Integer num=null;
   	 	Integer desde=null;
   	 	Integer hasta=null;
    	try{
    		num = Integer.parseInt((String)request.getParameter("n")!=null?(String)request.getParameter("n"):"0");
    		desde = Integer.parseInt((String)request.getParameter("desde"));
    		hasta =Integer.parseInt((String)request.getParameter("hasta"));
    	}catch(InputMismatchException e){
    		out.print("debe indtroducir número "+e);
    	}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Números</title>
</head>
<body>
	
	<%
		if(num != 0){
			out.print("<h3>Los primeros n numeros:</h3>");
			for(int i = desde; i < num; i++){
				out.print("<p>"+ (i+1)+"</p>");				
			}
		}
		if(desde != null && hasta != null){
			out.print("<h3>Los primeros n numeros:</h3>");
			for(int i = desde;i < hasta; i++){
				out.print("<p>"+ (i+1)+"</p>");	
			}
		}
	%>
</body>
</html>