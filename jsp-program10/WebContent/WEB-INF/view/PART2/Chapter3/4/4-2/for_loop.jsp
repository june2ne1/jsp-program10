<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> for 순환문의 예</TITLE>
</HEAD>

<BODY>

<%

	int[] my_arr = {10, 20, 30, 40, 50};
	
	for( int i=0; i<my_arr.length; i++) {
		out.println("my_arr[" + i + "] : " + my_arr[i] + "<BR>");
	}
		
%>

</BODY>

</HTML>