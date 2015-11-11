<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> 비교 연산자의 예</TITLE>
</HEAD>

<BODY>

<%
	int value1 = 10;
	int value2 = 20;
%>

- value1과 value2가 같다  :  <%= value1 == value2 %> <BR>
- value1과 value2가 다르다  :  <%= value1 != value2 %> <BR>
- value1이 value2보다 크다  :  <%= value1 > value2 %> <BR>
- value1이 value2보다 크거나 같다  :  <%= value1 >= value2 %> <BR>
- value1이 value2보다 작다  :  <%= value1 < value2 %> <BR>
- value1이 value2보다 작거나 같다  :  <%= value1 <= value2 %> <BR>

</BODY>

</HTML>