<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<% 
	request.setCharacterEncoding("euc-kr"); 
	
	String id = request.getParameter("id");
	out.print("아이디 : " + id + "<BR>");
	
%>

<jsp:include page="jsp-include-request-to.jsp" flush="false"/>

<%
	String username = request.getParameter("username");
	out.print("이름 : " + username + "<BR>");

%>