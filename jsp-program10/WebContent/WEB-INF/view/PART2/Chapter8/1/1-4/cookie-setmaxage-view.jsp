<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%

	Cookie[] cookies = request.getCookies();

	if( (cookies != null) && (cookies.length >0) ) {
		for( int i=0; i<cookies.length; i++) {
			out.println( cookies[i].getName() + " : " + cookies[i].getValue() + "<BR>");
		}
	} else {
		out.println("쿠키가 존재하지 않습니다.");
	}
	
%>