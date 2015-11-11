<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HEAD>
	<TITLE>자바스크립트를 사용하지 않은 데이터 전송</TITLE>
</HEAD>

<BODY>

<FORM NAME="user" METHOD=POST ACTION="user_login.jsp">
	입력데이터 : <INPUT TYPE=TEXT NAME="input_data" SIZE=20>
	<INPUT TYPE=BUTTON VALUE="전송" onClick="javascript:submit()">
</FORM>

</BODY>
</HTML>