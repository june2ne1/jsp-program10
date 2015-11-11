<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<HTML>

	<HEAD>
		<TITLE>getParameter() 메소드의 예</TITLE>
	</HEAD>
	
<BODY>

	<% String my_nation = "대한민국"; %>
	
	<FORM NAME="myform"  METHOD=POST action="getParameter-proc-get.jsp?nation=<%=my_nation%>">
    	번호(정수) : <INPUT TYPE=TEXT NAME="num" SIZE=10><BR>
     	이름(문자열) : <INPUT TYPE=TEXT NAME="name" SIZE=20><BR>
     	평점(실수) : <INPUT TYPE=TEXT NAME="score" SIZE=5><BR>
     	<INPUT TYPE=SUBMIT VALUE="저장">
	</FORM>
</BODY>

</HTML>