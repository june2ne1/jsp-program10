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
import global.ParamMap;

/**
 * @ 는 annotation 이라고 부르며, 매핑 기능을 함.
 */
@WebServlet({"/member/main.do","/member/mypage.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommandFactory factory = new CommandFactory();
	Command command;
	DispatcherServlet dis = new DispatcherServlet();
	MemberService service = MemberServiceImpl.getInstance();
	private void action(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		switch (command.getAction()) {
		case "main":goPage();break;  // get 방식은 이쪽으로 접수
		case "mypage" : 
			String userid = ParamMap.getValueBy(request, "userid");
			String password = ParamMap.getValueBy(request, "password");
			MemberVO member = service.login(userid, password);
			request.setAttribute("member", member);
			break;
		default:break;
		}
		dis.send(request, response, command);
	}
	
	private void goPage() {
		switch (command.getPage()) {
			case "default":break;
			case "be_member_form":break;
			case "default2":break;
			default:break;
		}
		
	}

	public void initPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String path = request.getServletPath();
		String directory = path.split("/")[1]; // 패스중에서 경로를 추출한다 => member
		String extendtion = path.split("/")[2]; // 패스중에서 form.do
		String action = extendtion.substring(0, extendtion.indexOf(".")); // 익스텐션을 편집해서 switch case 의 key 값을 추출한다
		command = factory.createCommand(directory, action);
	}
	public void initGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String path = request.getServletPath();
		String directory = path.split("/")[1]; // 패스중에서 경로를 추출한다 => member
		String extendtion = path.split("/")[2]; // 패스중에서 form.do
		String action = extendtion.substring(0, extendtion.indexOf(".")); // 익스텐션을 편집해서 switch case 의 key 값을 추출한다
		String page = request.getParameter("page");
		System.out.println("쿼리"+page);
		command = factory.createCommand(directory, action , page);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("GET 방식 접근");
		initGet(request,response);
		this.action(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("POST 방식 접근");
		initPost(request,response);
		this.action(request, response);
	}
}
