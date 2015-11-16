package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.Command;
import global.CommandFactory;
import global.DispatcherServlet;
import global.Initiator;
import global.ParamMap;

/**
 * @ 는 annotation 이라고 부르며, 매핑 기능을 함.
 */
@WebServlet({"/member/main.do","/member/mypage.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DispatcherServlet dis = new DispatcherServlet();
	MemberService service = MemberServiceImpl.getInstance();
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		Initiator.init(request,response);
		switch (Initiator.command.getAction()) {
		case "main":goPage();break;  // get 방식은 이쪽으로 접수
		case "mypage" : 
			String userid = ParamMap.getValueBy(request, "userid");
			String password = ParamMap.getValueBy(request, "password");
			MemberVO member = service.login(userid, password);
			request.setAttribute("member", member);
			break;
		default:break;
		}
		dis.send(request, response, Initiator.command);
	}
	private void goPage() {
		switch (Initiator.command.getPage()) {
			case "default":break;
			case "be_member_form":break;
			case "default2":break;
			default:break;
		}
	}
}
