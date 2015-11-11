<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%

	out.println("1. 첫 번째 문장입니다.<BR><BR>" );
	out.println("2. 두 번째 문장입니다.<BR><BR>" );
	
	// clearBuffer() 메소드 실행
	out.clearBuffer();
	
	out.println("3. 세 번째 문장입니다.<BR><BR>" );
	out.println("4. 네 번째 문장입니다.<BR><BR>" );
	
	// close() 메소드 실행
	out.close();
	
	out.println("5. 다섯 번째 문장입니다.<BR><BR>" );
	
%>