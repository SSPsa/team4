<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        巡检任务管理>>巡检任务执行与回执
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="" >
            <div class="layui-form-pane" style="text-align: center;">

                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">任务编号：</label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" placeholder="请输入任务编号...">
                    </div>

                    <label class="layui-form-label xbs768">线路编号：</label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" placeholder="请输入线路编号...">
                    </div>
                    <label class="layui-form-label xbs768">任务状态</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>--请选择--</option>
                            <option>待分配</option>
                            <option>已分配</option>
                            <option>执行中</option>
                            <option>已完成</option>
                        </select>
                    </div>
                    <div class="layui-input-inline" style="width: 330px;">
                    </div>

                </div>

                <%--新增的模块--%>
                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">下发人：</label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" placeholder="请输入下发人...">
                    </div>
                    <label  class="layui-form-label">
                        下发时间：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input"  id="LAY_demorange_s">
                    </div>
                    <label  class="layui-form-label">
                        <span class="x-red">-</span>
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input"  id="LAY_demorange_e">
                    </div>
                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                    <div class="layui-input-inline" style="width: 270px;">
                    </div>
                </div>
            </div>

        </form>
        <xblock>
            <a  class="layui-btn"  onclick="member_add('制定巡检任务','/jsp/inspectionTask_add.jsp','700','500')"><i class="layui-icon">&#xe608;</i>制定巡检任务</a><span class="x-right" style="line-height:40px">共有数据：88 条</span></xblock>
        <table class="layui-table">
            <thead>
            <tr>
                <th>
                    任务编号
                </th>
                <th>
                    任务名称
                </th>
                <th>
                    巡检线路
                </th>
                <th>
                    起始杆号
                </th>
                <th>
                    终止杆号
                </th>
                <th>
                    下发人
                </th>
                <th>
                    下发时间
                </th>
                <th>
                    任务状态
                </th>
                <th>
                    任务完成时间
                </th>
                <th>
                    任务是否取消
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    RW0245
                </td>
                <td >
                    西渭一线任务巡检
                </td>
                <td >
                    西渭一线
                </td>
                <td>
                    XW00001
                </td>
                <td>
                    XW00256
                </td>
                <td >
                    线路管理员测试用户01
                </td>
                <td>
                    2013/12/12
                </td>
                <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ec5807">
                              待分配
                            </span>
                </td>
                <td>

                </td>
                <td>
                    否
                </td>


                <td class="td-manage">
                    <a style="text-decoration:none" onclick="member_password('查看','/jsp/inspectionTask_execut_view.jsp','10001','700','500')" title="查看">
                        <i class="layui-icon">&#xe615;</i>
                    </a>
                    <a style="text-decoration:none" onclick="member_password('回执录入','','10001','700','500')" title="回执录入">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="执行" href="javascript:;" onclick="member_password('执行','','10001','700','500')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="修改" href="javascript:;" onclick="member_password('修改','/jsp/inspectionTask_modify.jsp','10001','700','500')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#x1006;</i>
                    </a>

                </td>
            </tr>
            <tr>
                <td>
                    RW0245
                </td>
                <td >
                    西渭一线任务巡检
                </td>
                <td >
                    西渭一线
                </td>
                <td>
                    XW00001
                </td>
                <td>
                    XW00256
                </td>
                <td >
                    线路管理员测试用户01
                </td>
                <td>
                    2013/12/12
                </td>
                <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini">
                              已分配
                            </span>
                </td>
                <td>

                </td>
                <td>
                    否
                </td>


                <td class="td-manage">
                    <a style="text-decoration:none" onclick="member_password('查看','/jsp/inspectionTask_execut_view.jsp','10001','700','500')" title="查看">
                        <i class="layui-icon">&#xe615;</i>
                    </a>
                    <a style="text-decoration:none" onclick="member_password('回执录入','','10001','700','500')" title="回执录入">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="执行" href="javascript:;" onclick="member_password('执行','','10001','700','500')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="修改" href="javascript:;" onclick="member_password('修改','','10001','700','500')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#x1006;</i>
                    </a>

                </td>
            </tr>
            <tr>
                <td>
                    RW0245
                </td>
                <td >
                    西渭一线任务巡检
                </td>
                <td >
                    西渭一线
                </td>
                <td>
                    XW00001
                </td>
                <td>
                    XW00256
                </td>
                <td >
                    线路管理员测试用户01
                </td>
                <td>
                    2013/12/12
                </td>
                <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ece40f">
                              执行中
                            </span>
                </td>
                <td>

                </td>
                <td>
                    否
                </td>


                <td class="td-manage">
                    <a style="text-decoration:none" onclick="member_password('查看','/jsp/inspectionTask_execut_view.jsp','10001','700','500')" title="查看">
                        <i class="layui-icon">&#xe615;</i>
                    </a>
                    <a style="text-decoration:none" onclick="member_password('执行录入','/jsp/inspectionTask_execut_add.jsp','10001','700','500')" title="执行录入">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="执行" href="javascript:;" onclick="member_password('执行','','10001','700','500')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="修改" href="javascript:;" onclick="member_password('修改','/jsp/inspectionTask_execut_modify.jsp','10001','700','500')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#x1006;</i>
                    </a>

                </td>
            </tr>
            <tr>
                <td>
                    RW0245
                </td>
                <td >
                    西渭一线任务巡检
                </td>
                <td >
                    西渭一线
                </td>
                <td>
                    XW00001
                </td>
                <td>
                    XW00256
                </td>
                <td >
                    线路管理员测试用户01
                </td>
                <td>
                    2013/12/12
                </td>
                <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #1bec5e">
                              已完成
                            </span>
                </td>
                <td>
                    2013/12/23
                </td>
                <td>
                    否
                </td>


                <td class="td-manage">
                    <a style="text-decoration:none" onclick="member_password('查看','/jsp/inspectionTask_execut_view.jsp','10001','700','500')" title="查看">
                        <i class="layui-icon">&#xe615;</i>
                    </a>
                    <a style="text-decoration:none" onclick="member_password('回执录入','','10001','700','500')" title="回执录入">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="执行" href="javascript:;" onclick="member_password('执行','','10001','700','500')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="修改" href="javascript:;" onclick="member_password('修改','/jsp/inspectionTask_modify.jsp','10001','700','500')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#x1006;</i>
                    </a>

                </td>
            </tr>

            </tbody>
        </table>
        <input type="hidden" id="totalPageCount" value="${houseList.totalPage}"/>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${houseList.totalRows}"/>
            <c:param name="currentPageNo" value="${houseList.pageNo}"/>
            <c:param name="totalPageCount" value="${houseList.totalPage}"/>
        </c:import>
        <!-- 右侧内容框架，更改从这里结束 -->
    </div>
</div>
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

    //百度统计可去掉
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<%@include file="/common/footer.jsp"%>
