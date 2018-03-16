
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%--<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />--%>
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <script type="text/javascript" src="/js/jquery-1.8.3.js"></script>
    <style>
        * { margin:0; padding:0; }
        div.centent {
            float:left;
            text-align: center;
            margin: 10px;
        }
        span {
            display:block;
            cursor:pointer;
        }
    </style>

    <script>
        $(function () {
            $("#add").click(function () {
                $("#select1 option:selected").appendTo($("#select2"));
            })
        });
        $(function () {
            $("#remove").click(function () {
                $("#select2 option:selected").appendTo($("#select1"));
            })
        });
    </script>
</head>
<body>
<form class="layui-form" action="/PollingMission/updatepollingMissionpmState" method="post">
    <input name="id" type="hidden" value="${pmid}">
    <div class="layui-form-item">
        <label class="layui-form-label">
            <span class="x-red"></span>巡检员:
        </label>
        <div class="layui-input-inline">
            <select name="pollingUid">
                <c:forEach items="${asslistUser}" var="listUser2">
                    <option value="${listUser2.id}">${listUser2.uName}</option>
                </c:forEach>
            </select>
        </div>

    </div>




    <div class="layui-form-item">
        <%--占位--%>
        <label  class="layui-form-label">
        </label>
        <label  class="layui-form-label">
        </label>

        <button  class="layui-btn" lay-filter="add" lay-submit="" onclick="x_admin_close()">
            保存
        </button>
        <button  class="layui-btn" lay-filter="add" lay-submit="">
            返回
        </button>


</form>

</body>
</html>