<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%--<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />--%>
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <%--<link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">--%>
    <%--<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>--%>
    <%--<script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>--%>
    <%--<script src="/lib/layui/layui.js" charset="utf-8"></script>--%>
    <%--<script type="text/javascript" src="/js/xadmin.js"></script>--%>
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
<div class="layui-input-inline" style="margin-left:100px;">
        <span style="margin: 10px">待选消缺员</span>
    <select multiple="multiple"
            id="select1" style="width:150px;height:160px;" class="layui-input" name="defectUid">
        <c:forEach items="${toBeSelectedDefect}" var="toBeSelectedDefect">
            <option value="${toBeSelectedDefect.id}">${toBeSelectedDefect.uName}</option>
        </c:forEach>
        <%--<option value="1">选项1</option>--%>
        <%--<option value="2">选项2</option>--%>
        <%--<option value="3">选项3</option>--%>
        <%--<option value="4">选项4</option>--%>
        <%--<option value="5">选项5</option>--%>
        <%--<option value="6">选项6</option>--%>
        <%--<option value="7">选项7</option>--%>
        <%--<option value="9">选项9</option>--%>
        <%--<option value="10">选项10</option>--%>
        <%--<option value="11">选项11</option>--%>
        <%--<option value="12">选项12</option>--%>
        <%--<option value="13">选项13</option>--%>
        <%--<option value="14">选项14</option>--%>
    </select>

<div class="centent">

        <span id="add" >添加到已选消缺员&gt;&gt;</span>

</div>
</div>
<div class="layui-input-inline" style="margin-left:100px;">

    <span style="margin: 10px">已选消缺员</span>
    <select multiple="multiple" id="select2" style="width: 150px;height:160px;" class="layui-input" name="defectUid">
        <c:forEach items="${selectedDefect}" var="selectedDefect">
            <option value="${selectedDefect.id}">${selectedDefect.uName}</option>
        </c:forEach>

    </select>

    <div class="centent">
        <span id="remove">&lt;&lt;添加到待选消防员</span>
    </div>
</div>
<div class="layui-form-item">

    <%--占位符--%>
    <label  class="layui-form-label">
    </label>
    <label  class="layui-form-label">
    </label>
    <button  class="layui-btn" lay-filter="add" lay-submit="">
        保存
    </button>
    <button  class="layui-btn" lay-filter="add" lay-submit="">
        返回
    </button>
</div>
</body>
</html>