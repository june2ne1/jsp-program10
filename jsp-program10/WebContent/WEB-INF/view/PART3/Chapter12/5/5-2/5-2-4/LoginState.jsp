<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%	String name = (String)session.getAttribute("member_name"); %>

<TABLE WIDTH=620 BORDER=0 ALIGN=CENTER CELLSPACING=0 CELLPADDING=0>

	<TR>
		<TD ALIGN=LEFT WIDTH=320>
			<FONT SIZE=2><B><%=name%></B>님의 방문을 환영합니다.</FONT>
		</TD>
		<TD ALIGN=RIGHT WIDTH=300>
			<IMG SRC="../images/btn_logout.gif" STYLE=CURSOR:HAND>
			<IMG SRC="../images/btn_mb_mdfy.gif" STYLE=CURSOR:HAND>
		</TD>
	</TR>
	
</TABLE>