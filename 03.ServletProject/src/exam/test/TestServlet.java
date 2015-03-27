package exam.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); //이건 입력값이 한글 안깨지게
		response.setContentType("text/html; charset=UTF-8"); //br태그와 출력 한글	
		
		String a = request.getParameter("nameabc"); //값이 하나가 나오는 것들
		String b = request.getParameter("password");
		String c = request.getParameter("gender");
		String d = request.getParameter("mycolor");
		String e = request.getParameter("myEmail");
		String f = request.getParameter("subject");
		String g = request.getParameter("text");
		
		String[] hobby = request.getParameterValues("hobby"); //여러개를 선택하기 때문에
		PrintWriter out = response.getWriter(); //클라이언트쪽에 출력
		out.print("이름 :"+a+"<br>");
		out.print("비밀번호 :"+b+"<br>");
		out.print("성별 : "+c+"<br>");
		out.print("<font color='"+ d +"'>" +d + "</font><br>");
		out.print("내 이메일 : "+e);
		out.print("<br>"+f);
		out.print("<br>"+g);
		
		if(hobby == null)
			out.print("<br> 취미를 선택하세요");
	
		else {
			out.print(hobby.length + "개 선택!");//개수를 찍는다
	
			for(int i=0; i<hobby.length; i++)
				out.print(hobby[i]+"<br>");
			}
		}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
