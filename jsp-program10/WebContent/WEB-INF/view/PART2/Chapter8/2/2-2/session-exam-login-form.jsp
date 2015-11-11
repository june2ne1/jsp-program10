<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<HTML>
	
	<HEAD>
		<TITLE>세션을 이용한 로그인 처리</TITLE>
	</HEAD>
	
	<BODY>
	
		<FORM NAME="login" METHOD=POST ACTION="session-exam-login-proc.jsp">

		<TABLE ALIGN=CENTER WIDTH=300 CELLSPACING=0 CELLPADDING=5 BORDER>
			<TR>
				<TD ALIGN=CENTER WIDTH=120>아이디</TD>
				<TD WIDTH=180><INPUT TYPE=TEXT NAME="userid" SIZE=15></TD>
			</TR>
			<TR>
				<TD ALIGN=CENTER WIDTH=120>패스워드</TD>
				<TD WIDTH=180><INPUT TYPE=PASSWORD NAME="userpw" SIZE=15></TD>
			</TR>		
		</TABLE>
		<TABLE ALIGN=CENTER WIDTH=300 CELLSPACING=0 CELLPADDING=5>
			<TR>
				<TD ALIGN=CENTER>
					<INPUT TYPE=SUBMIT VALUE="LOGIN">&nbsp;&nbsp;
					<INPUT TYPE=RESET VALUE="CANCEL">
				</TD>	
			</TR>
		</TABLE>
	
		</FORM>
		
	</BODY>	
</HTML>