<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String name = request.getAttribute("name").toString();
  String age = request.getAttribute("age").toString();
  String subject = request.getAttribute("subject").toString();
  String[] arr = subject.split(",");
%>

<table style='border : 1px solid black; width : 250' >
 <tr>
 <td>이름</td>
  <td><%=name %></td>
  <td>
 
 </tr>
 <tr>
 <td>나이</td>
  <td> <%=age %></td>
  <td>
 
 </tr>
<%
 for(String s : arr){
  //확장된 for문은 index값을 별도로 호출하지 않을 경우 사용하면 편리하다.
%>  
 <tr>
    <td>과목</td>
    <td><%=s%></td>
 </tr> 
<% 
 }
%>
</table>