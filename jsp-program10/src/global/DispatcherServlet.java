package global;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet {
	public void send(HttpServletRequest request, 
			HttpServletResponse response,
			Command command)throws ServletException, IOException{
		System.out.println("뷰 보기 : "+command.getView());
		RequestDispatcher dis = 
				request.getRequestDispatcher(command.getView());
			dis.forward(request, response);
	}
}
