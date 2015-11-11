<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	out.println("아 이 디 : " + id + "<BR>");
	out.println("패스워드 : " + pw);
	
%>