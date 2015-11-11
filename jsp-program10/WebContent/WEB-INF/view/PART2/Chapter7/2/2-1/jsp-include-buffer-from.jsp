<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

	<HEAD>
		<TITLE>forward 액션 태그와 출력 버퍼와의 관계</TITLE>
	</HEAD>
	
	<BODY>
		1. jsp-forward-buffer-from.jsp 문서의 첫 번째 내용입니다.<BR>
		2. jsp-forward-buffer-from.jsp 문서의 두 번째 내용입니다.<BR>
		
		<jsp:include page="jsp-include-buffer-to.jsp" flush="false"/>
		
		5. jsp-forward-buffer-from.jsp 문서의 세 번째 내용입니다.<BR>
		6. jsp-forward-buffer-from.jsp 문서의 네 번째 내용입니다.<BR>
		
	</BODY>
	
</HTML>