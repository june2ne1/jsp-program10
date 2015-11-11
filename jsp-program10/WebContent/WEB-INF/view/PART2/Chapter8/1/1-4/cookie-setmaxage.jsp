<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	// 쿠키 id의 지속시간을 20초로 지정
	Cookie mycookie1 = new Cookie("id","hong");
	mycookie1.setMaxAge(20);
	response.addCookie(mycookie1);
	
	// 쿠키 id의 지속시간을 브라우저 유지시간으로 지정
	Cookie mycookie2 = new Cookie("name","gildong");
	mycookie1.setMaxAge(-1);
	response.addCookie(mycookie2);

%>

<A HREF="cookie-setmaxage-view.jsp">쿠키 출력</A>