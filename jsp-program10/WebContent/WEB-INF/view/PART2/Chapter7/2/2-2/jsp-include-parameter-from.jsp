<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<% 
	request.setCharacterEncoding("euc-kr"); 
	out.println("jsp-include-parameter-from.jsp 문서의 첫 번째 문장입니다.<HR><BR>");	
%>

	<jsp:include page="jsp-include-parameter-to.jsp" flush="true">
    	 <jsp:param name="korea" value="SEOUL"/>
     	<jsp:param name="japan" value="동경"/>
	</jsp:include>
	
<% 
	out.println("<HR>jsp-include-parameter-from.jsp 문서의 마지막 문장입니다.");
%>	