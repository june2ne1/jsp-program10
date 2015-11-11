<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("euc-kr");

	// 데이터베이스에서 추출한 아이디와 패스워드
	String db_id = "korea";
	String db_pw = "koreapass";
	
	// 사용자가 입력한 아이디와 패스워드 추출
	String user_id = request.getParameter("userid");
	String user_pw = request.getParameter("userpw");
	
	// 사용자의 계정과 데이터베이스의 계정을 비교
	if( (db_id.equals(user_id)) && (db_pw.equals(user_pw)) ) {
		
		// 아이디와 패스워드가 일치할 경우 쿠키 생성
		Cookie mycookie = new Cookie("member_ok",user_id);
		response.addCookie(mycookie);
		
		out.println("<B>" + user_id + "</B> 님의 방문을 환영합니다.<HR>");
		out.println("<A HREF=\"cookie-exam-mypage.jsp\">마이페이지</A>");
		out.println("<BR>");
		out.println("<A HREF=\"cookie-exam-logout.jsp\">로그아웃</A>");
		
	} else {
	
		// 아이디나 패스워드가 다를 경우 처리
		out.println("<script type=\"text/javascript\">");
		out.println("alert('아이디나 패스워드가 다릅니다');");
		out.println("history.back();");
		out.println("</script>");
		
	}


%>