<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr");%>

<%

String[] test = request.getParameterValues("lang");
String str = "";

for(int i=0; i<test.length; i++) {
	if(test[i].equals("E")) { str = str.concat("영어 "); continue; } 
	if(test[i].equals("J")) { str = str.concat("일본어 "); continue; } 
	if(test[i].equals("C")) { str = str.concat("중국어 "); continue; } 
	if(test[i].equals("G")) { str = str.concat("독일어 "); continue; } 
}

out.println("당신이 가능한 외국어는 " + str + "입니다");

%>