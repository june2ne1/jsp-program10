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
	@SuppressWarnings("unchecked")
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		Command command = Seperator.init(request,response); 
		switch (command.getPage()) {
		case "join": DispatcherServlet.send(request, response, command);break;
		case "login_form":DispatcherServlet.send(request, response, command); break;
		case "login":
		System.out.println("들어옴");
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		JSONObject obj = new JSONObject();
		
		MemberVO vo = service.login(userid, password);
		System.out.println("이름 : "+vo.getName());
		obj.put("result", "success");
		obj.put("name", vo.getName());
		obj.put("userid", vo.getUserid());
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(obj);
		break;
		case "logined":
			String userid2 = request.getParameter("userid");
			System.out.println("로그인드 케이스 진입 "+userid2);
			MemberVO loginedUser = service.searchById(userid2);
			request.setAttribute("member", loginedUser);
			command.setAction("main");
			request.setAttribute("member", service.searchById(userid2));
			DispatcherServlet.send(request, response, command);
			break;
			case "logout": 
				HttpSession session=request.getSession();  
	            session.invalidate();  
	            RequestDispatcher d = request.getRequestDispatcher(Constants.VIEW+"global/main.jsp");
	            d.forward(request, response);
			break;
		default:break;
		}
		
	}
}
