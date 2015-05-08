package exam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MemberDAO {

	//생성자(함수 method) MemberDAO를 new할때 자동 호출
	public MemberDAO(){
		System.out.println("생성자");
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
	
	}
	
	
	
	//회원가입
	
	public void insertMember(){
		
		System.out.println("회원가입");
		
	}
	
	//회원삭제
	
	public void deleteMember(){
		
		System.out.println("회원삭제");
		
	}
	
	
	
}
