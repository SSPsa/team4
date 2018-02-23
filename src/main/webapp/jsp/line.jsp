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
                    <label class="layui-form-label xbs768">线路编号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="xianlubianhao"  placeholder="请输入线路编号" autocomplete="off" class="layui-input">
                    </div>

                    <label class="layui-form-label xbs768">线路状态</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>--请选择--</option>
                            <option>正常</option>
                            <option>检修中</option>
                        </select>
                    </div>
                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </div>
            </div>
        </form>
        <xblock>
            <a class="layui-btn" href="/jsp/line-add.jsp"><i class="layui-icon">&#xe608;</i>添加线路</a><span class="x-right" style="line-height:40px"></span></xblock>
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
                    塔基数
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
            <tbody>
            <tr>
                <td>
                    XW00001
                </td>
                <td>
                    西渭线
                </td>
                <td>
                    wx0010
                </td>
                <td>
                    xw0256
                </td>
                <td>
                   3333
                </td>
                <td>
                    正常
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
                    <a style="text-decoration:none" href="/jsp/line-update.jsp" title="修改">
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