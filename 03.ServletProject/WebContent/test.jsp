<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>
<!-- test.jsp -->
<h1>request test</h1>
<hr>
<form action="TestServlet">
	<label for="name">이름 : </label> <input type="test" id="name" name="nameabc">
	<!-- 이름: 부분을 클릭해도 활성화 for 다음은 input id와-->
	<input type="password" name="password"><br>
	<input type="radio" name="gender" value="남자"> 남자
	<input type="radio" name="gender" value="여자"> 여자<br>
	
	<input type="submit" value="서버로 제출">
	
</form>

</body>
</html>    