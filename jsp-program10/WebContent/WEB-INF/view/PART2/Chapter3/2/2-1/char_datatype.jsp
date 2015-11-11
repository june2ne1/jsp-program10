<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE>문자형 데이터 타입 예제</TITLE>
</HEAD>

<BODY>

<%
	char my_char1 = 'a';
	char my_char2 = '\u0061';
	
	out.println("char my_char1 = " + my_char1 + "<BR>");
	out.println("unicode my_char2 = " + my_char2 + "<BR>");

%>

</BODY>

</HTML>