package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.SpringLayout.Constraints;

import org.json.simple.JSONObject;

import global.Command;
import global.Constants;
import global.DispatcherServlet;
import global.Seperator;

/**
 * Servlet implementation class JsController
 */
@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberService service = MemberServiceImpl.getInstance();
	String userid;
	MemberVO member = new MemberVO();
	JSONObject obj = new JSONObject();
	@SuppressWarnings("unchecked")
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		Command command = Seperator.init(request,response); 
		switch (command.getPage()) {
		case "join": 
			break;
		case "login_form":
			break;
		case "login":
			System.out.println("들어옴");
			userid = request.getParameter("userid");
			String password = request.getParameter("password");
			member = service.login(userid, password);
			System.out.println("이름 : "+member.getName());
			obj.put("result", "success");
			obj.put("name", member.getName());
			obj.put("userid", member.getUserid());
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(obj);
			return; // ajax 통과시 return 종료
		case "logined":
			userid = request.getParameter("userid");
			System.out.println("로그인드 케이스 진입 "+userid);
			MemberVO loginedUser = service.searchById(userid);
			request.setAttribute("member", loginedUser);
			command.setAction("main");
			request.setAttribute("member", service.searchById(userid));
			break;
		case "logout": 
			HttpSession session=request.getSession();  
            session.invalidate();  
            RequestDispatcher d = request.getRequestDispatcher(Constants.VIEW+"global/main.jsp");
            d.forward(request, response);
            return; // RequestDispatcher 사용때문에 return 종료
		case "mypage": 
			userid = request.getParameter("userid");
			System.out.println("로그인드 케이스 진입 "+userid);
			member = service.searchById(userid);
			request.setAttribute("member", member);
			break;
		case "detail":
			System.out.println("들어옴");
			userid = request.getParameter("userid");
			member = service.searchById(userid);
			System.out.println("이름 : "+member.getName());
			obj.put("result", "success");
			obj.put("name", member.getName());
			obj.put("userid", member.getUserid());
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(obj);
			return; // ajax  
		default:break;
		}
		DispatcherServlet.send(request, response, command);
		
	}
}
