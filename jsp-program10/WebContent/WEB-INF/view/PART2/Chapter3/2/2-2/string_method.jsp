<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> String 클래스가 제공하는 메소드</TITLE>
</HEAD>

<BODY>

<%

	String str1 = "첫 번째 단계. First Step";
	String str2 = "두 번째 단계. Second Step";
		
%>

str1.length() : <%= str1.length() %> <BR>
str1.charAt(4) : <%= str1.charAt(9) %> <BR><BR>

str1.indexOf('s') : <%= str1.indexOf('s') %> <BR>
str1.indexOf("단계") : <%= str1.indexOf("단계") %> <BR><BR>

str2.indexOf('e', 10) : <%= str1.indexOf('e', 10) %> <BR>
str2.indexOf("단계", 2) : <%= str1.indexOf("단계", 2) %> <BR><BR>

str1.substring(5) : <%= str1.substring(5) %> <BR><BR>

str1.substring(5,7) : <%= str1.substring(5,7) %> <BR><BR>

str1.equals(str2) : <%= str1.equals(str2) %> <BR><BR>


</BODY>

</HTML>