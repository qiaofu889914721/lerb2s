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
    <title><%out.print(title);%></title>
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
    <th>Session信息</th>
    <th>值</th>
    <tbody>
    <%!
        String title="欢迎再次访问91porn";
    %>
    <%
      Date createTime=new Date(session.getCreationTime());
      Date lastAcessTime=new Date(session.getLastAccessedTime());
      int visitedCount=0;

      if(session.isNew()){
          title="欢迎访问91porn";
          session.setAttribute("userID","ABCD");
          session.setAttribute("visitCount",visitedCount);
      }else {
          visitedCount=(int)session.getAttribute("visitCount");
          visitedCount++;
          session.setAttribute("visitCount",visitedCount);
      }
      out.println("<tr><td>userID</td><td>"+session.getAttribute("userID")+"</tr>");
      out.print("<tr><td>visitCount</td><td>"+session.getAttribute("visitCount")+"</tr>");

    %>
    </tbody>
  </table>
  </body>
</html>
