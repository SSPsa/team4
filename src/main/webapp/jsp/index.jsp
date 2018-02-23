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
                    <label class="layui-form-label xbs768">角色名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username"  placeholder="请输入角色名称" autocomplete="off" class="layui-input">
                    </div>

                    <label class="layui-form-label xbs768">启用状态</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>请选择</option>
                            <option>启用</option>
                            <option>未启用</option>
                        </select>
                    </div>
                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </div>
            </div>
        </form>
        <xblock><button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button>
            <button class="layui-btn" onclick="member_add('添加用户','/jsp/role_add.jsp','600','500')"><i class="layui-icon">&#xe608;</i>添加角色</button><span class="x-right" style="line-height:40px"></span></xblock>
        <table class="layui-table">
            <thead>
            <tr>
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
                    状态(启用/未启用)
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    1
                </td>
                <td>
                    <u style="cursor:pointer" onclick="member_show('张三','member-show.html','10001','360','400')">
                        小明
                    </u>
                </td>
                <td >
                    admin
                </td>
                <td >
                    2013-12-16 15:44:30
                </td>
                <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini">
                                已启用
                            </span>
                </td>
                <td class="td-manage">

                    <a style="text-decoration:none"  onclick="member_password('修改密码','/jsp/user_modify.jsp','10001','600','400')"
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
        <!-- 右侧内容框架，更改从这里结束 -->
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<%@include file="/common/footer.jsp"%>