<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>
	<h1>Error~~~~~~~~~~~~~~~~~~~~~~~~</h1>
	<%= exception.getMessage() %> <!-- 내장객체 exception isErrorPage가 위에 있어야 쓰일수있다. -->
</body>
</html>    