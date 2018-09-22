<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/12
  Time: 0:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
ExceptionHandler.jsp
<%
    out.println("exception:"+session.getAttribute("exception"));
    out.println("status_code:"+session.getAttribute("status_code"));
    out.println("servlet_name:"+session.getAttribute("servlet_name"));
    out.println("request_uri:"+session.getAttribute("request_uri"));

%>

</body>
</html>
