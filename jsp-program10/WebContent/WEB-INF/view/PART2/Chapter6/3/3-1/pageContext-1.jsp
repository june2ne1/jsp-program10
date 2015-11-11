<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%

	out.println("다음은 동일한 문자을 출력합니다.<BR><BR>" );

	String str = "대한민국";
	
	out.println("out 기본객체 사용 : " + str + "<BR>");
	pageContext.getOut().println("pageContext 기본객체 사용 : " + str + "<BR>");	

%>