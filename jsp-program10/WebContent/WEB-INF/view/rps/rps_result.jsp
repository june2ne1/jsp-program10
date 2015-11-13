<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String result = request.getAttribute("result").toString();
%>
<h1>가위바위보 결과</h1>
<%=result %>