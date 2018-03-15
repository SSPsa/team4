<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="/circuit/selCircuit" >
            <input type="hidden" name="pageIndex" value="1">
            <div class="layui-form-pane" style="text-align: center;">
                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">线路编号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="cNumber"  placeholder="请输入线路编号" autocomplete="off" class="layui-input" value="${cNumber}">
                    </div>

                    <label class="layui-form-label xbs768">线路状态</label>
                    <div class="layui-input-inline">
                        <select name="cState">
                            <option <c:if test="${cState==0}">selected="selected"</c:if> VALUE="0" >请选择</option>
                            <option <c:if test="${cState==1}">selected="selected"</c:if> VALUE="1" >正常</option>
                            <option <c:if test="${cState==2}">selected="selected"</c:if> VALUE="2" >检修中</option>
                        </select>
                    </div>
                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </div>
            </div>

        <xblock>
            <a class="layui-btn" href="/circuit/selRod"><i class="layui-icon">&#xe608;</i>添加线路</a><span class="x-right" style="line-height:40px"></span></xblock>
        <table class="layui-table">
            <thead>
            <tr>
                <th>
                    线路编号
                </th>
                <th>
                    线路名称
                </th>
                <th>
                    起始杆号
                </th>
                <th>
                    终止杆号
                </th>

                <th>
                    运行状态
                </th>
                <th>
                    启用状态
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>
            <c:forEach items="${circuitPager.datas}" var="circuitPager">
            <tbody>
            <tr>
                <td>
                    ${circuitPager.cNumber}
                </td>
                <td>
                    ${circuitPager.cName}
                </td>
                <td>
                    ${circuitPager.riseTid}
                </td>
                <td>
                    ${circuitPager.endTid}
                </td>
                <%--<td>--%>
                    <%--${circuitPager.cardinalNumber}--%>
                <%--</td>--%>
                <td>
                    <c:if test="${circuitPager.cState==1}">正常</c:if>
                    <c:if test="${circuitPager.cState==2}">维修中</c:if>
                </td>
                <td class="td-status" id="statusnew_${circuitPager.id}">
                    <c:if test="${circuitPager.yState==0}">
                    <%--<span class="layui-btn layui-btn-normal layui-btn-mini">已启动</span>--%>
                        <input class="layui-btn layui-btn-normal layui-btn-mini" name="Submit" type="button" id="Submit" value="已启动"/>
                    </c:if>
                        <c:if test="${circuitPager.yState==1}">
                            <%--<span class="layui-btn layui-btn-normal layui-btn-mini">已启动</span>--%>
                        <input class="layui-btn layui-btn-danger layui-btn-mini" name="Submit" type="button" id="Submit" value="已停用"/>
                        </c:if>

                <td class="td-manage">
                    <c:if test="${circuitPager.yState==1}">
                    <a style="text-decoration:none" name="yState" onclick="line_Start(this,${circuitPager.id},${circuitPager.yState})" href="javascript:;" title="启用">
                        <i class="layui-icon">&#xe601;</i>
                    </a>
                    </c:if>
                    <c:if test="${circuitPager.yState==0}">
                        <a style="text-decoration:none" name="yState" onclick="line_Stop(this,${circuitPager.id},${circuitPager.yState})" href="javascript:;" title="停用">
                            <i class="layui-icon">&#xe601;</i>
                        </a>
                    </c:if>
                    <a style="text-decoration:none" href="/circuit/selId?id=${circuitPager.id}" title="修改">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="删除" href="javascript:;" onclick="member_cirCuitDel(this,${circuitPager.id})"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
            </tbody>
            </c:forEach>
        </table>

        <input type="hidden" id="totalPageCount" value="${circuitPager.totalPage}"/>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${circuitPager.totalRows}"/>
            <c:param name="currentPageNo" value="${circuitPager.pageNo}"/>
            <c:param name="totalPageCount" value="${circuitPager.totalPage}"/>
        </c:import>
        <!-- 右侧内容框架，更改从这里结束 -->
        </form>
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<script>
    /*线路管理-删除*/
    function member_cirCuitDel(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/circuit/del?id="+id,
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
    /*线路管理-启用*/
    function line_Start(obj,id,yState){
        layer.confirm('确认要启用吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/circuit/updateYState?id="+id+"&yState="+yState,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        layer.msg('已启用!',{icon: 6,time:1000});
                        window.location.href = "/circuit/selCircuit";
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
    /*线路管理-停用*/
    function line_Stop(obj,id,yState){
        layer.confirm('确认要停用吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/circuit/updateYState?id="+id+"&yState="+yState,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        layer.msg('已停用!',{icon: 6,time:1000});
                        window.location.href = "/circuit/selCircuit";
                    }else if(data.delResult == "false"){//删除失败
                        //alert("对不起，删除用户【"+obj.attr("username")+"】失败");
                        changeDLGContent("对不起，修改失败");
                    }
                },
                error:function(data){
                    //alert("对不起，删除失败");
                    changeDLGContent("对不起，修改失败");
                }
            });
        });
    }
</script>

<%@include file="/common/footer.jsp"%>