<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>설문조사</title>
	<style>
		table{
			border-collapse:collapse;
			border:2px solid red
		}
	</style>
</head>

<body>
<h2> 설문 조사 </h2> <hr>
<form action="02_research.jsp" method="post">
<table border="1">
	<tr>
		<td>이름</td>
		<td>
			<input type="text" name="name" >
	</tr>
	<tr>
		<td>성별</td>
		<td>
			<input type="radio" name="gender" value="male"> 남자
			<input type="radio" name="gender" value="female"> 여자
		</td>
		
	</tr>
	<tr>
		<td>계절
		</td>
		
		<td> 
			<input type="checkbox" name="season" value="1">봄
			<input type="checkbox" name="season" value="2">여름
			<input type="checkbox" name="season" value="3">가을
			<input type="checkbox" name="season" value="4">겨울
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="전송">
		<input type="reset" value="취소">
	</tr>
	

</table>
</form>

</body>
</html>    