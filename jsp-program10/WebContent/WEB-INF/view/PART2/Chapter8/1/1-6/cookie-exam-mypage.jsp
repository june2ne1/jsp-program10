<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	// 클라이언트로 전달된 쿠키 정보 추출
	Cookie[] cookies = request.getCookies();

	Boolean access_ok = false;
	
	// 로그인 과정에서 생성한 member_ok 쿠키가 존재하는지 조사
	if( (cookies != null) && (cookies.length >0) ) {
		for( int i=0; i<cookies.length; i++) {
			if((cookies[i].getName()).equals("member_ok")) {
				access_ok = true;
			}
		}
	}
	
	// member_ok 쿠키가 존재하는 경우 출력 내용
	if(access_ok) {
		
		out.println("마이 페이지의 내용입니다");
		out.println("<BR>");
		out.println("<A HREF=\"cookie-exam-logout.jsp\">로그아웃</A>");	
		
	} else {
		
		// member_ok 쿠키가 존재하지 않은 경우 출력 내용
		out.println("로그인이 필요합니다");
		
	}
%>