
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <legend>巡检任务列表</legend>
</fieldset>
<table class="layui-table">

    <tr>
        <td>任务编码:</td>
        <td>${pollingMissionView.pmNumber}</td>
        <td>任务名称:</td>
        <td>${pollingMissionView.pmName}</td>
    </tr>
    <td>巡检线路:</td>
    <td>${pollingMissionView.circuit.cNumber}</td>
    <td>起始杆号:</td>
    <td>${pollingMissionView.circuit.riseTid}</td>

    <tr>
        <td>终止杆号:</td>
        <td>${pollingMissionView.circuit.endTid}</td>
        <td>下发人:</td>
        <td>${pollingMissionView.release.uName}</td>
    </tr>
    <tr>
        <td>下发时间:</td>
        <td><fmt:formatDate value="${pollingMissionView.releaseTime}" pattern="yyyy-MM-dd"/></td>
        <td>任务状态:</td>
        <td>
            <c:if test="${pollingMissionView.pmState==1}">待分配</c:if>
            <c:if test="${pollingMissionView.pmState==2}">已分配</c:if>
            <c:if test="${pollingMissionView.pmState==3}">执行中</c:if>
            <c:if test="${pollingMissionView.pmState==4}">已完成</c:if>
        </td>
    </tr>
    <tr>
        <td>任务完成时间:</td>
        <td><fmt:formatDate value="${pollingMissionView.accomplishTime}" pattern="yyyy-MM-dd"/></td>
        <td>备注信息:</td>
        <td>无</td>

    </tr>
    <tr>
        <td style="row-span:2;">巡检员:</td>
        <td>

            <textarea name="" class="layui-input" style="width: 200px;height: 100px" readonly>${pollingMissionView.polling.uName}</textarea>
        </td>
    </tr>

</table>

<form class="layui-form xbs" action="" >
<div class="layui-form-pane" style="text-align: center;">

    <div class="layui-form-item" style="display: inline-block;">

    <div class="layui-input-inline">
    <select>
    <option>--请选择线路--</option>
    <option selected="selected">西临1号线</option>
    <option>西临2号线</option>
    <option>西临3号线</option>
    <option>西临4号线</option>
    </select>
    </div>

    <div class="layui-input-inline">
    <select>
    <option>--请选择具体的线路--</option>
    <option selected="selected">xw0001</option>
    <option>xw0002</option>
    <option>xw0003</option>
    <option>xw0004</option>
    </select>
    </div>
    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>

    </div>


</div>
</form>


<fieldset class="layui-elem-field layui-field-title site-title">
    <legend>缺陷信息</legend>
</fieldset>


<table class="layui-table">

    <tr>
        <td>线路编号:</td>
        <td>西临1号线</td>
        <td>杆塔编号:</td>
        <td>xw0001</td>
    </tr>
    <td>有无故障:</td>
    <td>有</td>
    <td>完好率:</td>
    <td>78%</td>

    <tr>
        <td>缺陷等级:</td>
        <td>一般</td>
        <td>缺陷类型:</td>
        <td>拦河线断裂</td>
    </tr>
    <tr>
        <td style="row-span:2;">缺陷描述:</td>
        <td>

            <textarea name="" class="layui-input" style="width: 200px;height: 100px" readonly>拦截河道7股断2股,需尽快维修</textarea>
        </td>
        <td>巡检时间:</td>
        <td>2013/12/12</td>
    </tr>


    <tr>
        <td style="row-span:2;">巡检员:</td>
        <td>

            <textarea name="" class="layui-input" style="width: 200px;height: 100px" readonly>巡检员测试用户01、巡检员测试用户02、巡检员测试用户03</textarea>
        </td>
        <td>缺陷发现人:</td>
        <td>巡检员测试用户03</td>
    </tr>

    <tr>
        <td>发现时间:</td>
        <td>2013-12-23</td>


    </tr>

</table>
<div class="layui-form-item">
    <button  class="layui-btn" lay-filter="add" lay-submit="" style="margin-left: 10px">
        返回
    </button>
</div>


</body>
</html>
