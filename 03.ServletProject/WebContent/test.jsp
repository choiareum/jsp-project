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
	<label for="name">이름 : </label> <input type="text" id="name" name="nameabc">
	<!-- 이름: 부분을 클릭해도 활성화 for 다음은 input id와-->
	<label for="pwd">비밀번호 : </label><input type="password" id="pwd" name="password"><br>
	<input type="radio" name="gender" value="남자"> 남자
	<input type="radio" name="gender" value="여자"> 여자<br>
	
	<input type="checkbox" name="hobby" value="축구"> 축구
	<input type="checkbox" name="hobby" value="야구"> 야구
	<input type="checkbox" name="hobby" value="농구"> 농구<br>	
	
	<input type="color" name="mycolor"><br>
	<input type="email" name="myEmail">
	<input type="submit" value="서버로 제출">
	
</form>

</body>
</html>    