<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%

	out.println("현재 버퍼의 크기 : " + out.getBufferSize() + "<BR><BR>" );

	out.println("Happy Birthday to you.<BR><BR>");
		
	out.println("현재 버퍼에 남아있는 크기 : " + out.getRemaining() + "<BR><BR>");

	out.println("flush를 수행합니다.<BR><BR>");
	out.flush();	
	
	// flush가 수행된 후 아래의 구문들이 출력되는 이유는
	// 스크립트가 종료되면 자동으로 flush가 발생하기 때문입니다.
	
	out.println("현재 버퍼에 남아있는 크기 : " + out.getRemaining() + "<BR><BR>");
	
	if( out.isAutoFlush()) {
		out.println("버퍼가 가득차면 자동으로 flush가 발생합니다.");
	}
	
%>