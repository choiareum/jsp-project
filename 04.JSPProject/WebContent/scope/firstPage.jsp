<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//1.page 영역
	pageContext.setAttribute("page","pageScope"); //page영역에 "page"이름으로 "pageScope"값을 저장
	//필요할때 getAttribute로 꺼내오면 된다. 같은 페이지에선 유효

	//2.request 영역
	request.setAttribute("request","requestScope");

	//3.session 영역
	session.setAttribute("session","sessionScope");
	
	//4.application 영역
	application.setAttribute("application","applicationScope");
	
	
	//페이지 이동
	//1. 리다이렉트 방식
	response.sendRedirect("secondPage.jsp");	
	
	//2. 포워드 방식
	//RequestDispatcher requestDispatcher =
		//request.getRequestDispatcher("secondPage.jsp");
	
	//requestDispatcher.forward(request, response);
%>
<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>
<h1>첫번째 페이지</h1>
<hr>
page 영역 : <%= pageContext.getAttribute("page") %> <br>
request 영역 : <%= request.getAttribute("request") %> <br>
session 영역 : <%= session.getAttribute("session") %> <br>
application 영역 : <%= application.getAttribute("application") %> <br>
</body>
</html>    