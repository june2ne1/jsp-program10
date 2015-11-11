<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> 명시적 타입 변환의 예</TITLE>
</HEAD>

<BODY>

<%
	double val_1 = 100.25;
	int val_2 = (int) val_1;
	out.println("val_2 : " + val_2 + "<BR>");
	
	int val_3 = 50000;
	short val_4 = (short) val_3;
	out.println("val_4 : " + val_4 + "<BR>");

%>

</BODY>

</HTML>