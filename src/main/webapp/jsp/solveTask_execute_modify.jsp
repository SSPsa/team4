<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        消缺任务执行与回执>>修改
        <form class="layui-form" action="/flawMission/flawMissionExecModify" method="post">
            <input type="hidden" value="${flawMission1.id}" name="fwId">
            <div class="layui-form-item">
                <label class="layui-form-label">
                    任务编码：
                </label>
                <div class="layui-input-inline">
                    <input type="text" required="" name="fmNumber"
                           autocomplete="off" class="layui-input" value="${flawMission1.fmNumber}">
                </div>
                <label class="layui-form-label">
                    任务名称：
                </label>
                <div class="layui-input-inline">
                    <input type="text" required="" name="fmName"
                           autocomplete="off" class="layui-input" value="${flawMission1.fmName}" >
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class="x-red"></span>任务状态:
                </label>
                <div class="layui-input-inline">
                    <select name="fmState">
                        <option value="0">--请选择任务状态--</option>
                        <option  <c:if test="${flawMission1.fmState==3}">selected </c:if>  value="3">执行中</option>
                        <option <c:if test="${flawMission1.fmState==4}"> selected </c:if> value="4">已完成</option>
                        <option <c:if test="${flawMission1.fmState==5}"> selected </c:if> value="53">驳回</option>
                    </select>
                </div>
                <label class="layui-form-label">
                    工作单据：
                </label>
                <div class="layui-input-inline">
                    <select name="receipts">
                        <option value="0">--请选择工作单据类型--</option>
                        <option  <c:if test="${flawMission1.receipts==1}">selected </c:if>  value="1">任务单</option>
                        <option <c:if test="${flawMission1.receipts==2}"> selected </c:if> value="2">第一种单据</option>
                        <option <c:if test="${flawMission1.receipts==3}"> selected </c:if> value="3">第二种单据</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class="x-red"></span>任务负责人:
                </label>
                <div class="layui-input-inline">
                    <input type="text"
                           autocomplete="off" class="layui-input" value="${flawMission1.user.uName}" >
                </div>

                <label class="layui-form-label">
                    <span class="x-red"></span>任务下发时间:
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="releaseTime"
                           autocomplete="off" class="layui-input" value="<fmt:formatDate value="${flawMission1.releaseTime}" pattern="yyyy-MM-dd"/> " >
                </div>
            </div>


            <div class="layui-form-item">


                <label class="layui-form-label">
                    <span class="x-red"></span>任务描述:
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="describe"
                           autocomplete="off" class="layui-input" value="${flawMission1.describe}" >
                </div>

                <label class="layui-form-label">
                    <span class="x-red"></span>任务完成时间:
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="accomplishTime"
                           autocomplete="off" class="layui-input" value="<fmt:formatDate value="${flawMission1.accomplishTime}" pattern="yyyy-MM-dd"/>"   >
                </div>
            </div>

            <div class="layui-form-item">

                <label class="layui-form-label">
                    <span class="x-red"></span>审核是否通过:
                </label>
                <div class="layui-input-inline">
                    <select name="isPass">

                        <option  <c:if test="${flawMission1.isPass==0}">selected </c:if>  value="0">不通过</option>
                        <option <c:if test="${flawMission1.isPass==1}"> selected </c:if> value="1">通过</option>
                    </select>
                </div>
            </div>

            <%--<div class="layui-form-item">--%>

            <%--<xblock>--%>
            <%--<label class="layui-form-label">--%>
            <%--缺陷列表--%>
            <%--</label>--%>
            <%--<a  class="layui-btn"  href="defects_add.jsp"><i class="layui-icon">&#xe608;</i>添加缺陷</a>--%>
            <%--</xblock>--%>
            <%--</div>--%>
            <%--<table class="layui-table">--%>
            <%--<tr>--%>
            <%--<td>线路编号</td>--%>
            <%--<td>杆塔编号</td>--%>
            <%--<td>缺陷等级</td>--%>
            <%--<td>缺陷类型</td>--%>
            <%--<td>缺陷描述</td>--%>
            <%--<td>发现人</td>--%>
            <%--<td>发现时间</td>--%>
            <%--<td>操作</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
            <%--<td>XW001</td>--%>
            <%--<td>XW00002</td>--%>
            <%--<td>严重</td>--%>
            <%--<td>拦河线断裂</td>--%>
            <%--<td>拦截河道7股断2股</td>--%>
            <%--<td>巡检员测试用户01</td>--%>
            <%--<td>2013/12/12</td>--%>
            <%--<td>移除</td>--%>
            <%--</tr>--%>

            <%--</table>--%>


            <div class="layui-form-item">
                <label  class="layui-form-label">
                </label>
                <button  class="layui-btn" lay-filter="add" lay-submit="">
                    保存
                </button>
                <button  class="layui-btn" lay-filter="add" lay-submit="">
                    返回
                </button>
            </div>
        </form>

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

    $(function () {
        $(".addFlaw").on("click", function () {
            //将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
            var obj = $(this);
            window.location.href = "/flawMission/flawMissionAddFlaw?fid=" + obj.attr("fid");
        });
    });
</script>
<%@include file="/common/footer.jsp"%>


<%--<html>--%>
<%--<head>--%>
    <%--<meta charset="UTF-8">--%>
    <%--<title>后台登录-X-admin1.1</title>--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <%--<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />--%>
    <%--<link rel="stylesheet" href="/css/font.css">--%>
    <%--<link rel="stylesheet" href="/css/xadmin.css">--%>
    <%--<link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">--%>
    <%--<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>--%>
    <%--<script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>--%>
    <%--<script src="/lib/layui/layui.js" charset="utf-8"></script>--%>
    <%--<script type="text/javascript" src="/js/xadmin.js"></script>--%>
    <%--&lt;%&ndash;<style>&ndash;%&gt;--%>
        <%--&lt;%&ndash;textarea,select,option{&ndash;%&gt;--%>
            <%--&lt;%&ndash;opacity: 0.5;&ndash;%&gt;--%>
        <%--&lt;%&ndash;}&ndash;%&gt;--%>
    <%--&lt;%&ndash;</style>&ndash;%&gt;--%>
<%--</head>--%>

<%--<body>--%>
<%--<!-- 中部开始 -->--%>
<%--<div class="wrapper">--%>
    <%--<!-- 右侧主体开始 -->--%>
    <%--<div class="page-content">--%>
        <%--<div class="content">--%>
            <%--<!-- 右侧内容框架，更改从这里开始 -->--%>
            <%--<form class="layui-form" action="/flawMission/flawMissionExecModify" method="post">--%>
                <%--<input type="hidden" value="${flawMission1.id}" name="fwId">--%>
                <%--<div class="layui-form-item">--%>
                    <%--<label class="layui-form-label">--%>
                        <%--任务编码：--%>
                    <%--</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<input type="text" required="" name="fmNumber"--%>
                               <%--autocomplete="off" class="layui-input" value="${flawMission1.fmNumber}">--%>
                    <%--</div>--%>
                    <%--<label class="layui-form-label">--%>
                        <%--任务名称：--%>
                    <%--</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<input type="text" required="" name="fmName"--%>
                               <%--autocomplete="off" class="layui-input" value="${flawMission1.fmName}" >--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div class="layui-form-item">--%>
                    <%--<label class="layui-form-label">--%>
                        <%--<span class="x-red"></span>任务状态:--%>
                    <%--</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<select name="fmState">--%>
                            <%--<option value="0">--请选择任务状态--</option>--%>
                            <%--<option  <c:if test="${flawMission1.fmState==3}">selected </c:if>  value="3">执行中</option>--%>
                            <%--<option <c:if test="${flawMission1.fmState==4}"> selected </c:if> value="4">已完成</option>--%>
                            <%--<option <c:if test="${flawMission1.fmState==5}"> selected </c:if> value="53">驳回</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                    <%--<label class="layui-form-label">--%>
                        <%--工作单据：--%>
                    <%--</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<select name="receipts">--%>
                            <%--<option value="0">--请选择工作单据类型--</option>--%>
                            <%--<option  <c:if test="${flawMission1.receipts==1}">selected </c:if>  value="1">任务单</option>--%>
                            <%--<option <c:if test="${flawMission1.receipts==2}"> selected </c:if> value="2">第一种单据</option>--%>
                            <%--<option <c:if test="${flawMission1.receipts==3}"> selected </c:if> value="3">第二种单据</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div class="layui-form-item">--%>
                    <%--<label class="layui-form-label">--%>
                        <%--<span class="x-red"></span>任务负责人:--%>
                    <%--</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<input type="text"--%>
                               <%--autocomplete="off" class="layui-input" value="${flawMission1.user.uName}" >--%>
                    <%--</div>--%>

                    <%--<label class="layui-form-label">--%>
                        <%--<span class="x-red"></span>任务下发时间:--%>
                    <%--</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<input type="text" name="releaseTime"--%>
                               <%--autocomplete="off" class="layui-input" value="<fmt:formatDate value="${flawMission1.releaseTime}" pattern="yyyy-MM-dd"/> " >--%>
                    <%--</div>--%>
                <%--</div>--%>


                <%--<div class="layui-form-item">--%>


                    <%--<label class="layui-form-label">--%>
                        <%--<span class="x-red"></span>任务描述:--%>
                    <%--</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<input type="text" name="describe"--%>
                               <%--autocomplete="off" class="layui-input" value="${flawMission1.describe}" >--%>
                    <%--</div>--%>

                    <%--<label class="layui-form-label">--%>
                        <%--<span class="x-red"></span>任务完成时间:--%>
                    <%--</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<input type="text" name="accomplishTime"--%>
                               <%--autocomplete="off" class="layui-input" value="<fmt:formatDate value="${flawMission1.accomplishTime}" pattern="yyyy-MM-dd"/>"   >--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div class="layui-form-item">--%>

                    <%--<label class="layui-form-label">--%>
                        <%--<span class="x-red"></span>审核是否通过:--%>
                    <%--</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<select name="isPass">--%>

                            <%--<option  <c:if test="${flawMission1.isPass==0}">selected </c:if>  value="0">不通过</option>--%>
                            <%--<option <c:if test="${flawMission1.isPass==1}"> selected </c:if> value="1">通过</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--&lt;%&ndash;<div class="layui-form-item">&ndash;%&gt;--%>

                    <%--&lt;%&ndash;<xblock>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<label class="layui-form-label">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;缺陷列表&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</label>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<a  class="layui-btn"  href="defects_add.jsp"><i class="layui-icon">&#xe608;</i>添加缺陷</a>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</xblock>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<table class="layui-table">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>线路编号</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>杆塔编号</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>缺陷等级</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>缺陷类型</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>缺陷描述</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>发现人</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>发现时间</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>操作</td>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>XW001</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>XW00002</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>严重</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>拦河线断裂</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>拦截河道7股断2股</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>巡检员测试用户01</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>2013/12/12</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td>移除</td>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>

                <%--&lt;%&ndash;</table>&ndash;%&gt;--%>


                <%--<div class="layui-form-item">--%>
                    <%--<label  class="layui-form-label">--%>
                    <%--</label>--%>
                    <%--<button  class="layui-btn" lay-filter="add" lay-submit="">--%>
                        <%--保存--%>
                    <%--</button>--%>
                    <%--<button  class="layui-btn" lay-filter="add" lay-submit="">--%>
                        <%--返回--%>
                    <%--</button>--%>
                <%--</div>--%>
            <%--</form>--%>
            <%--<!-- 右侧内容框架，更改从这里结束 -->--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<!-- 右侧主体结束 -->--%>
<%--</div>--%>
<%--<!-- 中部结束 -->--%>
<%--</body>--%>
<%--</html>--%>
