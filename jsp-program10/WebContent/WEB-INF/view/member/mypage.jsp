<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>
아이디 : ${member.userid} <br />
비밀번호 : ${member.password} <br />
이름 : ${member.name} <br />
생년 : ${member.birth} <br />
전화번호 : ${member.phone} <br />
이메일 : ${member.email} <br />
성별 : ${member.gender} <br />
주소 : ${member["addr"]} <br />
등록일 : ${member.regdate} <br />
프로필사진 : ${member.profile} 


</h1>