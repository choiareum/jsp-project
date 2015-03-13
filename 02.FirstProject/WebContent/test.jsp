<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<font color="red">
<%
	out.print("hello");

%>
</font> <!-- html 언어로 -->
<br>

<%
	out.print("<font color='blue'>"+"최아름"+"</font>");	
%> <!-- jsp언어로 -->
</body>
</html>