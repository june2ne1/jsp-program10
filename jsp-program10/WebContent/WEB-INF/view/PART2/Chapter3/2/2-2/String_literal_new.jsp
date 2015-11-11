<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> String 클래스의 예</TITLE>
</HEAD>

<BODY>

<%
	
	String str1 = "JSP 프로그래밍";
	String str2 = "JSP 프로그래밍";
	
	String str3 = new String("JSP 프로그래밍");
	String str4= new String("JSP 프로그래밍");

	out.println("str1 = str2 : " + (str1==str2) + "<BR>");
	out.println("str1 = str3 : " + (str1==str4) + "<BR>");
	out.println("str3 = str4 : " + (str3==str4) + "<BR><BR>");

	out.println("str1.equal(str2) : " + str1.equals(str2) + "<BR>");
	out.println("str1.equal(str3) : " + str1.equals(str3) + "<BR>");
	out.println("str3.equal(str4) : " + str3.equals(str4));

%>

</BODY>

</HTML>