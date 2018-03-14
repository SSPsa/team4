<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin1.1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <link rel="stylesheet" href="/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
</head>
<body>
<!-- 中部开始 -->
<div class="wrapper">
    <!-- 右侧主体开始 -->
    <div class="page-content" >
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <form class="layui-form" action="/flawtype/Upda" method="post" >
                   <input type="hidden" name="id" value="${que.id}">
                <div class="layui-form-item">
                    <label for="bianhao" class="layui-form-label" style="width: 100px;">
                        缺陷类型名称：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="bianhao" name="ftName" value="${que.ftName}" class="layui-input">
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label" style="width: 100px;">启用状态：</label>
                        <div class="layui-input-block">
                            <span style="white-space:pre"> </span><input type="radio" name="ftState"  value="2" <c:if test="${que.ftState==2}">checked="checked"</c:if> title="启用">
                            <span style="white-space:pre">  </span><input type="radio" name="ftState"  value="1"  <c:if test="${que.ftState==1}">checked="checked"</c:if>title="不启用">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-top: 50px;margin-left: 140px;">
                        <input type="submit" class="layui-btn" value="确定">
                        <a href="javascript:history.go(-1)" class="layui-btn">返回</a>
                    </div>
                    <!-- 右侧内容框架，更改从这里结束 -->
                </div>
            </form>
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 中部结束 -->
</body>
</html>
