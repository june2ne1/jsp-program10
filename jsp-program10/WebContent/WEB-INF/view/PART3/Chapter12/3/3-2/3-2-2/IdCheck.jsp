<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%request.setCharacterEncoding("euc-kr");%>

<%

//------------------------------- 사용자 입력 아이디 추출 및 객체 생성
String UserId = request.getParameter("UserId");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {
	
	//------------------------------- JDBC 설정
	String jdbcUrl = "jdbc:mysql://localhost:3306/jspdb";
	String jdbcId = "jspuser";
	String jdbcPw = "jsppass";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl,jdbcId,jdbcPw);

	//------------------------------- 데이터베이스에서 동일한 아이디 추출
	String Query1 = "SELECT count(UsrNo) FROM member WHERE UsrId='" + UserId  + "'";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(Query1);
	rs.next();
	int db_id = rs.getInt(1);	
	
%>

<HTML>
<HEAD>
	<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="TEXT/HTML; CHARSET=euc-kr"/>
	<LINK REL="stylesheet" type="text/css" href="../include/style.css">
	<TITLE>아이디 중복 검사</TITLE>
	
	<SCRIPT LANGUAGE="javascript">
		function CheckForm(form) {
			if(!form.UserId.value) {
				alert('아이디를 입력하세요.');
				form.UserId.focus();
				return;
			}
			form.submit();
		}

		function UseID(){
			opener.document.BeMember.UserId.value = '<%=UserId%>';
			self.close();
		}	
	</SCRIPT>
		
</HEAD>

<BODY TOPMARGIN=0 LEFTMARGIN=0>

<TABLE WIDTH=378 CELLSPACING=0 CELLPADDING=0 TOPMARGIN=0 LEFTMARGIN=0>
	<TR BGCOLOR=#A0A0A0>
		<TD ALIGN=CENTER HEIGHT=30><FONT COLOR=WHITE SIZE=3><B>아이디 중복검사</B></FONT></TD>
	</TR>
<%
	if(db_id > 0) {
	//-------------------------------아이디가 이미 존재하는 경우
%>

	<TR>
		<TD ALIGN=CENTER>

			<FORM NAME="IdCheck" METHOD=POST ACTION="IdCheck.jsp">
			
			<TABLE WIDTH=300 CELLSPACING=0 CELLPADDING=0 TOPMARGIN=0 LEFTMARGIN=0>
			
				<TR>
					<TD ALIGN=CENTER HEIGHT=70>
						입력하신 <B><%=UserId%></B>은(는) 이미 등록된 아이디입니다.<BR>다른 아이디를 선택하세요.
					</TD>
				</TR>
				
				<TR>
					<TD ALIGN=CENTER HEIGHT=40>
 						<INPUT TYPE=TEXT NAME="UserId" SIZE=20 MAXLENGTH=20>
							<IMG SRC="../images/btn_search.gif" BORDER=0 ALIGN=ABSMIDDLE onClick="CheckForm(IdCheck)">
					</TD>
				</TR>
				
			</TABLE>
			
			</FORM>

		</TD>
	</TR>

<%
	} else {
	//------------------------------- 사용 가능한 아이디일 경우

%>

	<TR>
		<TD ALIGN=CENTER>
		
			<TABLE WIDTH=300 CELLSPACING=0 CELLPADDING=0 TOPMARGIN=0 LEFTMARGIN=0>
			
				<TR>
					<TD ALIGN=CENTER HEIGHT=70>
						입력하신 <B><%=UserId%></B>은(는) 사용가능한 아이디입니다.<BR>이 아이디를 사용하시겠습니까?
					</TD>
				</TR>
				
				<TR>
					<TD ALIGN=CENTER HEIGHT=40>
						<IMG SRC="../images/btn_id_confirm.gif" BORDER=0 STYLE=CURSOR:HAND onClick="javascript:UseID()">
					</TD>
				</TR>
				
			</TABLE>
			
		</TD>
	</TR>

<%
  }
%>

</TABLE>

</BODY>
</HTML>


<%
} catch (SQLException e ) {
	
} finally {

}
%>