<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HEAD>
	<TITLE> FORM 입력상자</TITLE>
</HEAD>

<SCRIPT LANGUAGE="javascript">

function display(form) {
	var id = form.UserId.value;
	var pw = form.UserPw.value;
	var nation = form.UserNation.value;

	alert("입력한 아이디는 " + id + "이고 패스워드는 " + pw + "입니다.\n당신의 출신국가는 " + nation + "입니다.");

}

</SCRIPT>

<BODY>

<FORM NAME=LOGIN>

<TABLE BORDER=1 WIDTH=300 CELLSPACING=0 CELLPADDING=2 ALIGN=CENTER>

	<TR>
		<TD WIDTH=100 BGCOLOR=#f2f2f2 ALIGN=CENTER>아 이 디 : </TD>
		<TD WIDTH=200><INPUT TYPE=TEXT NAME=UserId SIZE=20 MAXLENGTH=20></TD>
	</TR>
	<TR>
		<TD WIDTH=100 BGCOLOR=#f2f2f2 ALIGN=CENTER>패스워드 : </TD>
		<TD WIDTH=200><INPUT TYPE=PASSWORD NAME=UserPw SIZE=20 MAXLENGTH=20></TD>
	</TR>
	<TR>
		<TD WIDTH=100 BGCOLOR=#f2f2f2 ALIGN=CENTER>출신국가 : </TD>
		<TD WIDTH=200><INPUT TYPE=TEXT NAME=UserNation SIZE=20 MAXLENGTH=20></TD>
	</TR>

</TABLE>

<TABLE BORDER=0 WIDTH=300 ALIGN=CENTER>
	<TR ALIGN=CENTER>
		<TD>
			<INPUT TYPE=BUTTON NAME=BTN1 VALUE="확인" onClick="display(this.form)">
			<INPUT TYPE=RESET NAME=BTN1 VALUE="취소">
		</TD>
	</TR>
</TABLE>
		
</FORM>

</BODY>

</HTML>