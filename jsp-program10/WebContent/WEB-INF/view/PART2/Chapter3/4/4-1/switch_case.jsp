<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>

<HEAD>
	<TITLE> SWITCH-CASE 문의 예</TITLE>
</HEAD>

<BODY>

<%

	int score = 84;
	int num_score = score/10;
	
	out.println("당신의 성적은 " + score + "점 입니다.<BR>");

	switch (num_score) {
	
		case 10 :
			out.println("당신은 A등급 입니다.<BR>");
			break;
			
		case 9 :
			out.println("당신은 B등급 입니다.<BR>");
			break;
					
		default :
			out.println("당신은 C등급 입니다.<BR>");
			
	}

%>

</BODY>

</HTML>