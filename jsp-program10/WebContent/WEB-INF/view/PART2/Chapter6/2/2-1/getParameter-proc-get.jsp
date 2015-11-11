<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("euc-kr");%>

<%
    int num = Integer.parseInt(request.getParameter("num"));

    String name = request.getParameter("name");
    String nation = request.getParameter("nation");

    float score = Float.parseFloat(request.getParameter("score"));

    out.println("번호는 " + num + "입니다.<BR>");
    out.println("이름는 " + name + "입니다.<BR>");
    out.println("평점은 " + score + "입니다.<BR>");
    out.println("국적은 " + nation + "입니다.<BR>");

%>