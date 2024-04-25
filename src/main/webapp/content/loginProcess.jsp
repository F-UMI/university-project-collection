<%@ page import="org.hello.dbpproject.entity.Member" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2024-04-22
  Time: 오후 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head></head>
<body>
<%
    System.out.println("--Login Processing--");

    request.setCharacterEncoding("utf-8");
    String inputID = request.getParameter("id");
    String inputPassword = request.getParameter("password");
    System.out.println("request정보 -> id" + inputID + "password :" + inputPassword);

    //세션 정보 설정
    Member member = (Member) session.getAttribute("member");
    //세션 정보 확인
    if ((member != null) && (inputID.equals(member.getId()) && inputPassword.equals(member.getPassword()))) {
        System.out.println("Session 정보 -> id : " + member.getId() + "password :" + member.getPassword());
        System.out.println("-- Complete!! --");
        member.setStatus(true);
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("login_fail.jsp");
    }

%>
</body>
</html>