<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
String season1 = (String)pageContext.getAttribute("season1");
String season2 = (String)request.getAttribute("season2");
String season3 = (String)session.getAttribute("season3");
String season4 = (String)application.getAttribute("season4");
%>

page康开 : <%=season1 %><br>
Request康开 : <%=season2 %><br>
session康开 : <%=season3 %><br>
application康开 : <%=season4 %><br>