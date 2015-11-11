<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>

<%
	// 쿠키 id 생성
	Cookie mycookie1 = new Cookie("id","hong");
	response.addCookie(mycookie1);
	
	// 쿠키 name 생성 (한글 인코딩)
	Cookie mycookie2 = new Cookie("name",URLEncoder.encode("홍길동", "euc-kr"));
	response.addCookie(mycookie2);

%>

<!-- id라는 쿠키의 이름과 값을 출력 --> 
mycookie1의 쿠키이름 : <%=mycookie1.getName() %><BR>
mycookie1의 쿠키 값 : <%=mycookie1.getValue() %><BR><BR>

<!-- name이라는 쿠키의 이름과 값을 출력 --> 
mycookie2의 쿠키이름 : <%=mycookie2.getName() %><BR>
mycookie2의 쿠키 값 : <%=URLDecoder.decode(mycookie2.getValue(), "euc-kr") %><BR><BR>