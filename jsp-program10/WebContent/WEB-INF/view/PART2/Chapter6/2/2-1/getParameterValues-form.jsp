<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<HTML>

	<HEAD>
		<TITLE>getParameter() 메소드의 예</TITLE>
	</HEAD>
	
	<BODY>

		가능한 외국어를 모두 선택하시오.<BR>
		<FORM NAME="test" METHOD=POST ACTION="getParameterValues-proc.jsp">
			<INPUT TYPE="checkbox" NAME="lang" VALUE="E">영어
			<INPUT TYPE="checkbox" NAME="lang" VALUE="J">일본어
			<INPUT TYPE="checkbox" NAME="lang" VALUE="C">중국어
			<INPUT TYPE="checkbox" NAME="lang" VALUE="G">독일어
			<BR>
			<INPUT TYPE=SUBMIT VALUE="확인">
		</FORM>
	</BODY>

</HTML>