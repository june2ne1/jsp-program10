<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${context}/css/common.css" />
<jsp:useBean id="now" class="java.util.Date"/>
현재시간 : <c:out value="${now}"/><br />
날짜 : <fmt:formatDate value="${now}" type="date"/><br />
시간 : <fmt:formatDate value="${now}" type="time"/><br />
<%-- 둘다표시 : <fmt:formatDate value="${now}" type="both"/><br /> --%>
<h1>회원목록</h1>
<c:choose>
	<c:when test="${fn:length(list)==0}">
		<table>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>생년</th>
				<th>전화번호</th>
				<th>성별</th>
				<th>이메일</th>
			</tr>
			<tr>
				<td colspan="6"><h2>회원 목록이 없습니다.</h2></td>
			</tr>
		</table>
		
	</c:when>
	<c:otherwise>
		<table>
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>생년</th>
		<th>전화번호</th>
		<th>성별</th>
		<th>이메일</th>
	</tr>
	<c:forEach var="member" items="${list}">
	for(String s : arr){}
		<tr>
			<td>${member.userid}</td>
			<td>${member.name} </td>
			<td>${member.birth}</td>
			<td>${member.phone}</td>
			<td>${member.gender}</td>
			<td>${member.email}</td>
		</tr>
	</c:forEach>
	</table>
	</c:otherwise>
</c:choose>
	
<h1>테이블 생성</h1>
<form action="${context}/bank/main.do" id="frm_admin_table">
	<input type="text" name="table_name" placeholder="테이블명 입력" />
	<input type="text" name="column" placeholder="컬럼명/타입 입력" />
	<input type="text" name="pk" placeholder="프라이머리 키 입력" />
	<input type="button" id="btn_admin_table" value="생 성"/>
	<input type="hidden" name="page" value="admin_result"/>
</form>	
<script>
	document.getElementById('btn_admin_table').addEventListener('click', function() {
		document.getElementById('frm_admin_table').submit();
	});
</script>
