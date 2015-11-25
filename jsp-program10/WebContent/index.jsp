<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/common.css" type="text/css"/>
 
 
<div id="box">
<table>
	<tr>
		<td rowspan="8"><img src="${member.profile}" width="70%" height="80%"/></td>
		<th>항목</th>
		<th>빈 칸</th>
	</tr>
	<tr>
			<td>아이디</td>
		<td>${member.userid}</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type= "password" placeholder=" ${member.pass}" /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${member.name}</td>
	</tr>
	<tr>
		<td>생일</td>
		<td>${member.gender}</td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input type ="text" placeholder =" ${member.addr}" /></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type ="text" placeholder =" ${member.email}" /></td>
	</tr>
	
	<tr>
		<td>등록일</td>
		<td>${member.regate}</td>
	</tr>
	<tr>
		<td><form><button type="button" onclick="alert('준비중입니다.')">사진변경</button></form></td>
		<td><form><button type="button" onclick="alert('준비중입니다.')">정보수정</button></form></td>
		<td><form><button type="button" onclick="alert('준비중입니다.')">확인</button></form></td>
	</tr>
	
</table>
</div>
<script>
	$('td').css('text-align','center');
	$('tr').add('th').add('td').css('float','center');
	$('#box').css('clear','both').css('margin','50px');
</script>
 
