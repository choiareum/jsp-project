<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ page errorPage="error.jsp" %>    
    

<!DOCTYPE html>
<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>
<%= str %>
<%= abs(-4) %>
<%= 2/0 %>
<%
	File f = new File("abc.txt");

%>
<%!

	String str = "Hello";
	
	public int abs(int n){
		if(n < 0)
			n = -n;
		
		return n;
		
	}
%>
</body>
</html>    