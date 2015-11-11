<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.net.URLEncoder"%>

<%request.setCharacterEncoding("euc-kr");%>

<%
//----------------------------------아이디 추출	
String user_id = (String)session.getAttribute("member_id");

//---------------------------------- 페이지 정보 추출	
int m_cp = Integer.parseInt(request.getParameter("CurrentPage"));

//---------------------------------- 키워드 데이터 추출	
String m_column = request.getParameter("column");
if (m_column == null) m_column="";	
	
String m_encoded_key=null;
	
String m_key = request.getParameter("key");
if(m_key!=null) {
	m_encoded_key = URLEncoder.encode(m_key,"euc-kr");
} else {
	m_key="";
}

//---------------------------------- JDBC를 위한 객체 선언
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
	
	//------------------------------- 수정을 위한 데이터 추출
	String Query1 = "SELECT UsrName,UsrId, UsrMail, UsrZip1, UsrZip2, UsrAddr1, UsrAddr2, UsrTel1, UsrTel2, UsrTel3, UsrHp1, UsrHp2, UsrHp3 FROM member WHERE UsrId='"+user_id+"'";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(Query1);
	rs.next();
	
	String name = rs.getString(1);
	String id = rs.getString(2);
	String mail = rs.getString(3);
	String zip1 = rs.getString(4);
	String zip2 = rs.getString(5);
	String addr1 = rs.getString(6);
	String addr2 = rs.getString(7);
	String tel1 = rs.getString(8);
	String tel2 = rs.getString(9);
	String tel3 = rs.getString(10);
	String hp1 = rs.getString(11);
	String hp2 = rs.getString(12);
	String hp3 = rs.getString(13);		
	
%>

<HTML>
<HEAD>
	<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="TEXT/HTML; CHARSET=euc-kr"/>
	<LINK REL="stylesheet" type="text/css" href="../include/style.css">
	<SCRIPT language="javascript" SRC="../include/scripts.js"></SCRIPT>
    <TITLE>회원정보변경</TITLE>

	<SCRIPT LANGUAGE="javascript">
	
	    function CheckMemberForm(form) {
	
    		if( (form.UserPass.value) || (form.ReUserPass.value)  ) {    			
	        	if(!form.UserPass.value){
	            	alert("패스워드 입력 란에 패스워드를 입력하세요.");
	            	form.UserPass.focus();
	            	return;
	        	}		    		
	        	if(!form.ReUserPass.value){
	            	alert("패스워드 재입력 란에 패스워드를 입력하세요.");
	            	form.ReUserPass.focus();
	            	return;
	        	}	
	        	if(!(form.UserPass.value==form.ReUserPass.value)){
	            	alert("입력된 패스워드가 서로 다릅니다.");
	            	form.UserPass.focus();
	            	return;
	        	}	        	
	    	}
	    	
			if(!form.UserMail.value){
				alert("전자우편주소를 입력하세요.");
				form.UserMail.focus();
				return;
			} else if(!isCorrectEmail('MemberModify', 'UserMail')){
				alert("전자우편형식이 올바르지 않습니다.");
				form.UserMail.focus();
				return;
			}
	
	        if(!form.ZipCode1.value){
	            alert("우편번호나 주소가 입력되지 않았습니다.");
	            form.ZipCode1.focus();
	            return;
	        }
	
	        if(!form.UserTel1.value){
	            alert("전호번호(지역번호)를 입력하세요.");
	            form.UserTel1.focus();
	            return;
	        }
	
	        if(!form.UserTel2.value){
	            alert("전호번호(국)를 입력하세요.");
	            form.UserTel2.focus();
	            return;
	        }
	
	        if(!form.UserTel3.value){
	            alert("전호번호(번호)를 입력하세요.");
	            form.UserTel3.focus();
	            return;
	        }
	
	        if(form.UserHp1.selectedIndex==0){
	            alert("휴대폰의 통신사를 선택하세요.");
	            return;
	        }
	
	        if(!form.UserHp2.value){
	            alert("휴대폰 번호 앞자리를 입력하세요.");
	            form.UserHp2.focus();
	            return;
	        }
	
	        if(!form.UserHp3.value){
	            alert("휴대폰 번호 뒷자리를 입력하세요.");
	            form.UserHp3.focus();
	            return;
	        }
	
			form.submit();
		}
	    
	</SCRIPT>
    
</HEAD>

<BODY>

<TABLE WIDTH=620 HEIGHT=40 BORDER=0 CELLSPACING=1 CELLPADDING=1 ALIGN=CENTER>
	<TR BGCOLOR=#A0A0A0>
		<TD ALIGN=CENTER><FONT SIZE=4><B>회원 정보 변경</B></FONT></TD>
	</TR>
</TABLE>

<FORM NAME="MemberModify" METHOD=POST ACTION="MemberModifyProc.jsp?CurrentPage=<%=m_cp%>&column=<%=m_column%>&key=<%=m_encoded_key%>">

<TABLE WIDTH=620 BORDER="1" CELLSPACING="0" CELLPADDING="2" ALIGN=CENTER>

	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>이름</B></TD>
		<TD WIDTH="500"><%=name%></TD>
	</TR>

  	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>아이디</B></TD>
		<TD WIDTH="500"><%=id%> </TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>패스워드</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=PASSWORD NAME="UserPass" SIZE=20 MAXLENGTH=10>
			* 패스워드를 변경하고자 할 경우에만 입력하세요.
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>패스워드 재입력</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=PASSWORD NAME="ReUserPass" SIZE=20 MAXLENGTH=10>
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>전자우편</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=TEXT NAME="UserMail" SIZE=60 MAXLENGTH=90 style="ime-mode:inactive" VALUE='<%=mail%>'>
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>주 소</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=TEXT NAME="ZipCode1" SIZE=3 MAXLENGTH=3 READONLY onClick="javascript:alert('우편번호 검색버튼을 이용하세요')" VALUE='<%=zip1%>'> -
			<INPUT TYPE=TEXT NAME="ZipCode2" SIZE=3 MAXLENGTH=3 READONLY onClick="javascript:alert('우편번호 검색버튼을 이용하세요')" VALUE='<%=zip2%>'><BR>
			<INPUT TYPE=TEXT NAME="UserAddress1" SIZE=45 MAXLENGTH=110 READONLY onClick="javascript:alert('우편번호 검색버튼을 이용하세요')" VALUE='<%=addr1%>'>
			<IMG SRC="../images/btn_post_3.gif" BORDER=0 ALIGN=ABSMIDDLE STYLE=CURSOR:HAND onClick="javascript:AddressSearch('AddressSearch_1.jsp','MemberModify','SearchAddress',520,220,'yes')"><BR>&nbsp;
			나머지 주소
			<INPUT TYPE=TEXT NAME="UserAddress2" SIZE=45 MAXLENGTH=110 VALUE='<%=addr2%>'>
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>전화번호</B></TD>
		<TD WIDTH="500">
			<INPUT TYPE=TEXT NAME="UserTel1" SIZE=3 MAXLENGTH=3 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=tel1%>'> -
			<INPUT TYPE=TEXT NAME="UserTel2" SIZE=4 MAXLENGTH=4 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=tel2%>'> -
			<INPUT TYPE=TEXT NAME="UserTel3" SIZE=4 MAXLENGTH=4 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=tel3%>'>
		</TD>
	</TR>   
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>휴대전화</B></TD>
		<TD WIDTH="500">
			<SELECT NAME="UserHp1" SIZE=1>
<%
			if( hp1.equals("010")) {			
				out.println("<OPTION VALUE=\"0\">통신사");
				out.println("<OPTION VALUE=\"010\" SELECTED>010");
				out.println("<OPTION VALUE=\"011\">011");
			} else if( hp1.equals("011")) {			
				out.println("<OPTION VALUE=\"0\">통신사");
				out.println("<OPTION VALUE=\"010\">010");
				out.println("<OPTION VALUE=\"011\" SELECTED>011");
			}
%>
			</SELECT> -
			<INPUT TYPE=TEXT NAME="UserHp2" SIZE=4 MAXLENGTH=4 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=hp2%>'> -
			<INPUT TYPE=TEXT NAME="UserHp3" SIZE=4 MAXLENGTH=4 STYLE="ime-mode:disabled" onKeyDown="javascript:NumKey()" VALUE='<%=hp3%>'>
		</TD>
	</TR> 
   
</TABLE>

</FORM>

<TABLE WIDTH=620 HEIGHT=50 BORDER=0 CELLSPACING=1 CELLPADDING=1 ALIGN=CENTER>

	<TR ALIGN=CENTER>
		<TD>		
			<IMG SRC="../images/btn_mdfy.gif" STYLE=CURSOR:HAND onClick="javascript:CheckMemberForm(MemberModify)">&nbsp;&nbsp;
			<IMG SRC="../images/btn_cancel.gif" STYLE=CURSOR:HAND onClick="javascript:location.replace('../board/BoardList.jsp?CurrentPage=<%=m_cp%>&column=<%=m_column%>&key=<%=m_encoded_key%>')">
		</TD>
	</TR>
	
</TABLE>

</BODY>
</HTML>

<%
	} catch(Exception e) {
		
		e.printStackTrace();
		
	} finally {
		rs.close();
		stmt.close();
		conn.close();
	}

%>