package global;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hnb.global.Command;

import member.MemberService;
import member.MemberServiceImpl;

@WebServlet("/main.do")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		MemberService memberService = MemberServiceImpl.getInstance();
		Command command = Seperator.init(request,response); 
		switch (command.getPage()) {
		case "main":
			System.out.println("첫번째 프로세스 진행중 ...");
			break;  
		case "header":break;  
		case "footer":break;  
		case "jumbotron":break;  
		case "auth":
			HttpSession session = request.getSession();
			String userid = request.getParameter("userid");
	        session.setAttribute("member", memberService.searchById(userid));
	        response.addCookie(new Cookie("member.cookie","tomcat_member"));
	        request.setAttribute("member",memberService.searchById(userid));
			break;  
		default:break;
		}
		DispatcherServlet.send(request, response, command);
	}
}
