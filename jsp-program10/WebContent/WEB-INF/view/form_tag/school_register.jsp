<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String name = request.getAttribute("name").toString();
  String age = request.getAttribute("age").toString();
  String subject = request.getAttribute("subject").toString();
  String addr = request.getAttribute("addr").toString();
  String major = request.getAttribute("major").toString();
  String[] arr = subject.split(",");
%>
<style>
	.tab_school_register{border : 1px solid black; width : 250px; border-collapse: collapse;}
	.tab_school_register tr {border : 1px solid black; width : 250px}
	.tab_school_register tr td{border : 1px solid black; width : 250px}
</style>

<table class="tab_school_register" >
 <tr>
	 <td>이름</td>
	  <td><%=name %></td>
 </tr>
 <tr>
	 <td>나이</td>
	  <td> <%=age %></td>
 </tr>
 <tr>
	 <td>주소</td>
	  <td> <%=addr %></td>
 </tr>
  <tr>
	 <td>전공</td>
	  <td> <%=major %></td>
 </tr>
<%
 for(String s : arr){
  //확장된 for문은 index값을 별도로 호출하지 않을 경우 사용하면 편리하다.
  %>
	 <tr>
	 <td>수강과목</td>
	  <td> <%=s %></td>
 </tr> 
 <% 
 }
%>
</table>