<%@ page import="java.util.Enumeration" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/5
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main.jsp</title>
</head>
<body>
    <%
        String siteName= URLEncoder.encode(request.getParameter("siteName"),"utf-8");
        String url=URLEncoder.encode(request.getParameter("url"),"utf-8");
        Cookie sn=new Cookie("siteName",siteName);
        Cookie ul=new Cookie("url",url);
        sn.setMaxAge(24*60*60);
        ul.setMaxAge(24*60*60);
        response.addCookie(sn);
        response.addCookie(ul);
    %>
    <ul>
        <li><p><b>网站名:</b>
            <%= request.getParameter("siteName")%>
        </p></li>
        <li><p><b>网址:</b>
            <%= request.getParameter("url")%>
        </p></li>
    </ul>
</body>
</html>
