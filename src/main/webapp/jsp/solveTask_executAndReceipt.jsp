<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        消缺任务管理>>消缺任务执行与回执
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="/flawMission/flawMissionExcePager" >
            <%--<input type="hidden" name="formName" value="executAndReceipt">--%>
            <input type="hidden" name="pageIndex" value="1">
            <div class="layui-form-pane" style="text-align: center;">

                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">任务编号：</label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" name="fmNumber" value="${fmNumber}" placeholder="请输入任务编号...">
                    </div>

                    <label class="layui-form-label xbs768">工作单据：</label>
                    <div class="layui-input-inline">
                        <select name="receipts">
                            <option value="0">--请选择--</option>
                            <option <c:if test="${receipts==1}">selected</c:if> value="1">任务单</option>
                            <option <c:if test="${receipts==2}">selected</c:if> value="2">第一单据</option>
                            <option <c:if test="${receipts==3}">selected</c:if> value="3">第二单据</option>
                        </select>
                    </div>
                    <label class="layui-form-label xbs768">任务状态</label>
                    <div class="layui-input-inline">
                        <select name="fmState">
                            <option value="0">--请选择--</option>
                            <option <c:if test="${fmState==3}">selected</c:if> value="3">执行中</option>
                            <option <c:if test="${fmState==4}">selected</c:if> value="4">已完成</option>
                            <option  <c:if test="${fmState==5}">selected</c:if> value="5">驳回</option>
                        </select>
                    </div>
                    <div class="layui-input-inline" style="width:80px">
                        <%--占位--%>
                    </div>

                </div>
                <%--新增的模块--%>
                <div class="layui-form-item" style="display: inline-block;">

                    <label  class="layui-form-label">
                        下发时间：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" name="startTime"  value="${startTime}" id="LAY_demorange_s">
                    </div>
                    <label  class="layui-form-label">
                        <span class="x-red">-</span>
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" name="endTime" ${endTime} id="LAY_demorange_e">
                    </div>
                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                    <div class="layui-input-inline" style="width:300px">
                        <%--占位--%>
                    </div>

                </div>
            </div>

        </form>
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
                    工作单据
                </th>
                <th>
                   负责人
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
                    操作
                </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${flawMissionPager.datas}" var="flawMissionPager">
                <tr>
                    <td>
                       ${flawMissionPager.fmNumber}
                    </td>
                    <td >
                            ${flawMissionPager.fmName}
                    </td>
                    <td>
                         <c:if test="${flawMissionPager.receipts==1}">任务单</c:if>
                          <c:if test="${flawMissionPager.receipts==2}">第一种单据</c:if>
                          <c:if test="${flawMissionPager.receipts==3}">第二种单据</c:if>
                    </td>
                    <td >
                       ${flawMissionPager.user.uName}
                    </td>
                    <td>
                        <fmt:formatDate value="${flawMissionPager.releaseTime}" pattern="yyyy-MM-dd"/>
                    </td>
                    <td class="td-status">
                        <%--  驳回--%>
                        <c:if test="${flawMissionPager.fmState==5}">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ec5807">
                             驳回
                            </span>
                        </c:if>
                        <%--执行中--%>
                        <c:if test="${flawMissionPager.fmState==3}">
                              <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ece40f">
                              执行中
                            </span>
                            </c:if>
                        <%--已完成--%>
                        <c:if test="${flawMissionPager.fmState==4}">
                             <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #1bec5e">
                              已完成
                            </span>
                            </c:if>

                    </td>
                    <td>
                        <c:if test="${flawMissionPager.fmState==4}">
                         <fmt:formatDate value="${flawMissionPager.accomplishTime}" pattern="yyyy-MM-dd"/>
                        </c:if>
                    </td>
                    <td class="td-manage">
                            <%--驳回--%>
                        <c:if test="${flawMissionPager.fmState==5}">
                            <a class="viewFlawMission" fwId="${flawMissionPager.id}" style="text-decoration:none"  title="查看">
                                <i class="layui-icon">&#xe615;</i>
                            </a>

                            <a class="modifyFlawMission" fwId="${flawMissionPager.id}" title="修改" href="javascript:;"
                               style="text-decoration:none">
                                <i class="layui-icon">&#x1006;</i>
                            </a>
                        </c:if>
                            <%--执行中--%>
                        <c:if test="${flawMissionPager.fmState==3}">
                            <a class="viewFlawMission" fwId="${flawMissionPager.id}" title="查看" style="text-decoration:none">
                                <i class="layui-icon">&#xe615;</i>
                            </a>
                            <a class="entryFlawMission" title="执行录入"  fwId="${flawMissionPager.id}" style="text-decoration:none">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a class="modifyFlawMission" fwId="${flawMissionPager.id}" title="修改" href="javascript:;" style="text-decoration:none">
                                <i class="layui-icon">&#x1006;</i>
                            </a>

                        </c:if>
                            <%--已完成--%>
                        <c:if test="${flawMissionPager.fmState==4}">
                            <a class="viewFlawMission" fwId="${flawMissionPager.id}" title="查看" style="text-decoration:none" onclick="member_password('查看','/jsp/solveTask_execute_view.jsp','10001','700','500')" >
                                <i class="layui-icon">&#xe615;</i>
                            </a>

                        </c:if>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
        <input type="hidden" id="totalPageCount" value="${flawMissionPager.totalPage}"/>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${flawMissionPager.totalRows}"/>
            <c:param name="currentPageNo" value="${flawMissionPager.pageNo}"/>
            <c:param name="totalPageCount" value="${flawMissionPager.totalPage}"/>
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

</script>
<%@include file="/common/footer.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/solveTask_executAndReceipt.js"></script>
