<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>

<%
	Cookie[] cookies = request.getCookies();

	if( (cookies != null) && (cookies.length >0) ) {
		for( int i=0; i<cookies.length; i++) {
			if( cookies[i].getName().equals("name")) {
				Cookie mycookie2 = new Cookie("name",URLEncoder.encode("½ÉÃ»", "euc-kr"));
				response.addCookie(mycookie2);				
			}
		}
	}
%>