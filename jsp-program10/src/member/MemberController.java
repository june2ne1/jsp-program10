package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.SpringLayout.Constraints;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

import global.Command;
import global.Constants;
import global.DispatcherServlet;
import global.DispatcherJson;
import global.Seperator;

/**
 * Servlet implementation class JsController
 */
@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberService service = MemberServiceImpl.getInstance();
	String userid,password,name,email,birth,phone,gender,addr;
	MemberVO member = new MemberVO();
	JSONObject obj = new JSONObject();
	Gson gson = new Gson();
	
	@SuppressWarnings("unchecked")
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		Command command = Seperator.init(request,response); 
		HttpSession session=request.getSession(); 
		
		switch (command.getPage()) {
		case "join":
			break;
		case "join_member": 
			System.out.println("조인멤버 진입");
			userid = request.getParameter("userid");
			System.out.println("가입하는 아이디33 :"+userid);
			password = request.getParameter("password");
			System.out.println("가입하는 비번 :"+password);
			name = request.getParameter("name");
			System.out.println("가입하는 이름 :"+name);
			email = request.getParameter("email");
			System.out.println("가입하는 이메일 :"+email);
			birth = request.getParameter("birth");
			phone = request.getParameter("phone");
			gender = request.getParameter("gender");
			addr = request.getParameter("addr");
			
			member.setUserid(userid);
			member.setPassword(password);
			member.setName(name);
			member.setEmail(email);
			member.setBirth(birth);
			member.setPhone(phone);
			member.setGender(gender);
			member.setAddr(addr);
			int result2 = service.join(member);
			if (result2 == 1) {
				System.out.println("회원가입 성공");
				obj.put("result", "success");
				obj.put("name", member.getName());
				DispatcherJson.sendJSONObject(response, obj);
			} else {
				System.out.println("회원가입 실패");
				obj.put("result", "fail");
				DispatcherJson.sendJSONObject(response, obj);
			}
			return;
		case "login_form":
			break;
		case "login":
			userid = request.getParameter("userid");
			password = request.getParameter("password");
			member = service.login(userid, password);
			session.setAttribute("member", member);
			obj.put("result", "success");
			obj.put("name", member.getName());
			obj.put("userid", member.getUserid());
			DispatcherJson.sendJSONObject(response, obj);
			return; // ajax 통과시 return 종료
		case "logined":
			request.setAttribute("member", member);
			command.setAction("main");
			break;
		case "logout": 
            session.invalidate();  
            RequestDispatcher d = request.getRequestDispatcher(Constants.VIEW+"global/main.jsp");
            d.forward(request, response);
            return; // RequestDispatcher 사용때문에 return 종료
		case "mypage": 
			request.setAttribute("member", member);
			break;
		case "detail":
			System.out.println("멤버의 이메일 :"+member.getEmail());
			System.out.println("세션의 이메일 : "+session.getAttribute("member"));
			String json = gson.toJson(session.getAttribute("member"));
			DispatcherJson.sendGson(response, json);
			return; // ajax  
		case "update" : 
			String password = request.getParameter("password");
			String addr = request.getParameter("addr");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			System.out.println("변경된 비번 :"+password);
			System.out.println("변경된 주소 :"+addr);
			System.out.println("변경된 전화번호 :"+phone);
			System.out.println("변경된 이메일 :"+email);
			member.setPassword(password);
			member.setAddr(addr);
			member.setPhone(phone);
			member.setEmail(email);
			int result = service.change(member);
			if (result == 1) {
				System.out.println("변경 성공");
				session.setAttribute("member", member);
				obj.put("userid",member.getUserid());
				DispatcherJson.sendJSONObject(response, obj);
			} else {
				System.out.println("변경 실패");
			}
			return; 
		default:break;
		}
		DispatcherServlet.send(request, response, command);
	}
}
