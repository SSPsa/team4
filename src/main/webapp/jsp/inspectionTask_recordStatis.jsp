<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        信息统计>>巡检记录统计
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="" >
            <div class="layui-form-pane layui-row" style="text-align: center;">
                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768" >任务编号：</label>
                    <div class="layui-input-inline" >
                        <input type="text" name="username"  placeholder="请输入任务编号" autocomplete="off" class="layui-input">
                    </div>

                    <label class="layui-form-label xbs768" >线路编号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username"  placeholder="请输入线路编号" autocomplete="off" class="layui-input">
                    </div>

                    <label class="layui-form-label xbs768">有无故障：</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>--请选择--</option>
                            <option>有</option>
                            <option>无</option>
                        </select>
                    </div>

                    <div class="layui-input-inline" style="width: 370px">
                    </div>
                </div>
                <div class="layui-form-item" style="display: inline-block;">
                    <label  class="layui-form-label">
                        消缺时间：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input"  id="LAY_demorange_s">
                    </div>
                    <label  class="layui-form-label">
                        <span class="x-red">-</span>
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input"  id="LAY_demorange_e">
                    </div>

                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                    <%--占位2个div--%>
                    <div class="layui-input-inline" style="width: 570px">
                    </div>
                </div>
            </div>
            <xblock>

                <a class="layui-btn" href="">
                    <i class="layui-icon">&#xe608;</i>导出EXCEL</a>
                <span class="x-right" style="line-height:40px"></span>
            </xblock>
            <table class="layui-table">
                <thead>
                <tr>
                    <th>
                        任务编号
                    </th>
                    <th>
                        任务名称
                    </th>
                    <th>
                        线路编号(起始杆号-终止杆号)
                    </th>
                    <th>
                        杆塔编号
                    </th>
                    <th>
                        缺陷级别
                    </th>
                    <th>
                        缺陷类型
                    </th>
                    <th>
                        发现时间
                    </th>
                    <th>
                        缺陷描述
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        RW0245
                    </td>
                    <td>
                        西渭一线任务巡检
                    </td>
                    <td >
                        XW001（xw0001-xw00256）
                    </td>
                    <td >
                        XW00001
                    </td>
                    <td>
                        一般
                    </td>
                    <td>
                        叉梁断裂
                    </td>
                    <td>
                        2013-11-12
                    </td>
                    <td>
                        主河道叉粱断裂痕迹
                    </td>

                </tr>
                </tbody>
            </table>
            <!-- 右侧内容框架，更改从这里结束 -->
        </form>
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<%@include file="/common/footer.jsp"%>