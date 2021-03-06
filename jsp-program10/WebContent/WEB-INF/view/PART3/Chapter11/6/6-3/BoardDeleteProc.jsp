<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.URLEncoder"%>

<%request.setCharacterEncoding("euc-kr");%>

<%
//---------------------------------- 패스워드와 레코드 식별자 추출
String passwd = request.getParameter("pass");
int rno = Integer.parseInt(request.getParameter("rno"));

//---------------------------------- 변수 및 객체 선언
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null; 

String encoded_key="";

//---------------------------------- 키워드 데이터 추출
String column = request.getParameter("column");
if (column == null) column="";

String key = request.getParameter("key");
if(key!=null) {
	encoded_key = URLEncoder.encode(key,"euc-kr");
} else {
	key="";
}

try {
	//------------------------------- JDBC 설정
	
	String jdbcUrl = "jdbc:mysql://localhost:3306/jspdb";
	String jdbcId = "jspuser";
	String jdbcPw = "jsppass";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl,jdbcId,jdbcPw);

	//------------------------------- 레코드 패스워드 추출
	String Query1 = "SELECT UsrPass FROM board WHERE RcdNo=?";
	pstmt = conn.prepareStatement(Query1);
	pstmt.setInt(1,rno);
	rs = pstmt.executeQuery();
	
	rs.next();
	String dbPass = rs.getString(1);
		
	if(passwd.equals(dbPass)) {
		
		String Query2 = "DELETE FROM board WHERE RcdNo=" + rno;
		pstmt = conn.prepareStatement(Query2);
		pstmt.executeUpdate(Query2);
		
		rs.close();
		pstmt.close();
		conn.close();
		
		String retUrl = "BoardList.jsp?column=" + column + "&key=" + encoded_key;
		response.sendRedirect(retUrl);
		
	} else {
		
		rs.close();
		pstmt.close();
		conn.close();		
		out.println("<script language=\"javascript\">");
		out.println("alert('패스워드가 다릅니다.')");
		out.println("history.back()");		
		out.println("</script>");	
		out.flush();
	}
	
} catch (SQLException e) {
	
	out.print(e);
	
} 
%>