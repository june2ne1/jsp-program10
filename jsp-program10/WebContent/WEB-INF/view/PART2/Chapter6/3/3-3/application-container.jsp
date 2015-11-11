<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

	out.println("웹 컨테이너의 이름과 버전 : " + application.getServerInfo() + "<BR>");
	out.println("서블릿 규약의 메이저 버전 : " + application.getMajorVersion() + "<BR>");
	out.println("서블릿 규약의 마이너 버전 : " + application.getMinorVersion() + "<BR>");

%>