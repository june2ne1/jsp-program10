<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE>정수형 데이터 타입 예제</TITLE>
</HEAD>

<BODY>

<%
	byte a1=(byte)50;
	byte a2=50;
	
	short b1=(short)100;
	short b2=100;
	
	int c1=300;
	
	long d1=123400L;
	long d2=123400;
	
	out.println("byte a1 = " + a1 + "<BR>");
	out.println("byte a2 = " + a2 + "<BR><BR>");
	out.println("short b1 = " + b1 + "<BR>");
	out.println("short b2 = " + b2 + "<BR><BR>");
	out.println("int c1 = " + c1 + "<BR><BR>");
	out.println("long d1 = " + d1 + "<BR>");
	out.println("long d2 = " + d2 + "<BR><BR>");

%>

</BODY>

</HTML>