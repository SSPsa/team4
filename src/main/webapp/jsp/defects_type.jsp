<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        缺陷管理>>缺陷类型设置
        <form class="layui-form xbs" action="/flawtype/queryFlaw" method="post">
            <input type="hidden" name="pageIndex" value="1">
            <xblock>

                <a href="/flawtype/add" class="layui-btn" onclick="member_add('添加缺陷类型','/jsp/defectsType_add.jsp','600','500')">
                    <i class="layui-icon">&#xe608;</i>添加缺陷类型</a>
                <span class="x-right" style="line-height:40px"></span>
            </xblock>
        </form>
        <table class="layui-table">
            <thead>
            <tr>
                <th>
                    缺陷类型名称
                </th>
                <th>
                    状态(启用/未启用)
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>

            <c:forEach items="${FlawTypePager.datas}" var="flaw">


                <tbody>
                <tr>
                    <td>
                            ${flaw.ftName}
                    </td>
                    <td class="td-status">
                    <span class="layui-btn layui-btn-normal layui-btn-mini">
                   <c:if test="${flaw.ftState==1}" >停用</c:if>
                         <c:if test="${flaw.ftState==2}" >启用</c:if>
                    </span>
                    </td>
                    <td class="td-manage">
                        <a style="text-decoration:none" href="/flawtype/Query?id=${flaw.id}" title="修改">
                            <i class="layui-icon">&#xe631;</i>
                        </a>
                        <a title="删除" href="#" onclick="member_delType2(this,${flaw.id})"
                           style="text-decoration:none">
                            <i class="layui-icon">&#xe640;</i>
                        </a>
                    </td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
        <input type="hidden" id="totalPageCount" value="${FlawTypePager.totalPage}"/>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${FlawTypePager.totalRows}"/>
            <c:param name="currentPageNo" value="${FlawTypePager.pageNo}"/>
            <c:param name="totalPageCount" value="${FlawTypePager.totalPage}"/>
        </c:import>
        <!-- 右侧内容框架，更改从这里结束 -->
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<script>
    function member_delType2(obj,id){
        $.ajax({
            type:"get",
            url:"/flawtype/Del?id="+id,
            success:function(data){
                if(data != null){
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                }
            }
        });
    }
</script>
<%@include file="/common/footer.jsp"%>