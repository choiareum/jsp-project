<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>GET</h1> 
<form method="get" action="HelloServlet"> 
	이름 : <Input type="text" name="name"><br>
	아이디 : <Input type="text" name="id"><br>
	비밀번호 : <Input type="password" name="pwd"><br>
	
	<br>
	<input type="submit" value="GET방식으로 전송">
</form>
<a href="HelloServlet">링크로 GET 방식</a>
<hr>


<h1>POST</h1>
<form method="post" action="HelloServlet">
	이름 : <Input type="text" name="name"><br>
	아이디 : <Input type="text" name="id"><br>
	비밀번호 : <Input type="password" name="pwd"><br>
	<input type="submit" value="POST방식으로 전송">
</form>

<hr>
<h1>JSP</h1>
<form method="get" action="test3.jsp">
	이름 : <Input type="text" name="name"><br>
	아이디 : <Input type="text" name="id"><br>
	비밀번호 : <Input type="password" name="pwd"><br>
	<input type="submit" value="JSP으로 전송">
</body>
</html>