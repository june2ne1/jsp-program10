<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date"/>
<div id="header"></div>
<div class="list-group" id="main_left">
  <a href="#" class="list-group-item active">
    관리자 기능
  </a>
  <a href="#" class="list-group-item" id="admin_home">홈</a>
  <a href="#" class="list-group-item" id="mgmt_member">회원관리</a>
  <a href="#" class="list-group-item" id="mgmt_prod">제품관리</a>
  <a href="#" class="list-group-item" id="mgmt_emp">사원관리</a>
  <a href="#" class="list-group-item" id="mgmt_stat">통계보기</a>
</div>
<div id="main_right">
<h1>회원목록</h1>
<c:choose>
 <c:when test="${fn:length(list)==0}">
  <table>
   <tr>
    <td>아이디</td>
    <td>이름</td>
    <td>성별</td>
    <td>생년원일</td>
    <td>전화번호</td>
    <td>이메일</td>
   </tr>
   <tr>
    <td colspan="6"><h2>회원목록이 없습니다.</h2></td>
   </tr>
  </table>
 </c:when>
 <c:otherwise>
  <table>
   <c:forEach var="member" items="${list}">
    <tr>
     <td>${member.userid}</td>
     <td>${member.name}</td>
     <td>${member.gender}</td>
     <td>${member.birth}</td>
     <td>${member.phone}</td>
     <td>${member.email}</td>
    </tr>
   </c:forEach>
  </table>
 </c:otherwise>
</c:choose>
<h1>테이블 생성</h1>
<form action="${context}/bank/main.do" id="frm_admin_result"
 id="frm_admin_table">
 <input type="text" name="table_name" placeholder="테이블명 입력" /> <input
  type="text" name="column" placeholder="컬럼명 입력" /> <input type="text"
  name="pk" placeholder="프라이머리 키 입력" /> <input type="button"
  id="btn_admin_table" value="생 성" />
 <!--  GET 방식 <input type="hidden" name="page" value="admin_result"/> -->
</form>
</div>
<script>
$(function() {
	$('#header').load('${context}/admin.do?page=header');
	$('#main_left').css("float","left").css('width','300px').css('text-align','center');
	$('#main_right').css("float","left").css("margin-left","150px");
	$('#mgmt_member').click(function() {
		Admin.memberList();
	});
});	
 $('#btn_admin_table').click(function() {
    $('#btn_admin_table').submit();
  });
 var Admin = {
	 memberList : function() {
		
	}
 };
</script>