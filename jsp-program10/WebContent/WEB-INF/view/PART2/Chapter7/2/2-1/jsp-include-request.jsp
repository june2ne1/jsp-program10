<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

	<HEAD>
		<TITLE>include 액션 태그와 request 기본객체와의 관계</TITLE>
	</HEAD>
	
	<BODY>

	<FORM NAME="myform" METHOD=POST ACTION="jsp-include-request-from.jsp">
		아 이 디 : <INPUT TYPE=TEXT NAME="id" SIZE=20><BR>
		패스워드 : <INPUT TYPE=PASSWORD NAME="pw" SIZE=20><BR>
		성 명 : <INPUT TYPE=TEXT NAME="username" SIZE=20><BR>
		<INPUT TYPE=SUBMIT VALUE="전송">
	
	</FORM>
		
	</BODY>
	
</HTML>