<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.MemberVO" %>
<%
	MemberVO member = (MemberVO)request.getAttribute("member");
%>
<h1>
아이디 : <%= member.getUserid() %> <br />
비밀번호 : <%= member.getPassword() %> <br />
이름 : <%= member.getName() %> <br />
생년 : <%= member.getBirth() %> <br />
전화번호 : <%= member.getPhone() %> <br />
이메일 : <%= member.getEmail() %> <br />
성별 : <%= member.getGender() %> <br />
주소 : <%= member.getAddr() %> <br />
등록일 : <%= member.getRegdate() %> <br />
프로필사진 : <%= member.getProfile() %>


</h1>