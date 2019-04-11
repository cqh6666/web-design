<%@ page import="java.net.SocketOption" %><%--
  Created by IntelliJ IDEA.
  User: 陈生
  Date: 2019/3/29
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>life.jsp</title>
</head>
<body>
    <%!
        private int initVar = 0;
        private int serviceVar = 0;
        private int destroyVar = 0;
    %>

    <%!
        public void jspInit(){
            initVar++;
            System.out.println("jspInit():JSP被初始化了"+initVar+"次");
        }
        public void jspDestroy(){
            destroyVar++;
            System.out.println("jspDestroy():JSP被销毁了"+destroyVar+"次");
        }
    %>

    <%
        serviceVar++;
        System.out.println("_jspService():JSP共相应了"+serviceVar+"次请求");

        String content1="初始化次数："+initVar;
        String content2="响应客户请求次数："+serviceVar;
        String content3="销毁次数："+destroyVar;
        String content4="Addr:"+request.getRemoteAddr();
        String content5="User:"+request.getRemoteUser();
        String content6="Port:"+request.getRemotePort();
    %>
    <h1>测试测试</h1>
    <p><%=content1%></p>
    <p><%=content2%></p>
    <p><%=content3%></p>
    <br/>
    <p><%=content4%></p>
    <p><%=content5%></p>
    <p><%=content6%></p>
    <jsp:include page="date.jsp" flush="true"/>
    <%
        out.println("直接输出");
    %>
</body>
</html>