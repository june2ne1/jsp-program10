<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

	// 세션 속성 member_id 추출
	String member_id = (String)session.getAttribute("member_id");
	
	// member_id가 존재하는 경우
	if(member_id != null) {
		
		session.invalidate();
		
		out.println("<script type=\"text/javascript\">");
		out.println("alert('로그아웃되었습니다.');");
		out.println("location.href=\"session-exam-login-form.jsp\"");
		out.println("</script>");	
		
	} else {
		
		// member_id가 존재하지 않은 경우 출력 내용
		out.println("<script type=\"text/javascript\">");
		out.println("alert('로그인이 필요합니다');");
		out.println("location.href=\"session-exam-login-form.jsp\"");
		out.println("</script>");
		
	}
%>