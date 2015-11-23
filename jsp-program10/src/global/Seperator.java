package global;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Seperator {
	public static CommandFactory factory = new CommandFactory();
	public static Command command;
	public static Command init(HttpServletRequest request, HttpServletResponse response) {
		String path = request.getServletPath();
		String temp = path.split("/")[1];                      // 패스중에서 member.do
		String action = temp.substring(0, temp.indexOf("."));  // member
		if (action.equals("main")) {
			action = "global";
		}
		String page = request.getParameter("page");
		if (page == null) {
			page = "main";
		}
		return factory.createCommand(action , page);
	}
}
