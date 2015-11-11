<%@ page contentType="text/html; charset=euc-kr"  pageEncoding="euc-kr"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("euc-kr");%>

<%
Map resultMap = request.getParameterMap();

String[] myname = (String[])resultMap.get("name");
out.println("당신의 이름은 " + myname[0] + "입니다 <br>");


String[] mylang = (String[])resultMap.get("lang");

String str = "";

for(int i=0; i<mylang.length; i++) {
	if(mylang[i].equals("E")) { str = str.concat("영어 "); continue; } 
	if(mylang[i].equals("J")) { str = str.concat("일본어 "); continue; } 
	if(mylang[i].equals("C")) { str = str.concat("중국어 "); continue; } 
	if(mylang[i].equals("G")) { str = str.concat("독일어 "); continue; }
}
out.println("당신이 선택한 외국어는 " + str + "입니다");

%>