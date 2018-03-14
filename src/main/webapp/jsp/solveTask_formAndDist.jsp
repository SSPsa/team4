<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        消缺任务管理>>消缺任务制定与分配
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="/flawMission/flawMissionForPager" method="post">
            <input type="hidden" name="formName" value="formAndDist">
            <div class="layui-form-pane" style="text-align: center;">
                <div class="layui-form-item" style="display: inline-block;">
                    <input type="hidden" name="pageIndex" value="1">
                    <label class="layui-form-label xbs768">任务编号：</label>
                    <div class="layui-input-inline xbs768">
                        <input name="fmNumber" value="${fmNumber}" class="layui-input" placeholder="请输入任务编号...">
                    </div>
                    <label class="layui-form-label xbs768">任务名称：</label>
                    <div class="layui-input-inline xbs768">
                        <input name="fmName" value="${fmName}" class="layui-input" placeholder="请输入线路编号...">
                    </div>
                    <label class="layui-form-label xbs768">任务状态</label>
                    <div class="layui-input-inline">
                        <select name="fmState">
                            <option value="0">--请选择--</option>
                            <option  <c:if test="${fmState==1}">selected</c:if> value="1">待分配</option>
                            <option <c:if test="${fmState==2}">selected</c:if> value="2">已分配</option>
                            <%--<option <c:if test="${fmState==3}">selected</c:if> value="3">执行中</option>--%>
                            <%--<option <c:if test="${fmState==4}">selected</c:if> value="4">已完成</option>--%>
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
                            <input name="startTime" value="${startTime}" class="layui-input"  id="LAY_demorange_s">
                        </div>
                        <label  class="layui-form-label">
                            <span class="x-red">-</span>
                        </label>
                        <div class="layui-input-inline">
                            <input name="endTime" value="${endTime}" class="layui-input"  id="LAY_demorange_e">
                        </div>
                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                        <div class="layui-input-inline" style="width:310px">
                        </div>
                    </div>
            </div>

        </form>
        <xblock>
            <%--onclick="member_add('制定消缺任务','/jsp/solveTask_add.jsp','700','500')">--%>
            <a  class="layui-btn"  href="/jsp/solveTask_add.jsp" ><i class="layui-icon">&#xe608;</i>制定消缺任务</a></xblock>
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
                    任务是否取消
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
                        <td>
                                ${flawMissionPager.fmName}
                        </td>
                        <td >
                            <c:if test="${flawMissionPager.receipts==1}">任务单</c:if>
                            <c:if test="${flawMissionPager.receipts==2}">第一种单据</c:if>
                            <c:if test="${flawMissionPager.receipts==3}">第二种单据</c:if>
                        </td>
                        <td >
                                ${flawMissionPager.user.uName}
                        </td>
                        <td>
                            <fmt:formatDate value="${flawMissionPager.releaseTime}"  pattern="yyyy-MM-dd"/>

                        </td>
                        <td class="td-status">
                            <c:if test="${flawMissionPager.fmState==1}">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ec5807">
                              待分配
                            </span>
                            </c:if>
                            <c:if test="${flawMissionPager.fmState==2}">
                            <span class="layui-btn layui-btn-normal layui-btn-mini">
                             已分配
                            </span>
                            </c:if>

                        </td>
                        <td>
                            <%--<c:if test="${flawMissionPager.fmState==4}">--%>
                                <%--<fmt:formatDate value="${flawMissionPager.accomplishTime}" pattern="yyyy-MM-dd"/>--%>
                            <%--</c:if>--%>
                                <%--任务完成时间--%>
                        </td>
                        <td>
                            否
                        </td>
                        <td class="td-manage">
                                <%--待分配--%>
                            <c:if test="${flawMissionPager.fmState==1}">
                                <a class="viewFlawMission" fwId="${flawMissionPager.id}" style="text-decoration:none" title="查看">
                                    <i class="layui-icon">&#xe615;</i>
                                </a>
                                <a class="assignFlawMission"  style="text-decoration:none" onclick="member_password('分配任务','/flawMission/flawMissionAssign','10001','600','500')" title="分配任务">
                                    <i class="layui-icon">&#xe631;</i>
                                </a>
                                <a class="modifyFlawMission" fwId="${flawMissionPager.id}" title="修改" href="javascript:;"
                                   style="text-decoration:none">
                                    <i class="layui-icon">&#xe642;</i>
                                </a>
                                <a title="取消" href="javascript:;" onclick="flawMission_Del(this,${flawMissionPager.id})"
                                   style="text-decoration:none">
                                    <i class="layui-icon">&#x1006;</i>
                                </a>

                            </c:if>
                                <%--已分配--%>
                            <c:if test="${flawMissionPager.fmState==2}">
                                <a class="viewFlawMission" fwId="${flawMissionPager.id}" style="text-decoration:none"  title="查看">
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

    function flawMission_Del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/flawMission/flawMissionDelete?fwId="+id,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!',{icon:1,time:1000});
                    }else if(data.delResult == "false"){//删除失败
                        //alert("对不起，删除用户【"+obj.attr("username")+"】失败");
                        changeDLGContent("对不起，删除失败");
                    }
                },
                error:function(data){
                    //alert("对不起，删除失败");
                    changeDLGContent("对不起，删除失败");
                }
            });
        });
    }
</script>
<%@include file="/common/footer.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/solveTask_formAndDis.js"></script>
