<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> do~while 순환문의 예</TITLE>
</HEAD>

<BODY>

<%

	int[] my_arr = {10, 20, 30, 40, 50};
	
	int i = 0;

	do {
		out.println("my_arr[" + i + "] : " + my_arr[i] + "<BR>");
		i++;		
	} while( i < my_arr.length ); 

%>

</BODY>

</HTML>