<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/main.css">
    <title>首页</title>
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
            <span>最新博客</span>
        </div>
        <ul class="bul">
            <li>
                <div class="introduction">
                    <h5 class="title">blgo 精简标题testes</h5>
                    <p class="description">摘要: 搞开发，写页面的时候，尤其是js，经常会遇到js缓存问题，导致测试最新结果出不来。一般可以通过ctrl+F5强制刷新，但是每次这样麻烦。这里推荐下
                        无痕迹测试；ctrl+shift+n从此可以开发的搞前端开发了；...
                    </p>
                    <p class="timestamp">
                        发表于 2017-03-24 18:34 阅读(4101)
                    </p>
                </div>
            </li>

            <c:forEach items="${requestScope.blogs}" var="ele">
                <li>
                    <div class="introduction">
                        <h5 class="title"><a class="articlelink"
                                             href="/articleServlet?id=<c:out value="${ele.id}"/>"><c:out
                                value="${ele.title}"></c:out></a></h5>
                        <p class="description">
                            <a class="articlelink" href="/articleServlet?id=<c:out value="${ele.id}"/>">
                                <c:out value="${ele.content}"/>
                            </a>
                        </p>
                        <p class="timestamp">
                            发表于 <fmt:formatDate value="${ele.time}" pattern="yyyy-MM-dd HH:mm:ss"/> /> 阅读(<c:out
                                value="${ele.visit}"/>)
                        </p>
                    </div>
                </li>
            </c:forEach>

        </ul>

    </section>
    <aside>
        <div class="erweima">
            <div class="qTitle">
                <span>关注xx微信公众号</span>
            </div>
            <div class="qImg">
                <img src="images/1.jpg" alt="">
            </div>
        </div>
        <!--博主信息-->
        <div class="personInfo">
            <div class="qTitle">
                <span>博主信息</span>
            </div>
            <div class="qImg">
                <img src="images/3.jpg" alt="">
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


</section>
<section class="sec2">
    <div class="pg">
        <ul class="page2">
            <li class="firstPage">
                <a href="">首页</a>
            </li>
            <li class="prePage">
                <a href="">上一页</a>
            </li>
            <li class="currentPage">
                <a href="">1</a>
            </li>
            <li>
                <a href="">2</a>
            </li>
            <li>
                <a href="">3</a>
            </li>
            <li class="nextPage">
                <a href="">下一页</a>
            </li>
            <li class="lastPage">
                <a href="">尾页</a>
            </li>
        </ul>
    </div>
</section>
<footer>
    <p>Powered by fuckmm V3.0</p>
    <p>Copyright © 2012-2016 fucnkzhong 版权所有</p>
</footer>
</body>

</html>