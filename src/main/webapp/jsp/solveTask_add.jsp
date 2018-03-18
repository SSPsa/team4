
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>

<!-- 右侧主体开始 -->
<div class="wrapper">
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <form class="layui-form" action="/flawMission/flawMissionAdd" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        任务编码：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" required="" name="fmNumber"
                               autocomplete="off" class="layui-input">
                    </div>
                    <label class="layui-form-label">
                        任务名称：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" required="" name="fmName"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        工作单据：
                    </label>
                    <div class="layui-input-inline">
                        <select name="receipts">
                            <option value="0">--请选择工作单据类型--</option>
                            <option value="1">任务单</option>
                            <option value="2">第一种单据</option>
                            <option value="3">第二种单据</option>
                        </select>
                    </div>

                    <label class="layui-form-label">
                        <span class="x-red"></span>任务负责人：
                    </label>
                    <div class="layui-input-inline">
                        <select name="principalUid">
                            <option value="0">--请选择任务负责人--</option>
                            <option value="2">线路管理员测试用户01</option>
                            <option value="5">线路管理员测试用户02</option>
                            <option value="7">线路管理员测试用户03</option>
                        </select>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red"></span>消缺员：
                    </label>
                    <div class="layui-input-inline">
                        <select name="defectUid">
                            <option value="0">--请选择任务负责人--</option>
                            <option value="4">消缺员测试用户01</option>
                            <option value="8">消缺员测试用户02</option>
                        </select>
                    </div>

                    <label class="layui-form-label">
                        <span class="x-red"></span>下发日期：
                    </label>
                    <div class="layui-input-inline">
                        <input name="releaseTime" class="layui-input"  id="LAY_demorange_s">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red"></span>任务描述：
                    </label>
                    <div class="layui-input-inline">
                        <textarea name="describe" class="layui-input" style="width: 200px;height: 100px" ></textarea>
                    </div>

                    <label class="layui-form-label">
                        <span class="x-red"></span>备注：
                    </label>
                    <div class="layui-input-inline">
                        <textarea name="fmRemark"  class="layui-input" style="width: 200px;height: 100px"></textarea>
                    </div>
                </div>

                <%--<div class="layui-form-item">--%>

                <%--<xblock>--%>
                <%--<label class="layui-form-label">--%>
                <%--缺陷列表--%>
                <%--</label>--%>
                <%--<a  class="layui-btn"  href="defects_add.jsp"><i class="layui-icon">&#xe608;</i>添加缺陷</a>--%>

                <%--&lt;%&ndash;<a  class="layui-btn"  onclick="member_add('添加缺陷','/jsp/defects.jsp','600','500')"><i class="layui-icon">&#xe608;</i>添加缺陷</a>&ndash;%&gt;--%>
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
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
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

