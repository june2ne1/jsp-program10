<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%

	out.println("이 문자열은 pageContext-include.jsp 문서의 내용입니다.<BR><BR>");
	
	// pageContext 객체의 include() 메소드 사용
	pageContext.include("pageContext-include-result.jsp");	

%>