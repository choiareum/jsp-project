<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
<%

	request.setCharacterEncoding("UTF-8"); //POST 방식일때 한글처리
	String id = request.getParameter("id");

	
//1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver"); 
	//oracle.jdbc.driver 패키지이름 , OracleDriver 클래스이름
	
	//2. 데이터 베이스와 연결 , Connect
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	// con=connection객체 서버주소,계정ID,비밀번호 필요
	

	
	//3. sql문 실행
	
	String sql = "delete member where id=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	
	//바인딩(?와 내거 값을 매핑)
	pstmt.setString(1, id); //1 = 첫번째 물음표 id = String id
	
	int result = pstmt.executeUpdate();
	//out.print(result);
	if(result == 1)
		response.sendRedirect("list");
	
	pstmt.close();
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