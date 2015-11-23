package article;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.DispatcherServlet;
import global.ParamMap;
import global.Seperator;

/**
 * Servlet implementation class JQueryController
 */
@WebServlet("/jquery/main.do")
public class ArticleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		Seperator.init(request,response);
		switch (Seperator.command.getAction()) {
		case "main":goPage(request);break;  // get 방식은 이쪽으로 접수
		default:break;
		}
		DispatcherServlet.send(request, response, Seperator.command);
	}
	private void goPage(HttpServletRequest request) {
		switch (Seperator.command.getPage()) {
			case "hello":break;
			case "form_tag":break;
			case "selector":break;
			case "traversing":break;
			case "attr":break;
			case "core":break;
			case "css":break;
			case "effect":break;
			case "data":break;
			case "event":break;
			case "utility":break;
			case "ajax":break;
			default:break;
		}
	}
}
