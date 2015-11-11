<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	out.println("id : " + session.getAttribute("id") + "<BR>");
	out.println("name : " + session.getAttribute("name") + "<BR>");

%>