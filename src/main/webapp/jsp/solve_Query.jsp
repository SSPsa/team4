<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        消缺任务管理>>消缺查询
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="" >
            <div class="layui-form-pane layui-row" style="text-align: center;">
                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768" >任务编号：</label>
                    <div class="layui-input-inline" >
                        <input type="text" name="username"  placeholder="请输入任务编号" autocomplete="off" class="layui-input">
                    </div>
                    <label class="layui-form-label xbs768">任务状态：</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>--请选择--</option>
                            <option>待分配</option>
                            <option>已分配</option>
                            <option>执行中</option>
                            <option>已完成</option>
                        </select>
                    </div>

                    <label class="layui-form-label xbs768">缺陷类型：</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>--请选择--</option>
                            <option>叉梁断裂</option>
                            <option>拦河线断裂</option>
                            <option>绝缘子爆破</option>
                            <option>杆塔倾斜</option>
                            <option>吊杆变形</option>
                            <option>其他</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                    </div>


                </div>
                <div class="layui-form-item" style="display: inline-block;">

                    <label class="layui-form-label xbs768">缺陷级别：</label>
                    <div class="layui-input-inline">
                        <select>
                            <option>--请选择--</option>
                            <option>一般</option>
                            <option>严重</option>
                            <option>紧急</option>
                        </select>
                    </div>

                    <label  class="layui-form-label">
                        下发时间：
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


                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>

                    <div class="layui-input-inline">
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
                        线路编号
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

                        任务状态
                    </th>
                    <th>
                        发现时间
                    </th>
                    <th>
                        发现人
                    </th>
                    <th>
                        完好率
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
                        XW001
                    </td>
                    <td>
                        XW0000001
                    </td>
                    <td>
                        一般
                    </td>
                    <td >
                        叉梁断裂
                    </td>
                    <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ec5807">
                              待分配
                            </span>
                    </td>
                    <td>
                        2013/12/12
                    </td>
                    <td >
                        线路管理员测试用户01
                    </td>


                    <td>
                        78%
                    </td>
                    <td>
                        描述1
                    </td>
                </tr>
                <tr>
                    <td>
                        RW0245
                    </td>
                    <td>
                        XW001
                    </td>
                    <td>
                        XW0000001
                    </td>
                    <td>
                        一般
                    </td>
                    <td >
                        叉梁断裂
                    </td>
                    <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini">
                             已分配
                            </span>
                    </td>
                    <td>
                        2013/12/12
                    </td>
                    <td >
                        线路管理员测试用户01
                    </td>


                    <td>
                        78%
                    </td>
                    <td>
                        描述1
                    </td>
                </tr>
                <tr>
                    <td>
                        RW0245
                    </td>
                    <td>
                        XW001
                    </td>
                    <td>
                        XW0000001
                    </td>
                    <td>
                        一般
                    </td>
                    <td >
                        叉梁断裂
                    </td>
                    <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ece40f">
                              执行中
                            </span>
                    </td>
                    <td>
                        2013/12/12
                    </td>
                    <td >
                        线路管理员测试用户01
                    </td>


                    <td>
                        78%
                    </td>
                    <td>
                        描述1
                    </td>
                </tr>
                <tr>
                    <td>
                        RW0245
                    </td>
                    <td>
                        XW001
                    </td>
                    <td>
                        XW0000001
                    </td>
                    <td>
                        一般
                    </td>
                    <td >
                        叉梁断裂
                    </td>
                    <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #1bec5e">
                              已完成
                            </span>
                    </td>
                    <td>
                        2013/12/12
                    </td>
                    <td >
                        线路管理员测试用户01
                    </td>


                    <td>
                        78%
                    </td>
                    <td>
                        描述1
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
        </form>
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<%@include file="/common/footer.jsp"%>