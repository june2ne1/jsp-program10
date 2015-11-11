<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

	<HEAD>
		<TITLE>forward 액션 태그와 출력 버퍼와의 관계</TITLE>
	</HEAD>
	
	<BODY>
		1. 이 페이지는 jsp-forward-buffer-from.jsp의 내용입니다.<BR>
		2. jsp-forward-buffer-from.jsp 문서의 마지막 내용입니다.
		
		<jsp:forward page="jsp-forward-buffer-to.jsp"/>
		
	</BODY>
	
</HTML>