<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="/tower/selTower" method="post" >
            <input type="hidden" name="pageIndex" value="1">
            <div class="layui-form-pane" style="text-align: center;">
                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">杆塔编号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="tNumber"  placeholder="请输入杆塔编号" autocomplete="off" class="layui-input" value="${tNumber}">

                    </div>

                    <label class="layui-form-label xbs768">状态</label>
                    <div class="layui-input-inline">
                        <select name="tState">
                            <option <c:if test="${tState==0}">selected="selected"</c:if> VALUE="0" >请选择</option>
                            <option <c:if test="${tState==1}">selected="selected"</c:if> VALUE="1" >停用</option>
                            <option <c:if test="${tState==2}">selected="selected"</c:if> VALUE="2" >启用</option>
                        </select>
                    </div>
                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </div>
            </div>
        </form>
        <xblock>
            <button class="layui-btn" onclick="member_add('添加杆塔','/jsp/tower-add.jsp','600','500')"><i class="layui-icon">&#xe608;</i>添加杆塔</button><span class="x-right" style="line-height:40px"></span></xblock>
        <table class="layui-table">
            <thead>
            <tr>
                <th>
                    杆塔编号
                </th>
                <th>
                    状态(启用|停用)
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>
            <c:forEach items="${towerPager.datas}" var="towerPager">
            <tbody>
            <tr>
                <td>
                    ${towerPager.tNumber}
                </td>
                <td class="td-status" id="statusNew_${list.id}">
                    <c:if test="${towerPager.tState==1}">
                            <span class="layui-btn layui-btn-danger layui-btn-mini">停用</span>
                    </c:if>
                    <c:if test="${towerPager.tState==2}">
                    <span class="layui-btn layui-btn-normal layui-btn-mini">启用</span>
                    </c:if>
                </td>
                <td class="td-manage" id="id">
                    <c:if test="${towerPager.tState==1}">
                        <a style="text-decoration:none" name="tState" onclick="tower_Start(this,${towerPager.id},${towerPager.tState})" href="javascript:;" title="启用">
                            <i class="layui-icon">&#xe601;</i>
                        </a>
                    </c:if>
                    <c:if test="${towerPager.tState==2}">
                        <a style="text-decoration:none" name="tState" onclick="tower_Stop(this,${towerPager.id},${towerPager.tState})" href="javascript:;" title="停用">
                            <i class="layui-icon">&#xe601;</i>
                        </a>
                    </c:if>
                    <a style="text-decoration:none" href="/tower/towerSelId?id=${towerPager.id}" title="修改">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="删除" href="javascript:;" onclick="member_towerDel(this,${towerPager.id})"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
            </tbody>
            </c:forEach>
        </table>
        <input type="hidden" id="totalPageCount" value="${towerPager.totalPage}"/>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${towerPager.totalRows}"/>
            <c:param name="currentPageNo" value="${towerPager.pageNo}"/>
            <c:param name="totalPageCount" value="${towerPager.totalPage}"/>
        </c:import>
        <!-- 右侧内容框架，更改从这里结束 -->
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<script>
    /*杆塔管理-停用*/
    function tower_Stop(obj,id,tState){
        layer.confirm('确认要停用吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/tower/updateTower?id="+id+"&tState="+tState,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-normal layui-btn-mini" >停用</span>');
                        $(obj).remove();
                        layer.msg('已停用!',{icon: 6,time:1000});
                        window.history.go(0);
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
    /*杆塔管理-启用*/
    function tower_Start(obj,id,tState){
        layer.confirm('确认要启用吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/tower/updateTower?id="+id+"&tState="+tState,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        layer.msg('已启用!',{icon: 6,time:1000});
                        window.location.href = "/tower/selTower";
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
    /*杆塔管理-删除*/
    function member_towerDel(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/tower/delTower?id="+id,
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
    /*杆塔管理-修改*/
    function member_towerUpdate(obj,id){
        layer.confirm('确认要修改吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/tower/updateTower?id="+id,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg('已修改!',{icon:1,time:1000});
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