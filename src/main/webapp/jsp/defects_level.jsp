<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">

    <div class="content">
        缺陷管理>>缺陷等级确认
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

                    <label class="layui-form-label xbs768">杆塔编号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username"  placeholder="请输入杆塔编号" autocomplete="off" class="layui-input">
                    </div>

                    <div class="layui-input-inline">
                    </div>
                </div>


                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">发现人：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username"  placeholder="请输入发现人" autocomplete="off" class="layui-input">
                    </div>

                    <label class="layui-form-label xbs768">缺陷类型：</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>拦河线断裂</option>
                            <option>叉粱断裂</option>
                        </select>
                    </div>

                    <label class="layui-form-label xbs768">缺陷级别：</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>--请选择--</option>
                            <option>一般</option>
                            <option>严重</option>
                            <option>紧急</option>
                        </select>
                    </div>


                    <div class="layui-input-inline">
                    </div>
                </div>





                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">开始时间：</label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="开始日" id="LAY_demorange_s">
                    </div>

                    <label class="layui-form-label xbs768">结束时间：</label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="结束日" id="LAY_demorange_e">
                    </div>

                    <div class="layui-input-inline">
                    </div>

                    <div class="layui-input-inline">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>

                </div>





            </div>

            <xblock>
                <a class="layui-btn" href="">
                    <i class="layui-icon">&#xe608;</i>保存</a>
                <span class="x-right" style="line-height:40px"></span>
            </xblock>


        <table class="layui-table">
            <thead>
            <tr>
                <th>
                    任务编号
                </th>
                <th>
                    线路编号
                </th>
                <th>
                    杆塔编号
                </th>
                <th>
                    缺陷类型
                </th>
                <th>
                    完好率
                </th>
                <th>
                    缺陷描述
                </th>
                <th>
                    发现时间
                </th>
                <th>
                    发现人员
                </th>
                <th>
                    缺陷级别
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    LTX0245
                </td>
                <td>
                    XW0010
                </td>
                <td >
                    XW0001
                </td>
                <td >
                    拦河线断裂
                </td>
                <td>
                    79%
                </td>
                <td>
                    拦河线断裂严重
                </td>
                <td>
                    2013-12-12
                </td>
                <td>
                    巡检员测试用户01
                </td>
                <td style="width: 120px">
                   <select>
                       <option>--请选择--</option>
                       <option>一般</option>
                       <option>紧急</option>
                       <option>严重</option>
                   </select>
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