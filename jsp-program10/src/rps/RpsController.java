package rps;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import global.Command;
import global.CommandFactory;
import global.DispatcherServlet;
import global.ParamMap;
import member.MemberVO;

@WebServlet("/rps/main.do")
public class RpsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommandFactory factory = new CommandFactory();
	Command command;
	DispatcherServlet dis = new DispatcherServlet();
	RpsService service = RpsServiceImpl.getInstance();
	private void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		switch (command.getAction()) {
		case "main":
			System.out.println("== 메인 진입 ==");
			String loginedID = (String) session.getAttribute("LOGINED_ID");
			System.out.println("로그인한 아이디"+loginedID);
			this.goPage(request, command.getPage());
			break;
		default:
			break;
		}
		dis.send(request, response, command);
	}

	public void goPage(HttpServletRequest request, String page) {
		switch (page) {
		case "rps":break; // page 가 rps 면 단순 이동.
		case "rps_result": 
			String userRps = ParamMap.getValueBy(request, "rps");
			Rps rps = new Rps();
			rps.setComVal();
			int userVal = 0;
			switch (userRps) {
			case "가위": userVal = 1; break;
			case "바위": userVal = 2;break;
			case "보": userVal = 3;break;
			default:break;
				
			}
			request.setAttribute("result", service.playGame(userVal, rps.getComVal()));
			break;

		default:break;
		
		}
	}

	public void initPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getServletPath();
		String directory = path.split("/")[1]; // 패스중에서 경로를 추출한다 => member
		String extendtion = path.split("/")[2]; // 패스중에서 form.do
		String action = extendtion.substring(0, extendtion.indexOf(".")); 
		command = factory.createCommand(directory, action);
	}

	public void initGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		String directory = path.split("/")[1]; // 패스중에서 경로를 추출한다 => member
		String extendtion = path.split("/")[2]; // 패스중에서 form.do
		String action = extendtion.substring(0, extendtion.indexOf(".")); 
		String page = request.getParameter("page");
		command = factory.createCommand(directory, action, page);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("GET 방식 접근");
		this.initGet(request, response);
		this.action(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("POST 방식 접근");
		initPost(request, response);
		this.action(request, response);
	}
}
