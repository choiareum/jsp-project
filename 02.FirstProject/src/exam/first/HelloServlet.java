package exam.first;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet") /* @Override같은  annotation, URL Mapping(servlet구분시킴*/
public class HelloServlet/*클래스 이름*/ extends/*오른쪽 클래스를 상속*/ HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet()/* 생성자*/ {
        super(); /*부모생성자 호출*/
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet/*()가 있으면 메소드 함수 */(HttpServletRequest request/*Get방식으로 호출하면*/, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8"); //이건 입력값이 한글 안깨지게
		response.setContentType("text/html; charset=UTF-8"); //응답을 html방식으로  "text(대분류)/html(소분류) MIME타입
		
		PrintWriter out = response.getWriter();/*get으로 시작되는것은 리턴함수가 있다. set은 매개변수가 있다.*/
		
		String name = request.getParameter("name"); /*요청한 nameabc의 값을 출력*/
		String id = request.getParameter("id"); 
		String pwd = request.getParameter("pwd"); 
		
		out.print("Hello-GET\n");
		out.print("이름 : "+name+"<br>"); /*srting name 출력*/
		out.print("아이디 : "+id+"<br>");
		out.print("비밀번호 : "+pwd+"<br>");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request/* POST 방식으로 호출하면 */, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); //이건 입력값이 한글 안깨지게
		response.setContentType("text/html; charset=UTF-8");//br태그가 되기 위하여, charset=꼭 붙이고 써야 한글이 안깨짐, 근데 입력값은 깨짐
		
		PrintWriter out = response.getWriter();
		
		out.print("Hello-POST"+"<br>");
		String name = request.getParameter("name"); /*요청한 nameabc의 값을 출력*/
		String id = request.getParameter("id"); 
		String pwd = request.getParameter("pwd"); 
		
		//out.pring("<html>");
		out.print("이름 : "+name+"<br>"); /*srting name 출력*/
		out.print("아이디 : "+id+"<br>");
		out.print("비밀번호 : "+pwd+"<br>");
		//out.print("</html>"); /*br태그가 되기 위하여*/
	}

}
