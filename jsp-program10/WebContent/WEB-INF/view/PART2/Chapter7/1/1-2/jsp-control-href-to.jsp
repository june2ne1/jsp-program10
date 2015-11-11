<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
	String cnt = request.getParameter("cnt");
	String nation = request.getParameter("nation");

	out.println("대륙이름 : " + cnt + "<BR>");	
	out.println("국가이름 : " + nation);	
%>

