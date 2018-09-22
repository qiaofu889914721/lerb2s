<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/5
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取cookie</title>
</head>
<body>
    <ul>
    <%

        Cookie[] cookies=request.getCookies();
        for(Cookie cookie:cookies){
            out.println("<li>"+  URLDecoder.decode(cookie.getName(),"utf-8")+":"+ URLDecoder.decode(cookie.getValue(),"utf-8")+"</li>");
            out.println("-----------------------------------------------");
        }
    %>
    </ul>
</body>
</html>
