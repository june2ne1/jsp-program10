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
		
	// member_ok 쿠키가 존재하는 경우 기존 쿠키 제거
	if(access_ok) {
		
		for( int i=0; i<cookies.length; i++) {
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		
		out.println("<script type=\"text/javascript\">");
		out.println("alert('로그아웃되었습니다.');");
		out.println("location.href=\"cookie-exam-login-form.jsp\"");
		out.println("</script>");	
		
	} else {
		
		// member_ok 쿠키가 존재하지 않은 경우 출력 내용
		out.println("로그인이 필요합니다");
		
	}
%>