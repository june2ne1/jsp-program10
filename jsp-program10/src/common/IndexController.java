package common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.Command;
import global.CommandFactory;
import global.Constants;
import global.DispatcherServlet;

/**
 * Servlet implementation class IndexController
 */
@WebServlet({"/form_tag/checkbox.do",
	      "/form_tag/file_input.do",
	      "/form_tag/radio.do",
	      "/form_tag/text.do",
	      "/form_tag/select.do",
	      "/form_tag/checkbox_proc.do"})
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	CommandFactory factory = new CommandFactory();
	Command command;
	DispatcherServlet dis = new DispatcherServlet();
	public void init(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String path = request.getServletPath();
		String directory = path.split("/")[1]; // 패스중에서 경로를 추출한다 => member
		String extendtion = path.split("/")[2]; // 패스중에서 form.do
		String action = extendtion.substring(0, extendtion.indexOf(".")); // 익스텐션을 편집해서 switch case 의 key 값을 추출한다
		command = factory.createCommand(directory, action);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		init(request,response);
		switch (command.getAction()) {
		case "file_input":
			dis.send(request, response, command);
			break;
		case "checkbox":
			dis.send(request, response, command);
			break;	
			
		default:
			
			break;
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		init(request,response);
		switch (command.getAction()) {
		case "checkbox_proc":
			System.out.println("체크박스 프로세스 진입");
			/*Enumeration<String> params = request.getParameterNames();
			while (params.hasMoreElements()) {
				String str = params.nextElement();
				System.out.println("파람이름 : "+str);
				String val = request.getParameter(str);
				System.out.println("파람밸류 : "+val);
			}*/
			Map paramMap = request.getParameterMap();
			String[] names = (String[]) paramMap.get("name");
			String name = names[0];
			for (int i = 0; i < names.length; i++) {
				if (names[i].equals("name")) {
					name = name.concat("name");
				}
			}
			String[] subjects = (String[]) paramMap.get("subject");
			System.out.println("넘어온 과목들 : "+subjects.length);
			String subject = "";
			for (int i = 0; i < subjects.length; i++) {
				if (subjects[i].equals("asp")) {
					subject = subject.concat("ASP프로그래밍,"); 
					continue;
				}
				if (subjects[i].equals("jsp")) {
					subject = subject.concat("JSP프로그래밍,"); 
					continue;
				}
				if (subjects[i].equals("php")) {
					subject = subject.concat("PHP프로그래밍,"); 
					continue;
				}
				if (subjects[i].equals("java")) {
					subject = subject.concat("Java프로그래밍,"); 
					continue;
				}
			}
			System.out.println(name+ "가 선택한 과목 : "+subject);
			RequestDispatcher dis3 = 
				request.getRequestDispatcher(command.getView());
			dis3.forward(request, response);
			break;	
		default:
			break;
		}
	}

}
