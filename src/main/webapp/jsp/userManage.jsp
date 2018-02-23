<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        系统管理>>用户管理
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="" >
            <div class="layui-form-pane" style="text-align: center;">

                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">角色名称：</label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" placeholder="请输入角色名称...">
                    </div>
                    <label class="layui-form-label xbs768">使用状态</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>--请选择--</option>
                            <option>正常</option>
                            <option>冻结</option>
                        </select>
                    </div>

                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </div>
            </div>

        </form>
        <xblock><button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button>
            <a  class="layui-btn"  onclick="member_add('添加用户','/jsp/user_add.jsp','600','500')"><i class="layui-icon">&#xe608;</i>添加用户</a><span class="x-right" style="line-height:40px">共有数据：88 条</span></xblock>
        <table class="layui-table">
            <thead>
            <tr>
                <th>
                    <input type="checkbox" name="" value="">
                </th>
                <th>
                   用户账号
                </th>
                <th>
                    用户名称
                </th>
                <th>
                    角色
                </th>
                <th>
                  邮箱
                </th>
                <th>
                    最后登录时间
                </th>
                <th>
                  状态（正常/冻结）
                </th>
                <th>
                   操作
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <input type="checkbox" value="1" name="">
                </td>
                <td>
                    <u style="cursor:pointer" onclick="member_show('张三','member-show.html','10001','360','400')">
                        admin
                    </u>
                </td>
                <td >
                   系统管理员
                </td>
                <td >
                    系统管理员
                </td>
                <td >
                    admin@mail.com
                </td>
                <td>
                    2017-01-01 11:11:42
                </td>
                <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini">
                               正常
                            </span>
                </td>
                <td class="td-manage">
                    <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="正常">
                        <i class="layui-icon">&#xe601;</i>
                    </a>
                    <a style="text-decoration:none" onclick="member_password('修改用户','/jsp/user_modify.jsp','10001','600','500')" title="修改">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="删除" href="javascript:;" onclick="member_del(this,'1')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                    <a title="log日志" href="javascript:;" onclick="member_del(this,'1')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe622;</i>
                    </a>

                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" value="1" name="">
                </td>
                <td>
                    <u style="cursor:pointer" onclick="member_show('张三','member-show.html','10001','360','400')">
                        admin
                    </u>
                </td>
                <td >
                    系统管理员
                </td>
                <td >
                    系统管理员
                </td>
                <td >
                    admin@mail.com
                </td>
                <td>
                    2017-01-01 11:11:42
                </td>
                <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini">
                               冻结
                            </span>
                </td>
                <td class="td-manage">
                    <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="冻结">
                        <i class="layui-icon">&#xe601;</i>
                    </a>
                    <a style="text-decoration:none"  onclick="member_password('修改用户','/jsp/user_modify.jsp','10001','600','500')"
                       href="javascript:;" title="修改用户">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="删除" href="javascript:;" onclick="member_del(this,'1')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                    <a title="log日志" href="javascript:;" onclick="member_del(this,'1')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe622;</i>
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
