<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        <!-- 右侧内容框架，更改从这里开始 -->
        <table class="layui-table">
            <thead>
            <tr>
                <th>
                    待办任务类型
                </th>
                <th>
                    待办任务名称
                </th>
                <th>
                    到达时间
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>

            <tbody>
            <tr>
                <td>
                    缺陷管理
                </td>
                <td>
                    西渭2线杆塔编号XW0001缺陷等级确认
                </td>
                <td >
                    2013-12-16 15:44:30
                </td>
                <td class="td-manage">
                        <a title="查看" href="javascript:;" onclick="member_edit('查看待办事宜','/jsp/platform-toview.jsp','4','','600')"
                           class="ml-5" style="text-decoration:none">
                            <i class="layui-icon">&#xe642;</i>
                        </a>
                    <a style="text-decoration:none"  onclick="member_edit('等级确认','/jsp/platform-level.jsp','4','','620')"
                       href="javascript:;" title="修改">
                        <i class="layui-icon">&#xe631;</i>
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
<%@include file="/common/footer.jsp"%>