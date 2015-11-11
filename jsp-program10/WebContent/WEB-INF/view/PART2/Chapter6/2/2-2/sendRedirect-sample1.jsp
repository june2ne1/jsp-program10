<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%
	out.println("sendRedirect-sample1.jsp의 내용입니다.");
	response.sendRedirect("sendRedirect-sample2.jsp");
%>