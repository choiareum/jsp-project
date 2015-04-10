<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%


String a = request.getParameter("id");
String b = request.getParameter("pwd");

	if(a.equals("test") && b.equals("1234")){
		session.setAttribute("ID", a);
		//out.print("로그인 성공~~~~~~~~~~~");
		response.sendRedirect("main.jsp");
	
		}
	else {
		
		//out.print("로그인 실패~~~~~~~~~");
		response.sendRedirect("loginForm.jsp");
		}

%>
<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>

</body>
</html>    