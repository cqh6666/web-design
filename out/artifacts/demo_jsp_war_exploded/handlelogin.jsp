<%--
  Created by IntelliJ IDEA.
  User: 陈生
  Date: 2019/3/29
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username="";
    String pwd ="";
    username=request.getParameter("username");
    pwd=request.getParameter("pwd");

//    out.println(username);
//    out.println(pwd);
%>
<% if("admin".equals(username) && "123456".equals(pwd)){
        session.setAttribute("username",username);
        response.sendRedirect("juan.jsp");
        return;
    }else{
        response.sendRedirect("error.jsp");
    }
%>