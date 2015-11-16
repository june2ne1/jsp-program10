package bank;

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

@WebServlet({"/bank/main.do","/bank/open.do","/bank/remaind.do"})
public class BankController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	CommandFactory factory = new CommandFactory();
	Command command;
	DispatcherServlet dis = new DispatcherServlet();
	BankService service = BankServiceImpl.getInstance();
	private void action(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		switch (command.getAction()) {
		case "main":
			goPage(request);
			break;
		case "remaind": 
			String userid = ParamMap.getValueBy(request, "userid");
			service.search();
			break;
		case "open":
			String name = ParamMap.getValueBy(request, "name");
			String password = ParamMap.getValueBy(request, "password");
			request.setAttribute("msg", service.open(name, password));
			command.setAction("mypage");
			command.setView(); 
			// 자동으로 분리하면 open.jsp 로 가야하나 강제로 guest.jsp 로 보내기 위해서.
			break;
		default:
			break;
		}
		dis.send(request, response, command);
	}

	private void goPage(HttpServletRequest request) {
		switch (command.getPage()) {
		case "bank":break;
		case "guest":break;
		case "admin":break;
		case "admin_result":
			String table = ParamMap.getValueBy(request, "table_name");
			String column = ParamMap.getValueBy(request, "column");
			String pk = ParamMap.getValueBy(request, "pk");
			System.out.println("테이블명 : "+table); 
			
			service.makeTable(table, column, pk);
			break;
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
