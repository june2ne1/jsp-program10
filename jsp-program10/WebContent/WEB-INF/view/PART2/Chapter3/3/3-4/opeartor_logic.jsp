<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> 논리 연산자의 예</TITLE>
</HEAD>

<BODY>

<%
	int value1 = 10;
	int value2 = 20;
%>

- value1과 value2가 모두 15보다 크다  :  <%= (value1>15) && (value2>15) %> <BR>
- value1과 value2중 하나는 15보다 크다  :  <%= (value1>15) || (value2>15) %> <BR>

</BODY>

</HTML>