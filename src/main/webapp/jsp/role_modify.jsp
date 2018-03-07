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
    <link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
</head>
<body>
<!-- 中部开始 -->
<div class="wrapper">
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <form class="layui-form" action="/role/update" method="post">
                <input type="hidden" name="id" value="${RoleId.id}" />
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>角色编号:
                    </label>
                    <div class="layui-input-inline">

                        <input type="text" value="${RoleId.rNumber}"  name="rNumber" required=""
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        <span class="x-red">*</span>角色名称：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" value="${RoleId.rName}" id="L_username" name="rName" required="" lay-verify="nikename"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>启用状态:
                    </label>
                    <div class="layui-input-inline">
                        <input type="radio"  value="r" name="rState" required=""
                               <c:if test="${RoleId.rState == 2}">checked="checked"</c:if>  autocomplete="on" class="layui-input" title="启用">

                        <input type="radio"  value="1" name="rState" required=""
                               <c:if test="${RoleId.rState == 1}">checked="checked"</c:if>       autocomplete="off" class="layui-input" title="不启用">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label id="L_repass" class="layui-form-label">
                    </label>
                    <input  class="layui-btn" type="submit"  lay-filter="add" lay-submit="" value="提交">
                    </input>
                    <button  class="layui-btn" lay-filter="add" lay-submit="" onclick="javascript:history.go(-1)">
                        返回
                    </button>

                </div>
            </form>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 中部结束 -->
<script>
    //百度统计可去掉
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>
