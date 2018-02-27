
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
<div class="layui-input-inline" style="margin-left:100px;">
    <span style="margin: 10px">西渭一线</span>
    <select multiple="multiple"
            id="select1" style="width:150px;height:160px;" class="layui-input" >
        <option value="1" selected>XW001</option>
        <option value="2">XW002</option>
        <option value="3">XW003</option>
        <option value="4">XW004</option>
        <option value="5">XW005</option>
        <option value="6">XW006</option>
        <option value="7">XW007</option>
        <option value="9">XW009</option>
    </select>
</div>
<div class="layui-input-inline" style="margin-left:100px;">

    <span style="margin: 10px">保存的杆塔编号</span>
    <select multiple="multiple" id="select2" style="width: 150px;height:160px;" class="layui-input">
        <option value="8">XW008</option>
    </select>
</div>

<form action="" method="post">


<table class="layui-table">

    <tr>
        <td>线路编号:</td>
        <td>西临一线</td>
        <td>杆塔编号:</td>
        <td>xw0001</td>
    </tr>
    <td>缺陷类型:</td>
    <td>
        <select name="" class="layui-input">
            <option value="">叉梁断裂其他</option>
            <option value=""> 吊杆变形</option>
            <option value=""> 其他</option>
        </select>
    </td>
    <td>缺陷级别:</td>
    <td>
        <select name="" class="layui-input">
        <option value="">一般</option>
        <option value=""> 严重</option>
        <option value=""> 紧急</option>
        </select>
    </td>

    <tr>
        <td>完好率:</td>
        <td><input type="text" class="layui-input"></td>
        <td>发现时间:</td>
        <td>2013-12-12</td>
    </tr>
    <tr>
        <td>发现人员：</td>
        <td>巡检元测试用户01</td>
    </tr>
    <tr>
        <td style="row-span:2;">缺陷描述:</td>
        <td>
            <textarea name="" class="layui-input" style="width: 200px;height: 100px"></textarea>
        </td>

    </tr>

</table>
<div class="layui-form-item">
    <%--占位符--%>
    <label  class="layui-form-label">
    </label>
     <button  class="layui-btn" lay-filter="add" lay-submit="">
            上传回执
     </button>
    <button   id="add" class="layui-btn" lay-filter="add" lay-submit="">
        保存
    </button>
    <button  class="layui-btn" lay-filter="add" lay-submit="">
        返回
    </button>
</div>

</form>
</body>
</html>