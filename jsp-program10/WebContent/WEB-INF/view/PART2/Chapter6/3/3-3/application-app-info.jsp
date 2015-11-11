<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.io.*" %>
<%

	// getMimeType(), getResource(), getRealPath() 메소드의 예
	
	out.println("getMimeType, getResource, getRealPath 정보 출력<HR>");
	out.println("global.jpg의 MIME 타입 : " + application.getMimeType("global.jpg") + "<BR>");
	out.println("루트의 URL 정보 : " + application.getResource("/") + "<BR>");
	out.println("루트의 실제 경로 : " + application.getRealPath("/") + "<BR><BR><BR>");
	
	// getResourceAsStream() 메소드의 예

	String PathAndName = "./mydata.txt";
	
	char[] my_buff = new char[512];
	int length = -1;

	InputStreamReader isr =  new InputStreamReader(application.getResourceAsStream(PathAndName));
	BufferedReader br = new BufferedReader(isr);
	
	out.println("mydata.txt의내용 출력<HR>");

	while( (length = br.read(my_buff)) != -1) { 
		out.println(new String(my_buff, 0, length));
	}
	
	br.close();
	isr.close();

%>