<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/25
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <style>
    table{
      margin:40px auto;
    }
    table,tr,td,th{
      border: 1px solid black;
      border-collapse: collapse;
    }
    th{
      background-color: gray;
    }
  </style>
  <body>
  <table>
    <th>Header Name</th>
    <th>Header Values</th>
    <tbody>
    <%
      Enumeration headers=request.getHeaderNames();
      while(headers.hasMoreElements()){
          String headName=(String)headers.nextElement();
          out.print("<tr><td>"+headName+"</td>");
          String headValue=request.getHeader(headName);
          out.println("<td>"+headValue+"</td></tr>");
      }

    %>
    </tbody>
  </table>
  </body>
</html>
