<%@ page contentType="text/html; charset=euc-kr"  pageEncoding="euc-kr"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("euc-kr");%>

<%
Enumeration<String> myHeader = request.getHeaderNames();

while (myHeader.hasMoreElements()) {
    String header_Name = myHeader.nextElement();
    String header_Value = request.getHeader(header_Name);
    out.println(header_Name+ " : " + header_Value + "<BR><BR>");
}
%>