<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.net.URLEncoder"%>

<%request.setCharacterEncoding("euc-kr");%>

<%
//---------------------------------- 패스워드와 레코드 식별자 추출
String passwd = request.getParameter("pass");
int rno = Integer.parseInt(request.getParameter("rno"));

//---------------------------------- 전달된 페이지 번호 추출
int CurrentPage = Integer.parseInt(request.getParameter("CurrentPage"));

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
	String Query1 = "SELECT UsrPass, UsrFileName FROM board WHERE RcdNo=?";
	pstmt = conn.prepareStatement(Query1);
	pstmt.setInt(1,rno);
	rs = pstmt.executeQuery();
	
	rs.next();
	String dbPass = rs.getString(1);
	String filename = rs.getString(2);
	
	
	if(passwd.equals(dbPass)) {
		
		String Query2 = "DELETE FROM board WHERE RcdNo=" + rno;
		pstmt = conn.prepareStatement(Query2);
		pstmt.executeUpdate(Query2);
		
		if(filename!=null) {
			
			String realFolder = ""; 
			String saveFolder = "upload_files";

			ServletContext context = getServletContext();
			realFolder = context.getRealPath(saveFolder);
		
			String PathAndName = realFolder + "\\" + filename;	
			File file = new File(PathAndName);	
			
			if (!file.delete()) {
				out.println("파일 삭제에 실패했습니다.");
			}
			
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		String retUrl = "BoardList.jsp?column=" + column + "&key=" + encoded_key + "&CurrentPage=" + CurrentPage ;
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