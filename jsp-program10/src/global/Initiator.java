package global;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Initiator {
	public static CommandFactory factory = new CommandFactory();
	public static Command command;
	public static void init(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		String path = request.getServletPath();
		String directory = path.split("/")[1]; // 패스중에서 경로를 추출한다 => member
		String extendtion = path.split("/")[2]; // 패스중에서 form.do
		String action = extendtion.substring(0, extendtion.indexOf(".")); // 익스텐션을 편집해서 switch case 의 key 값을 추출한다
		String page = request.getParameter("page");
		if (page == null) {
			System.out.println("쿼리"+page);
			command = factory.createCommand(directory, action);
		} else {
			command = factory.createCommand(directory, action , page);
		}
	}
}
