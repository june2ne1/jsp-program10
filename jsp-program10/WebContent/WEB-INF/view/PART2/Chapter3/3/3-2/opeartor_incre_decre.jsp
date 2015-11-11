<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> 증감 연산자의 예</TITLE>
</HEAD>

<BODY>

<%
	int value = 10;
%>

- 기존의 value 값  :  <%= value %> <BR>
- 증가시킨 후 출력한 value 값 :  <%= ++value %> <BR>
- 출력한 후 증가시킨 value 값 :  <%= value++ %> <BR>
- 최종의 value 값  :  <%= value %> <BR>

</BODY>

</HTML>