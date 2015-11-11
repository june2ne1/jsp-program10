package grade;

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/score.do")
public class GradeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GradeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		String name = request.getParameter("name");
		String score = request.getParameter("score");
		System.out.println("번호 : "+num);
		System.out.println("이름 : "+name);
		System.out.println("점수 : "+score);
		request.setAttribute("num", num);
		request.setAttribute("name", name);
		request.setAttribute("score", score);
		
		RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/chap6/score.jsp");
		dis.forward(request, response);
	}

}
