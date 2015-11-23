<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<FORM NAME="Login" id="frm_login" METHOD=POST ACTION="${context}/member/mypage.do">

<TABLE WIDTH=620 BORDER=0 ALIGN=CENTER CELLSPACING=0 CELLPADDING=0>

	<TR>
		<TD ALIGN=CENTER WIDTH=320>
			아이디 <INPUT TYPE=TEXT NAME="userid" SIZE=10 MAXLENGTH=20>&nbsp;&nbsp;
			패스워드 <INPUT TYPE=PASSWORD NAME="password" SIZE=10 MAXLENGTH=20>
			<IMG id="btn_login" SRC="${context}/images/btn_login.gif" WIDTH=41 HEIGHT=22 ALIGN=ABSBOTTOM STYLE=CURSOR:HAND>
		</TD>    
		<TD ALIGN=RIGHT WIDTH=300>
			<IMG SRC="${context}/images/btn_idpw_srch.gif" STYLE=CURSOR:HAND>
			<IMG SRC="${context}/images/btn_be_member.gif" STYLE=CURSOR:HAND>
		</TD>		
	</TR>
	
</TABLE>

</FORM>
<SCRIPT>
	$(function() {
		$('#btn_login').click(function() {
			$('frm_login').submit();
		});
	});
</SCRIPT>





