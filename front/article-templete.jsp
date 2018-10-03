<%@ page import="com.blog.bean.Blog" %>
<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="front/css/article.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">

    <title>Document</title>
</head>

<body>
<header>
    <div class="weather">
        <a href="">
            <div class="weRight">
                <p class="weDate">深圳</p>
                <p class="weDetail">七日天气</p>
            </div>
        </a>
        <a href="">
            <div class="we">
                <div class="weLeft">
                    <img src="http://pic9.tianqijun.com/static/tianqi2018/ico2/b1.png" alt="">
                </div>
                <div class="weRight">
                    <p class="weDate">明日</p>
                    <p class="weDetail">29°~30°</p>
                </div>
            </div>
        </a>
        <a href="">
            <div class="we">
                <div class="weLeft">
                    <img src="http://pic9.tianqijun.com/static/tianqi2018/ico2/b7.png" alt="">
                </div>
                <div class="weRight">
                    <p class="weDate">明日</p>
                    <p class="weDetail">29°~30°</p>
                </div>
            </div>
        </a>
        <a href="">
            <div class="we">
                <div class="weLeft">
                    <img src="http://pic9.tianqijun.com/static/tianqi2018/ico2/b1.png" alt="">
                </div>
                <div class="weRight">
                    <p class="weDate">明日</p>
                    <p class="weDetail">29°~30°</p>
                </div>
            </div>
        </a>
    </div>
</header>
<nav>
    <ul>
        <li>
            <a href="http://localhost:8080/index.html">首页</a>
        </li>
        <li>
            <a href="">最新电影</a>
        </li>
        <li>
            <a href="">最新电影</a>
        </li>
        <li>
            <a href="">最新电影</a>
        </li>
        <li>
            <a href="">最新电影</a>
        </li>
    </ul>
    <form action="">
        <div class="foo">
            <input type="text" name="search" id="search" placeholder="搜点东西"/>
        </div>
        <button id="btn_search">搜索</button>
    </form>
</nav>
<section class="main">
    <section class="blogs">
        <div class="ht">
            <span>博客信息</span>
        </div>
        <% Blog blog = (Blog) request.getAttribute("blog"); %>
        <h5 class="title" style="text-align: center;height: 20px;"><% out.print(blog.getTitle());%></h5>
        <div class="articleDetail">
            <%
                out.print(blog.getContent());
            %>
            <div class="keywords">
                <span>关键字&nbsp;:&nbsp;</span>
                <a href="#">&nbsp;java1234&nbsp;</a>
            </div>
        </div>
        <div class="nearPage">
            <div class="prevPage">
                <span>上一篇&nbsp;:&nbsp;</span>
                <a href="#">IDEA字体大小设置</a>
            </div>
            <div class="nextPage">
                <span>下一篇&nbsp;:&nbsp;</span>
                <a href="#">IDEA字体大小设置2</a>
            </div>
        </div>
    </section>
    <aside>
        <div class="erweima">
            <div class="qTitle">
                <span>关注xx微信公众号</span>
            </div>
            <div class="qImg">
                <img src="front/images/1.jpg" alt="">
            </div>
        </div>
        <!--博主信息-->
        <div class="personInfo">
            <div class="qTitle">
                <span>博主信息</span>
            </div>
            <div class="qImg">
                <img src="front/images/3.jpg" alt="">
            </div>
            <p>国服第一瑞文！！！！</p>
        </div>
        <!--日志类别-->
        <div class="logByTypes">
            <div class="qTitle">
                <span>按日志类别</span>
            </div>
            <ul>
                <li>
                    <a href="">Java核心基础(126)
                    </a>
                </li>
                <li>
                    <a href="">Layui(1)
                    </a>
                </li>
                <li>
                    <a href="">Mysql(2)</a>
                </li>
                <li>
                    <a href="">Dubbo(7)</a>
                </li>
                <li>
                    <a href="">IDEA(0)</a>
                </li>
                <li>
                    <a href="">SpringBoot(10)</a>
                </li>
                <li>
                    <a href="">Git(1)</a>
                </li>
                <li>
                    <a href="">SpringCloud(1)</a>
                </li>
            </ul>
        </div>
        <!--按日期归类-->
        <div class="logByTime">
            <div class="qTitle">
                <span>按日期</span>
            </div>
            <ul>
                <li>
                    <a href="">2017年04月(12)
                    </a>
                </li>
                <li>
                    <a href="">2017年04月(12)
                    </a>
                </li>
                <li>
                    <a href="">2017年04月(12)</a>
                </li>
                <li>
                    <a href="">2017年04月(12)</a>
                </li>
                <li>
                    <a href="">2017年04月(12)</a>
                </li>
                <li>
                    <a href="">2017年04月(12)</a>
                </li>
                <li>
                    <a href="">2017年04月(12)</a>
                </li>
                <li>
                    <a href="">2017年04月(12)</a>
                </li>
            </ul>
        </div>
        <!--友情链接-->
        <div class="friendLink">
            <div class="qTitle">
                <span>友情链接</span>
            </div>
            <ul>
                <li>
                    <a href="">猪八戒网
                    </a>
                </li>
                <li>
                    <a href="">溜客网
                    </a>
                </li>
                <li>
                    <a href="">中国人才热线
                    </a>
                </li>
                <li>
                    <a href="">java1234
                    </a>
                </li>
            </ul>
        </div>
    </aside>

    <!--评论框-->
    <div class="comment">
        <div class="comwrapper">
            <div class="loginblock"><a data-toggle="modal" data-target="#loginModal" href="front/login-2.html">登录</a>
            </div>
            <div class="border-t">
                <img src="front/images/border-t.png" alt="">
            </div>
            <div class="for_textarea">
                <textarea name="comment" id="comment" cols="30" rows="10"></textarea>
            </div>
            <a href="">
                <button id="submit"></button>
            </a>
        </div>
        <div class="comments">
            <c:choose>
                <c:when test="${empty(commentList)}">
                    <div class="nocomment">还没有评论，快来抢沙发吧！</div>
                    <p class="ads">Java知识网正在试用畅言</p>
                </c:when>
                <c:otherwise>
                    <c:forEach items="${commentList}" var="comment">
                        <div style="border: 1px solid #7e91a5;border-radius: 4px;margin-bottom: 8px;">
                            <input type="hidden" id="commentId" value=<c:out value="${comment.id}"/>/>
                            <p style="font-weight: bold;"><span class="glyphicon-user"></span>&nbsp;<c:out
                                    value="${comment.nickname}"/></p>
                            <div>
                                <p>&nbsp;&nbsp;<c:out value="${comment.content}"/></p>
                            </div>
                            <div style="height: 16px;">
                                <div style="float: right;margin-right: 20px;">
                                    <span class="star">赞：<a href="javascript:void(0)" onclick="star(this,<c:out value="${comment.id}"/>);"><c:out
                                            value="${comment.star}"/></a> </span>
                                    <span class="diss">踩：<a href="javascript:void(0)" onclick="diss(this,<c:out value="${comment.id}"/>)"><c:out
                                            value="${comment.diss}"/></a></span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:otherwise>
            </c:choose>

        </div>
    </div>


</section>

<footer>
    <p>Powered by fuckmm V3.0</p>
    <p>Copyright © 2012-2016 fucnkzhong 版权所有</p>
</footer>
<!--模态对话框-->
<div class=" modal fade" id="loginModal" aria-hidden="true" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">

        </div>
    </div>
</div>
</body>
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="front/js/main.js"></script>

</html>