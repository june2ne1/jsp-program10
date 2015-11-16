<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<h1>  
<a href="${context}/member/main.do?page=guest">고객 화면</a><br />
<jsp:include page="be_member_form.jsp"/>
<jsp:include page="login_form.jsp"/>
<jsp:include page="id_search.jsp"/>
<jsp:include page="pw_search.jsp"/>
<a href="${context}/member/main.do?page=admin">관리자 화면</a>
</h1>  