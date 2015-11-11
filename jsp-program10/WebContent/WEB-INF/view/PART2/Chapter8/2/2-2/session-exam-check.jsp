<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	// 세션 속성 member_id 추출
	String member_id = (String)session.getAttribute("member_id");
	
	// member_id가 존재하는 경우 출력 내용
	if(member_id != null) {
		
		out.println("세션이 존재해 정상적으로 출력됩니다.");
		out.println("<BR>");
		out.println("<A HREF=\"session-exam-logout.jsp\">로그아웃</A>");	
		
	} else {
		
		// member_id가 존재하지 않은 경우 출력 내용
		out.println("<script type=\"text/javascript\">");
		out.println("alert('로그인이 필요합니다');");
		out.println("location.href=\"session-exam-login-form.jsp\"");
		out.println("</script>");
		
	}
%>