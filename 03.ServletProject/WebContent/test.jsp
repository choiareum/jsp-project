<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
	<style>
		body{
			background-image:url("055.gif");
			background-repeat:no-repeat;
			background-attachment:fixed; /*배경 사진 고정*/
		}
		input, select,textarea{
			border: gold 1pt solid;
			color:white;
			font-size:100px;
			background-color:black;
			}
			
			
	</style>


	<script>
	
		function gofunc(){
			
			alert("Hello JavaScript!")
			
		}
	
	</script><!-- 자바 스크립트 넣기 -->
<!-- border 색상, 두께, 선  dashed 점선-->
<!--body가 배경화면, 반복 설정만 가능-->

</head>

<body>
<!-- test.jsp -->
<h1>request test</h1>
<hr>
<form action="TestServlet" onsubmit="return gofunc()"><!-- 서브밋 버튼을 누르면 gofunc함수가 호출 -->
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
	
	<select name="subject">
		<option value="java">Java</option>
		<option value="jsp">JSP </option>
		<option value="html">HTML</option>	
	</select> <br>
	
	
	<textarea rows="20" cols="30" name="text">
	</textarea> <!-- 행 / 칸글쓰기 공간 -->
	
	
	<input type="submit" value="서버로 제출">
	
</form>

</body>
</html>    