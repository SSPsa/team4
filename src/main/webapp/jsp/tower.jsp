<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="" >
            <div class="layui-form-pane" style="text-align: center;">
                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">所属线路</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>请选择</option>
                            <option>XW001</option>
                        </select>
                    </div>

                    <label class="layui-form-label xbs768">是否启用</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>--请选择--</option>
                            <option>启用</option>
                            <option>停用</option>
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
                    所属路线
                </th>
                <th>
                    状态(启用|停用)
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    XW00001
                </td>
                <td>
                    西渭线
                </td>
                <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini">
                                已启用
                            </span>
                </td>
                <td class="td-manage">
                    <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                    <i class="layui-icon">&#xe601;</i>
                    </a>
                    <a style="text-decoration:none"  onclick="member_password('修改','/jsp/tower-update.jsp','10001','600','400')"
                       href="javascript:;" title="修改">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="删除" href="javascript:;" onclick="member_del(this,'1')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe640;</i>
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