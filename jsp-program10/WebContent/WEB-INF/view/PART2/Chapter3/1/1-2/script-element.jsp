<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%!
	/** 두 수의 합을 구하는 sum_result */
	public int sum_result(int data1, int data2) {
		int sum = data1 + data2;
		return sum;
}
%>

<HTML>

	<HEAD>
		<TITLE>스크립트 요소의 예</TITLE>
	</HEAD>
	
	<BODY>
	
	<%-- 여기서부터 스크립트릿이 시작됩니다 --%>
	
	<%
	
		int num1 = 20;  // 변수 num1에 20을 지정
		int num2 = 40;  // 변수 num2에 40을 지정
		
		/*
			num1과 num2라는 변수를 생성하고 값을 지정합니다		
			sum_result()를 사용해 num1과 num2의 합을 구합니다
		*/
		int result = sum_result(num1, num2);
	
	%>

	<!-- 다음음 <%=num1%>과 <%=num2%>의 합을 출력하는 구문입니다 -->
	
	<%=num1%>과 <%=num2%>의 합은 <%=result%>입니다.	

	</BODY>
	
</HTML>