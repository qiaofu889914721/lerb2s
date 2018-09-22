<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/5
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>Response Info</title>
</head>
<body>
    <%!
        int bufferSize=0;
        String characterEncode=null;
        String contentType=null;
        Locale locale;
    %>
    <%
        bufferSize=response.getBufferSize();
        characterEncode=response.getCharacterEncoding();
        contentType=response.getContentType();
        locale=response.getLocale();
        out.println("<p>BufferSize:"+bufferSize+"</p>");
        out.println("<p>characterEncode:"+characterEncode+"</p>");
        out.println("<p>contentType:"+contentType+"</p>");
        out.println("<p>locale:"+locale+"</p>");
    %>
    <%
        response.setIntHeader("Refresh",1);
        SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String time=date.format(System.currentTimeMillis());
        out.println("现在时间："+time);
    %>

</body>
</html>
