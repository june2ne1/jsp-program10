<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HEAD>
	<TITLE>자바스크립트를 사용한 데이터 전송</TITLE>

	<SCRIPT LANGUAGE="javascript">
		function check() {
			if( !document.user.input_data.value ) {
				alert("데이터를 입력하세요.");
				document.user.input_data.focus();
				return;
			}
			document.user.submit();
		}
	</SCRIPT>

</HEAD>

<BODY>

<FORM NAME="user" METHOD=POST ACTION="user_login.jsp">
	입력데이터 : <INPUT TYPE=TEXT NAME="input_data" SIZE=20>
	<INPUT TYPE=button VALUE="전송" onClick="javascript:check()">
</FORM>

</BODY>
</HTML>
