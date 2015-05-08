<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="exam.dao.*, exam.dto.*" %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	
	MemberDAO dao = new MemberDAO();
	
	Member member = new Member();
	
	member.setId(id);
	member.setPwd(pwd);
	member.setAge(Integer.parseInt(age));
	member.setName(name);
	member.setAddr(addr);
	member.setGender(gender);
	dao.insertMember(member); //호출
	


%>

<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>

</body>
</html>    