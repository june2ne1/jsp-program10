<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	pageContext.setAttribute("season1","봄");
	String season1 = (String)pageContext.getAttribute("season1");

	request.setAttribute("season2", "여름");
	String season2 = (String)request.getAttribute("season2");

	session.setAttribute("season3", "가을");
	String season3 = (String)session.getAttribute("season3");

	application.setAttribute("season4", "겨울");
	String season4 = (String)application.getAttribute("season4");
%>

page영역 : <%=season1 %><BR>
Request영역 : <%=season2 %><BR>
session영역 : <%=season3 %><BR>
application영역 : <%=season4 %><BR>