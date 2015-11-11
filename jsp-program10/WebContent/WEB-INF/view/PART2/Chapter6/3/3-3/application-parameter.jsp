<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>

<%

	Enumeration<String> InitParm = application.getInitParameterNames();

	while(InitParm.hasMoreElements()) {
		String ParamName = (String)InitParm.nextElement();
		out.println(ParamName + " : " + application.getInitParameter(ParamName) + "<BR>");		
	}	

%>