<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	//0. 요청 처리
	
	request.setCharacterEncoding("UTF-8"); //POST 방식일때 한글처리
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	
	
	//1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver"); 
	//oracle.jdbc.driver 패키지이름 , OracleDriver 클래스이름
	
	//2. 데이터 베이스와 연결 , Connect
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	// con=connection객체 서버주소,계정ID,비밀번호 필요
	
	//3. SQL문 실행
	/* String sql = "insert into member values('"+id+"', '"+pwd+"', '"+name+"','"+age+"','"+gender+"', '"+addr+"', sysdate)";
	Statement stmt = con.createStatement();//객체 생성 자바의 new와 같다. 제공하는 함수를 호출
	//연결된 상태에서 SQL실행, 위에 String sql을 실행시켜주기 위해 Statement
	int result = stmt.executeUpdate(sql); //행의 개수가 출력, member.sql에서 실행시키는거와 같다.
	out.print(result); // 우리는 하나니까 1 */
	
	
	// 2) PreparedStatement
	
	String sql = "insert into member values(?,?,?,?,?,?,default)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	
	//바인딩(?와 내거 값을 매핑)
	pstmt.setString(1, id); //1 = 첫번째 물음표 id = String id
	pstmt.setString(2, pwd);
	pstmt.setString(3, name);
	pstmt.setInt(4, Integer.parseInt(age));
	pstmt.setString(5, gender);
	pstmt.setString(6, addr);
	
	int result = pstmt.executeUpdate();
	out.print(result); 
	
	//4. 데이터베이스와 연결 끊음
	
	//stmt.close();
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