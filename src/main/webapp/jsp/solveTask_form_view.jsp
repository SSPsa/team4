<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        消缺任务制定与分配>>查看
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
    <td>
        <c:if test="${flawMission.fmState==1}">待分配</c:if>
        <c:if test="${flawMission.fmState==2}">已分配</c:if>
        <c:if test="${flawMission.fmState==3}">执行中</c:if>
        <c:if test="${flawMission.fmState==4}">已完成</c:if>

    </td>
    <td>工作单据:</td>
    <td>
        <c:if test="${flawMission.receipts==1}">任务单</c:if>
        <c:if test="${flawMission.receipts==2}">第一种单据</c:if>
        <c:if test="${flawMission.receipts==3}">第二种单据</c:if>
    </td>

    <tr>
        <td>任务下发时间:</td>
        <td>
            <fmt:formatDate value="${flawMission.releaseTime}"  pattern="yyyy-MM-dd"/>
        </td>
        <td>任务负责人:</td>
        <td>${flawMission.user.uName}</td>
    </tr>
    <tr>
        <td>消缺员:</td>
        <td>
            <%--显示不出来--%>
            <c:if test="${flawMission.fmState==2 and flawMission.defectUid==flawMission.user.id}">
                ${flawMission.user.uName}
            </c:if>

        </td>
        <td>备注:</td>
        <td>${flawMission.fmRemark}</td>

    </tr>
    <tr>
        <td>任务完成时间:</td>
        <td>
            <c:if test="${flawMission.fmState==4}">
                <fmt:formatDate value="${flawMission.accomplishTime}"  pattern="yyyy-MM-dd"/>
            </c:if>
        </td>
        <td>完成情况描述:</td>
        <td>${flawMission.describe}</td>
    </tr>
</table>
<%--<fieldset class="layui-elem-field layui-field-title site-title">--%>
    <%--<legend>缺陷信息列表</legend>--%>
<%--</fieldset>--%>
<%--<table class="layui-table">--%>
    <%--<tr>--%>
        <%--<td>线路编号</td>--%>
        <%--<td>杆塔编号</td>--%>
        <%--<td>缺陷等级</td>--%>
        <%--<td>缺陷类型</td>--%>
        <%--<td>缺陷描述</td>--%>
        <%--<td>发现人</td>--%>
        <%--<td>发现时间</td>--%>
    <%--</tr>--%>
    <%--<c:forEach items="${flaws}" var="flaws">--%>
        <%--<tr>--%>
            <%--<td>${flaws.circuit.cNumber}</td>--%>
            <%--<td>${flaws.tower.tNumber}</td>--%>
            <%--<td><c:if test="${flaws.grade==1}">一般</c:if>--%>
                <%--<c:if test="${flaws.grade==2}">严重</c:if>--%>
                <%--<c:if test="${flaws.grade==3}">紧急</c:if>--%>
            <%--</td>--%>
            <%--<td>${flaws.flawType.ftName}</td>--%>
            <%--<td>${flaws.describe}</td>--%>
            <%--<td>${flaws.user.uName}</td>--%>
            <%--<td><fmt:formatDate value="${flaws.discoverTime}" pattern="yyyy-MM-dd"/></td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>

    <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>XW001</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>XW00002</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>严重</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>拦河线断裂</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>拦截河道7股断2股</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>巡检员测试用户01</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>2013/12/12</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>XW001</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>XW00002</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>严重</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>拦河线断裂</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>拦截河道7股断2股</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>巡检员测试用户01</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<td>2013/12/12</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--</table>--%>
<%--<fieldset class="layui-elem-field layui-field-title">--%>
    <%--<legend>工作间断延期记载</legend>--%>

<%--</fieldset>--%>
<%--<legend>无</legend>--%>
<%--<fieldset class="layui-elem-field layui-field-title">--%>

    <%--<legend>工作终结报告</legend>--%>
<%--</fieldset>--%>
<%--<legend>无</legend>--%>
        <div class="layui-form-item">
            <a href="javascript:history.go(-1)" class="layui-btn">返回</a>
        </div>
    </div>
    </div>
<%--</body>--%>
<!-- 右侧主体结束 -->
</div>
<script>
    layui.use(['laydate'], function(){
        laydate = layui.laydate;//日期插件

        //以上模块根据需要引入
        //
        var start = {
//            min: laydate.now()
            min: '2002-06-16 23:59:59'
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };

        var end = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };

        document.getElementById('LAY_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        }
        document.getElementById('LAY_demorange_e').onclick = function(){
            end.elem = this
            laydate(end);
        }
    });
</script>
<%@include file="/common/footer.jsp"%>
