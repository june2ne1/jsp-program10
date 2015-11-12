package common;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.Command;
import global.CommandFactory;
import global.DispatcherServlet;

/**
 * Servlet implementation class IndexController
 */
@WebServlet({"/form_tag/main.do",
	      "/form_tag/checkbox.do"})
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommandFactory factory = new CommandFactory();
	Command command;
	DispatcherServlet dis = new DispatcherServlet();
	public void action(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		switch (command.getAction()) {
			case "main": break;
			case "file_input":break;
			case "checkbox":
				System.out.println("체크박스 프로세스 진입");
				
				Map paramMap = request.getParameterMap();
				String[] names = (String[]) paramMap.get("name");
				String name = names[0];
				String[] ages = (String[]) paramMap.get("age");
				String age = ages[0];
				String addr = ((String[])paramMap.get("addr"))[0];
				String[] subjects = (String[]) paramMap.get("subject");
				System.out.println("넘어온 과목들 : "+subjects.length);
				StringBuffer subject = new StringBuffer();
				for (int i = 0; i < subjects.length; i++) {
					if (subjects[i].equals("asp")) {
						subject = subject.append("ASP프로그래밍,"); 
						continue;
					}
					if (subjects[i].equals("jsp")) {
						subject = subject.append("JSP프로그래밍,"); 
						continue;
					}
					if (subjects[i].equals("php")) {
						subject = subject.append("PHP프로그래밍,"); 
						continue;
					}
					if (subjects[i].equals("java")) {
						subject = subject.append("Java프로그래밍,"); 
						continue;
					}
				}
				request.setAttribute("name", name);
				request.setAttribute("age", age);
				request.setAttribute("subject", subject); 
				break;	
			default:
				break;
		}
		dis.send(request, response, command);
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
