<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
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
        #select2 option{
           font-size: 30px;
            color: red;
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
<form action="/PollingMission/addfalw" method="post">
<input type="hidden" name="cId" value="${execuadd.cId}">
<input type="hidden" name="pmid" value="${execuadd.id}">
<input type="hidden" name="discoverUid" value="${execuadd.pollingUid}">

<table class="layui-table">

    <tr>
        <td>线路编号:</td>
        <td>${execuadd.circuit.cName}</td>
        <td>杆塔编号:</td>
        <td>${execuadd.circuit.riseTid}</td>
    </tr>
    <td>缺陷类型:</td>
    <td>
        <select name="ftId" class="layui-input">
            <c:forEach items="${typeList}" var="typeList">
                <option value="${typeList.id}">${typeList.ftName}</option>
            </c:forEach>
        </select>
    </td>
    <td>缺陷级别:</td>
    <td>
        <select name="grade" class="layui-input">
        <option value="1">一般</option>
        <option value="2"> 严重</option>
        <option value="3"> 紧急</option>
        </select>
    </td>

    <tr>
        <td>完好率:</td>
        <td><input name="completeness" type="text" class="layui-input"></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>发现人员：</td>
        <td>${execuadd.polling.uName}</td>
    </tr>
    <tr>
        <td style="row-span:2;">缺陷描述:</td>
        <td>
            <textarea name="describe" class="layui-input" style="width: 200px;height: 100px"></textarea>
        </td>

    </tr>

</table>
<div class="layui-form-item">
    <%--占位符--%>
    <label  class="layui-form-label">
    </label>
        <button  class="layui-btn" lay-filter="add" lay-submit="" onclick="x_admin_close2()">
            上传回执
        </button>
    <button  class="layui-btn" lay-filter="add" lay-submit="" onclick="x_admin_close2()">
        返回
    </button>
</div>

</form>
<script>
    /*关闭弹出框口*/
    function x_admin_close2(){
        //alert(window.top.window.document.getElementById("pageIndex").value)
        //window.top.window.location.href="/PollingMission/showpollingMission?timestamp=" + new Date().getTime();
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }
</script>
</body>
</html>