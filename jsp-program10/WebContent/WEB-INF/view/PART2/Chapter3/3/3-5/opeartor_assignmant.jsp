<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> 할당 연산자의 예</TITLE>
</HEAD>

<BODY>

<%
	int value1 = 20;
	int value2 = 10;

	value1 += value2;
	out.println("value1과 value2를 더한 후 value1에 대입 : " + value1 + "<BR>");

	value1 -= value2;
	out.println("value1에서 value2를 뺀 후 value1에 대입 : " + value1 + "<BR>");
	
	value1 *= value2;
	out.println("value1과 value2를 곱한 후 value1에 대입 : " + value1 + "<BR>");
	
	value1 /= value2;
	out.println("value1을 value2로 나눈 후 value1에 대입 : " + value1 + "<BR>");

	value1 %= value2;
	out.println("value1을 value2로 나눈 후 나머지를 value1에 대입 : " + value1 + "<BR>");

	%>
</BODY>

</HTML>