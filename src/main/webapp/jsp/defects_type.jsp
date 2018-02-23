<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        缺陷管理>>缺陷类型设置
        <xblock>
            <a class="layui-btn" onclick="member_add('添加缺陷类型','/jsp/defectsType_add.jsp','600','500')">
                <i class="layui-icon">&#xe608;</i>添加缺陷类型</a>
            <span class="x-right" style="line-height:40px"></span>
        </xblock>
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
            <tbody>
            <tr>
                <td>
                    叉粱断裂
                </td>
                <td class="td-status">
                    <span class="layui-btn layui-btn-normal layui-btn-mini">
                        已启用
                    </span>
                </td>
                <td class="td-manage">
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
        <!-- 右侧内容框架，更改从这里结束 -->
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<%@include file="/common/footer.jsp"%>