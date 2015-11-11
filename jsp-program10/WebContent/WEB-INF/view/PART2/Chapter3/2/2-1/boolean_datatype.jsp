<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> 부울형 데이터 타입 예제</TITLE>
</HEAD>

<BODY>

<%
	int i = 1;
	boolean flag = true;
	
	while(flag) {
		
		out.println( "현재 i의 값은 " + i + "입니다.<BR>");

		if(i == 10) flag = false;
		i++;
		
	}
	
%>

</BODY>

</HTML>