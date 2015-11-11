<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> break ¹®ÀÇ ¿¹</TITLE>
</HEAD>

<BODY>

<%

	int[] my_arr = {10, 20, 30, 40, 50};
	
	for( int i=0; i<my_arr.length; i++) {		
		if( my_arr[i] == 30 ) break;		
		out.println("my_arr[" + i + "] : " + my_arr[i] + "<BR>");		
	}
		
%>

</BODY>
</HTML>