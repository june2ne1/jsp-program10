<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> IF ~ ELSE 문의 예</TITLE>
</HEAD>

<BODY>

<%

	int score = 84;

	out.println("당신의 성적은 " + score + "점 입니다.<BR>");

	if( score >=90 ) {		
		out.println("당신은 A등급 입니다.<BR>");		
	} else if( score >= 80) {		
		out.println("당신은 B등급 입니다.<BR>");		
	} else {
		out.println("당신은 C등급 입니다.<BR>");			
	}

%>

</BODY>

</HTML>