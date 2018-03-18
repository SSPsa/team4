<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        巡检任务管理>>巡检任务执行与回执
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="/PollingMission/showpollingMissionReceipt" method="post" >
            <input id="pageIndex" type="hidden" name="pageIndex" value="1">
        <form class="layui-form xbs" action="/PollingMission/showpollingMission" method="post" >
            <input id="pageIndex" type="hidden" name="pageIndex" value="1">
            <div class="layui-form-pane" style="text-align: center;">

                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">任务编号：</label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" name="pmNumber" value="${pollingMission.pmNumber}" placeholder="请输入任务编号...">
                    </div>

                    <label class="layui-form-label xbs768">线路编号：</label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" name="circuit.cNumber" value="${pollingMission.circuit.cNumber}" placeholder="请输入线路编号...">
                    </div>
                    <label class="layui-form-label xbs768">任务状态</label>
                    <div class="layui-input-inline">
                        <select name="pmState">
                            <option  value="0">--请选择--</option>
                            <option <c:if test="${pollingMission.pmState==1}">selected="selected"</c:if> value="1">待分配</option>
                            <option <c:if test="${pollingMission.pmState==2}">selected="selected"</c:if>  value="2">已分配</option>
                            <option <c:if test="${pollingMission.pmState==3}">selected="selected"</c:if>  value="3">执行中</option>
                            <option <c:if test="${pollingMission.pmState==4}">selected="selected"</c:if>  value="4">已完成</option>
                        </select>
                    </div>
                    <div class="layui-input-inline" style="width: 330px;">
                    </div>

                </div>

                <%--新增的模块--%>
                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">下发人：</label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" name="release.uName" value="${pollingMission.release.uName}" placeholder="请输入下发人...">
                    </div>
                    <label   class="layui-form-label">
                        下发时间：
                    </label>
                    <div class="layui-input-inline">
                        <input name="releaseTime" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${pollingMission.releaseTime}"/>" class="layui-input"  id="LAY_demorange_s">
                    </div>
                    <label  class="layui-form-label">
                        <span class="x-red">-</span>
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" name="accomplishTime" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${pollingMission.accomplishTime}"/>"  id="LAY_demorange_e">
                    </div>

                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                    <div class="layui-input-inline" style="width: 270px;">
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
<c:forEach items="${pollingMissionPager.datas}" var="pollingMissionlist">
    <tr>
    <td>
    ${pollingMissionlist.pmNumber}
    </td>
    <td >
    ${pollingMissionlist.pmName}
    </td>
    <td >
    ${pollingMissionlist.circuit.cName}
    </td>
    <td>
    ${pollingMissionlist.circuit.riseTid}
    </td>
    <td>
    ${pollingMissionlist.circuit.endTid}
    </td>
    <td >
    ${pollingMissionlist.release.uName}
    </td>
    <td>
    <fmt:formatDate pattern="yyyy-MM-dd" value="${pollingMissionlist.releaseTime}"/>
    </td>
    <td class="td-status">

    <c:if test="${pollingMissionlist.pmState==1}">
                                    <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ec5807">
                                    待分配
                                    </span>
    </c:if>
    <c:if test="${pollingMissionlist.pmState==2}">
                                    <span class="layui-btn layui-btn-normal layui-btn-mini">
                              已分配
                            </span>
    </c:if>
    <c:if test="${pollingMissionlist.pmState==3}">
                                    <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ece40f">
                              执行中
                            </span>
    </c:if>
    <c:if test="${pollingMissionlist.pmState==4}">
                                    <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #1bec5e">
                              已完成
                            </span>
    </c:if>
    </td>
    <td>
    <fmt:formatDate pattern="yyyy-MM-dd" value="${pollingMissionlist.accomplishTime}"/>
    </td>
    <td>
    <c:if test="${pollingMissionlist.state==0}">已完成</c:if>
    </td>


    <td class="td-manage">
               <a style="text-decoration:none" onclick="member_password('查看','/PollingMission/showpollingMissionId?id=${pollingMissionlist.id}','10001','700','500')" title="查看">
               <i class="layui-icon">&#xe615;</i>
                 </a>
                    <c:if test="${pollingMissionlist.pmState==3}">
                    <a style="text-decoration:none" onclick="member_password('回执录入','/PollingMission/flawShow?id=${pollingMissionlist.id}','10001','700','500')" title="回执录入">
    <td class="td-manage">
                    <a style="text-decoration:none" onclick="member_password('查看','/jsp/inspectionTask_execut_view.jsp','10001','700','500')" title="查看">
                        <i class="layui-icon">&#xe615;</i>
                    </a>
                    <a style="text-decoration:none" onclick="member_password('回执录入','','10001','700','500')" title="回执录入">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <c:if test="${pollingMissionlist.pmState==2}">
                    <a title="执行" href="javascript:;" onclick="member_password('执行','','10001','700','500')"
                    </c:if>
                    <c:if test="${pollingMissionlist.pmState==2}">
                    <a title="执行" href="javascript:;" onclick="member_password2(${pollingMissionlist.id})"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    </c:if>
                    <a title="修改" href="javascript:;" onclick="member_password('修改','/jsp/inspectionTask_modify.jsp','10001','700','500')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#x1006;</i>
                    </a>
                    </c:if>
        <c:if test="${pollingMissionlist.pmState==2}">
            <a title="取消" href="javascript:;"onclick="deletePollingMission2(this,${pollingMissionlist.id})"
               style="text-decoration:none">
                <i class="layui-icon">&#x1006;</i>
            </a>
        </c:if>

                </td>
            </tr>
</c:forEach>
            </tbody>
        </table>
        <input type="hidden" id="totalPageCount" value="${pollingMissionPager.totalPage}"/>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${pollingMissionPager.totalRows}"/>
            <c:param name="currentPageNo" value="${pollingMissionPager.pageNo}"/>
            <c:param name="totalPageCount" value="${pollingMissionPager.totalPage}"/>
        </c:import>
        <!-- 右侧内容框架，更改从这里结束 -->
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<script>
    function deletePollingMission2(obj,id){

        $.ajax({
            type:"get",
            url:"/PollingMission/deletePollinMission?id="+id,
            success:function(data){
                if(data >0){
                    $(obj).parents("tr").remove();
                    window.history.go(0);
                    layer.msg('已删除!',{icon:1,time:1000});
                }
            }
        });
    }

    function member_password2(id){
        $.ajax({
            type:"get",
            url:"/PollingMission/updatepollingMissionpmState2?id="+id,
            success:function(data){
                if(data >0){
                    window.history.go(0);
                    layer.msg('已执行!',{icon:1,time:1000});
                }
            }
        });
    }



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
