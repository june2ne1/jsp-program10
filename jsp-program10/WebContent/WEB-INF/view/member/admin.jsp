<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${context}/css/common.css" />
<jsp:useBean id="now" class="java.util.Date"/>
현재시간 :  <c:out value="${now}"/><br  />
날짜 : <fmt:formatDate value="${now}" type="date"/><br  />
시간 : <fmt:formatDate value="${now}" type="time"/><br  />
<!-- 또는 아래와 같이 한줄로 설정가능 -->
<%-- <fmt:formatDate value="${now}" type="both"/><br  /> --%>
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
<script>
 document.getElementById('btn_admin_table').addEventListener('click',
   function() {
    document.getElementById('btn_admin_table').submit();
   });
</script>
 