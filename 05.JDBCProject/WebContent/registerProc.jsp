<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	out.print(id);
	//1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver"); //oracle.jdbc.driver 패키지이름
	
	//2. 데이터 베이스와 연결 , Connect
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	// con=connection객체
	
	//3. SQL문 실행
	String sql = "insert into member values('"+id+"', '"+pwd+"', '홍길동', 20, '1', '서울시', sysdate)";
	Statement stmt = con.createStatement();
	int result = stmt.executeUpdate(sql); //행의 개수가 출력
	out.print(result); // 우리는 하나니까 1
	//4. 데이터베이스와 연결 끊음
	
	stmt.close();
	con.close();


%>

<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>

</body>
</html>    