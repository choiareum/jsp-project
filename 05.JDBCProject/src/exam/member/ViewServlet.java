package exam.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/view")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out = response.getWriter();
		
		out.print("<h1>회원 상세페이지</h1><hr>");
		
		String id = request.getParameter("id");
		//1. JDBC 드라이버 로드
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				//oracle.jdbc.driver 패키지이름 , OracleDriver 클래스이름
				
				//2. 데이터 베이스와 연결 , Connect
				Connection con = null;
				try {
					con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		//out.print(id);
				
		//3. SQL문 실행
		PreparedStatement pstmt = null;				
		String sql = "select * from member where id=?";

		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id); //바인딩 물음표가 하나니까 1
			ResultSet rs = pstmt.executeQuery(); //select 문장이니까
			if(rs.next()){
				
				out.print("<table border=1>");
				out.print("<tr>");
				out.print("<td>아이디</td>");
				out.print("<td>"+rs.getString("id")+"</td>");
				out.print("</tr>");
				
				out.print("<tr>");
				out.print("<td>이름</td>");
				out.print("<td>"+rs.getString("name")+"</td>");
				out.print("</tr>");
				
				out.print("<tr>");
				out.print("<td>주소</td>");
				out.print("<td>"+rs.getString("addr")+"</td>");
				out.print("</tr>");
				
				out.print("<tr>");
				out.print("<td>성별</td>");
				out.print("<td>"+rs.getString("gender")+"</td>");
				out.print("</tr>");
				
				out.print("<tr>");
				out.print("<td>나이</td>");
				out.print("<td>"+rs.getInt("age")+"</td>");
				out.print("</tr>");
				
				
				out.print("</table>");
				
				out.print("<a href='delete.jsp?id=" + rs.getString("id") + "'>삭제</a>");
				
				
				
				
				
				
			}		
		} catch (SQLException e){
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
