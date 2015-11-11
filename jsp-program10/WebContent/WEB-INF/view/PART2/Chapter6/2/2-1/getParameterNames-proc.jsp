<%@ page contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("euc-kr");%>

<%
Enumeration<String> para = request.getParameterNames();

while (para.hasMoreElements()) {
    String pName = para.nextElement();
	out.println(pName + ":");   
    String pValue = request.getParameter(pName);
	out.println(pValue + "<br>");
}
%>