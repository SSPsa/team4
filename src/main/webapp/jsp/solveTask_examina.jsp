<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>

<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        消缺任务执行与回执>>修改
        <form class="layui-form" action="/flawMission/flawMissionExecModify2" method="post">
            <input type="hidden" value="${flawMission.id}" name="fwId" readonly>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    任务编码：
                </label>
                <div class="layui-input-inline">
                    <input type="text" required="" name="fmNumber"
                           autocomplete="off" class="layui-input" value="${flawMission.fmNumber}" readonly>
                </div>
                <label class="layui-form-label">
                    任务名称：
                </label>
                <div class="layui-input-inline">
                    <input type="text" required="" name="fmName"
                           autocomplete="off" class="layui-input" value="${flawMission.fmName}" readonly>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class="x-red"></span>任务状态:
                </label>
                <div class="layui-input-inline">
                    <select name="fmState" readonly>
                        <option value="0">--请选择任务状态--</option>
                        <option  <c:if test="${flawMission.fmState==3}">selected </c:if>  value="3">执行中</option>
                        <option <c:if test="${flawMission.fmState==4}"> selected </c:if> value="4">已完成</option>
                        <option <c:if test="${flawMission.fmState==5}"> selected </c:if> value="53">驳回</option>
                    </select>
                </div>
                <label class="layui-form-label">
                    工作单据：
                </label>
                <div class="layui-input-inline">
                    <select name="receipts" readonly>
                        <option value="0">--请选择工作单据类型--</option>
                        <option  <c:if test="${flawMission.receipts==1}">selected </c:if>  value="1">任务单</option>
                        <option <c:if test="${flawMission.receipts==2}"> selected </c:if> value="2">第一种单据</option>
                        <option <c:if test="${flawMission.receipts==3}"> selected </c:if> value="3">第二种单据</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class="x-red"></span>任务负责人:
                </label>
                <div class="layui-input-inline">
                    <input type="text"
                           autocomplete="off" class="layui-input" value="${flawMission.user.uName}" readonly>
                </div>

                <label class="layui-form-label">
                    <span class="x-red"></span>任务下发时间:
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="releaseTime"
                           autocomplete="off" class="layui-input" value="<fmt:formatDate value="${flawMission.releaseTime}" pattern="yyyy-MM-dd"/> " readonly>
                </div>
            </div>


            <div class="layui-form-item">


                <label class="layui-form-label">
                    <span class="x-red"></span>任务描述:
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="describe"
                           autocomplete="off" class="layui-input" value="${flawMission.describe}">
                </div>

                <label class="layui-form-label">
                    <span class="x-red"></span>任务完成时间:
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="accomplishTime"
                           autocomplete="off" class="layui-input" value="<fmt:formatDate value="${flawMission.accomplishTime}" pattern="yyyy-MM-dd"/>"  readonly >
                </div>
            </div>

            <div class="layui-form-item">

                <label class="layui-form-label">
                    <span class="x-red"></span>审核是否通过:
                </label>
                <div class="layui-input-inline">
                    <select name="isPass" readonly>

                        <option  <c:if test="${flawMission.isPass==0}">selected </c:if>  value="0">不通过</option>
                        <option <c:if test="${flawMission.isPass==1}"> selected </c:if> value="1">通过</option>
                    </select>
                </div>
            </div>

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
