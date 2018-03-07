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
                            <option <c:if test="${tState==1}">selected="selected"</c:if> VALUE="1" >静用</option>
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
                <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini">
                             <c:if test="${towerPager.tState==1}">停用</c:if>
                                <c:if test="${towerPager.tState==2}">启用</c:if>
                            </span>
                </td>
                <td class="td-manage">
                    <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                    <i class="layui-icon">&#xe601;</i>
                    </a>
                    <a style="text-decoration:none"  onclick="member_update('修改','/tower/towerSelId?id=${towerPager.id}','10001','600','400')"
                       href="javascript:;" title="修改">
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
<%@include file="/common/footer.jsp"%>