<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	session.removeAttribute("ID");

	session.invalidate(); //세션값들을 한꺼번에 다 지움, remove여러번과 같음
	response.sendRedirect("main.jsp");
%>
<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>

</body>
</html>    