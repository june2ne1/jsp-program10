package member;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.DispatcherServlet;
import global.ParamMap;
import global.Seperator;

/**
 * @ 는 annotation 이라고 부르며, 매핑 기능을 함.
 */
@WebServlet({"/member/main.do","/member/mypage.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberService service = MemberServiceImpl.getInstance();
	
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		Seperator.init(request,response);
		switch (Seperator.command.getAction()) {
		case "main":goPage(request);break;  // get 방식은 이쪽으로 접수
		case "mypage" : 
			String userid = ParamMap.getValueBy(request, "userid");
			String password = ParamMap.getValueBy(request, "password");
			MemberVO member = service.login(userid, password);
			request.setAttribute("member", member);
			break;
		default:break;
		}
		DispatcherServlet.send(request, response, Seperator.command);
	}
	private void goPage(HttpServletRequest request) {
		switch (Seperator.command.getPage()) {
			case "default":break;
			case "be_member_form":break;
			case "admin":
				request.setAttribute("list", null);
				break;
			default:break;
		}
	}
}






