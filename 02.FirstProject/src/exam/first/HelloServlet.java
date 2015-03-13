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
@WebServlet("*.first") /* @Override같은 annotation*/
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
		PrintWriter out = response.getWriter();/*get으로 시작되는것은 리턴함수가 있다. set은 매개변수가 있다.*/
		
		out.print("Hello");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request/* POST 방식으로 호출하면 */, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
