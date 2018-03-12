<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<fieldset class="layui-elem-field layui-field-title site-title">
    <legend>消缺任务列表</legend>
</fieldset>
<table class="layui-table">

    <tr>
        <td>任务编码:</td>
        <td>${flawMission.fmNumber}</td>
        <td>任务名称:</td>
        <td>${flawMission.fmName}</td>
    </tr>
    <td>任务状态:</td>
    <td><c:if test="${flawMission.fmState==3}">执行中</c:if>
        <c:if test="${flawMission.fmState==4}">已完成</c:if>
        <c:if test="${flawMission.fmState==5}">驳回</c:if>
    </td>
    <td>工作单据:</td>
    <td>
        <c:if test=" ${flawMission.receipts==1}">任务单</c:if>
        <c:if test=" ${flawMission.receipts==2}">第一种单据</c:if>
        <c:if test=" ${flawMission.receipts==3}">第二种单据</c:if>
       </td>

    <tr>
        <td>任务下发人:</td>
        <td>线路管理员测试用户01</td>
        <td>任务下发时间:</td>
        <td>
            <fmt:formatDate value="${flawMission.releaseTime}" pattern="yyyy-MM-dd"/>
        </td>
    </tr>
    <tr>
        <td>任务负责人:</td>
        <td>${flawMission.user.uName}</td>
        <td>任务描述:</td>
        <td>${flawMission.describe}</td>
    </tr>
    <tr>
        <td>消缺员:</td>
        <td>消缺员测试用户01</td>
        <td>任务完成时间:</td>
        <td>
            <fmt:formatDate value="${flawMission.accomplishTime}" pattern="yyyy-MM-dd"/>
        </td>

    </tr>
    <tr style="row-span: 2">
        <td>负责人审查意见:</td>
        <td></td>
        <td>完成情况描述:</td>
        <td></td>
    </tr>
    <tr style="row-span: 2">
        <td>下发人审查意见:</td>
        <td></td>
        <td>审核是否通过：</td>
        <td></td>
    </tr>
</table>
<fieldset class="layui-elem-field layui-field-title site-title">
    <legend>缺陷信息列表</legend>
</fieldset>
<table class="layui-table">
    <tr>
        <td>线路编号</td>
        <td>杆塔编号</td>
        <td>缺陷等级</td>
        <td>缺陷类型</td>
        <td>缺陷描述</td>
        <td>发现人</td>
        <td>发现时间</td>
    </tr>
    <tr>
        <td>XW001</td>
        <td>XW00002</td>
        <td>严重</td>
        <td>拦河线断裂</td>
        <td>拦截河道7股断2股</td>
        <td>巡检员测试用户01</td>
        <td>2013/12/12</td>
    </tr>
    <tr>
        <td>XW001</td>
        <td>XW00002</td>
        <td>严重</td>
        <td>拦河线断裂</td>
        <td>拦截河道7股断2股</td>
        <td>巡检员测试用户01</td>
        <td>2013/12/12</td>
    </tr>
    <tr>
        <td>XW001</td>
        <td>XW00002</td>
        <td>严重</td>
        <td>拦河线断裂</td>
        <td>拦截河道7股断2股</td>
        <td>巡检员测试用户01</td>
        <td>2013/12/12</td>
    </tr>
</table>
<fieldset class="layui-elem-field layui-field-title">
    <legend>工作间断延期记载</legend>

</fieldset>
<legend>无</legend>
<fieldset class="layui-elem-field layui-field-title">

    <legend>工作终结报告</legend>

</fieldset>
<legend>无</legend>


</body>
</html>
