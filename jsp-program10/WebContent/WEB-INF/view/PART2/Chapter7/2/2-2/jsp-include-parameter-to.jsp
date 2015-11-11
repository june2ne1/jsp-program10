<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("euc-kr");

	String capt1 = request.getParameter("korea");
	String capt2 = request.getParameter("japan");

	out.println("jsp-include-parameter-to.jsp 문서의 처리 결과입니다<BR>");

	out.println("한국의 수도는 "+ capt1 + "입니다.<BR>");
	out.println("일본의 수도는 "+ capt2 + "입니다.<BR><BR>");
     
%>