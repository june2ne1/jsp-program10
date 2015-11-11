<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.sql.*"%>

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

	//---------------------------------- 전달된 데이터 추출	
	String user_pass = request.getParameter("UserPass");
	String mail = request.getParameter("UserMail");
	String zip1 = request.getParameter("ZipCode1");
	String zip2 = request.getParameter("ZipCode2");
	String addr1 = request.getParameter("UserAddress1");
	String addr2 = request.getParameter("UserAddress2");
	String tel1 = request.getParameter("UserTel1");
	String tel2 = request.getParameter("UserTel2");
	String tel3 = request.getParameter("UserTel3");
	String hp1 = request.getParameter("UserHp1");
	String hp2 = request.getParameter("UserHp2");
	String hp3 = request.getParameter("UserHp3");

	//---------------------------------- 객체의 선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try {
		//------------------------------- JDBC 설정
		String jdbcUrl = "jdbc:mysql://localhost:3306/jspdb";
		String jdbcId = "jspuser";
		String jdbcPw = "jsppass";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl,jdbcId,jdbcPw);
		
		//------------------------------- 패스워드가 입력된 경우 패스워드 변경
		if( !user_pass.equals("")) {
			String Query1 =  "UPDATE member SET UsrPass=? WHERE UsrId='" +user_id + "'";
			pstmt = conn.prepareStatement(Query1);
			pstmt.setString(1, user_pass);			
			pstmt.executeUpdate();				
		}
		
		//------------------------------- 패스워드를 제외한 정보의 변경
		String Query2 =  "UPDATE member SET UsrMail=?, UsrZip1=?, UsrZip2=?, UsrAddr1=?, UsrAddr2=?, UsrTel1=?, UsrTel2=?, UsrTel3=?, UsrHp1=?, UsrHp2=?, UsrHp3=? WHERE UsrId='"+ user_id + "'";
		pstmt = conn.prepareStatement(Query2);
		pstmt.setString(1, mail);
		pstmt.setString(2, zip1);
		pstmt.setString(3, zip2);
		pstmt.setString(4, addr1);
		pstmt.setString(5, addr2);
		pstmt.setString(6, tel1);
		pstmt.setString(7, tel2);
		pstmt.setString(8, tel3);
		pstmt.setString(9, hp1);
		pstmt.setString(10, hp2);	
		pstmt.setString(11, hp3);
		
		pstmt.executeUpdate();	
		
		//------------------------------- 객체의 제거와 페이지의 이동
		pstmt.close();
		conn.close();
		
		String retURL = "../board/BoardList.jsp?column=" + m_column + "&key=" + m_encoded_key + "&CurrentPage=" + m_cp ;
		out.println("<script language=\"javascript\">");
		out.println("alert('회원정보가 수정되었습니다')");
		out.println("location.replace('"+ retURL+"')");		
		out.println("</script>");	
		out.flush();
		
	} catch(SQLException e) {
		
		e.printStackTrace();
		
	} 	
%>