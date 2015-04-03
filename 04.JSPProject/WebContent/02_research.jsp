<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
	<title>설문 조사 결과</title>
	<style type="text/css">
	b{
	 font-size: 16pt;
	}
	</style>
</head>

<body>
	<h2>설문 조사 결과</h2>
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		out.println("이름 : <b>" + name +"</b><br>");
		
		
		String gender = request.getParameter("gender");
		out.println("성별 : ");
		if(gender.equals("male")){
			/* response.sendRedirect("http://www.naver.com"); //리다이렉트 방식  */
			
			out.println("<b>남자</b><br>");  
		}else{
			out.println("<b>여자</b><br>");
		}
		
		
		
		String seasonArr[] = request.getParameterValues("season");
 		if(seasonArr == null)
 			out.print("선택하세요!");
 		else
 			for(int i=0; i<seasonArr.length; i++){
 				out.print(seasonArr[i]);
			}
			/* 			for(String s : season){
				out.print(s); 
			 } */
			
		
	
	%>
		
	<br>
	<b><a href='javascript:history.go(-1)'>다시</a></b>

</body>
</html>    