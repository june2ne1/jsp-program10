<%@ page contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<HTML>

<HEAD>
	<TITLE> import 속성의 예</TITLE>
</HEAD>

<BODY>

<%
	Date my_day = new Date();
	String today = my_day.toLocaleString();
	out.println(today);
%>

</BODY>
</HTML>