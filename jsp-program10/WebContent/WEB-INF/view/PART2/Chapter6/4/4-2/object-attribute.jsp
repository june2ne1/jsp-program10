<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

	//request 기본객체의 속성 지정

	request.setAttribute("number", 210);
	request.setAttribute("name", "홍길동");
	request.setAttribute("average", 95.6);
	
	out.println("request 기본객체의 속성 값 추출<HR>");
	
	Integer my_number = (Integer)request.getAttribute("number");
	String my_name = (String)request.getAttribute("name");
	double my_average = ((Double)request.getAttribute("average")).doubleValue();
	
	out.println("number : " + my_number + "<BR>");
	out.println("name : " + my_name + "<BR>");
	out.println("average : " + my_average + "<BR>");
	
%>	
