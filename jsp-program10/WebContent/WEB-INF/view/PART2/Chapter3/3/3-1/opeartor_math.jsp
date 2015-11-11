<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> 수치 연산자의 예</TITLE>
</HEAD>

<BODY>

<%
	int value1 = 10;
	int value2 = 4;
	
	out.println(value1 + " + " + value2 + " = " + (value1+value2) + "<BR>");
	out.println(value1 + " - " + value2 + " = " + (value1-value2) + "<BR>");
	out.println(value1 + " * " + value2 + " = " + (value1*value2) + "<BR>");
	out.println(value1 + " / " + value2 + " = " + (value1/value2) + "<BR>");
	out.println(value1 + " % " + value2 + " = " + (value1%value2) + "<BR>");
%>

</BODY>

</HTML>