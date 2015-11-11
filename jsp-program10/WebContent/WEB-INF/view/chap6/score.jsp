<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String num = request.getAttribute("num").toString();
	String name = request.getAttribute("name").toString();
	String score = request.getAttribute("score").toString();

%>

번호 : <%=num%> <br />
이름 : <%=name%> <br />
점수 : <%=score%>