<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<HTML>
	<HEAD>
	</HEAD>
<BODY>

	<FORM NAME="myForm" METHOD=POST  ACTION="getParameterMap-proc.jsp" >
		이름 : <INPUT TYPE=TEXT NAME="name" SIZE=20><br>
		당신의 가능한 외국어를 모두 선택하시오. <br>
		<INPUT TYPE="CHECKBOX" NAME="lang" VALUE="E">영어<br>
		<INPUT TYPE="CHECKBOX" NAME="lang" VALUE="J">일본어<br>
		<INPUT TYPE="CHECKBOX" NAME="lang" VALUE="C">중국어<br>
		<INPUT TYPE="CHECKBOX" NAME="lang" VALUE="G">독일어<br>
		<INPUT TYPE=SUBMIT VALUE="저장">
	</FORM>

</BODY>
</HTML>