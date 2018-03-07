<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>


<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        系统管理>>角色管理
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="/role/queryRole" method="post" >

            <input type="hidden" value="1" name="pageIndex">

            <div class="layui-form-pane" style="text-align: center;">
                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">角色名称：</label>
                    <div class="layui-input-inline xbs768">
                        <input type="text" class="layui-input" name="rName"  value="${rName}" placeholder="请输入角色名称...">
                    </div>
                    <label class="layui-form-label xbs768">启用状态</label>
                    <div class="layui-input-inline">
                        <%--<input type="text" name="username"  placeholder="请输入角色名称" autocomplete="off" class="layui-input">--%>
                        <select name="rState">
                            <option value="-1">--请选择--</option>

                            <option value="1" ${rState == 1 ? "rState=\"rState\"":"" }>未启用</option>
                            <option value="2" ${rState == 2 ? "rState=\"rState\"":"" }>启用</option>

                        </select>
                    </div>

                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </div>
            </div>

        </form>
        <xblock><button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button>
            <button class="layui-btn" onclick="member_add('添加用户','/jsp/role_add.jsp','600','500')">
            <i class="layui-icon">&#xe608;</i>添加角色</button></xblock>
        <table class="layui-table">
            <thead>
            <tr>
                <th>
                    <%--<input type="checkbox" name="" value="">--%>
                </th>

                <th>
                    角色编号
                </th>
                <th>
                    角色名称
                </th>
                <th>
                    创建人
                </th>
                <th>
                    更新时间
                </th>
                <th>
                    状态（启用/未启用）
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="role" items="${pag.datas}">
                <tr>
                    <td>
                        <input type="checkbox" value="1" name="">
                    </td>

                    <td>
                        <u style="cursor:pointer" onclick="member_show('张三','member-show.html','10001','360','400')">
                                ${role.rNumber}
                        </u>
                    </td>

                    <td >
                            ${role.rName}
                    </td>

                    <td >
                        北京市 海淀区
                    </td>
                    <td>
                        <fmt:formatDate value="${role.establishDate}" pattern="yyyy-MM-dd"/>
                    </td>
                    <td class="td-status">
                                <span class="layui-btn layui-btn-normal layui-btn-mini">
                                    <c:if test="${role.rState==1}">禁用</c:if>
                                    <c:if test="${role.rState==2}">启用</c:if>
                                </span>
                    </td>
                    <td class="td-manage">
                        <a style="text-decoration:none"  onclick="member_password('修改角色','/jsp/role_modify.jsp','10001','600','400')"
                           href="/role/queryRoleId?id=${role.id}" title="修改角色">
                            <i class="layui-icon">&#xe631;</i>
                        </a>

                        <a class="deleteRole" title="删除" href="#"  onclick="member_del(this,${role.id})"
                           style="text-decoration:none">
                            <i class="layui-icon">&#xe640;</i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <input type="hidden" id="totalPageCount" value="${pag.totalPage}"/>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${pag.totalRows}"/>
            <c:param name="currentPageNo" value="${pag.pageNo}"/>
            <c:param name="totalPageCount" value="${pag.totalPage}"/>
        </c:import>
        <!-- 右侧内容框架，更改从这里结束 -->
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<%@include file="/common/footer.jsp"%>