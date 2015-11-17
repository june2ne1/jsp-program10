package global;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Seperator {
	public static CommandFactory factory = new CommandFactory();
	public static Command command;
	public static void init(HttpServletRequest request, HttpServletResponse response) {
		String path = request.getServletPath();
		String directory = path.split("/")[1]; // 패스중에서 경로를 추출한다 => member
		String extendtion = path.split("/")[2]; // 패스중에서 form.do
		String action = extendtion.substring(0, extendtion.indexOf(".")); 
		String page = request.getParameter("page");
		
		if (page!= null) {
			command = factory.createCommand(directory, action , page);
		} else {
			command = factory.createCommand(directory, action);
		}
		
	}
}
